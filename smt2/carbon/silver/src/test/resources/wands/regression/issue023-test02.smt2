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
(assert (forall ((Heap@@2 T@PolymorphicMapType_11078) (ExhaleHeap T@PolymorphicMapType_11078) (Mask@@0 T@PolymorphicMapType_11099) (pm_f_19 T@Field_16561_16562) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_16561_14493 Mask@@0 null pm_f_19) (IsPredicateField_6364_6365 pm_f_19)) (= (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@2) null (PredicateMaskField_6364 pm_f_19)) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap) null (PredicateMaskField_6364 pm_f_19)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_6364_6365 pm_f_19) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap) null (PredicateMaskField_6364 pm_f_19)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11078) (ExhaleHeap@@0 T@PolymorphicMapType_11078) (Mask@@1 T@PolymorphicMapType_11099) (pm_f_19@@0 T@Field_15623_15624) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_15623_14493 Mask@@1 null pm_f_19@@0) (IsPredicateField_6339_6340 pm_f_19@@0)) (= (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@3) null (PredicateMaskField_6339 pm_f_19@@0)) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@0) null (PredicateMaskField_6339 pm_f_19@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_6339_6340 pm_f_19@@0) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@0) null (PredicateMaskField_6339 pm_f_19@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_11078) (ExhaleHeap@@1 T@PolymorphicMapType_11078) (Mask@@2 T@PolymorphicMapType_11099) (pm_f_19@@1 T@Field_15048_15049) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_15021_14493 Mask@@2 null pm_f_19@@1) (IsPredicateField_6317_6318 pm_f_19@@1)) (= (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@4) null (PredicateMaskField_15021 pm_f_19@@1)) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@1) null (PredicateMaskField_15021 pm_f_19@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_6317_6318 pm_f_19@@1) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@1) null (PredicateMaskField_15021 pm_f_19@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11078) (ExhaleHeap@@2 T@PolymorphicMapType_11078) (Mask@@3 T@PolymorphicMapType_11099) (pm_f_19@@2 T@Field_14492_14493) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_14465_14493 Mask@@3 null pm_f_19@@2) (IsPredicateField_6287_6288 pm_f_19@@2)) (= (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@5) null (PredicateMaskField_14465 pm_f_19@@2)) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@2) null (PredicateMaskField_14465 pm_f_19@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsPredicateField_6287_6288 pm_f_19@@2) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@2) null (PredicateMaskField_14465 pm_f_19@@2)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11078) (ExhaleHeap@@3 T@PolymorphicMapType_11078) (Mask@@4 T@PolymorphicMapType_11099) (pm_f_19@@3 T@Field_11138_14493) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_11138_14493 Mask@@4 null pm_f_19@@3) (IsPredicateField_11138_40083 pm_f_19@@3)) (= (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@6) null (PredicateMaskField_11138 pm_f_19@@3)) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@3) null (PredicateMaskField_11138 pm_f_19@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsPredicateField_11138_40083 pm_f_19@@3) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@3) null (PredicateMaskField_11138 pm_f_19@@3)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11078) (ExhaleHeap@@4 T@PolymorphicMapType_11078) (Mask@@5 T@PolymorphicMapType_11099) (pm_f_19@@4 T@Field_16561_16562) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_16561_14493 Mask@@5 null pm_f_19@@4) (IsWandField_16561_49787 pm_f_19@@4)) (= (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@7) null (WandMaskField_16561 pm_f_19@@4)) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@4) null (WandMaskField_16561 pm_f_19@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsWandField_16561_49787 pm_f_19@@4) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@4) null (WandMaskField_16561 pm_f_19@@4)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11078) (ExhaleHeap@@5 T@PolymorphicMapType_11078) (Mask@@6 T@PolymorphicMapType_11099) (pm_f_19@@5 T@Field_15623_15624) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_15623_14493 Mask@@6 null pm_f_19@@5) (IsWandField_15623_49430 pm_f_19@@5)) (= (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@8) null (WandMaskField_15623 pm_f_19@@5)) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@5) null (WandMaskField_15623 pm_f_19@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (IsWandField_15623_49430 pm_f_19@@5) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@5) null (WandMaskField_15623 pm_f_19@@5)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11078) (ExhaleHeap@@6 T@PolymorphicMapType_11078) (Mask@@7 T@PolymorphicMapType_11099) (pm_f_19@@6 T@Field_15048_15049) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_15021_14493 Mask@@7 null pm_f_19@@6) (IsWandField_6317_6318 pm_f_19@@6)) (= (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@9) null (WandMaskField_6317 pm_f_19@@6)) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@6) null (WandMaskField_6317 pm_f_19@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (IsWandField_6317_6318 pm_f_19@@6) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@6) null (WandMaskField_6317 pm_f_19@@6)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11078) (ExhaleHeap@@7 T@PolymorphicMapType_11078) (Mask@@8 T@PolymorphicMapType_11099) (pm_f_19@@7 T@Field_14492_14493) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_14465_14493 Mask@@8 null pm_f_19@@7) (IsWandField_6287_6288 pm_f_19@@7)) (= (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@10) null (WandMaskField_6287 pm_f_19@@7)) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@7) null (WandMaskField_6287 pm_f_19@@7)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (IsWandField_6287_6288 pm_f_19@@7) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@7) null (WandMaskField_6287 pm_f_19@@7)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11078) (ExhaleHeap@@8 T@PolymorphicMapType_11078) (Mask@@9 T@PolymorphicMapType_11099) (pm_f_19@@8 T@Field_11138_14493) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_11138_14493 Mask@@9 null pm_f_19@@8) (IsWandField_11138_48423 pm_f_19@@8)) (= (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@11) null (WandMaskField_11138 pm_f_19@@8)) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@8) null (WandMaskField_11138 pm_f_19@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (IsWandField_11138_48423 pm_f_19@@8) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@8) null (WandMaskField_11138 pm_f_19@@8)))
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
(assert (forall ((Heap@@12 T@PolymorphicMapType_11078) (ExhaleHeap@@9 T@PolymorphicMapType_11078) (Mask@@10 T@PolymorphicMapType_11099) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (=> (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@12) o_12 $allocated) (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@9) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@9) o_12 $allocated))
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
(assert (forall ((Heap@@14 T@PolymorphicMapType_11078) (ExhaleHeap@@11 T@PolymorphicMapType_11078) (Mask@@62 T@PolymorphicMapType_11099) (o_12@@0 T@Ref) (f_19 T@Field_16561_16562) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@62) (=> (HasDirectPerm_16561_14493 Mask@@62 o_12@@0 f_19) (= (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@14) o_12@@0 f_19) (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@11) o_12@@0 f_19))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@62) (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@11) o_12@@0 f_19))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_11078) (ExhaleHeap@@12 T@PolymorphicMapType_11078) (Mask@@63 T@PolymorphicMapType_11099) (o_12@@1 T@Ref) (f_19@@0 T@Field_16574_16579) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@63) (=> (HasDirectPerm_16561_39627 Mask@@63 o_12@@1 f_19@@0) (= (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@15) o_12@@1 f_19@@0) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@12) o_12@@1 f_19@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@63) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@12) o_12@@1 f_19@@0))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_11078) (ExhaleHeap@@13 T@PolymorphicMapType_11078) (Mask@@64 T@PolymorphicMapType_11099) (o_12@@2 T@Ref) (f_19@@1 T@Field_16561_1199) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@64) (=> (HasDirectPerm_16561_1199 Mask@@64 o_12@@2 f_19@@1) (= (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@16) o_12@@2 f_19@@1) (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@13) o_12@@2 f_19@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@64) (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@13) o_12@@2 f_19@@1))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_11078) (ExhaleHeap@@14 T@PolymorphicMapType_11078) (Mask@@65 T@PolymorphicMapType_11099) (o_12@@3 T@Ref) (f_19@@2 T@Field_16561_11152) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@65) (=> (HasDirectPerm_16561_11152 Mask@@65 o_12@@3 f_19@@2) (= (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@17) o_12@@3 f_19@@2) (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@14) o_12@@3 f_19@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@65) (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@14) o_12@@3 f_19@@2))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_11078) (ExhaleHeap@@15 T@PolymorphicMapType_11078) (Mask@@66 T@PolymorphicMapType_11099) (o_12@@4 T@Ref) (f_19@@3 T@Field_16561_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@66) (=> (HasDirectPerm_16561_53 Mask@@66 o_12@@4 f_19@@3) (= (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@18) o_12@@4 f_19@@3) (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@15) o_12@@4 f_19@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@66) (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@15) o_12@@4 f_19@@3))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_11078) (ExhaleHeap@@16 T@PolymorphicMapType_11078) (Mask@@67 T@PolymorphicMapType_11099) (o_12@@5 T@Ref) (f_19@@4 T@Field_15623_15624) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@67) (=> (HasDirectPerm_15623_14493 Mask@@67 o_12@@5 f_19@@4) (= (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@19) o_12@@5 f_19@@4) (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@16) o_12@@5 f_19@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@67) (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@16) o_12@@5 f_19@@4))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_11078) (ExhaleHeap@@17 T@PolymorphicMapType_11078) (Mask@@68 T@PolymorphicMapType_11099) (o_12@@6 T@Ref) (f_19@@5 T@Field_15636_15641) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@68) (=> (HasDirectPerm_15623_38509 Mask@@68 o_12@@6 f_19@@5) (= (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@20) o_12@@6 f_19@@5) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@17) o_12@@6 f_19@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@68) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@17) o_12@@6 f_19@@5))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_11078) (ExhaleHeap@@18 T@PolymorphicMapType_11078) (Mask@@69 T@PolymorphicMapType_11099) (o_12@@7 T@Ref) (f_19@@6 T@Field_15623_1199) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@69) (=> (HasDirectPerm_15623_1199 Mask@@69 o_12@@7 f_19@@6) (= (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@21) o_12@@7 f_19@@6) (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@18) o_12@@7 f_19@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@69) (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@18) o_12@@7 f_19@@6))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_11078) (ExhaleHeap@@19 T@PolymorphicMapType_11078) (Mask@@70 T@PolymorphicMapType_11099) (o_12@@8 T@Ref) (f_19@@7 T@Field_15623_11152) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@70) (=> (HasDirectPerm_15623_11152 Mask@@70 o_12@@8 f_19@@7) (= (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@22) o_12@@8 f_19@@7) (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@19) o_12@@8 f_19@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@70) (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@19) o_12@@8 f_19@@7))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_11078) (ExhaleHeap@@20 T@PolymorphicMapType_11078) (Mask@@71 T@PolymorphicMapType_11099) (o_12@@9 T@Ref) (f_19@@8 T@Field_15623_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@71) (=> (HasDirectPerm_15623_53 Mask@@71 o_12@@9 f_19@@8) (= (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@23) o_12@@9 f_19@@8) (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@20) o_12@@9 f_19@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@71) (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@20) o_12@@9 f_19@@8))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_11078) (ExhaleHeap@@21 T@PolymorphicMapType_11078) (Mask@@72 T@PolymorphicMapType_11099) (o_12@@10 T@Ref) (f_19@@9 T@Field_15048_15049) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@72) (=> (HasDirectPerm_15021_14493 Mask@@72 o_12@@10 f_19@@9) (= (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@24) o_12@@10 f_19@@9) (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@21) o_12@@10 f_19@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@72) (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@21) o_12@@10 f_19@@9))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_11078) (ExhaleHeap@@22 T@PolymorphicMapType_11078) (Mask@@73 T@PolymorphicMapType_11099) (o_12@@11 T@Ref) (f_19@@10 T@Field_15033_15038) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@73) (=> (HasDirectPerm_15021_37331 Mask@@73 o_12@@11 f_19@@10) (= (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@25) o_12@@11 f_19@@10) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@22) o_12@@11 f_19@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@73) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@22) o_12@@11 f_19@@10))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_11078) (ExhaleHeap@@23 T@PolymorphicMapType_11078) (Mask@@74 T@PolymorphicMapType_11099) (o_12@@12 T@Ref) (f_19@@11 T@Field_15021_1464) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@74) (=> (HasDirectPerm_15021_1199 Mask@@74 o_12@@12 f_19@@11) (= (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@26) o_12@@12 f_19@@11) (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@23) o_12@@12 f_19@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@74) (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@23) o_12@@12 f_19@@11))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_11078) (ExhaleHeap@@24 T@PolymorphicMapType_11078) (Mask@@75 T@PolymorphicMapType_11099) (o_12@@13 T@Ref) (f_19@@12 T@Field_15021_11152) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@75) (=> (HasDirectPerm_15021_11152 Mask@@75 o_12@@13 f_19@@12) (= (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@27) o_12@@13 f_19@@12) (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@24) o_12@@13 f_19@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@75) (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@24) o_12@@13 f_19@@12))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_11078) (ExhaleHeap@@25 T@PolymorphicMapType_11078) (Mask@@76 T@PolymorphicMapType_11099) (o_12@@14 T@Ref) (f_19@@13 T@Field_15021_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@76) (=> (HasDirectPerm_15021_53 Mask@@76 o_12@@14 f_19@@13) (= (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@28) o_12@@14 f_19@@13) (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@25) o_12@@14 f_19@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@76) (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@25) o_12@@14 f_19@@13))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_11078) (ExhaleHeap@@26 T@PolymorphicMapType_11078) (Mask@@77 T@PolymorphicMapType_11099) (o_12@@15 T@Ref) (f_19@@14 T@Field_14492_14493) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@77) (=> (HasDirectPerm_14465_14493 Mask@@77 o_12@@15 f_19@@14) (= (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@29) o_12@@15 f_19@@14) (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@26) o_12@@15 f_19@@14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@77) (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@26) o_12@@15 f_19@@14))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_11078) (ExhaleHeap@@27 T@PolymorphicMapType_11078) (Mask@@78 T@PolymorphicMapType_11099) (o_12@@16 T@Ref) (f_19@@15 T@Field_14477_14482) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@78) (=> (HasDirectPerm_14465_36197 Mask@@78 o_12@@16 f_19@@15) (= (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@30) o_12@@16 f_19@@15) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@27) o_12@@16 f_19@@15))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@78) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@27) o_12@@16 f_19@@15))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_11078) (ExhaleHeap@@28 T@PolymorphicMapType_11078) (Mask@@79 T@PolymorphicMapType_11099) (o_12@@17 T@Ref) (f_19@@16 T@Field_14465_1199) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@79) (=> (HasDirectPerm_14465_1199 Mask@@79 o_12@@17 f_19@@16) (= (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@31) o_12@@17 f_19@@16) (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@28) o_12@@17 f_19@@16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@79) (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@28) o_12@@17 f_19@@16))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_11078) (ExhaleHeap@@29 T@PolymorphicMapType_11078) (Mask@@80 T@PolymorphicMapType_11099) (o_12@@18 T@Ref) (f_19@@17 T@Field_14465_11152) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@80) (=> (HasDirectPerm_14465_11152 Mask@@80 o_12@@18 f_19@@17) (= (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@32) o_12@@18 f_19@@17) (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@29) o_12@@18 f_19@@17))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@80) (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@29) o_12@@18 f_19@@17))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_11078) (ExhaleHeap@@30 T@PolymorphicMapType_11078) (Mask@@81 T@PolymorphicMapType_11099) (o_12@@19 T@Ref) (f_19@@18 T@Field_14465_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@81) (=> (HasDirectPerm_14465_53 Mask@@81 o_12@@19 f_19@@18) (= (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@33) o_12@@19 f_19@@18) (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@30) o_12@@19 f_19@@18))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@81) (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@30) o_12@@19 f_19@@18))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_11078) (ExhaleHeap@@31 T@PolymorphicMapType_11078) (Mask@@82 T@PolymorphicMapType_11099) (o_12@@20 T@Ref) (f_19@@19 T@Field_11138_14493) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@31 Mask@@82) (=> (HasDirectPerm_11138_14493 Mask@@82 o_12@@20 f_19@@19) (= (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@34) o_12@@20 f_19@@19) (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@31) o_12@@20 f_19@@19))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@31 Mask@@82) (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@31) o_12@@20 f_19@@19))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_11078) (ExhaleHeap@@32 T@PolymorphicMapType_11078) (Mask@@83 T@PolymorphicMapType_11099) (o_12@@21 T@Ref) (f_19@@20 T@Field_11138_14482) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@32 Mask@@83) (=> (HasDirectPerm_11138_35019 Mask@@83 o_12@@21 f_19@@20) (= (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@35) o_12@@21 f_19@@20) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@32) o_12@@21 f_19@@20))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@32 Mask@@83) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@32) o_12@@21 f_19@@20))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_11078) (ExhaleHeap@@33 T@PolymorphicMapType_11078) (Mask@@84 T@PolymorphicMapType_11099) (o_12@@22 T@Ref) (f_19@@21 T@Field_15576_1716) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@33 Mask@@84) (=> (HasDirectPerm_11138_1199 Mask@@84 o_12@@22 f_19@@21) (= (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@36) o_12@@22 f_19@@21) (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@33) o_12@@22 f_19@@21))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@33 Mask@@84) (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@33) o_12@@22 f_19@@21))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_11078) (ExhaleHeap@@34 T@PolymorphicMapType_11078) (Mask@@85 T@PolymorphicMapType_11099) (o_12@@23 T@Ref) (f_19@@22 T@Field_11151_11152) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@34 Mask@@85) (=> (HasDirectPerm_11138_11152 Mask@@85 o_12@@23 f_19@@22) (= (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@37) o_12@@23 f_19@@22) (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@34) o_12@@23 f_19@@22))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@34 Mask@@85) (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@34) o_12@@23 f_19@@22))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_11078) (ExhaleHeap@@35 T@PolymorphicMapType_11078) (Mask@@86 T@PolymorphicMapType_11099) (o_12@@24 T@Ref) (f_19@@23 T@Field_11138_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@35 Mask@@86) (=> (HasDirectPerm_11138_53 Mask@@86 o_12@@24 f_19@@23) (= (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@38) o_12@@24 f_19@@23) (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@35) o_12@@24 f_19@@23))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@35 Mask@@86) (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@35) o_12@@24 f_19@@23))
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
(assert (forall ((Heap@@39 T@PolymorphicMapType_11078) (o_1 T@Ref) (f_51 T@Field_15033_15038) (v T@PolymorphicMapType_11627) ) (! (succHeap Heap@@39 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@39) (store (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@39) o_1 f_51 v) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@39) (store (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@39) o_1 f_51 v) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_11078) (o_1@@0 T@Ref) (f_51@@0 T@Field_15021_1464) (v@@0 Int) ) (! (succHeap Heap@@40 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@40) (store (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@40) o_1@@0 f_51@@0 v@@0) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@40) (store (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@40) o_1@@0 f_51@@0 v@@0) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_11078) (o_1@@1 T@Ref) (f_51@@1 T@Field_15048_15049) (v@@1 T@FrameType) ) (! (succHeap Heap@@41 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@41) (store (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@41) o_1@@1 f_51@@1 v@@1) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@41) (store (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@41) o_1@@1 f_51@@1 v@@1) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_11078) (o_1@@2 T@Ref) (f_51@@2 T@Field_15021_11152) (v@@2 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@42) (store (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@42) o_1@@2 f_51@@2 v@@2) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@42) (store (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@42) o_1@@2 f_51@@2 v@@2) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_11078) (o_1@@3 T@Ref) (f_51@@3 T@Field_15021_53) (v@@3 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@43) (store (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@43) o_1@@3 f_51@@3 v@@3) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@43) (store (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@43) o_1@@3 f_51@@3 v@@3) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_11078) (o_1@@4 T@Ref) (f_51@@4 T@Field_16574_16579) (v@@4 T@PolymorphicMapType_11627) ) (! (succHeap Heap@@44 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@44) (store (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@44) o_1@@4 f_51@@4 v@@4) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@44) (store (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@44) o_1@@4 f_51@@4 v@@4) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_11078) (o_1@@5 T@Ref) (f_51@@5 T@Field_16561_1199) (v@@5 Int) ) (! (succHeap Heap@@45 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@45) (store (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@45) o_1@@5 f_51@@5 v@@5)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@45) (store (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@45) o_1@@5 f_51@@5 v@@5)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_11078) (o_1@@6 T@Ref) (f_51@@6 T@Field_16561_16562) (v@@6 T@FrameType) ) (! (succHeap Heap@@46 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@46) (store (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@46) o_1@@6 f_51@@6 v@@6) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@46) (store (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@46) o_1@@6 f_51@@6 v@@6) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_11078) (o_1@@7 T@Ref) (f_51@@7 T@Field_16561_11152) (v@@7 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@47) (store (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@47) o_1@@7 f_51@@7 v@@7) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@47) (store (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@47) o_1@@7 f_51@@7 v@@7) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_11078) (o_1@@8 T@Ref) (f_51@@8 T@Field_16561_53) (v@@8 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@48) (store (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@48) o_1@@8 f_51@@8 v@@8) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@48) (store (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@48) o_1@@8 f_51@@8 v@@8) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_11078) (o_1@@9 T@Ref) (f_51@@9 T@Field_14477_14482) (v@@9 T@PolymorphicMapType_11627) ) (! (succHeap Heap@@49 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@49) (store (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@49) o_1@@9 f_51@@9 v@@9) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@49) (store (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@49) o_1@@9 f_51@@9 v@@9) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_11078) (o_1@@10 T@Ref) (f_51@@10 T@Field_14465_1199) (v@@10 Int) ) (! (succHeap Heap@@50 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@50) (store (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@50) o_1@@10 f_51@@10 v@@10) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@50) (store (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@50) o_1@@10 f_51@@10 v@@10) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_11078) (o_1@@11 T@Ref) (f_51@@11 T@Field_14492_14493) (v@@11 T@FrameType) ) (! (succHeap Heap@@51 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@51) (store (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@51) o_1@@11 f_51@@11 v@@11) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@51) (store (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@51) o_1@@11 f_51@@11 v@@11) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_11078) (o_1@@12 T@Ref) (f_51@@12 T@Field_14465_11152) (v@@12 T@Ref) ) (! (succHeap Heap@@52 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@52) (store (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@52) o_1@@12 f_51@@12 v@@12) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@52) (store (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@52) o_1@@12 f_51@@12 v@@12) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_11078) (o_1@@13 T@Ref) (f_51@@13 T@Field_14465_53) (v@@13 Bool) ) (! (succHeap Heap@@53 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@53) (store (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@53) o_1@@13 f_51@@13 v@@13) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@53) (store (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@53) o_1@@13 f_51@@13 v@@13) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_11078) (o_1@@14 T@Ref) (f_51@@14 T@Field_15636_15641) (v@@14 T@PolymorphicMapType_11627) ) (! (succHeap Heap@@54 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@54) (store (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@54) o_1@@14 f_51@@14 v@@14) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@54) (store (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@54) o_1@@14 f_51@@14 v@@14) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_11078) (o_1@@15 T@Ref) (f_51@@15 T@Field_15623_1199) (v@@15 Int) ) (! (succHeap Heap@@55 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@55) (store (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@55) o_1@@15 f_51@@15 v@@15) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@55) (store (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@55) o_1@@15 f_51@@15 v@@15) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_11078) (o_1@@16 T@Ref) (f_51@@16 T@Field_15623_15624) (v@@16 T@FrameType) ) (! (succHeap Heap@@56 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@56) (store (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@56) o_1@@16 f_51@@16 v@@16) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@56) (store (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@56) o_1@@16 f_51@@16 v@@16) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_11078) (o_1@@17 T@Ref) (f_51@@17 T@Field_15623_11152) (v@@17 T@Ref) ) (! (succHeap Heap@@57 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@57) (store (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@57) o_1@@17 f_51@@17 v@@17) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@57) (store (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@57) o_1@@17 f_51@@17 v@@17) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_11078) (o_1@@18 T@Ref) (f_51@@18 T@Field_15623_53) (v@@18 Bool) ) (! (succHeap Heap@@58 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@58) (store (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@58) o_1@@18 f_51@@18 v@@18) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@58) (store (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@58) o_1@@18 f_51@@18 v@@18) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_11078) (o_1@@19 T@Ref) (f_51@@19 T@Field_11138_14482) (v@@19 T@PolymorphicMapType_11627) ) (! (succHeap Heap@@59 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@59) (store (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@59) o_1@@19 f_51@@19 v@@19) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@59) (store (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@59) o_1@@19 f_51@@19 v@@19) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_11078) (o_1@@20 T@Ref) (f_51@@20 T@Field_15576_1716) (v@@20 Int) ) (! (succHeap Heap@@60 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@60) (store (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@60) o_1@@20 f_51@@20 v@@20) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@60) (store (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@60) o_1@@20 f_51@@20 v@@20) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_11078) (o_1@@21 T@Ref) (f_51@@21 T@Field_11138_14493) (v@@21 T@FrameType) ) (! (succHeap Heap@@61 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@61) (store (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@61) o_1@@21 f_51@@21 v@@21) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@61) (store (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@61) o_1@@21 f_51@@21 v@@21) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_11078) (o_1@@22 T@Ref) (f_51@@22 T@Field_11151_11152) (v@@22 T@Ref) ) (! (succHeap Heap@@62 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@62) (store (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@62) o_1@@22 f_51@@22 v@@22) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@62) (store (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@62) o_1@@22 f_51@@22 v@@22) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_11078) (o_1@@23 T@Ref) (f_51@@23 T@Field_11138_53) (v@@23 Bool) ) (! (succHeap Heap@@63 (PolymorphicMapType_11078 (store (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@63) o_1@@23 f_51@@23 v@@23) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (store (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@63) o_1@@23 f_51@@23 v@@23) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@63)))
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
(assert (forall ((Heap@@65 T@PolymorphicMapType_11078) (ExhaleHeap@@36 T@PolymorphicMapType_11078) (Mask@@87 T@PolymorphicMapType_11099) (pm_f_19@@9 T@Field_16561_16562) ) (!  (=> (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@36 Mask@@87) (=> (and (HasDirectPerm_16561_14493 Mask@@87 null pm_f_19@@9) (IsPredicateField_6364_6365 pm_f_19@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_19 T@Ref) (f_19@@24 T@Field_15576_1716) ) (!  (=> (select (|PolymorphicMapType_11627_6336_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_19@@9))) o2_19 f_19@@24) (= (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@65) o2_19 f_19@@24) (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19 f_19@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19 f_19@@24))
)) (forall ((o2_19@@0 T@Ref) (f_19@@25 T@Field_11138_53) ) (!  (=> (select (|PolymorphicMapType_11627_6336_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_19@@9))) o2_19@@0 f_19@@25) (= (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@65) o2_19@@0 f_19@@25) (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@0 f_19@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@0 f_19@@25))
))) (forall ((o2_19@@1 T@Ref) (f_19@@26 T@Field_11151_11152) ) (!  (=> (select (|PolymorphicMapType_11627_6336_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_19@@9))) o2_19@@1 f_19@@26) (= (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@65) o2_19@@1 f_19@@26) (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@1 f_19@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@1 f_19@@26))
))) (forall ((o2_19@@2 T@Ref) (f_19@@27 T@Field_11138_14482) ) (!  (=> (select (|PolymorphicMapType_11627_6336_42376#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_19@@9))) o2_19@@2 f_19@@27) (= (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@65) o2_19@@2 f_19@@27) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@2 f_19@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@2 f_19@@27))
))) (forall ((o2_19@@3 T@Ref) (f_19@@28 T@Field_11138_14493) ) (!  (=> (select (|PolymorphicMapType_11627_6336_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_19@@9))) o2_19@@3 f_19@@28) (= (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@65) o2_19@@3 f_19@@28) (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@3 f_19@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@3 f_19@@28))
))) (forall ((o2_19@@4 T@Ref) (f_19@@29 T@Field_14465_1199) ) (!  (=> (select (|PolymorphicMapType_11627_14465_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_19@@9))) o2_19@@4 f_19@@29) (= (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@65) o2_19@@4 f_19@@29) (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@4 f_19@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@4 f_19@@29))
))) (forall ((o2_19@@5 T@Ref) (f_19@@30 T@Field_14465_53) ) (!  (=> (select (|PolymorphicMapType_11627_14465_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_19@@9))) o2_19@@5 f_19@@30) (= (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@65) o2_19@@5 f_19@@30) (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@5 f_19@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@5 f_19@@30))
))) (forall ((o2_19@@6 T@Ref) (f_19@@31 T@Field_14465_11152) ) (!  (=> (select (|PolymorphicMapType_11627_14465_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_19@@9))) o2_19@@6 f_19@@31) (= (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@65) o2_19@@6 f_19@@31) (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@6 f_19@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@6 f_19@@31))
))) (forall ((o2_19@@7 T@Ref) (f_19@@32 T@Field_14477_14482) ) (!  (=> (select (|PolymorphicMapType_11627_14465_43424#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_19@@9))) o2_19@@7 f_19@@32) (= (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@65) o2_19@@7 f_19@@32) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@7 f_19@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@7 f_19@@32))
))) (forall ((o2_19@@8 T@Ref) (f_19@@33 T@Field_14492_14493) ) (!  (=> (select (|PolymorphicMapType_11627_14465_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_19@@9))) o2_19@@8 f_19@@33) (= (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@65) o2_19@@8 f_19@@33) (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@8 f_19@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@8 f_19@@33))
))) (forall ((o2_19@@9 T@Ref) (f_19@@34 T@Field_15021_1464) ) (!  (=> (select (|PolymorphicMapType_11627_15021_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_19@@9))) o2_19@@9 f_19@@34) (= (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@65) o2_19@@9 f_19@@34) (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@9 f_19@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@9 f_19@@34))
))) (forall ((o2_19@@10 T@Ref) (f_19@@35 T@Field_15021_53) ) (!  (=> (select (|PolymorphicMapType_11627_15021_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_19@@9))) o2_19@@10 f_19@@35) (= (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@65) o2_19@@10 f_19@@35) (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@10 f_19@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@10 f_19@@35))
))) (forall ((o2_19@@11 T@Ref) (f_19@@36 T@Field_15021_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15021_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_19@@9))) o2_19@@11 f_19@@36) (= (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@65) o2_19@@11 f_19@@36) (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@11 f_19@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@11 f_19@@36))
))) (forall ((o2_19@@12 T@Ref) (f_19@@37 T@Field_15033_15038) ) (!  (=> (select (|PolymorphicMapType_11627_15021_44472#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_19@@9))) o2_19@@12 f_19@@37) (= (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@65) o2_19@@12 f_19@@37) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@12 f_19@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@12 f_19@@37))
))) (forall ((o2_19@@13 T@Ref) (f_19@@38 T@Field_15048_15049) ) (!  (=> (select (|PolymorphicMapType_11627_15021_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_19@@9))) o2_19@@13 f_19@@38) (= (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@65) o2_19@@13 f_19@@38) (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@13 f_19@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@13 f_19@@38))
))) (forall ((o2_19@@14 T@Ref) (f_19@@39 T@Field_15623_1199) ) (!  (=> (select (|PolymorphicMapType_11627_15623_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_19@@9))) o2_19@@14 f_19@@39) (= (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@65) o2_19@@14 f_19@@39) (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@14 f_19@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@14 f_19@@39))
))) (forall ((o2_19@@15 T@Ref) (f_19@@40 T@Field_15623_53) ) (!  (=> (select (|PolymorphicMapType_11627_15623_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_19@@9))) o2_19@@15 f_19@@40) (= (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@65) o2_19@@15 f_19@@40) (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@15 f_19@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@15 f_19@@40))
))) (forall ((o2_19@@16 T@Ref) (f_19@@41 T@Field_15623_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15623_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_19@@9))) o2_19@@16 f_19@@41) (= (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@65) o2_19@@16 f_19@@41) (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@16 f_19@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@16 f_19@@41))
))) (forall ((o2_19@@17 T@Ref) (f_19@@42 T@Field_15636_15641) ) (!  (=> (select (|PolymorphicMapType_11627_15623_45520#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_19@@9))) o2_19@@17 f_19@@42) (= (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@65) o2_19@@17 f_19@@42) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@17 f_19@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@17 f_19@@42))
))) (forall ((o2_19@@18 T@Ref) (f_19@@43 T@Field_15623_15624) ) (!  (=> (select (|PolymorphicMapType_11627_15623_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_19@@9))) o2_19@@18 f_19@@43) (= (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@65) o2_19@@18 f_19@@43) (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@18 f_19@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@18 f_19@@43))
))) (forall ((o2_19@@19 T@Ref) (f_19@@44 T@Field_16561_1199) ) (!  (=> (select (|PolymorphicMapType_11627_16561_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_19@@9))) o2_19@@19 f_19@@44) (= (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@65) o2_19@@19 f_19@@44) (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@19 f_19@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@19 f_19@@44))
))) (forall ((o2_19@@20 T@Ref) (f_19@@45 T@Field_16561_53) ) (!  (=> (select (|PolymorphicMapType_11627_16561_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_19@@9))) o2_19@@20 f_19@@45) (= (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@65) o2_19@@20 f_19@@45) (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@20 f_19@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@20 f_19@@45))
))) (forall ((o2_19@@21 T@Ref) (f_19@@46 T@Field_16561_11152) ) (!  (=> (select (|PolymorphicMapType_11627_16561_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_19@@9))) o2_19@@21 f_19@@46) (= (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@65) o2_19@@21 f_19@@46) (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@21 f_19@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@21 f_19@@46))
))) (forall ((o2_19@@22 T@Ref) (f_19@@47 T@Field_16574_16579) ) (!  (=> (select (|PolymorphicMapType_11627_16561_46568#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_19@@9))) o2_19@@22 f_19@@47) (= (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) o2_19@@22 f_19@@47) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@22 f_19@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@22 f_19@@47))
))) (forall ((o2_19@@23 T@Ref) (f_19@@48 T@Field_16561_16562) ) (!  (=> (select (|PolymorphicMapType_11627_16561_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_19@@9))) o2_19@@23 f_19@@48) (= (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@65) o2_19@@23 f_19@@48) (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@23 f_19@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@36) o2_19@@23 f_19@@48))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@36 Mask@@87) (IsPredicateField_6364_6365 pm_f_19@@9))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_11078) (ExhaleHeap@@37 T@PolymorphicMapType_11078) (Mask@@88 T@PolymorphicMapType_11099) (pm_f_19@@10 T@Field_15623_15624) ) (!  (=> (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@37 Mask@@88) (=> (and (HasDirectPerm_15623_14493 Mask@@88 null pm_f_19@@10) (IsPredicateField_6339_6340 pm_f_19@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_19@@24 T@Ref) (f_19@@49 T@Field_15576_1716) ) (!  (=> (select (|PolymorphicMapType_11627_6336_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_19@@10))) o2_19@@24 f_19@@49) (= (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@66) o2_19@@24 f_19@@49) (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@24 f_19@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@24 f_19@@49))
)) (forall ((o2_19@@25 T@Ref) (f_19@@50 T@Field_11138_53) ) (!  (=> (select (|PolymorphicMapType_11627_6336_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_19@@10))) o2_19@@25 f_19@@50) (= (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@66) o2_19@@25 f_19@@50) (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@25 f_19@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@25 f_19@@50))
))) (forall ((o2_19@@26 T@Ref) (f_19@@51 T@Field_11151_11152) ) (!  (=> (select (|PolymorphicMapType_11627_6336_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_19@@10))) o2_19@@26 f_19@@51) (= (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@66) o2_19@@26 f_19@@51) (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@26 f_19@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@26 f_19@@51))
))) (forall ((o2_19@@27 T@Ref) (f_19@@52 T@Field_11138_14482) ) (!  (=> (select (|PolymorphicMapType_11627_6336_42376#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_19@@10))) o2_19@@27 f_19@@52) (= (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@66) o2_19@@27 f_19@@52) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@27 f_19@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@27 f_19@@52))
))) (forall ((o2_19@@28 T@Ref) (f_19@@53 T@Field_11138_14493) ) (!  (=> (select (|PolymorphicMapType_11627_6336_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_19@@10))) o2_19@@28 f_19@@53) (= (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@66) o2_19@@28 f_19@@53) (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@28 f_19@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@28 f_19@@53))
))) (forall ((o2_19@@29 T@Ref) (f_19@@54 T@Field_14465_1199) ) (!  (=> (select (|PolymorphicMapType_11627_14465_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_19@@10))) o2_19@@29 f_19@@54) (= (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@66) o2_19@@29 f_19@@54) (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@29 f_19@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@29 f_19@@54))
))) (forall ((o2_19@@30 T@Ref) (f_19@@55 T@Field_14465_53) ) (!  (=> (select (|PolymorphicMapType_11627_14465_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_19@@10))) o2_19@@30 f_19@@55) (= (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@66) o2_19@@30 f_19@@55) (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@30 f_19@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@30 f_19@@55))
))) (forall ((o2_19@@31 T@Ref) (f_19@@56 T@Field_14465_11152) ) (!  (=> (select (|PolymorphicMapType_11627_14465_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_19@@10))) o2_19@@31 f_19@@56) (= (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@66) o2_19@@31 f_19@@56) (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@31 f_19@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@31 f_19@@56))
))) (forall ((o2_19@@32 T@Ref) (f_19@@57 T@Field_14477_14482) ) (!  (=> (select (|PolymorphicMapType_11627_14465_43424#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_19@@10))) o2_19@@32 f_19@@57) (= (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@66) o2_19@@32 f_19@@57) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@32 f_19@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@32 f_19@@57))
))) (forall ((o2_19@@33 T@Ref) (f_19@@58 T@Field_14492_14493) ) (!  (=> (select (|PolymorphicMapType_11627_14465_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_19@@10))) o2_19@@33 f_19@@58) (= (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@66) o2_19@@33 f_19@@58) (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@33 f_19@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@33 f_19@@58))
))) (forall ((o2_19@@34 T@Ref) (f_19@@59 T@Field_15021_1464) ) (!  (=> (select (|PolymorphicMapType_11627_15021_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_19@@10))) o2_19@@34 f_19@@59) (= (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@66) o2_19@@34 f_19@@59) (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@34 f_19@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@34 f_19@@59))
))) (forall ((o2_19@@35 T@Ref) (f_19@@60 T@Field_15021_53) ) (!  (=> (select (|PolymorphicMapType_11627_15021_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_19@@10))) o2_19@@35 f_19@@60) (= (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@66) o2_19@@35 f_19@@60) (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@35 f_19@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@35 f_19@@60))
))) (forall ((o2_19@@36 T@Ref) (f_19@@61 T@Field_15021_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15021_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_19@@10))) o2_19@@36 f_19@@61) (= (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@66) o2_19@@36 f_19@@61) (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@36 f_19@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@36 f_19@@61))
))) (forall ((o2_19@@37 T@Ref) (f_19@@62 T@Field_15033_15038) ) (!  (=> (select (|PolymorphicMapType_11627_15021_44472#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_19@@10))) o2_19@@37 f_19@@62) (= (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@66) o2_19@@37 f_19@@62) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@37 f_19@@62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@37 f_19@@62))
))) (forall ((o2_19@@38 T@Ref) (f_19@@63 T@Field_15048_15049) ) (!  (=> (select (|PolymorphicMapType_11627_15021_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_19@@10))) o2_19@@38 f_19@@63) (= (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@66) o2_19@@38 f_19@@63) (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@38 f_19@@63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@38 f_19@@63))
))) (forall ((o2_19@@39 T@Ref) (f_19@@64 T@Field_15623_1199) ) (!  (=> (select (|PolymorphicMapType_11627_15623_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_19@@10))) o2_19@@39 f_19@@64) (= (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@66) o2_19@@39 f_19@@64) (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@39 f_19@@64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@39 f_19@@64))
))) (forall ((o2_19@@40 T@Ref) (f_19@@65 T@Field_15623_53) ) (!  (=> (select (|PolymorphicMapType_11627_15623_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_19@@10))) o2_19@@40 f_19@@65) (= (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@66) o2_19@@40 f_19@@65) (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@40 f_19@@65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@40 f_19@@65))
))) (forall ((o2_19@@41 T@Ref) (f_19@@66 T@Field_15623_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15623_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_19@@10))) o2_19@@41 f_19@@66) (= (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@66) o2_19@@41 f_19@@66) (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@41 f_19@@66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@41 f_19@@66))
))) (forall ((o2_19@@42 T@Ref) (f_19@@67 T@Field_15636_15641) ) (!  (=> (select (|PolymorphicMapType_11627_15623_45520#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_19@@10))) o2_19@@42 f_19@@67) (= (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) o2_19@@42 f_19@@67) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@42 f_19@@67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@42 f_19@@67))
))) (forall ((o2_19@@43 T@Ref) (f_19@@68 T@Field_15623_15624) ) (!  (=> (select (|PolymorphicMapType_11627_15623_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_19@@10))) o2_19@@43 f_19@@68) (= (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@66) o2_19@@43 f_19@@68) (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@43 f_19@@68)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@43 f_19@@68))
))) (forall ((o2_19@@44 T@Ref) (f_19@@69 T@Field_16561_1199) ) (!  (=> (select (|PolymorphicMapType_11627_16561_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_19@@10))) o2_19@@44 f_19@@69) (= (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@66) o2_19@@44 f_19@@69) (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@44 f_19@@69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@44 f_19@@69))
))) (forall ((o2_19@@45 T@Ref) (f_19@@70 T@Field_16561_53) ) (!  (=> (select (|PolymorphicMapType_11627_16561_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_19@@10))) o2_19@@45 f_19@@70) (= (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@66) o2_19@@45 f_19@@70) (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@45 f_19@@70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@45 f_19@@70))
))) (forall ((o2_19@@46 T@Ref) (f_19@@71 T@Field_16561_11152) ) (!  (=> (select (|PolymorphicMapType_11627_16561_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_19@@10))) o2_19@@46 f_19@@71) (= (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@66) o2_19@@46 f_19@@71) (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@46 f_19@@71)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@46 f_19@@71))
))) (forall ((o2_19@@47 T@Ref) (f_19@@72 T@Field_16574_16579) ) (!  (=> (select (|PolymorphicMapType_11627_16561_46568#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_19@@10))) o2_19@@47 f_19@@72) (= (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@66) o2_19@@47 f_19@@72) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@47 f_19@@72)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@47 f_19@@72))
))) (forall ((o2_19@@48 T@Ref) (f_19@@73 T@Field_16561_16562) ) (!  (=> (select (|PolymorphicMapType_11627_16561_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_19@@10))) o2_19@@48 f_19@@73) (= (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@66) o2_19@@48 f_19@@73) (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@48 f_19@@73)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@37) o2_19@@48 f_19@@73))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@37 Mask@@88) (IsPredicateField_6339_6340 pm_f_19@@10))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_11078) (ExhaleHeap@@38 T@PolymorphicMapType_11078) (Mask@@89 T@PolymorphicMapType_11099) (pm_f_19@@11 T@Field_15048_15049) ) (!  (=> (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@38 Mask@@89) (=> (and (HasDirectPerm_15021_14493 Mask@@89 null pm_f_19@@11) (IsPredicateField_6317_6318 pm_f_19@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_19@@49 T@Ref) (f_19@@74 T@Field_15576_1716) ) (!  (=> (select (|PolymorphicMapType_11627_6336_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_19@@11))) o2_19@@49 f_19@@74) (= (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@67) o2_19@@49 f_19@@74) (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@49 f_19@@74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@49 f_19@@74))
)) (forall ((o2_19@@50 T@Ref) (f_19@@75 T@Field_11138_53) ) (!  (=> (select (|PolymorphicMapType_11627_6336_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_19@@11))) o2_19@@50 f_19@@75) (= (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@67) o2_19@@50 f_19@@75) (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@50 f_19@@75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@50 f_19@@75))
))) (forall ((o2_19@@51 T@Ref) (f_19@@76 T@Field_11151_11152) ) (!  (=> (select (|PolymorphicMapType_11627_6336_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_19@@11))) o2_19@@51 f_19@@76) (= (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@67) o2_19@@51 f_19@@76) (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@51 f_19@@76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@51 f_19@@76))
))) (forall ((o2_19@@52 T@Ref) (f_19@@77 T@Field_11138_14482) ) (!  (=> (select (|PolymorphicMapType_11627_6336_42376#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_19@@11))) o2_19@@52 f_19@@77) (= (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@67) o2_19@@52 f_19@@77) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@52 f_19@@77)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@52 f_19@@77))
))) (forall ((o2_19@@53 T@Ref) (f_19@@78 T@Field_11138_14493) ) (!  (=> (select (|PolymorphicMapType_11627_6336_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_19@@11))) o2_19@@53 f_19@@78) (= (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@67) o2_19@@53 f_19@@78) (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@53 f_19@@78)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@53 f_19@@78))
))) (forall ((o2_19@@54 T@Ref) (f_19@@79 T@Field_14465_1199) ) (!  (=> (select (|PolymorphicMapType_11627_14465_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_19@@11))) o2_19@@54 f_19@@79) (= (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@67) o2_19@@54 f_19@@79) (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@54 f_19@@79)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@54 f_19@@79))
))) (forall ((o2_19@@55 T@Ref) (f_19@@80 T@Field_14465_53) ) (!  (=> (select (|PolymorphicMapType_11627_14465_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_19@@11))) o2_19@@55 f_19@@80) (= (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@67) o2_19@@55 f_19@@80) (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@55 f_19@@80)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@55 f_19@@80))
))) (forall ((o2_19@@56 T@Ref) (f_19@@81 T@Field_14465_11152) ) (!  (=> (select (|PolymorphicMapType_11627_14465_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_19@@11))) o2_19@@56 f_19@@81) (= (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@67) o2_19@@56 f_19@@81) (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@56 f_19@@81)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@56 f_19@@81))
))) (forall ((o2_19@@57 T@Ref) (f_19@@82 T@Field_14477_14482) ) (!  (=> (select (|PolymorphicMapType_11627_14465_43424#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_19@@11))) o2_19@@57 f_19@@82) (= (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@67) o2_19@@57 f_19@@82) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@57 f_19@@82)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@57 f_19@@82))
))) (forall ((o2_19@@58 T@Ref) (f_19@@83 T@Field_14492_14493) ) (!  (=> (select (|PolymorphicMapType_11627_14465_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_19@@11))) o2_19@@58 f_19@@83) (= (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@67) o2_19@@58 f_19@@83) (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@58 f_19@@83)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@58 f_19@@83))
))) (forall ((o2_19@@59 T@Ref) (f_19@@84 T@Field_15021_1464) ) (!  (=> (select (|PolymorphicMapType_11627_15021_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_19@@11))) o2_19@@59 f_19@@84) (= (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@67) o2_19@@59 f_19@@84) (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@59 f_19@@84)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@59 f_19@@84))
))) (forall ((o2_19@@60 T@Ref) (f_19@@85 T@Field_15021_53) ) (!  (=> (select (|PolymorphicMapType_11627_15021_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_19@@11))) o2_19@@60 f_19@@85) (= (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@67) o2_19@@60 f_19@@85) (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@60 f_19@@85)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@60 f_19@@85))
))) (forall ((o2_19@@61 T@Ref) (f_19@@86 T@Field_15021_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15021_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_19@@11))) o2_19@@61 f_19@@86) (= (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@67) o2_19@@61 f_19@@86) (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@61 f_19@@86)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@61 f_19@@86))
))) (forall ((o2_19@@62 T@Ref) (f_19@@87 T@Field_15033_15038) ) (!  (=> (select (|PolymorphicMapType_11627_15021_44472#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_19@@11))) o2_19@@62 f_19@@87) (= (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) o2_19@@62 f_19@@87) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@62 f_19@@87)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@62 f_19@@87))
))) (forall ((o2_19@@63 T@Ref) (f_19@@88 T@Field_15048_15049) ) (!  (=> (select (|PolymorphicMapType_11627_15021_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_19@@11))) o2_19@@63 f_19@@88) (= (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@67) o2_19@@63 f_19@@88) (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@63 f_19@@88)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@63 f_19@@88))
))) (forall ((o2_19@@64 T@Ref) (f_19@@89 T@Field_15623_1199) ) (!  (=> (select (|PolymorphicMapType_11627_15623_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_19@@11))) o2_19@@64 f_19@@89) (= (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@67) o2_19@@64 f_19@@89) (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@64 f_19@@89)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@64 f_19@@89))
))) (forall ((o2_19@@65 T@Ref) (f_19@@90 T@Field_15623_53) ) (!  (=> (select (|PolymorphicMapType_11627_15623_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_19@@11))) o2_19@@65 f_19@@90) (= (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@67) o2_19@@65 f_19@@90) (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@65 f_19@@90)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@65 f_19@@90))
))) (forall ((o2_19@@66 T@Ref) (f_19@@91 T@Field_15623_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15623_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_19@@11))) o2_19@@66 f_19@@91) (= (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@67) o2_19@@66 f_19@@91) (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@66 f_19@@91)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@66 f_19@@91))
))) (forall ((o2_19@@67 T@Ref) (f_19@@92 T@Field_15636_15641) ) (!  (=> (select (|PolymorphicMapType_11627_15623_45520#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_19@@11))) o2_19@@67 f_19@@92) (= (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@67) o2_19@@67 f_19@@92) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@67 f_19@@92)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@67 f_19@@92))
))) (forall ((o2_19@@68 T@Ref) (f_19@@93 T@Field_15623_15624) ) (!  (=> (select (|PolymorphicMapType_11627_15623_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_19@@11))) o2_19@@68 f_19@@93) (= (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@67) o2_19@@68 f_19@@93) (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@68 f_19@@93)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@68 f_19@@93))
))) (forall ((o2_19@@69 T@Ref) (f_19@@94 T@Field_16561_1199) ) (!  (=> (select (|PolymorphicMapType_11627_16561_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_19@@11))) o2_19@@69 f_19@@94) (= (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@67) o2_19@@69 f_19@@94) (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@69 f_19@@94)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@69 f_19@@94))
))) (forall ((o2_19@@70 T@Ref) (f_19@@95 T@Field_16561_53) ) (!  (=> (select (|PolymorphicMapType_11627_16561_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_19@@11))) o2_19@@70 f_19@@95) (= (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@67) o2_19@@70 f_19@@95) (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@70 f_19@@95)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@70 f_19@@95))
))) (forall ((o2_19@@71 T@Ref) (f_19@@96 T@Field_16561_11152) ) (!  (=> (select (|PolymorphicMapType_11627_16561_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_19@@11))) o2_19@@71 f_19@@96) (= (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@67) o2_19@@71 f_19@@96) (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@71 f_19@@96)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@71 f_19@@96))
))) (forall ((o2_19@@72 T@Ref) (f_19@@97 T@Field_16574_16579) ) (!  (=> (select (|PolymorphicMapType_11627_16561_46568#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_19@@11))) o2_19@@72 f_19@@97) (= (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@67) o2_19@@72 f_19@@97) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@72 f_19@@97)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@72 f_19@@97))
))) (forall ((o2_19@@73 T@Ref) (f_19@@98 T@Field_16561_16562) ) (!  (=> (select (|PolymorphicMapType_11627_16561_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_19@@11))) o2_19@@73 f_19@@98) (= (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@67) o2_19@@73 f_19@@98) (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@73 f_19@@98)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@38) o2_19@@73 f_19@@98))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@38 Mask@@89) (IsPredicateField_6317_6318 pm_f_19@@11))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_11078) (ExhaleHeap@@39 T@PolymorphicMapType_11078) (Mask@@90 T@PolymorphicMapType_11099) (pm_f_19@@12 T@Field_14492_14493) ) (!  (=> (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@39 Mask@@90) (=> (and (HasDirectPerm_14465_14493 Mask@@90 null pm_f_19@@12) (IsPredicateField_6287_6288 pm_f_19@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_19@@74 T@Ref) (f_19@@99 T@Field_15576_1716) ) (!  (=> (select (|PolymorphicMapType_11627_6336_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_19@@12))) o2_19@@74 f_19@@99) (= (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@68) o2_19@@74 f_19@@99) (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@74 f_19@@99)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@74 f_19@@99))
)) (forall ((o2_19@@75 T@Ref) (f_19@@100 T@Field_11138_53) ) (!  (=> (select (|PolymorphicMapType_11627_6336_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_19@@12))) o2_19@@75 f_19@@100) (= (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@68) o2_19@@75 f_19@@100) (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@75 f_19@@100)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@75 f_19@@100))
))) (forall ((o2_19@@76 T@Ref) (f_19@@101 T@Field_11151_11152) ) (!  (=> (select (|PolymorphicMapType_11627_6336_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_19@@12))) o2_19@@76 f_19@@101) (= (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@68) o2_19@@76 f_19@@101) (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@76 f_19@@101)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@76 f_19@@101))
))) (forall ((o2_19@@77 T@Ref) (f_19@@102 T@Field_11138_14482) ) (!  (=> (select (|PolymorphicMapType_11627_6336_42376#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_19@@12))) o2_19@@77 f_19@@102) (= (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@68) o2_19@@77 f_19@@102) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@77 f_19@@102)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@77 f_19@@102))
))) (forall ((o2_19@@78 T@Ref) (f_19@@103 T@Field_11138_14493) ) (!  (=> (select (|PolymorphicMapType_11627_6336_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_19@@12))) o2_19@@78 f_19@@103) (= (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@68) o2_19@@78 f_19@@103) (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@78 f_19@@103)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@78 f_19@@103))
))) (forall ((o2_19@@79 T@Ref) (f_19@@104 T@Field_14465_1199) ) (!  (=> (select (|PolymorphicMapType_11627_14465_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_19@@12))) o2_19@@79 f_19@@104) (= (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@68) o2_19@@79 f_19@@104) (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@79 f_19@@104)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@79 f_19@@104))
))) (forall ((o2_19@@80 T@Ref) (f_19@@105 T@Field_14465_53) ) (!  (=> (select (|PolymorphicMapType_11627_14465_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_19@@12))) o2_19@@80 f_19@@105) (= (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@68) o2_19@@80 f_19@@105) (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@80 f_19@@105)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@80 f_19@@105))
))) (forall ((o2_19@@81 T@Ref) (f_19@@106 T@Field_14465_11152) ) (!  (=> (select (|PolymorphicMapType_11627_14465_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_19@@12))) o2_19@@81 f_19@@106) (= (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@68) o2_19@@81 f_19@@106) (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@81 f_19@@106)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@81 f_19@@106))
))) (forall ((o2_19@@82 T@Ref) (f_19@@107 T@Field_14477_14482) ) (!  (=> (select (|PolymorphicMapType_11627_14465_43424#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_19@@12))) o2_19@@82 f_19@@107) (= (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) o2_19@@82 f_19@@107) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@82 f_19@@107)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@82 f_19@@107))
))) (forall ((o2_19@@83 T@Ref) (f_19@@108 T@Field_14492_14493) ) (!  (=> (select (|PolymorphicMapType_11627_14465_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_19@@12))) o2_19@@83 f_19@@108) (= (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@68) o2_19@@83 f_19@@108) (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@83 f_19@@108)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@83 f_19@@108))
))) (forall ((o2_19@@84 T@Ref) (f_19@@109 T@Field_15021_1464) ) (!  (=> (select (|PolymorphicMapType_11627_15021_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_19@@12))) o2_19@@84 f_19@@109) (= (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@68) o2_19@@84 f_19@@109) (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@84 f_19@@109)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@84 f_19@@109))
))) (forall ((o2_19@@85 T@Ref) (f_19@@110 T@Field_15021_53) ) (!  (=> (select (|PolymorphicMapType_11627_15021_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_19@@12))) o2_19@@85 f_19@@110) (= (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@68) o2_19@@85 f_19@@110) (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@85 f_19@@110)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@85 f_19@@110))
))) (forall ((o2_19@@86 T@Ref) (f_19@@111 T@Field_15021_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15021_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_19@@12))) o2_19@@86 f_19@@111) (= (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@68) o2_19@@86 f_19@@111) (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@86 f_19@@111)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@86 f_19@@111))
))) (forall ((o2_19@@87 T@Ref) (f_19@@112 T@Field_15033_15038) ) (!  (=> (select (|PolymorphicMapType_11627_15021_44472#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_19@@12))) o2_19@@87 f_19@@112) (= (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@68) o2_19@@87 f_19@@112) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@87 f_19@@112)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@87 f_19@@112))
))) (forall ((o2_19@@88 T@Ref) (f_19@@113 T@Field_15048_15049) ) (!  (=> (select (|PolymorphicMapType_11627_15021_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_19@@12))) o2_19@@88 f_19@@113) (= (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@68) o2_19@@88 f_19@@113) (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@88 f_19@@113)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@88 f_19@@113))
))) (forall ((o2_19@@89 T@Ref) (f_19@@114 T@Field_15623_1199) ) (!  (=> (select (|PolymorphicMapType_11627_15623_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_19@@12))) o2_19@@89 f_19@@114) (= (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@68) o2_19@@89 f_19@@114) (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@89 f_19@@114)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@89 f_19@@114))
))) (forall ((o2_19@@90 T@Ref) (f_19@@115 T@Field_15623_53) ) (!  (=> (select (|PolymorphicMapType_11627_15623_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_19@@12))) o2_19@@90 f_19@@115) (= (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@68) o2_19@@90 f_19@@115) (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@90 f_19@@115)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@90 f_19@@115))
))) (forall ((o2_19@@91 T@Ref) (f_19@@116 T@Field_15623_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15623_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_19@@12))) o2_19@@91 f_19@@116) (= (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@68) o2_19@@91 f_19@@116) (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@91 f_19@@116)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@91 f_19@@116))
))) (forall ((o2_19@@92 T@Ref) (f_19@@117 T@Field_15636_15641) ) (!  (=> (select (|PolymorphicMapType_11627_15623_45520#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_19@@12))) o2_19@@92 f_19@@117) (= (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@68) o2_19@@92 f_19@@117) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@92 f_19@@117)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@92 f_19@@117))
))) (forall ((o2_19@@93 T@Ref) (f_19@@118 T@Field_15623_15624) ) (!  (=> (select (|PolymorphicMapType_11627_15623_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_19@@12))) o2_19@@93 f_19@@118) (= (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@68) o2_19@@93 f_19@@118) (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@93 f_19@@118)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@93 f_19@@118))
))) (forall ((o2_19@@94 T@Ref) (f_19@@119 T@Field_16561_1199) ) (!  (=> (select (|PolymorphicMapType_11627_16561_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_19@@12))) o2_19@@94 f_19@@119) (= (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@68) o2_19@@94 f_19@@119) (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@94 f_19@@119)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@94 f_19@@119))
))) (forall ((o2_19@@95 T@Ref) (f_19@@120 T@Field_16561_53) ) (!  (=> (select (|PolymorphicMapType_11627_16561_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_19@@12))) o2_19@@95 f_19@@120) (= (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@68) o2_19@@95 f_19@@120) (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@95 f_19@@120)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@95 f_19@@120))
))) (forall ((o2_19@@96 T@Ref) (f_19@@121 T@Field_16561_11152) ) (!  (=> (select (|PolymorphicMapType_11627_16561_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_19@@12))) o2_19@@96 f_19@@121) (= (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@68) o2_19@@96 f_19@@121) (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@96 f_19@@121)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@96 f_19@@121))
))) (forall ((o2_19@@97 T@Ref) (f_19@@122 T@Field_16574_16579) ) (!  (=> (select (|PolymorphicMapType_11627_16561_46568#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_19@@12))) o2_19@@97 f_19@@122) (= (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@68) o2_19@@97 f_19@@122) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@97 f_19@@122)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@97 f_19@@122))
))) (forall ((o2_19@@98 T@Ref) (f_19@@123 T@Field_16561_16562) ) (!  (=> (select (|PolymorphicMapType_11627_16561_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_19@@12))) o2_19@@98 f_19@@123) (= (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@68) o2_19@@98 f_19@@123) (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@98 f_19@@123)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@39) o2_19@@98 f_19@@123))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@39 Mask@@90) (IsPredicateField_6287_6288 pm_f_19@@12))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_11078) (ExhaleHeap@@40 T@PolymorphicMapType_11078) (Mask@@91 T@PolymorphicMapType_11099) (pm_f_19@@13 T@Field_11138_14493) ) (!  (=> (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@40 Mask@@91) (=> (and (HasDirectPerm_11138_14493 Mask@@91 null pm_f_19@@13) (IsPredicateField_11138_40083 pm_f_19@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_19@@99 T@Ref) (f_19@@124 T@Field_15576_1716) ) (!  (=> (select (|PolymorphicMapType_11627_6336_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_19@@13))) o2_19@@99 f_19@@124) (= (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@69) o2_19@@99 f_19@@124) (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@99 f_19@@124)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@99 f_19@@124))
)) (forall ((o2_19@@100 T@Ref) (f_19@@125 T@Field_11138_53) ) (!  (=> (select (|PolymorphicMapType_11627_6336_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_19@@13))) o2_19@@100 f_19@@125) (= (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@69) o2_19@@100 f_19@@125) (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@100 f_19@@125)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@100 f_19@@125))
))) (forall ((o2_19@@101 T@Ref) (f_19@@126 T@Field_11151_11152) ) (!  (=> (select (|PolymorphicMapType_11627_6336_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_19@@13))) o2_19@@101 f_19@@126) (= (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@69) o2_19@@101 f_19@@126) (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@101 f_19@@126)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@101 f_19@@126))
))) (forall ((o2_19@@102 T@Ref) (f_19@@127 T@Field_11138_14482) ) (!  (=> (select (|PolymorphicMapType_11627_6336_42376#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_19@@13))) o2_19@@102 f_19@@127) (= (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) o2_19@@102 f_19@@127) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@102 f_19@@127)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@102 f_19@@127))
))) (forall ((o2_19@@103 T@Ref) (f_19@@128 T@Field_11138_14493) ) (!  (=> (select (|PolymorphicMapType_11627_6336_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_19@@13))) o2_19@@103 f_19@@128) (= (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@69) o2_19@@103 f_19@@128) (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@103 f_19@@128)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@103 f_19@@128))
))) (forall ((o2_19@@104 T@Ref) (f_19@@129 T@Field_14465_1199) ) (!  (=> (select (|PolymorphicMapType_11627_14465_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_19@@13))) o2_19@@104 f_19@@129) (= (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@69) o2_19@@104 f_19@@129) (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@104 f_19@@129)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@104 f_19@@129))
))) (forall ((o2_19@@105 T@Ref) (f_19@@130 T@Field_14465_53) ) (!  (=> (select (|PolymorphicMapType_11627_14465_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_19@@13))) o2_19@@105 f_19@@130) (= (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@69) o2_19@@105 f_19@@130) (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@105 f_19@@130)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@105 f_19@@130))
))) (forall ((o2_19@@106 T@Ref) (f_19@@131 T@Field_14465_11152) ) (!  (=> (select (|PolymorphicMapType_11627_14465_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_19@@13))) o2_19@@106 f_19@@131) (= (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@69) o2_19@@106 f_19@@131) (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@106 f_19@@131)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@106 f_19@@131))
))) (forall ((o2_19@@107 T@Ref) (f_19@@132 T@Field_14477_14482) ) (!  (=> (select (|PolymorphicMapType_11627_14465_43424#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_19@@13))) o2_19@@107 f_19@@132) (= (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@69) o2_19@@107 f_19@@132) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@107 f_19@@132)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@107 f_19@@132))
))) (forall ((o2_19@@108 T@Ref) (f_19@@133 T@Field_14492_14493) ) (!  (=> (select (|PolymorphicMapType_11627_14465_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_19@@13))) o2_19@@108 f_19@@133) (= (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@69) o2_19@@108 f_19@@133) (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@108 f_19@@133)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@108 f_19@@133))
))) (forall ((o2_19@@109 T@Ref) (f_19@@134 T@Field_15021_1464) ) (!  (=> (select (|PolymorphicMapType_11627_15021_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_19@@13))) o2_19@@109 f_19@@134) (= (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@69) o2_19@@109 f_19@@134) (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@109 f_19@@134)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@109 f_19@@134))
))) (forall ((o2_19@@110 T@Ref) (f_19@@135 T@Field_15021_53) ) (!  (=> (select (|PolymorphicMapType_11627_15021_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_19@@13))) o2_19@@110 f_19@@135) (= (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@69) o2_19@@110 f_19@@135) (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@110 f_19@@135)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@110 f_19@@135))
))) (forall ((o2_19@@111 T@Ref) (f_19@@136 T@Field_15021_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15021_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_19@@13))) o2_19@@111 f_19@@136) (= (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@69) o2_19@@111 f_19@@136) (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@111 f_19@@136)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@111 f_19@@136))
))) (forall ((o2_19@@112 T@Ref) (f_19@@137 T@Field_15033_15038) ) (!  (=> (select (|PolymorphicMapType_11627_15021_44472#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_19@@13))) o2_19@@112 f_19@@137) (= (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@69) o2_19@@112 f_19@@137) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@112 f_19@@137)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@112 f_19@@137))
))) (forall ((o2_19@@113 T@Ref) (f_19@@138 T@Field_15048_15049) ) (!  (=> (select (|PolymorphicMapType_11627_15021_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_19@@13))) o2_19@@113 f_19@@138) (= (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@69) o2_19@@113 f_19@@138) (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@113 f_19@@138)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@113 f_19@@138))
))) (forall ((o2_19@@114 T@Ref) (f_19@@139 T@Field_15623_1199) ) (!  (=> (select (|PolymorphicMapType_11627_15623_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_19@@13))) o2_19@@114 f_19@@139) (= (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@69) o2_19@@114 f_19@@139) (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@114 f_19@@139)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@114 f_19@@139))
))) (forall ((o2_19@@115 T@Ref) (f_19@@140 T@Field_15623_53) ) (!  (=> (select (|PolymorphicMapType_11627_15623_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_19@@13))) o2_19@@115 f_19@@140) (= (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@69) o2_19@@115 f_19@@140) (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@115 f_19@@140)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@115 f_19@@140))
))) (forall ((o2_19@@116 T@Ref) (f_19@@141 T@Field_15623_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15623_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_19@@13))) o2_19@@116 f_19@@141) (= (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@69) o2_19@@116 f_19@@141) (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@116 f_19@@141)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@116 f_19@@141))
))) (forall ((o2_19@@117 T@Ref) (f_19@@142 T@Field_15636_15641) ) (!  (=> (select (|PolymorphicMapType_11627_15623_45520#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_19@@13))) o2_19@@117 f_19@@142) (= (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@69) o2_19@@117 f_19@@142) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@117 f_19@@142)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@117 f_19@@142))
))) (forall ((o2_19@@118 T@Ref) (f_19@@143 T@Field_15623_15624) ) (!  (=> (select (|PolymorphicMapType_11627_15623_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_19@@13))) o2_19@@118 f_19@@143) (= (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@69) o2_19@@118 f_19@@143) (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@118 f_19@@143)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@118 f_19@@143))
))) (forall ((o2_19@@119 T@Ref) (f_19@@144 T@Field_16561_1199) ) (!  (=> (select (|PolymorphicMapType_11627_16561_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_19@@13))) o2_19@@119 f_19@@144) (= (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@69) o2_19@@119 f_19@@144) (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@119 f_19@@144)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@119 f_19@@144))
))) (forall ((o2_19@@120 T@Ref) (f_19@@145 T@Field_16561_53) ) (!  (=> (select (|PolymorphicMapType_11627_16561_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_19@@13))) o2_19@@120 f_19@@145) (= (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@69) o2_19@@120 f_19@@145) (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@120 f_19@@145)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@120 f_19@@145))
))) (forall ((o2_19@@121 T@Ref) (f_19@@146 T@Field_16561_11152) ) (!  (=> (select (|PolymorphicMapType_11627_16561_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_19@@13))) o2_19@@121 f_19@@146) (= (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@69) o2_19@@121 f_19@@146) (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@121 f_19@@146)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@121 f_19@@146))
))) (forall ((o2_19@@122 T@Ref) (f_19@@147 T@Field_16574_16579) ) (!  (=> (select (|PolymorphicMapType_11627_16561_46568#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_19@@13))) o2_19@@122 f_19@@147) (= (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@69) o2_19@@122 f_19@@147) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@122 f_19@@147)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@122 f_19@@147))
))) (forall ((o2_19@@123 T@Ref) (f_19@@148 T@Field_16561_16562) ) (!  (=> (select (|PolymorphicMapType_11627_16561_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_19@@13))) o2_19@@123 f_19@@148) (= (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@69) o2_19@@123 f_19@@148) (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@123 f_19@@148)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@40) o2_19@@123 f_19@@148))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@40 Mask@@91) (IsPredicateField_11138_40083 pm_f_19@@13))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_11078) (ExhaleHeap@@41 T@PolymorphicMapType_11078) (Mask@@92 T@PolymorphicMapType_11099) (pm_f_19@@14 T@Field_16561_16562) ) (!  (=> (IdenticalOnKnownLocations Heap@@70 ExhaleHeap@@41 Mask@@92) (=> (and (HasDirectPerm_16561_14493 Mask@@92 null pm_f_19@@14) (IsWandField_16561_49787 pm_f_19@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_19@@124 T@Ref) (f_19@@149 T@Field_15576_1716) ) (!  (=> (select (|PolymorphicMapType_11627_6336_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_19@@14))) o2_19@@124 f_19@@149) (= (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@70) o2_19@@124 f_19@@149) (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@124 f_19@@149)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@124 f_19@@149))
)) (forall ((o2_19@@125 T@Ref) (f_19@@150 T@Field_11138_53) ) (!  (=> (select (|PolymorphicMapType_11627_6336_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_19@@14))) o2_19@@125 f_19@@150) (= (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@70) o2_19@@125 f_19@@150) (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@125 f_19@@150)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@125 f_19@@150))
))) (forall ((o2_19@@126 T@Ref) (f_19@@151 T@Field_11151_11152) ) (!  (=> (select (|PolymorphicMapType_11627_6336_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_19@@14))) o2_19@@126 f_19@@151) (= (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@70) o2_19@@126 f_19@@151) (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@126 f_19@@151)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@126 f_19@@151))
))) (forall ((o2_19@@127 T@Ref) (f_19@@152 T@Field_11138_14482) ) (!  (=> (select (|PolymorphicMapType_11627_6336_42376#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_19@@14))) o2_19@@127 f_19@@152) (= (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@70) o2_19@@127 f_19@@152) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@127 f_19@@152)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@127 f_19@@152))
))) (forall ((o2_19@@128 T@Ref) (f_19@@153 T@Field_11138_14493) ) (!  (=> (select (|PolymorphicMapType_11627_6336_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_19@@14))) o2_19@@128 f_19@@153) (= (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@70) o2_19@@128 f_19@@153) (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@128 f_19@@153)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@128 f_19@@153))
))) (forall ((o2_19@@129 T@Ref) (f_19@@154 T@Field_14465_1199) ) (!  (=> (select (|PolymorphicMapType_11627_14465_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_19@@14))) o2_19@@129 f_19@@154) (= (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@70) o2_19@@129 f_19@@154) (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@129 f_19@@154)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@129 f_19@@154))
))) (forall ((o2_19@@130 T@Ref) (f_19@@155 T@Field_14465_53) ) (!  (=> (select (|PolymorphicMapType_11627_14465_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_19@@14))) o2_19@@130 f_19@@155) (= (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@70) o2_19@@130 f_19@@155) (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@130 f_19@@155)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@130 f_19@@155))
))) (forall ((o2_19@@131 T@Ref) (f_19@@156 T@Field_14465_11152) ) (!  (=> (select (|PolymorphicMapType_11627_14465_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_19@@14))) o2_19@@131 f_19@@156) (= (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@70) o2_19@@131 f_19@@156) (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@131 f_19@@156)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@131 f_19@@156))
))) (forall ((o2_19@@132 T@Ref) (f_19@@157 T@Field_14477_14482) ) (!  (=> (select (|PolymorphicMapType_11627_14465_43424#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_19@@14))) o2_19@@132 f_19@@157) (= (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@70) o2_19@@132 f_19@@157) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@132 f_19@@157)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@132 f_19@@157))
))) (forall ((o2_19@@133 T@Ref) (f_19@@158 T@Field_14492_14493) ) (!  (=> (select (|PolymorphicMapType_11627_14465_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_19@@14))) o2_19@@133 f_19@@158) (= (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@70) o2_19@@133 f_19@@158) (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@133 f_19@@158)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@133 f_19@@158))
))) (forall ((o2_19@@134 T@Ref) (f_19@@159 T@Field_15021_1464) ) (!  (=> (select (|PolymorphicMapType_11627_15021_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_19@@14))) o2_19@@134 f_19@@159) (= (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@70) o2_19@@134 f_19@@159) (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@134 f_19@@159)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@134 f_19@@159))
))) (forall ((o2_19@@135 T@Ref) (f_19@@160 T@Field_15021_53) ) (!  (=> (select (|PolymorphicMapType_11627_15021_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_19@@14))) o2_19@@135 f_19@@160) (= (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@70) o2_19@@135 f_19@@160) (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@135 f_19@@160)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@135 f_19@@160))
))) (forall ((o2_19@@136 T@Ref) (f_19@@161 T@Field_15021_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15021_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_19@@14))) o2_19@@136 f_19@@161) (= (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@70) o2_19@@136 f_19@@161) (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@136 f_19@@161)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@136 f_19@@161))
))) (forall ((o2_19@@137 T@Ref) (f_19@@162 T@Field_15033_15038) ) (!  (=> (select (|PolymorphicMapType_11627_15021_44472#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_19@@14))) o2_19@@137 f_19@@162) (= (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@70) o2_19@@137 f_19@@162) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@137 f_19@@162)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@137 f_19@@162))
))) (forall ((o2_19@@138 T@Ref) (f_19@@163 T@Field_15048_15049) ) (!  (=> (select (|PolymorphicMapType_11627_15021_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_19@@14))) o2_19@@138 f_19@@163) (= (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@70) o2_19@@138 f_19@@163) (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@138 f_19@@163)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@138 f_19@@163))
))) (forall ((o2_19@@139 T@Ref) (f_19@@164 T@Field_15623_1199) ) (!  (=> (select (|PolymorphicMapType_11627_15623_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_19@@14))) o2_19@@139 f_19@@164) (= (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@70) o2_19@@139 f_19@@164) (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@139 f_19@@164)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@139 f_19@@164))
))) (forall ((o2_19@@140 T@Ref) (f_19@@165 T@Field_15623_53) ) (!  (=> (select (|PolymorphicMapType_11627_15623_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_19@@14))) o2_19@@140 f_19@@165) (= (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@70) o2_19@@140 f_19@@165) (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@140 f_19@@165)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@140 f_19@@165))
))) (forall ((o2_19@@141 T@Ref) (f_19@@166 T@Field_15623_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15623_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_19@@14))) o2_19@@141 f_19@@166) (= (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@70) o2_19@@141 f_19@@166) (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@141 f_19@@166)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@141 f_19@@166))
))) (forall ((o2_19@@142 T@Ref) (f_19@@167 T@Field_15636_15641) ) (!  (=> (select (|PolymorphicMapType_11627_15623_45520#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_19@@14))) o2_19@@142 f_19@@167) (= (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@70) o2_19@@142 f_19@@167) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@142 f_19@@167)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@142 f_19@@167))
))) (forall ((o2_19@@143 T@Ref) (f_19@@168 T@Field_15623_15624) ) (!  (=> (select (|PolymorphicMapType_11627_15623_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_19@@14))) o2_19@@143 f_19@@168) (= (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@70) o2_19@@143 f_19@@168) (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@143 f_19@@168)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@143 f_19@@168))
))) (forall ((o2_19@@144 T@Ref) (f_19@@169 T@Field_16561_1199) ) (!  (=> (select (|PolymorphicMapType_11627_16561_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_19@@14))) o2_19@@144 f_19@@169) (= (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@70) o2_19@@144 f_19@@169) (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@144 f_19@@169)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@144 f_19@@169))
))) (forall ((o2_19@@145 T@Ref) (f_19@@170 T@Field_16561_53) ) (!  (=> (select (|PolymorphicMapType_11627_16561_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_19@@14))) o2_19@@145 f_19@@170) (= (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@70) o2_19@@145 f_19@@170) (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@145 f_19@@170)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@145 f_19@@170))
))) (forall ((o2_19@@146 T@Ref) (f_19@@171 T@Field_16561_11152) ) (!  (=> (select (|PolymorphicMapType_11627_16561_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_19@@14))) o2_19@@146 f_19@@171) (= (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@70) o2_19@@146 f_19@@171) (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@146 f_19@@171)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@146 f_19@@171))
))) (forall ((o2_19@@147 T@Ref) (f_19@@172 T@Field_16574_16579) ) (!  (=> (select (|PolymorphicMapType_11627_16561_46568#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_19@@14))) o2_19@@147 f_19@@172) (= (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) o2_19@@147 f_19@@172) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@147 f_19@@172)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@147 f_19@@172))
))) (forall ((o2_19@@148 T@Ref) (f_19@@173 T@Field_16561_16562) ) (!  (=> (select (|PolymorphicMapType_11627_16561_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_19@@14))) o2_19@@148 f_19@@173) (= (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@70) o2_19@@148 f_19@@173) (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@148 f_19@@173)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@41) o2_19@@148 f_19@@173))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@70 ExhaleHeap@@41 Mask@@92) (IsWandField_16561_49787 pm_f_19@@14))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_11078) (ExhaleHeap@@42 T@PolymorphicMapType_11078) (Mask@@93 T@PolymorphicMapType_11099) (pm_f_19@@15 T@Field_15623_15624) ) (!  (=> (IdenticalOnKnownLocations Heap@@71 ExhaleHeap@@42 Mask@@93) (=> (and (HasDirectPerm_15623_14493 Mask@@93 null pm_f_19@@15) (IsWandField_15623_49430 pm_f_19@@15)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_19@@149 T@Ref) (f_19@@174 T@Field_15576_1716) ) (!  (=> (select (|PolymorphicMapType_11627_6336_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_19@@15))) o2_19@@149 f_19@@174) (= (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@71) o2_19@@149 f_19@@174) (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@149 f_19@@174)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@149 f_19@@174))
)) (forall ((o2_19@@150 T@Ref) (f_19@@175 T@Field_11138_53) ) (!  (=> (select (|PolymorphicMapType_11627_6336_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_19@@15))) o2_19@@150 f_19@@175) (= (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@71) o2_19@@150 f_19@@175) (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@150 f_19@@175)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@150 f_19@@175))
))) (forall ((o2_19@@151 T@Ref) (f_19@@176 T@Field_11151_11152) ) (!  (=> (select (|PolymorphicMapType_11627_6336_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_19@@15))) o2_19@@151 f_19@@176) (= (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@71) o2_19@@151 f_19@@176) (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@151 f_19@@176)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@151 f_19@@176))
))) (forall ((o2_19@@152 T@Ref) (f_19@@177 T@Field_11138_14482) ) (!  (=> (select (|PolymorphicMapType_11627_6336_42376#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_19@@15))) o2_19@@152 f_19@@177) (= (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@71) o2_19@@152 f_19@@177) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@152 f_19@@177)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@152 f_19@@177))
))) (forall ((o2_19@@153 T@Ref) (f_19@@178 T@Field_11138_14493) ) (!  (=> (select (|PolymorphicMapType_11627_6336_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_19@@15))) o2_19@@153 f_19@@178) (= (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@71) o2_19@@153 f_19@@178) (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@153 f_19@@178)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@153 f_19@@178))
))) (forall ((o2_19@@154 T@Ref) (f_19@@179 T@Field_14465_1199) ) (!  (=> (select (|PolymorphicMapType_11627_14465_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_19@@15))) o2_19@@154 f_19@@179) (= (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@71) o2_19@@154 f_19@@179) (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@154 f_19@@179)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@154 f_19@@179))
))) (forall ((o2_19@@155 T@Ref) (f_19@@180 T@Field_14465_53) ) (!  (=> (select (|PolymorphicMapType_11627_14465_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_19@@15))) o2_19@@155 f_19@@180) (= (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@71) o2_19@@155 f_19@@180) (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@155 f_19@@180)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@155 f_19@@180))
))) (forall ((o2_19@@156 T@Ref) (f_19@@181 T@Field_14465_11152) ) (!  (=> (select (|PolymorphicMapType_11627_14465_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_19@@15))) o2_19@@156 f_19@@181) (= (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@71) o2_19@@156 f_19@@181) (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@156 f_19@@181)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@156 f_19@@181))
))) (forall ((o2_19@@157 T@Ref) (f_19@@182 T@Field_14477_14482) ) (!  (=> (select (|PolymorphicMapType_11627_14465_43424#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_19@@15))) o2_19@@157 f_19@@182) (= (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@71) o2_19@@157 f_19@@182) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@157 f_19@@182)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@157 f_19@@182))
))) (forall ((o2_19@@158 T@Ref) (f_19@@183 T@Field_14492_14493) ) (!  (=> (select (|PolymorphicMapType_11627_14465_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_19@@15))) o2_19@@158 f_19@@183) (= (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@71) o2_19@@158 f_19@@183) (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@158 f_19@@183)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@158 f_19@@183))
))) (forall ((o2_19@@159 T@Ref) (f_19@@184 T@Field_15021_1464) ) (!  (=> (select (|PolymorphicMapType_11627_15021_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_19@@15))) o2_19@@159 f_19@@184) (= (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@71) o2_19@@159 f_19@@184) (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@159 f_19@@184)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@159 f_19@@184))
))) (forall ((o2_19@@160 T@Ref) (f_19@@185 T@Field_15021_53) ) (!  (=> (select (|PolymorphicMapType_11627_15021_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_19@@15))) o2_19@@160 f_19@@185) (= (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@71) o2_19@@160 f_19@@185) (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@160 f_19@@185)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@160 f_19@@185))
))) (forall ((o2_19@@161 T@Ref) (f_19@@186 T@Field_15021_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15021_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_19@@15))) o2_19@@161 f_19@@186) (= (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@71) o2_19@@161 f_19@@186) (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@161 f_19@@186)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@161 f_19@@186))
))) (forall ((o2_19@@162 T@Ref) (f_19@@187 T@Field_15033_15038) ) (!  (=> (select (|PolymorphicMapType_11627_15021_44472#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_19@@15))) o2_19@@162 f_19@@187) (= (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@71) o2_19@@162 f_19@@187) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@162 f_19@@187)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@162 f_19@@187))
))) (forall ((o2_19@@163 T@Ref) (f_19@@188 T@Field_15048_15049) ) (!  (=> (select (|PolymorphicMapType_11627_15021_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_19@@15))) o2_19@@163 f_19@@188) (= (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@71) o2_19@@163 f_19@@188) (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@163 f_19@@188)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@163 f_19@@188))
))) (forall ((o2_19@@164 T@Ref) (f_19@@189 T@Field_15623_1199) ) (!  (=> (select (|PolymorphicMapType_11627_15623_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_19@@15))) o2_19@@164 f_19@@189) (= (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@71) o2_19@@164 f_19@@189) (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@164 f_19@@189)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@164 f_19@@189))
))) (forall ((o2_19@@165 T@Ref) (f_19@@190 T@Field_15623_53) ) (!  (=> (select (|PolymorphicMapType_11627_15623_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_19@@15))) o2_19@@165 f_19@@190) (= (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@71) o2_19@@165 f_19@@190) (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@165 f_19@@190)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@165 f_19@@190))
))) (forall ((o2_19@@166 T@Ref) (f_19@@191 T@Field_15623_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15623_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_19@@15))) o2_19@@166 f_19@@191) (= (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@71) o2_19@@166 f_19@@191) (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@166 f_19@@191)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@166 f_19@@191))
))) (forall ((o2_19@@167 T@Ref) (f_19@@192 T@Field_15636_15641) ) (!  (=> (select (|PolymorphicMapType_11627_15623_45520#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_19@@15))) o2_19@@167 f_19@@192) (= (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) o2_19@@167 f_19@@192) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@167 f_19@@192)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@167 f_19@@192))
))) (forall ((o2_19@@168 T@Ref) (f_19@@193 T@Field_15623_15624) ) (!  (=> (select (|PolymorphicMapType_11627_15623_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_19@@15))) o2_19@@168 f_19@@193) (= (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@71) o2_19@@168 f_19@@193) (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@168 f_19@@193)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@168 f_19@@193))
))) (forall ((o2_19@@169 T@Ref) (f_19@@194 T@Field_16561_1199) ) (!  (=> (select (|PolymorphicMapType_11627_16561_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_19@@15))) o2_19@@169 f_19@@194) (= (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@71) o2_19@@169 f_19@@194) (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@169 f_19@@194)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@169 f_19@@194))
))) (forall ((o2_19@@170 T@Ref) (f_19@@195 T@Field_16561_53) ) (!  (=> (select (|PolymorphicMapType_11627_16561_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_19@@15))) o2_19@@170 f_19@@195) (= (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@71) o2_19@@170 f_19@@195) (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@170 f_19@@195)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@170 f_19@@195))
))) (forall ((o2_19@@171 T@Ref) (f_19@@196 T@Field_16561_11152) ) (!  (=> (select (|PolymorphicMapType_11627_16561_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_19@@15))) o2_19@@171 f_19@@196) (= (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@71) o2_19@@171 f_19@@196) (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@171 f_19@@196)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@171 f_19@@196))
))) (forall ((o2_19@@172 T@Ref) (f_19@@197 T@Field_16574_16579) ) (!  (=> (select (|PolymorphicMapType_11627_16561_46568#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_19@@15))) o2_19@@172 f_19@@197) (= (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@71) o2_19@@172 f_19@@197) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@172 f_19@@197)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@172 f_19@@197))
))) (forall ((o2_19@@173 T@Ref) (f_19@@198 T@Field_16561_16562) ) (!  (=> (select (|PolymorphicMapType_11627_16561_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_19@@15))) o2_19@@173 f_19@@198) (= (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@71) o2_19@@173 f_19@@198) (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@173 f_19@@198)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@42) o2_19@@173 f_19@@198))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@71 ExhaleHeap@@42 Mask@@93) (IsWandField_15623_49430 pm_f_19@@15))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_11078) (ExhaleHeap@@43 T@PolymorphicMapType_11078) (Mask@@94 T@PolymorphicMapType_11099) (pm_f_19@@16 T@Field_15048_15049) ) (!  (=> (IdenticalOnKnownLocations Heap@@72 ExhaleHeap@@43 Mask@@94) (=> (and (HasDirectPerm_15021_14493 Mask@@94 null pm_f_19@@16) (IsWandField_6317_6318 pm_f_19@@16)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_19@@174 T@Ref) (f_19@@199 T@Field_15576_1716) ) (!  (=> (select (|PolymorphicMapType_11627_6336_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_19@@16))) o2_19@@174 f_19@@199) (= (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@72) o2_19@@174 f_19@@199) (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@174 f_19@@199)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@174 f_19@@199))
)) (forall ((o2_19@@175 T@Ref) (f_19@@200 T@Field_11138_53) ) (!  (=> (select (|PolymorphicMapType_11627_6336_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_19@@16))) o2_19@@175 f_19@@200) (= (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@72) o2_19@@175 f_19@@200) (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@175 f_19@@200)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@175 f_19@@200))
))) (forall ((o2_19@@176 T@Ref) (f_19@@201 T@Field_11151_11152) ) (!  (=> (select (|PolymorphicMapType_11627_6336_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_19@@16))) o2_19@@176 f_19@@201) (= (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@72) o2_19@@176 f_19@@201) (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@176 f_19@@201)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@176 f_19@@201))
))) (forall ((o2_19@@177 T@Ref) (f_19@@202 T@Field_11138_14482) ) (!  (=> (select (|PolymorphicMapType_11627_6336_42376#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_19@@16))) o2_19@@177 f_19@@202) (= (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@72) o2_19@@177 f_19@@202) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@177 f_19@@202)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@177 f_19@@202))
))) (forall ((o2_19@@178 T@Ref) (f_19@@203 T@Field_11138_14493) ) (!  (=> (select (|PolymorphicMapType_11627_6336_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_19@@16))) o2_19@@178 f_19@@203) (= (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@72) o2_19@@178 f_19@@203) (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@178 f_19@@203)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@178 f_19@@203))
))) (forall ((o2_19@@179 T@Ref) (f_19@@204 T@Field_14465_1199) ) (!  (=> (select (|PolymorphicMapType_11627_14465_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_19@@16))) o2_19@@179 f_19@@204) (= (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@72) o2_19@@179 f_19@@204) (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@179 f_19@@204)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@179 f_19@@204))
))) (forall ((o2_19@@180 T@Ref) (f_19@@205 T@Field_14465_53) ) (!  (=> (select (|PolymorphicMapType_11627_14465_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_19@@16))) o2_19@@180 f_19@@205) (= (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@72) o2_19@@180 f_19@@205) (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@180 f_19@@205)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@180 f_19@@205))
))) (forall ((o2_19@@181 T@Ref) (f_19@@206 T@Field_14465_11152) ) (!  (=> (select (|PolymorphicMapType_11627_14465_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_19@@16))) o2_19@@181 f_19@@206) (= (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@72) o2_19@@181 f_19@@206) (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@181 f_19@@206)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@181 f_19@@206))
))) (forall ((o2_19@@182 T@Ref) (f_19@@207 T@Field_14477_14482) ) (!  (=> (select (|PolymorphicMapType_11627_14465_43424#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_19@@16))) o2_19@@182 f_19@@207) (= (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@72) o2_19@@182 f_19@@207) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@182 f_19@@207)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@182 f_19@@207))
))) (forall ((o2_19@@183 T@Ref) (f_19@@208 T@Field_14492_14493) ) (!  (=> (select (|PolymorphicMapType_11627_14465_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_19@@16))) o2_19@@183 f_19@@208) (= (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@72) o2_19@@183 f_19@@208) (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@183 f_19@@208)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@183 f_19@@208))
))) (forall ((o2_19@@184 T@Ref) (f_19@@209 T@Field_15021_1464) ) (!  (=> (select (|PolymorphicMapType_11627_15021_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_19@@16))) o2_19@@184 f_19@@209) (= (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@72) o2_19@@184 f_19@@209) (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@184 f_19@@209)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@184 f_19@@209))
))) (forall ((o2_19@@185 T@Ref) (f_19@@210 T@Field_15021_53) ) (!  (=> (select (|PolymorphicMapType_11627_15021_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_19@@16))) o2_19@@185 f_19@@210) (= (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@72) o2_19@@185 f_19@@210) (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@185 f_19@@210)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@185 f_19@@210))
))) (forall ((o2_19@@186 T@Ref) (f_19@@211 T@Field_15021_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15021_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_19@@16))) o2_19@@186 f_19@@211) (= (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@72) o2_19@@186 f_19@@211) (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@186 f_19@@211)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@186 f_19@@211))
))) (forall ((o2_19@@187 T@Ref) (f_19@@212 T@Field_15033_15038) ) (!  (=> (select (|PolymorphicMapType_11627_15021_44472#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_19@@16))) o2_19@@187 f_19@@212) (= (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) o2_19@@187 f_19@@212) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@187 f_19@@212)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@187 f_19@@212))
))) (forall ((o2_19@@188 T@Ref) (f_19@@213 T@Field_15048_15049) ) (!  (=> (select (|PolymorphicMapType_11627_15021_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_19@@16))) o2_19@@188 f_19@@213) (= (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@72) o2_19@@188 f_19@@213) (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@188 f_19@@213)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@188 f_19@@213))
))) (forall ((o2_19@@189 T@Ref) (f_19@@214 T@Field_15623_1199) ) (!  (=> (select (|PolymorphicMapType_11627_15623_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_19@@16))) o2_19@@189 f_19@@214) (= (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@72) o2_19@@189 f_19@@214) (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@189 f_19@@214)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@189 f_19@@214))
))) (forall ((o2_19@@190 T@Ref) (f_19@@215 T@Field_15623_53) ) (!  (=> (select (|PolymorphicMapType_11627_15623_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_19@@16))) o2_19@@190 f_19@@215) (= (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@72) o2_19@@190 f_19@@215) (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@190 f_19@@215)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@190 f_19@@215))
))) (forall ((o2_19@@191 T@Ref) (f_19@@216 T@Field_15623_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15623_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_19@@16))) o2_19@@191 f_19@@216) (= (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@72) o2_19@@191 f_19@@216) (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@191 f_19@@216)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@191 f_19@@216))
))) (forall ((o2_19@@192 T@Ref) (f_19@@217 T@Field_15636_15641) ) (!  (=> (select (|PolymorphicMapType_11627_15623_45520#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_19@@16))) o2_19@@192 f_19@@217) (= (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@72) o2_19@@192 f_19@@217) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@192 f_19@@217)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@192 f_19@@217))
))) (forall ((o2_19@@193 T@Ref) (f_19@@218 T@Field_15623_15624) ) (!  (=> (select (|PolymorphicMapType_11627_15623_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_19@@16))) o2_19@@193 f_19@@218) (= (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@72) o2_19@@193 f_19@@218) (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@193 f_19@@218)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@193 f_19@@218))
))) (forall ((o2_19@@194 T@Ref) (f_19@@219 T@Field_16561_1199) ) (!  (=> (select (|PolymorphicMapType_11627_16561_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_19@@16))) o2_19@@194 f_19@@219) (= (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@72) o2_19@@194 f_19@@219) (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@194 f_19@@219)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@194 f_19@@219))
))) (forall ((o2_19@@195 T@Ref) (f_19@@220 T@Field_16561_53) ) (!  (=> (select (|PolymorphicMapType_11627_16561_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_19@@16))) o2_19@@195 f_19@@220) (= (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@72) o2_19@@195 f_19@@220) (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@195 f_19@@220)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@195 f_19@@220))
))) (forall ((o2_19@@196 T@Ref) (f_19@@221 T@Field_16561_11152) ) (!  (=> (select (|PolymorphicMapType_11627_16561_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_19@@16))) o2_19@@196 f_19@@221) (= (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@72) o2_19@@196 f_19@@221) (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@196 f_19@@221)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@196 f_19@@221))
))) (forall ((o2_19@@197 T@Ref) (f_19@@222 T@Field_16574_16579) ) (!  (=> (select (|PolymorphicMapType_11627_16561_46568#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_19@@16))) o2_19@@197 f_19@@222) (= (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@72) o2_19@@197 f_19@@222) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@197 f_19@@222)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@197 f_19@@222))
))) (forall ((o2_19@@198 T@Ref) (f_19@@223 T@Field_16561_16562) ) (!  (=> (select (|PolymorphicMapType_11627_16561_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_19@@16))) o2_19@@198 f_19@@223) (= (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@72) o2_19@@198 f_19@@223) (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@198 f_19@@223)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@43) o2_19@@198 f_19@@223))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@72 ExhaleHeap@@43 Mask@@94) (IsWandField_6317_6318 pm_f_19@@16))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_11078) (ExhaleHeap@@44 T@PolymorphicMapType_11078) (Mask@@95 T@PolymorphicMapType_11099) (pm_f_19@@17 T@Field_14492_14493) ) (!  (=> (IdenticalOnKnownLocations Heap@@73 ExhaleHeap@@44 Mask@@95) (=> (and (HasDirectPerm_14465_14493 Mask@@95 null pm_f_19@@17) (IsWandField_6287_6288 pm_f_19@@17)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_19@@199 T@Ref) (f_19@@224 T@Field_15576_1716) ) (!  (=> (select (|PolymorphicMapType_11627_6336_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_19@@17))) o2_19@@199 f_19@@224) (= (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@73) o2_19@@199 f_19@@224) (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@199 f_19@@224)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@199 f_19@@224))
)) (forall ((o2_19@@200 T@Ref) (f_19@@225 T@Field_11138_53) ) (!  (=> (select (|PolymorphicMapType_11627_6336_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_19@@17))) o2_19@@200 f_19@@225) (= (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@73) o2_19@@200 f_19@@225) (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@200 f_19@@225)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@200 f_19@@225))
))) (forall ((o2_19@@201 T@Ref) (f_19@@226 T@Field_11151_11152) ) (!  (=> (select (|PolymorphicMapType_11627_6336_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_19@@17))) o2_19@@201 f_19@@226) (= (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@73) o2_19@@201 f_19@@226) (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@201 f_19@@226)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@201 f_19@@226))
))) (forall ((o2_19@@202 T@Ref) (f_19@@227 T@Field_11138_14482) ) (!  (=> (select (|PolymorphicMapType_11627_6336_42376#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_19@@17))) o2_19@@202 f_19@@227) (= (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@73) o2_19@@202 f_19@@227) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@202 f_19@@227)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@202 f_19@@227))
))) (forall ((o2_19@@203 T@Ref) (f_19@@228 T@Field_11138_14493) ) (!  (=> (select (|PolymorphicMapType_11627_6336_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_19@@17))) o2_19@@203 f_19@@228) (= (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@73) o2_19@@203 f_19@@228) (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@203 f_19@@228)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@203 f_19@@228))
))) (forall ((o2_19@@204 T@Ref) (f_19@@229 T@Field_14465_1199) ) (!  (=> (select (|PolymorphicMapType_11627_14465_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_19@@17))) o2_19@@204 f_19@@229) (= (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@73) o2_19@@204 f_19@@229) (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@204 f_19@@229)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@204 f_19@@229))
))) (forall ((o2_19@@205 T@Ref) (f_19@@230 T@Field_14465_53) ) (!  (=> (select (|PolymorphicMapType_11627_14465_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_19@@17))) o2_19@@205 f_19@@230) (= (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@73) o2_19@@205 f_19@@230) (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@205 f_19@@230)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@205 f_19@@230))
))) (forall ((o2_19@@206 T@Ref) (f_19@@231 T@Field_14465_11152) ) (!  (=> (select (|PolymorphicMapType_11627_14465_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_19@@17))) o2_19@@206 f_19@@231) (= (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@73) o2_19@@206 f_19@@231) (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@206 f_19@@231)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@206 f_19@@231))
))) (forall ((o2_19@@207 T@Ref) (f_19@@232 T@Field_14477_14482) ) (!  (=> (select (|PolymorphicMapType_11627_14465_43424#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_19@@17))) o2_19@@207 f_19@@232) (= (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) o2_19@@207 f_19@@232) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@207 f_19@@232)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@207 f_19@@232))
))) (forall ((o2_19@@208 T@Ref) (f_19@@233 T@Field_14492_14493) ) (!  (=> (select (|PolymorphicMapType_11627_14465_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_19@@17))) o2_19@@208 f_19@@233) (= (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@73) o2_19@@208 f_19@@233) (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@208 f_19@@233)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@208 f_19@@233))
))) (forall ((o2_19@@209 T@Ref) (f_19@@234 T@Field_15021_1464) ) (!  (=> (select (|PolymorphicMapType_11627_15021_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_19@@17))) o2_19@@209 f_19@@234) (= (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@73) o2_19@@209 f_19@@234) (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@209 f_19@@234)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@209 f_19@@234))
))) (forall ((o2_19@@210 T@Ref) (f_19@@235 T@Field_15021_53) ) (!  (=> (select (|PolymorphicMapType_11627_15021_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_19@@17))) o2_19@@210 f_19@@235) (= (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@73) o2_19@@210 f_19@@235) (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@210 f_19@@235)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@210 f_19@@235))
))) (forall ((o2_19@@211 T@Ref) (f_19@@236 T@Field_15021_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15021_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_19@@17))) o2_19@@211 f_19@@236) (= (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@73) o2_19@@211 f_19@@236) (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@211 f_19@@236)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@211 f_19@@236))
))) (forall ((o2_19@@212 T@Ref) (f_19@@237 T@Field_15033_15038) ) (!  (=> (select (|PolymorphicMapType_11627_15021_44472#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_19@@17))) o2_19@@212 f_19@@237) (= (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@73) o2_19@@212 f_19@@237) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@212 f_19@@237)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@212 f_19@@237))
))) (forall ((o2_19@@213 T@Ref) (f_19@@238 T@Field_15048_15049) ) (!  (=> (select (|PolymorphicMapType_11627_15021_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_19@@17))) o2_19@@213 f_19@@238) (= (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@73) o2_19@@213 f_19@@238) (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@213 f_19@@238)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@213 f_19@@238))
))) (forall ((o2_19@@214 T@Ref) (f_19@@239 T@Field_15623_1199) ) (!  (=> (select (|PolymorphicMapType_11627_15623_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_19@@17))) o2_19@@214 f_19@@239) (= (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@73) o2_19@@214 f_19@@239) (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@214 f_19@@239)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@214 f_19@@239))
))) (forall ((o2_19@@215 T@Ref) (f_19@@240 T@Field_15623_53) ) (!  (=> (select (|PolymorphicMapType_11627_15623_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_19@@17))) o2_19@@215 f_19@@240) (= (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@73) o2_19@@215 f_19@@240) (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@215 f_19@@240)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@215 f_19@@240))
))) (forall ((o2_19@@216 T@Ref) (f_19@@241 T@Field_15623_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15623_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_19@@17))) o2_19@@216 f_19@@241) (= (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@73) o2_19@@216 f_19@@241) (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@216 f_19@@241)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@216 f_19@@241))
))) (forall ((o2_19@@217 T@Ref) (f_19@@242 T@Field_15636_15641) ) (!  (=> (select (|PolymorphicMapType_11627_15623_45520#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_19@@17))) o2_19@@217 f_19@@242) (= (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@73) o2_19@@217 f_19@@242) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@217 f_19@@242)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@217 f_19@@242))
))) (forall ((o2_19@@218 T@Ref) (f_19@@243 T@Field_15623_15624) ) (!  (=> (select (|PolymorphicMapType_11627_15623_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_19@@17))) o2_19@@218 f_19@@243) (= (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@73) o2_19@@218 f_19@@243) (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@218 f_19@@243)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@218 f_19@@243))
))) (forall ((o2_19@@219 T@Ref) (f_19@@244 T@Field_16561_1199) ) (!  (=> (select (|PolymorphicMapType_11627_16561_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_19@@17))) o2_19@@219 f_19@@244) (= (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@73) o2_19@@219 f_19@@244) (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@219 f_19@@244)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@219 f_19@@244))
))) (forall ((o2_19@@220 T@Ref) (f_19@@245 T@Field_16561_53) ) (!  (=> (select (|PolymorphicMapType_11627_16561_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_19@@17))) o2_19@@220 f_19@@245) (= (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@73) o2_19@@220 f_19@@245) (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@220 f_19@@245)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@220 f_19@@245))
))) (forall ((o2_19@@221 T@Ref) (f_19@@246 T@Field_16561_11152) ) (!  (=> (select (|PolymorphicMapType_11627_16561_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_19@@17))) o2_19@@221 f_19@@246) (= (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@73) o2_19@@221 f_19@@246) (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@221 f_19@@246)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@221 f_19@@246))
))) (forall ((o2_19@@222 T@Ref) (f_19@@247 T@Field_16574_16579) ) (!  (=> (select (|PolymorphicMapType_11627_16561_46568#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_19@@17))) o2_19@@222 f_19@@247) (= (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@73) o2_19@@222 f_19@@247) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@222 f_19@@247)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@222 f_19@@247))
))) (forall ((o2_19@@223 T@Ref) (f_19@@248 T@Field_16561_16562) ) (!  (=> (select (|PolymorphicMapType_11627_16561_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_19@@17))) o2_19@@223 f_19@@248) (= (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@73) o2_19@@223 f_19@@248) (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@223 f_19@@248)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@44) o2_19@@223 f_19@@248))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@73 ExhaleHeap@@44 Mask@@95) (IsWandField_6287_6288 pm_f_19@@17))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_11078) (ExhaleHeap@@45 T@PolymorphicMapType_11078) (Mask@@96 T@PolymorphicMapType_11099) (pm_f_19@@18 T@Field_11138_14493) ) (!  (=> (IdenticalOnKnownLocations Heap@@74 ExhaleHeap@@45 Mask@@96) (=> (and (HasDirectPerm_11138_14493 Mask@@96 null pm_f_19@@18) (IsWandField_11138_48423 pm_f_19@@18)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_19@@224 T@Ref) (f_19@@249 T@Field_15576_1716) ) (!  (=> (select (|PolymorphicMapType_11627_6336_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_19@@18))) o2_19@@224 f_19@@249) (= (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@74) o2_19@@224 f_19@@249) (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@224 f_19@@249)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@224 f_19@@249))
)) (forall ((o2_19@@225 T@Ref) (f_19@@250 T@Field_11138_53) ) (!  (=> (select (|PolymorphicMapType_11627_6336_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_19@@18))) o2_19@@225 f_19@@250) (= (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@74) o2_19@@225 f_19@@250) (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@225 f_19@@250)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@225 f_19@@250))
))) (forall ((o2_19@@226 T@Ref) (f_19@@251 T@Field_11151_11152) ) (!  (=> (select (|PolymorphicMapType_11627_6336_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_19@@18))) o2_19@@226 f_19@@251) (= (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@74) o2_19@@226 f_19@@251) (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@226 f_19@@251)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@226 f_19@@251))
))) (forall ((o2_19@@227 T@Ref) (f_19@@252 T@Field_11138_14482) ) (!  (=> (select (|PolymorphicMapType_11627_6336_42376#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_19@@18))) o2_19@@227 f_19@@252) (= (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) o2_19@@227 f_19@@252) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@227 f_19@@252)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@227 f_19@@252))
))) (forall ((o2_19@@228 T@Ref) (f_19@@253 T@Field_11138_14493) ) (!  (=> (select (|PolymorphicMapType_11627_6336_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_19@@18))) o2_19@@228 f_19@@253) (= (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@74) o2_19@@228 f_19@@253) (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@228 f_19@@253)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@228 f_19@@253))
))) (forall ((o2_19@@229 T@Ref) (f_19@@254 T@Field_14465_1199) ) (!  (=> (select (|PolymorphicMapType_11627_14465_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_19@@18))) o2_19@@229 f_19@@254) (= (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@74) o2_19@@229 f_19@@254) (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@229 f_19@@254)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@229 f_19@@254))
))) (forall ((o2_19@@230 T@Ref) (f_19@@255 T@Field_14465_53) ) (!  (=> (select (|PolymorphicMapType_11627_14465_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_19@@18))) o2_19@@230 f_19@@255) (= (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@74) o2_19@@230 f_19@@255) (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@230 f_19@@255)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@230 f_19@@255))
))) (forall ((o2_19@@231 T@Ref) (f_19@@256 T@Field_14465_11152) ) (!  (=> (select (|PolymorphicMapType_11627_14465_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_19@@18))) o2_19@@231 f_19@@256) (= (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@74) o2_19@@231 f_19@@256) (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@231 f_19@@256)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@231 f_19@@256))
))) (forall ((o2_19@@232 T@Ref) (f_19@@257 T@Field_14477_14482) ) (!  (=> (select (|PolymorphicMapType_11627_14465_43424#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_19@@18))) o2_19@@232 f_19@@257) (= (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@74) o2_19@@232 f_19@@257) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@232 f_19@@257)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@232 f_19@@257))
))) (forall ((o2_19@@233 T@Ref) (f_19@@258 T@Field_14492_14493) ) (!  (=> (select (|PolymorphicMapType_11627_14465_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_19@@18))) o2_19@@233 f_19@@258) (= (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@74) o2_19@@233 f_19@@258) (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@233 f_19@@258)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@233 f_19@@258))
))) (forall ((o2_19@@234 T@Ref) (f_19@@259 T@Field_15021_1464) ) (!  (=> (select (|PolymorphicMapType_11627_15021_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_19@@18))) o2_19@@234 f_19@@259) (= (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@74) o2_19@@234 f_19@@259) (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@234 f_19@@259)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@234 f_19@@259))
))) (forall ((o2_19@@235 T@Ref) (f_19@@260 T@Field_15021_53) ) (!  (=> (select (|PolymorphicMapType_11627_15021_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_19@@18))) o2_19@@235 f_19@@260) (= (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@74) o2_19@@235 f_19@@260) (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@235 f_19@@260)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@235 f_19@@260))
))) (forall ((o2_19@@236 T@Ref) (f_19@@261 T@Field_15021_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15021_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_19@@18))) o2_19@@236 f_19@@261) (= (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@74) o2_19@@236 f_19@@261) (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@236 f_19@@261)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@236 f_19@@261))
))) (forall ((o2_19@@237 T@Ref) (f_19@@262 T@Field_15033_15038) ) (!  (=> (select (|PolymorphicMapType_11627_15021_44472#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_19@@18))) o2_19@@237 f_19@@262) (= (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@74) o2_19@@237 f_19@@262) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@237 f_19@@262)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@237 f_19@@262))
))) (forall ((o2_19@@238 T@Ref) (f_19@@263 T@Field_15048_15049) ) (!  (=> (select (|PolymorphicMapType_11627_15021_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_19@@18))) o2_19@@238 f_19@@263) (= (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@74) o2_19@@238 f_19@@263) (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@238 f_19@@263)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@238 f_19@@263))
))) (forall ((o2_19@@239 T@Ref) (f_19@@264 T@Field_15623_1199) ) (!  (=> (select (|PolymorphicMapType_11627_15623_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_19@@18))) o2_19@@239 f_19@@264) (= (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@74) o2_19@@239 f_19@@264) (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@239 f_19@@264)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@239 f_19@@264))
))) (forall ((o2_19@@240 T@Ref) (f_19@@265 T@Field_15623_53) ) (!  (=> (select (|PolymorphicMapType_11627_15623_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_19@@18))) o2_19@@240 f_19@@265) (= (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@74) o2_19@@240 f_19@@265) (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@240 f_19@@265)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@240 f_19@@265))
))) (forall ((o2_19@@241 T@Ref) (f_19@@266 T@Field_15623_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15623_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_19@@18))) o2_19@@241 f_19@@266) (= (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@74) o2_19@@241 f_19@@266) (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@241 f_19@@266)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@241 f_19@@266))
))) (forall ((o2_19@@242 T@Ref) (f_19@@267 T@Field_15636_15641) ) (!  (=> (select (|PolymorphicMapType_11627_15623_45520#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_19@@18))) o2_19@@242 f_19@@267) (= (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@74) o2_19@@242 f_19@@267) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@242 f_19@@267)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@242 f_19@@267))
))) (forall ((o2_19@@243 T@Ref) (f_19@@268 T@Field_15623_15624) ) (!  (=> (select (|PolymorphicMapType_11627_15623_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_19@@18))) o2_19@@243 f_19@@268) (= (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@74) o2_19@@243 f_19@@268) (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@243 f_19@@268)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@243 f_19@@268))
))) (forall ((o2_19@@244 T@Ref) (f_19@@269 T@Field_16561_1199) ) (!  (=> (select (|PolymorphicMapType_11627_16561_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_19@@18))) o2_19@@244 f_19@@269) (= (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@74) o2_19@@244 f_19@@269) (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@244 f_19@@269)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@244 f_19@@269))
))) (forall ((o2_19@@245 T@Ref) (f_19@@270 T@Field_16561_53) ) (!  (=> (select (|PolymorphicMapType_11627_16561_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_19@@18))) o2_19@@245 f_19@@270) (= (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@74) o2_19@@245 f_19@@270) (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@245 f_19@@270)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@245 f_19@@270))
))) (forall ((o2_19@@246 T@Ref) (f_19@@271 T@Field_16561_11152) ) (!  (=> (select (|PolymorphicMapType_11627_16561_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_19@@18))) o2_19@@246 f_19@@271) (= (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@74) o2_19@@246 f_19@@271) (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@246 f_19@@271)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@246 f_19@@271))
))) (forall ((o2_19@@247 T@Ref) (f_19@@272 T@Field_16574_16579) ) (!  (=> (select (|PolymorphicMapType_11627_16561_46568#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_19@@18))) o2_19@@247 f_19@@272) (= (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@74) o2_19@@247 f_19@@272) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@247 f_19@@272)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@247 f_19@@272))
))) (forall ((o2_19@@248 T@Ref) (f_19@@273 T@Field_16561_16562) ) (!  (=> (select (|PolymorphicMapType_11627_16561_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_19@@18))) o2_19@@248 f_19@@273) (= (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@74) o2_19@@248 f_19@@273) (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@248 f_19@@273)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@45) o2_19@@248 f_19@@273))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@74 ExhaleHeap@@45 Mask@@96) (IsWandField_11138_48423 pm_f_19@@18))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun WandDefLHSHeap@1 () T@PolymorphicMapType_11078)
(declare-fun perm@2 () Real)
(declare-fun b_9@23 () Bool)
(declare-fun b_15@6 () Bool)
(declare-fun neededTransfer@11 () Real)
(declare-fun Used_8Mask@3 () T@PolymorphicMapType_11099)
(declare-fun x@@11 () T@Ref)
(declare-fun initNeededTransfer@2 () Real)
(declare-fun takeTransfer@5 () Real)
(declare-fun Heap@4 () T@PolymorphicMapType_11078)
(declare-fun Heap@2 () T@PolymorphicMapType_11078)
(declare-fun Mask@9 () T@PolymorphicMapType_11099)
(declare-fun Mask@7 () T@PolymorphicMapType_11099)
(declare-fun neededTransfer@9 () Real)
(declare-fun b_15@3 () Bool)
(declare-fun Used_8Mask@1 () T@PolymorphicMapType_11099)
(declare-fun neededTransfer@10 () Real)
(declare-fun Used_8Mask@2 () T@PolymorphicMapType_11099)
(declare-fun b_15@4 () Bool)
(declare-fun Used_8Heap@0 () T@PolymorphicMapType_11078)
(declare-fun b_15@5 () Bool)
(declare-fun Mask@8 () T@PolymorphicMapType_11099)
(declare-fun Heap@3 () T@PolymorphicMapType_11078)
(declare-fun maskTransfer@5 () Real)
(declare-fun takeTransfer@4 () Real)
(declare-fun b_15@0 () Bool)
(declare-fun neededTransfer@8 () Real)
(declare-fun Used_8Mask@0 () T@PolymorphicMapType_11099)
(declare-fun b_15@1 () Bool)
(declare-fun b_15@2 () Bool)
(declare-fun Ops_3Heap@1 () T@PolymorphicMapType_11078)
(declare-fun Ops_3Mask@8 () T@PolymorphicMapType_11099)
(declare-fun Ops_3Mask@7 () T@PolymorphicMapType_11099)
(declare-fun maskTransfer@4 () Real)
(declare-fun b_15 () Bool)
(declare-fun b_9@10 () Bool)
(declare-fun b_12@4 () Bool)
(declare-fun neededTransfer@7 () Real)
(declare-fun Used_6Mask@3 () T@PolymorphicMapType_11099)
(declare-fun initNeededTransfer@1 () Real)
(declare-fun b_13@0 () Bool)
(declare-fun b_13@1 () Bool)
(declare-fun Result_4Heap () T@PolymorphicMapType_11078)
(declare-fun Result_4Mask () T@PolymorphicMapType_11099)
(declare-fun b_13@2 () Bool)
(declare-fun Ops_3Mask@5 () T@PolymorphicMapType_11099)
(declare-fun b_13@3 () Bool)
(declare-fun Ops_3Heap@0 () T@PolymorphicMapType_11078)
(declare-fun Used_6Heap@0 () T@PolymorphicMapType_11078)
(declare-fun b_13@4 () Bool)
(declare-fun b_9@11 () Bool)
(declare-fun b_9@12 () Bool)
(declare-fun b_9@13 () Bool)
(declare-fun b_9@14 () Bool)
(declare-fun b_14@0 () Bool)
(declare-fun b_14 () Bool)
(declare-fun Used_7Heap@0 () T@PolymorphicMapType_11078)
(declare-fun b_9@15 () Bool)
(declare-fun b_9@16 () Bool)
(declare-fun b_9@17 () Bool)
(declare-fun perm@3 () Real)
(declare-fun b_9@18 () Bool)
(declare-fun Ops_3Mask@6 () T@PolymorphicMapType_11099)
(declare-fun b_9@19 () Bool)
(declare-fun b_9@20 () Bool)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_11078)
(declare-fun b_9@21 () Bool)
(declare-fun b_9@22 () Bool)
(declare-fun Mask@6 () T@PolymorphicMapType_11099)
(declare-fun takeTransfer@3 () Real)
(declare-fun Mask@4 () T@PolymorphicMapType_11099)
(declare-fun neededTransfer@5 () Real)
(declare-fun b_12@2 () Bool)
(declare-fun Used_6Mask@1 () T@PolymorphicMapType_11099)
(declare-fun neededTransfer@6 () Real)
(declare-fun Used_6Mask@2 () T@PolymorphicMapType_11099)
(declare-fun b_12@3 () Bool)
(declare-fun Mask@5 () T@PolymorphicMapType_11099)
(declare-fun maskTransfer@3 () Real)
(declare-fun takeTransfer@2 () Real)
(declare-fun Ops_3Mask@3 () T@PolymorphicMapType_11099)
(declare-fun b_12@0 () Bool)
(declare-fun neededTransfer@4 () Real)
(declare-fun Used_6Mask@0 () T@PolymorphicMapType_11099)
(declare-fun b_12@1 () Bool)
(declare-fun Ops_3Mask@4 () T@PolymorphicMapType_11099)
(declare-fun maskTransfer@2 () Real)
(declare-fun b_12 () Bool)
(declare-fun b_9@2 () Bool)
(declare-fun b_10@6 () Bool)
(declare-fun neededTransfer@3 () Real)
(declare-fun Used_5Mask@3 () T@PolymorphicMapType_11099)
(declare-fun initNeededTransfer@0 () Real)
(declare-fun b_11@0 () Bool)
(declare-fun b_11@1 () Bool)
(declare-fun Result_3Heap () T@PolymorphicMapType_11078)
(declare-fun Result_3Mask () T@PolymorphicMapType_11099)
(declare-fun b_11@2 () Bool)
(declare-fun Ops_3Mask@1 () T@PolymorphicMapType_11099)
(declare-fun b_11@3 () Bool)
(declare-fun Used_5Heap@0 () T@PolymorphicMapType_11078)
(declare-fun b_11@4 () Bool)
(declare-fun b_9@3 () Bool)
(declare-fun b_9@4 () Bool)
(declare-fun b_9@5 () Bool)
(declare-fun perm@1 () Real)
(declare-fun b_9@6 () Bool)
(declare-fun Ops_3Mask@2 () T@PolymorphicMapType_11099)
(declare-fun b_9@7 () Bool)
(declare-fun b_9@8 () Bool)
(declare-fun b_9@9 () Bool)
(declare-fun Mask@3 () T@PolymorphicMapType_11099)
(declare-fun Heap@1 () T@PolymorphicMapType_11078)
(declare-fun takeTransfer@1 () Real)
(declare-fun Mask@1 () T@PolymorphicMapType_11099)
(declare-fun neededTransfer@1 () Real)
(declare-fun b_10@3 () Bool)
(declare-fun Used_5Mask@1 () T@PolymorphicMapType_11099)
(declare-fun Heap@@75 () T@PolymorphicMapType_11078)
(declare-fun neededTransfer@2 () Real)
(declare-fun Used_5Mask@2 () T@PolymorphicMapType_11099)
(declare-fun b_10@4 () Bool)
(declare-fun TempMask@1 () T@PolymorphicMapType_11099)
(declare-fun b_10@5 () Bool)
(declare-fun Mask@2 () T@PolymorphicMapType_11099)
(declare-fun newPMask@0 () T@PolymorphicMapType_11627)
(declare-fun Heap@0 () T@PolymorphicMapType_11078)
(declare-fun maskTransfer@1 () Real)
(declare-fun takeTransfer@0 () Real)
(declare-fun b_10@0 () Bool)
(declare-fun neededTransfer@0 () Real)
(declare-fun Used_5Mask@0 () T@PolymorphicMapType_11099)
(declare-fun b_10@1 () Bool)
(declare-fun TempMask@0 () T@PolymorphicMapType_11099)
(declare-fun b_10@2 () Bool)
(declare-fun Ops_3Mask@0 () T@PolymorphicMapType_11099)
(declare-fun maskTransfer@0 () Real)
(declare-fun FrameFragment_1716 (Int) T@FrameType)
(declare-fun b_10 () Bool)
(declare-fun b_9@1 () Bool)
(declare-fun b_9@0 () Bool)
(declare-fun Mask@0 () T@PolymorphicMapType_11099)
(declare-fun b_9 () Bool)
(declare-fun b_8@0 () Bool)
(declare-fun b_8 () Bool)
(declare-fun Used_4Heap@0 () T@PolymorphicMapType_11078)
(declare-fun WandDefLHSHeap@0 () T@PolymorphicMapType_11078)
(declare-fun perm@0 () Real)
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
 (=> (= (ControlFlow 0 0) 67) (let ((anon61_Then_correct  (=> (and (and (state WandDefLHSHeap@1 ZeroMask) (state WandDefLHSHeap@1 ZeroMask)) (and (= perm@2 (/ (to_real 2) (to_real 3))) (= (ControlFlow 0 40) (- 0 39)))) (>= perm@2 NoPerm))))
(let ((anon48_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (=> (and (and b_9@23 b_9@23) b_15@6) (and (= neededTransfer@11 0.0) (= (select (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| Used_8Mask@3) x@@11 f_7) initNeededTransfer@2))))))
(let ((anon73_Else_correct  (=> (>= 0.0 takeTransfer@5) (=> (and (= Heap@4 Heap@2) (= Mask@9 Mask@7)) (=> (and (and (= neededTransfer@11 neededTransfer@9) (= b_15@6 b_15@3)) (and (= Used_8Mask@3 Used_8Mask@1) (= (ControlFlow 0 7) 4))) anon48_correct)))))
(let ((anon73_Then_correct  (=> (> takeTransfer@5 0.0) (=> (and (and (= neededTransfer@10 (- neededTransfer@9 takeTransfer@5)) (= Used_8Mask@2 (PolymorphicMapType_11099 (store (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| Used_8Mask@1) x@@11 f_7 (+ (select (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| Used_8Mask@1) x@@11 f_7) takeTransfer@5)) (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| Used_8Mask@1) (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| Used_8Mask@1) (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| Used_8Mask@1) (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| Used_8Mask@1) (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| Used_8Mask@1) (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| Used_8Mask@1) (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| Used_8Mask@1) (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| Used_8Mask@1) (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| Used_8Mask@1) (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| Used_8Mask@1) (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| Used_8Mask@1) (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| Used_8Mask@1) (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| Used_8Mask@1) (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| Used_8Mask@1) (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| Used_8Mask@1) (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| Used_8Mask@1) (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| Used_8Mask@1) (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| Used_8Mask@1) (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| Used_8Mask@1) (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| Used_8Mask@1) (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| Used_8Mask@1) (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| Used_8Mask@1) (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| Used_8Mask@1) (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| Used_8Mask@1)))) (and (= b_15@4  (and b_15@3 (state Used_8Heap@0 Used_8Mask@2))) (= b_15@5  (and b_15@4 (= (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@2) x@@11 f_7) (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Used_8Heap@0) x@@11 f_7)))))) (=> (and (and (and (= Mask@8 (PolymorphicMapType_11099 (store (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| Mask@7) x@@11 f_7 (- (select (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| Mask@7) x@@11 f_7) takeTransfer@5)) (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| Mask@7) (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| Mask@7) (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| Mask@7) (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| Mask@7) (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| Mask@7) (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| Mask@7) (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| Mask@7) (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| Mask@7) (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| Mask@7) (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| Mask@7) (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| Mask@7) (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| Mask@7) (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| Mask@7) (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| Mask@7) (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| Mask@7) (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| Mask@7) (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| Mask@7) (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| Mask@7) (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| Mask@7) (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| Mask@7) (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| Mask@7) (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| Mask@7) (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| Mask@7) (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| Mask@7))) (= Heap@3 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@2) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@2) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@2) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@2) (store (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@2) null (|wand#sm| true x@@11 FullPerm) (PolymorphicMapType_11627 (store (|PolymorphicMapType_11627_6336_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@2) null (|wand#sm| true x@@11 FullPerm))) x@@11 f_7 true) (|PolymorphicMapType_11627_6336_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@2) null (|wand#sm| true x@@11 FullPerm))) (|PolymorphicMapType_11627_6336_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@2) null (|wand#sm| true x@@11 FullPerm))) (|PolymorphicMapType_11627_6336_42376#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@2) null (|wand#sm| true x@@11 FullPerm))) (|PolymorphicMapType_11627_6336_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@2) null (|wand#sm| true x@@11 FullPerm))) (|PolymorphicMapType_11627_14465_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@2) null (|wand#sm| true x@@11 FullPerm))) (|PolymorphicMapType_11627_14465_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@2) null (|wand#sm| true x@@11 FullPerm))) (|PolymorphicMapType_11627_14465_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@2) null (|wand#sm| true x@@11 FullPerm))) (|PolymorphicMapType_11627_14465_43424#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@2) null (|wand#sm| true x@@11 FullPerm))) (|PolymorphicMapType_11627_14465_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@2) null (|wand#sm| true x@@11 FullPerm))) (|PolymorphicMapType_11627_15021_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@2) null (|wand#sm| true x@@11 FullPerm))) (|PolymorphicMapType_11627_15021_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@2) null (|wand#sm| true x@@11 FullPerm))) (|PolymorphicMapType_11627_15021_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@2) null (|wand#sm| true x@@11 FullPerm))) (|PolymorphicMapType_11627_15021_44472#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@2) null (|wand#sm| true x@@11 FullPerm))) (|PolymorphicMapType_11627_15021_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@2) null (|wand#sm| true x@@11 FullPerm))) (|PolymorphicMapType_11627_15623_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@2) null (|wand#sm| true x@@11 FullPerm))) (|PolymorphicMapType_11627_15623_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@2) null (|wand#sm| true x@@11 FullPerm))) (|PolymorphicMapType_11627_15623_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@2) null (|wand#sm| true x@@11 FullPerm))) (|PolymorphicMapType_11627_15623_45520#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@2) null (|wand#sm| true x@@11 FullPerm))) (|PolymorphicMapType_11627_15623_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@2) null (|wand#sm| true x@@11 FullPerm))) (|PolymorphicMapType_11627_16561_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@2) null (|wand#sm| true x@@11 FullPerm))) (|PolymorphicMapType_11627_16561_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@2) null (|wand#sm| true x@@11 FullPerm))) (|PolymorphicMapType_11627_16561_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@2) null (|wand#sm| true x@@11 FullPerm))) (|PolymorphicMapType_11627_16561_46568#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@2) null (|wand#sm| true x@@11 FullPerm))) (|PolymorphicMapType_11627_16561_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@2) null (|wand#sm| true x@@11 FullPerm))))) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@2) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@2) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@2) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@2) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@2) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@2) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@2) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@2) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@2) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@2) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@2) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@2) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@2) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@2) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@2) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@2) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@2) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@2) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@2) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@2)))) (and (= Heap@4 Heap@3) (= Mask@9 Mask@8))) (and (and (= neededTransfer@11 neededTransfer@10) (= b_15@6 b_15@5)) (and (= Used_8Mask@3 Used_8Mask@2) (= (ControlFlow 0 6) 4)))) anon48_correct)))))
(let ((anon72_Else_correct  (=> (and (< maskTransfer@5 neededTransfer@9) (= takeTransfer@5 maskTransfer@5)) (and (=> (= (ControlFlow 0 9) 6) anon73_Then_correct) (=> (= (ControlFlow 0 9) 7) anon73_Else_correct)))))
(let ((anon72_Then_correct  (=> (and (<= neededTransfer@9 maskTransfer@5) (= takeTransfer@5 neededTransfer@9)) (and (=> (= (ControlFlow 0 8) 6) anon73_Then_correct) (=> (= (ControlFlow 0 8) 7) anon73_Else_correct)))))
(let ((anon71_Then_correct  (=> (and (and (and (and (and b_9@23 b_9@23) b_15@3) true) (> neededTransfer@9 0.0)) (= maskTransfer@5 (select (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| Mask@7) x@@11 f_7))) (and (=> (= (ControlFlow 0 10) 8) anon72_Then_correct) (=> (= (ControlFlow 0 10) 9) anon72_Else_correct)))))
(let ((anon71_Else_correct  (=> (not (and (and (and (and b_9@23 b_9@23) b_15@3) true) (> neededTransfer@9 0.0))) (=> (and (= Heap@4 Heap@2) (= Mask@9 Mask@7)) (=> (and (and (= neededTransfer@11 neededTransfer@9) (= b_15@6 b_15@3)) (and (= Used_8Mask@3 Used_8Mask@1) (= (ControlFlow 0 5) 4))) anon48_correct)))))
(let ((anon70_Else_correct  (=> (and (and (>= 0.0 takeTransfer@4) (= Used_8Mask@1 ZeroMask)) (and (= b_15@3 b_15@0) (= neededTransfer@9 FullPerm))) (and (=> (= (ControlFlow 0 13) 10) anon71_Then_correct) (=> (= (ControlFlow 0 13) 5) anon71_Else_correct)))))
(let ((anon70_Then_correct  (=> (> takeTransfer@4 0.0) (=> (and (and (and (= neededTransfer@8 (- FullPerm takeTransfer@4)) (= Used_8Mask@0 (PolymorphicMapType_11099 (store (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| ZeroMask) x@@11 f_7 (+ (select (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| ZeroMask) x@@11 f_7) takeTransfer@4)) (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| ZeroMask)))) (and (= b_15@1  (and b_15@0 (state Used_8Heap@0 Used_8Mask@0))) (= b_15@2  (and b_15@1 (= (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Ops_3Heap@1) x@@11 f_7) (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Used_8Heap@0) x@@11 f_7)))))) (and (and (= Ops_3Mask@8 (PolymorphicMapType_11099 (store (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| Ops_3Mask@7) x@@11 f_7 (- (select (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| Ops_3Mask@7) x@@11 f_7) takeTransfer@4)) (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| Ops_3Mask@7) (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| Ops_3Mask@7) (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| Ops_3Mask@7) (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| Ops_3Mask@7) (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| Ops_3Mask@7) (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| Ops_3Mask@7) (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| Ops_3Mask@7) (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| Ops_3Mask@7) (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| Ops_3Mask@7) (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| Ops_3Mask@7) (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| Ops_3Mask@7) (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| Ops_3Mask@7) (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| Ops_3Mask@7) (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| Ops_3Mask@7) (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| Ops_3Mask@7) (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| Ops_3Mask@7) (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| Ops_3Mask@7) (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| Ops_3Mask@7) (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| Ops_3Mask@7) (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| Ops_3Mask@7) (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| Ops_3Mask@7) (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| Ops_3Mask@7) (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| Ops_3Mask@7) (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| Ops_3Mask@7))) (= Used_8Mask@1 Used_8Mask@0)) (and (= b_15@3 b_15@2) (= neededTransfer@9 neededTransfer@8)))) (and (=> (= (ControlFlow 0 12) 10) anon71_Then_correct) (=> (= (ControlFlow 0 12) 5) anon71_Else_correct))))))
(let ((anon69_Else_correct  (=> (and (< maskTransfer@4 FullPerm) (= takeTransfer@4 maskTransfer@4)) (and (=> (= (ControlFlow 0 15) 12) anon70_Then_correct) (=> (= (ControlFlow 0 15) 13) anon70_Else_correct)))))
(let ((anon69_Then_correct  (=> (and (<= FullPerm maskTransfer@4) (= takeTransfer@4 FullPerm)) (and (=> (= (ControlFlow 0 14) 12) anon70_Then_correct) (=> (= (ControlFlow 0 14) 13) anon70_Else_correct)))))
(let ((anon68_Then_correct  (=> (and (and (and (and (and b_9@23 b_9@23) b_15@0) true) (> FullPerm 0.0)) (= maskTransfer@4 (select (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| Ops_3Mask@7) x@@11 f_7))) (and (=> (= (ControlFlow 0 16) 14) anon69_Then_correct) (=> (= (ControlFlow 0 16) 15) anon69_Else_correct)))))
(let ((anon68_Else_correct  (=> (and (and (not (and (and (and (and b_9@23 b_9@23) b_15@0) true) (> FullPerm 0.0))) (= Used_8Mask@1 ZeroMask)) (and (= b_15@3 b_15@0) (= neededTransfer@9 FullPerm))) (and (=> (= (ControlFlow 0 11) 10) anon71_Then_correct) (=> (= (ControlFlow 0 11) 5) anon71_Else_correct)))))
(let ((anon36_correct  (=> (and (= b_15@0  (and b_15 (state Used_8Heap@0 ZeroMask))) (= initNeededTransfer@2 (+ (select (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| ZeroMask) x@@11 f_7) FullPerm))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 17) 16) anon68_Then_correct) (=> (= (ControlFlow 0 17) 11) anon68_Else_correct)))))))
(let ((anon35_correct  (and (=> (= (ControlFlow 0 20) (- 0 22)) (=> (and b_9@10 b_12@4) (and (= neededTransfer@7 0.0) (= (select (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| Used_6Mask@3) null (wand_1 true x@@11 (/ (to_real 2) (to_real 3)))) initNeededTransfer@1)))) (=> (=> (and b_9@10 b_12@4) (and (= neededTransfer@7 0.0) (= (select (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| Used_6Mask@3) null (wand_1 true x@@11 (/ (to_real 2) (to_real 3)))) initNeededTransfer@1))) (=> (and (= b_13@0  (and b_9@10 b_12@4)) (= b_13@1  (and b_13@0 (state Result_4Heap Result_4Mask)))) (=> (and (and (= b_13@2  (and b_13@1 (sumMask Result_4Mask Ops_3Mask@5 Used_6Mask@3))) (= b_13@3  (and (and b_13@2 (IdenticalOnKnownLocations Ops_3Heap@0 Result_4Heap Ops_3Mask@5)) (IdenticalOnKnownLocations Used_6Heap@0 Result_4Heap Used_6Mask@3)))) (and (= b_13@4  (and b_13@3 (state Result_4Heap Result_4Mask))) (= b_9@11  (and b_9@10 b_13@4)))) (=> (and (and (and (= b_9@12  (and b_9@11 b_12@4)) (= b_9@13  (and b_9@12 (= Used_6Heap@0 Ops_3Heap@0)))) (and (= b_9@14  (and b_9@13 (state Ops_3Heap@0 Ops_3Mask@5))) (= b_14@0  (and b_14 (state Used_7Heap@0 ZeroMask))))) (and (and (= b_9@15  (and b_9@14 b_14@0)) (= b_9@16  (and b_9@15 (= Used_7Heap@0 Ops_3Heap@0)))) (and (= b_9@17  (and b_9@16 (state Ops_3Heap@0 Ops_3Mask@5))) (= perm@3 (/ (to_real 2) (to_real 3)))))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (>= perm@3 NoPerm)) (=> (>= perm@3 NoPerm) (=> (and (and (= b_9@18  (and b_9@17 (=> (> perm@3 NoPerm) (not (= x@@11 null))))) (= Ops_3Mask@6 (PolymorphicMapType_11099 (store (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| Ops_3Mask@5) x@@11 f_7 (+ (select (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| Ops_3Mask@5) x@@11 f_7) perm@3)) (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| Ops_3Mask@5) (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| Ops_3Mask@5) (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| Ops_3Mask@5) (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| Ops_3Mask@5) (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| Ops_3Mask@5) (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| Ops_3Mask@5) (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| Ops_3Mask@5) (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| Ops_3Mask@5) (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| Ops_3Mask@5) (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| Ops_3Mask@5) (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| Ops_3Mask@5) (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| Ops_3Mask@5) (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| Ops_3Mask@5) (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| Ops_3Mask@5) (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| Ops_3Mask@5) (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| Ops_3Mask@5) (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| Ops_3Mask@5) (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| Ops_3Mask@5) (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| Ops_3Mask@5) (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| Ops_3Mask@5) (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| Ops_3Mask@5) (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| Ops_3Mask@5) (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| Ops_3Mask@5) (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| Ops_3Mask@5)))) (and (= b_9@19  (and b_9@18 (state Ops_3Heap@0 Ops_3Mask@6))) (= b_9@20  (and b_9@19 (state Ops_3Heap@0 Ops_3Mask@6))))) (=> (and (and (and (IdenticalOnKnownLocations Ops_3Heap@0 ExhaleHeap@0 Ops_3Mask@6) (= b_9@21  (and b_9@20 (state ExhaleHeap@0 Ops_3Mask@6)))) (and (= b_9@22  (and b_9@21 (state ExhaleHeap@0 Ops_3Mask@6))) (= Ops_3Heap@1 ExhaleHeap@0))) (and (and (= b_9@23 b_9@22) (= Mask@7 Mask@6)) (and (= Ops_3Mask@7 Ops_3Mask@6) (= (ControlFlow 0 20) 17)))) anon36_correct)))))))))))
(let ((anon67_Else_correct  (=> (and (>= 0.0 takeTransfer@3) (= Mask@6 Mask@4)) (=> (and (and (= neededTransfer@7 neededTransfer@5) (= b_12@4 b_12@2)) (and (= Used_6Mask@3 Used_6Mask@1) (= (ControlFlow 0 25) 20))) anon35_correct))))
(let ((anon67_Then_correct  (=> (and (> takeTransfer@3 0.0) (= neededTransfer@6 (- neededTransfer@5 takeTransfer@3))) (=> (and (and (and (= Used_6Mask@2 (PolymorphicMapType_11099 (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| Used_6Mask@1) (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| Used_6Mask@1) (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| Used_6Mask@1) (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| Used_6Mask@1) (store (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| Used_6Mask@1) null (wand_1 true x@@11 (/ (to_real 2) (to_real 3))) (+ (select (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| Used_6Mask@1) null (wand_1 true x@@11 (/ (to_real 2) (to_real 3)))) takeTransfer@3)) (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| Used_6Mask@1) (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| Used_6Mask@1) (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| Used_6Mask@1) (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| Used_6Mask@1) (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| Used_6Mask@1) (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| Used_6Mask@1) (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| Used_6Mask@1) (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| Used_6Mask@1) (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| Used_6Mask@1) (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| Used_6Mask@1) (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| Used_6Mask@1) (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| Used_6Mask@1) (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| Used_6Mask@1) (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| Used_6Mask@1) (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| Used_6Mask@1) (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| Used_6Mask@1) (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| Used_6Mask@1) (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| Used_6Mask@1) (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| Used_6Mask@1) (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| Used_6Mask@1))) (= b_12@3  (and b_12@2 (state Used_6Heap@0 Used_6Mask@2)))) (and (= Mask@5 (PolymorphicMapType_11099 (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| Mask@4) (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| Mask@4) (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| Mask@4) (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| Mask@4) (store (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| Mask@4) null (wand_1 true x@@11 (/ (to_real 2) (to_real 3))) (- (select (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| Mask@4) null (wand_1 true x@@11 (/ (to_real 2) (to_real 3)))) takeTransfer@3)) (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| Mask@4) (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| Mask@4) (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| Mask@4) (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| Mask@4) (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| Mask@4) (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| Mask@4) (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| Mask@4) (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| Mask@4) (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| Mask@4) (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| Mask@4) (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| Mask@4) (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| Mask@4) (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| Mask@4) (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| Mask@4) (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| Mask@4) (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| Mask@4) (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| Mask@4) (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| Mask@4) (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| Mask@4) (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| Mask@4))) (= Mask@6 Mask@5))) (and (and (= neededTransfer@7 neededTransfer@6) (= b_12@4 b_12@3)) (and (= Used_6Mask@3 Used_6Mask@2) (= (ControlFlow 0 24) 20)))) anon35_correct))))
(let ((anon66_Else_correct  (=> (and (< maskTransfer@3 neededTransfer@5) (= takeTransfer@3 maskTransfer@3)) (and (=> (= (ControlFlow 0 27) 24) anon67_Then_correct) (=> (= (ControlFlow 0 27) 25) anon67_Else_correct)))))
(let ((anon66_Then_correct  (=> (and (<= neededTransfer@5 maskTransfer@3) (= takeTransfer@3 neededTransfer@5)) (and (=> (= (ControlFlow 0 26) 24) anon67_Then_correct) (=> (= (ControlFlow 0 26) 25) anon67_Else_correct)))))
(let ((anon65_Then_correct  (=> (and (and (and (and b_9@10 b_12@2) true) (> neededTransfer@5 0.0)) (= maskTransfer@3 (select (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| Mask@4) null (wand_1 true x@@11 (/ (to_real 2) (to_real 3)))))) (and (=> (= (ControlFlow 0 28) 26) anon66_Then_correct) (=> (= (ControlFlow 0 28) 27) anon66_Else_correct)))))
(let ((anon65_Else_correct  (=> (and (not (and (and (and b_9@10 b_12@2) true) (> neededTransfer@5 0.0))) (= Mask@6 Mask@4)) (=> (and (and (= neededTransfer@7 neededTransfer@5) (= b_12@4 b_12@2)) (and (= Used_6Mask@3 Used_6Mask@1) (= (ControlFlow 0 23) 20))) anon35_correct))))
(let ((anon64_Else_correct  (=> (>= 0.0 takeTransfer@2) (=> (and (and (= Ops_3Mask@5 Ops_3Mask@3) (= Used_6Mask@1 ZeroMask)) (and (= b_12@2 b_12@0) (= neededTransfer@5 1.0))) (and (=> (= (ControlFlow 0 31) 28) anon65_Then_correct) (=> (= (ControlFlow 0 31) 23) anon65_Else_correct))))))
(let ((anon64_Then_correct  (=> (> takeTransfer@2 0.0) (=> (and (and (and (= neededTransfer@4 (- 1.0 takeTransfer@2)) (= Used_6Mask@0 (PolymorphicMapType_11099 (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| ZeroMask) (store (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| ZeroMask) null (wand_1 true x@@11 (/ (to_real 2) (to_real 3))) (+ (select (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| ZeroMask) null (wand_1 true x@@11 (/ (to_real 2) (to_real 3)))) takeTransfer@2)) (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| ZeroMask)))) (and (= b_12@1  (and b_12@0 (state Used_6Heap@0 Used_6Mask@0))) (= Ops_3Mask@4 (PolymorphicMapType_11099 (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| Ops_3Mask@3) (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| Ops_3Mask@3) (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| Ops_3Mask@3) (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| Ops_3Mask@3) (store (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| Ops_3Mask@3) null (wand_1 true x@@11 (/ (to_real 2) (to_real 3))) (- (select (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| Ops_3Mask@3) null (wand_1 true x@@11 (/ (to_real 2) (to_real 3)))) takeTransfer@2)) (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| Ops_3Mask@3) (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| Ops_3Mask@3) (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| Ops_3Mask@3) (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| Ops_3Mask@3) (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| Ops_3Mask@3) (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| Ops_3Mask@3) (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| Ops_3Mask@3) (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| Ops_3Mask@3) (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| Ops_3Mask@3) (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| Ops_3Mask@3) (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| Ops_3Mask@3) (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| Ops_3Mask@3) (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| Ops_3Mask@3) (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| Ops_3Mask@3) (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| Ops_3Mask@3) (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| Ops_3Mask@3) (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| Ops_3Mask@3) (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| Ops_3Mask@3) (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| Ops_3Mask@3) (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| Ops_3Mask@3))))) (and (and (= Ops_3Mask@5 Ops_3Mask@4) (= Used_6Mask@1 Used_6Mask@0)) (and (= b_12@2 b_12@1) (= neededTransfer@5 neededTransfer@4)))) (and (=> (= (ControlFlow 0 30) 28) anon65_Then_correct) (=> (= (ControlFlow 0 30) 23) anon65_Else_correct))))))
(let ((anon63_Else_correct  (=> (and (< maskTransfer@2 1.0) (= takeTransfer@2 maskTransfer@2)) (and (=> (= (ControlFlow 0 33) 30) anon64_Then_correct) (=> (= (ControlFlow 0 33) 31) anon64_Else_correct)))))
(let ((anon63_Then_correct  (=> (and (<= 1.0 maskTransfer@2) (= takeTransfer@2 1.0)) (and (=> (= (ControlFlow 0 32) 30) anon64_Then_correct) (=> (= (ControlFlow 0 32) 31) anon64_Else_correct)))))
(let ((anon62_Then_correct  (=> (and (and (and (and b_9@10 b_12@0) true) (> 1.0 0.0)) (= maskTransfer@2 (select (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| Ops_3Mask@3) null (wand_1 true x@@11 (/ (to_real 2) (to_real 3)))))) (and (=> (= (ControlFlow 0 34) 32) anon63_Then_correct) (=> (= (ControlFlow 0 34) 33) anon63_Else_correct)))))
(let ((anon62_Else_correct  (=> (not (and (and (and b_9@10 b_12@0) true) (> 1.0 0.0))) (=> (and (and (= Ops_3Mask@5 Ops_3Mask@3) (= Used_6Mask@1 ZeroMask)) (and (= b_12@2 b_12@0) (= neededTransfer@5 1.0))) (and (=> (= (ControlFlow 0 29) 28) anon65_Then_correct) (=> (= (ControlFlow 0 29) 23) anon65_Else_correct))))))
(let ((anon23_correct  (=> (= initNeededTransfer@1 (+ (select (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| ZeroMask) null (wand_1 true x@@11 (/ (to_real 2) (to_real 3)))) 1.0)) (and (=> (= (ControlFlow 0 35) (- 0 36)) (>= 1.0 0.0)) (=> (>= 1.0 0.0) (and (=> (= (ControlFlow 0 35) 34) anon62_Then_correct) (=> (= (ControlFlow 0 35) 29) anon62_Else_correct)))))))
(let ((anon60_Then_correct  (=> b_9@10 (and (=> (= (ControlFlow 0 41) 40) anon61_Then_correct) (=> (= (ControlFlow 0 41) 35) anon23_correct)))))
(let ((anon60_Else_correct  (=> (and (not b_9@10) (= (ControlFlow 0 38) 35)) anon23_correct)))
(let ((anon59_Then_correct  (=> (and b_9@10 b_12@0) (and (=> (= (ControlFlow 0 42) 41) anon60_Then_correct) (=> (= (ControlFlow 0 42) 38) anon60_Else_correct)))))
(let ((anon59_Else_correct  (=> (and (not (and b_9@10 b_12@0)) (= (ControlFlow 0 37) 35)) anon23_correct)))
(let ((anon58_Then_correct  (=> (and b_9@10 (= b_12@0  (and b_12 (state Used_6Heap@0 ZeroMask)))) (and (=> (= (ControlFlow 0 43) 42) anon59_Then_correct) (=> (= (ControlFlow 0 43) 37) anon59_Else_correct)))))
(let ((anon58_Else_correct  (=> (and (not b_9@10) (= Ops_3Heap@1 Ops_3Heap@0)) (=> (and (and (= b_9@23 b_9@10) (= Mask@7 Mask@4)) (and (= Ops_3Mask@7 Ops_3Mask@3) (= (ControlFlow 0 19) 17))) anon36_correct))))
(let ((anon17_correct  (and (=> (= (ControlFlow 0 45) (- 0 47)) (=> (and b_9@2 b_10@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| Used_5Mask@3) null (P x@@11)) initNeededTransfer@0)))) (=> (=> (and b_9@2 b_10@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| Used_5Mask@3) null (P x@@11)) initNeededTransfer@0))) (=> (= b_11@0  (and b_9@2 b_10@6)) (=> (and (and (and (= b_11@1  (and b_11@0 (state Result_3Heap Result_3Mask))) (= b_11@2  (and b_11@1 (sumMask Result_3Mask Ops_3Mask@1 Used_5Mask@3)))) (and (= b_11@3  (and (and b_11@2 (IdenticalOnKnownLocations Ops_3Heap@0 Result_3Heap Ops_3Mask@1)) (IdenticalOnKnownLocations Used_5Heap@0 Result_3Heap Used_5Mask@3))) (= b_11@4  (and b_11@3 (state Result_3Heap Result_3Mask))))) (and (and (= b_9@3  (and b_9@2 b_11@4)) (= b_9@4  (and b_9@3 b_10@6))) (and (= b_9@5  (and b_9@4 (= Used_5Heap@0 Ops_3Heap@0))) (= perm@1 (/ (to_real 1) (to_real 3)))))) (and (=> (= (ControlFlow 0 45) (- 0 46)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (= b_9@6  (and b_9@5 (=> (> perm@1 NoPerm) (not (= x@@11 null))))) (=> (and (and (and (= Ops_3Mask@2 (PolymorphicMapType_11099 (store (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| Ops_3Mask@1) x@@11 f_7 (+ (select (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| Ops_3Mask@1) x@@11 f_7) perm@1)) (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| Ops_3Mask@1) (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| Ops_3Mask@1) (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| Ops_3Mask@1) (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| Ops_3Mask@1) (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| Ops_3Mask@1) (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| Ops_3Mask@1) (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| Ops_3Mask@1) (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| Ops_3Mask@1) (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| Ops_3Mask@1) (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| Ops_3Mask@1) (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| Ops_3Mask@1) (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| Ops_3Mask@1) (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| Ops_3Mask@1) (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| Ops_3Mask@1) (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| Ops_3Mask@1) (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| Ops_3Mask@1) (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| Ops_3Mask@1) (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| Ops_3Mask@1) (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| Ops_3Mask@1) (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| Ops_3Mask@1) (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| Ops_3Mask@1) (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| Ops_3Mask@1) (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| Ops_3Mask@1) (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| Ops_3Mask@1))) (= b_9@7  (and b_9@6 (state Ops_3Heap@0 Ops_3Mask@2)))) (and (= b_9@8  (and b_9@7 (state Ops_3Heap@0 Ops_3Mask@2))) (= b_9@9  (and b_9@8 (state Ops_3Heap@0 Ops_3Mask@2))))) (and (and (= b_9@10 b_9@9) (= Mask@4 Mask@3)) (and (= Ops_3Mask@3 Ops_3Mask@2) (= Heap@2 Heap@1)))) (and (=> (= (ControlFlow 0 45) 43) anon58_Then_correct) (=> (= (ControlFlow 0 45) 19) anon58_Else_correct))))))))))))
(let ((anon57_Else_correct  (=> (>= 0.0 takeTransfer@1) (=> (and (= Mask@3 Mask@1) (= neededTransfer@3 neededTransfer@1)) (=> (and (and (= b_10@6 b_10@3) (= Used_5Mask@3 Used_5Mask@1)) (and (= Heap@1 Heap@@75) (= (ControlFlow 0 50) 45))) anon17_correct)))))
(let ((anon57_Then_correct  (=> (> takeTransfer@1 0.0) (=> (and (= neededTransfer@2 (- neededTransfer@1 takeTransfer@1)) (= Used_5Mask@2 (PolymorphicMapType_11099 (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| Used_5Mask@1) (store (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| Used_5Mask@1) null (P x@@11) (+ (select (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| Used_5Mask@1) null (P x@@11)) takeTransfer@1)) (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| Used_5Mask@1) (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| Used_5Mask@1) (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| Used_5Mask@1) (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| Used_5Mask@1) (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| Used_5Mask@1) (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| Used_5Mask@1) (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| Used_5Mask@1) (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| Used_5Mask@1) (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| Used_5Mask@1) (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| Used_5Mask@1) (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| Used_5Mask@1) (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| Used_5Mask@1) (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| Used_5Mask@1) (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| Used_5Mask@1) (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| Used_5Mask@1) (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| Used_5Mask@1) (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| Used_5Mask@1) (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| Used_5Mask@1) (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| Used_5Mask@1) (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| Used_5Mask@1) (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| Used_5Mask@1) (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| Used_5Mask@1) (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| Used_5Mask@1)))) (=> (and (and (= b_10@4  (and b_10@3 (state Used_5Heap@0 Used_5Mask@2))) (= TempMask@1 (PolymorphicMapType_11099 (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| ZeroMask) (store (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| ZeroMask) null (P x@@11) FullPerm) (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| ZeroMask)))) (and (= b_10@5  (and b_10@4 (IdenticalOnKnownLocations Heap@@75 Used_5Heap@0 TempMask@1))) (= Mask@2 (PolymorphicMapType_11099 (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| Mask@1) (store (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| Mask@1) null (P x@@11) (- (select (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| Mask@1) null (P x@@11)) takeTransfer@1)) (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| Mask@1) (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| Mask@1) (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| Mask@1) (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| Mask@1) (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| Mask@1) (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| Mask@1) (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| Mask@1) (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| Mask@1) (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| Mask@1) (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| Mask@1) (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| Mask@1) (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| Mask@1) (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| Mask@1) (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| Mask@1) (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| Mask@1) (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| Mask@1) (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| Mask@1) (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| Mask@1) (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| Mask@1) (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| Mask@1) (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| Mask@1) (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| Mask@1) (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| Mask@1))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_40 T@Ref) (f_52 T@Field_15576_1716) ) (!  (=> (or (select (|PolymorphicMapType_11627_6336_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@75) null (|wand#sm| true x@@11 FullPerm))) o_40 f_52) (select (|PolymorphicMapType_11627_6336_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@75) null (|P#sm| x@@11))) o_40 f_52)) (select (|PolymorphicMapType_11627_6336_1716#PolymorphicMapType_11627| newPMask@0) o_40 f_52))
 :qid |stdinbpl.896:39|
 :skolemid |50|
 :pattern ( (select (|PolymorphicMapType_11627_6336_1716#PolymorphicMapType_11627| newPMask@0) o_40 f_52))
)) (forall ((o_40@@0 T@Ref) (f_52@@0 T@Field_11138_53) ) (!  (=> (or (select (|PolymorphicMapType_11627_6336_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@75) null (|wand#sm| true x@@11 FullPerm))) o_40@@0 f_52@@0) (select (|PolymorphicMapType_11627_6336_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@75) null (|P#sm| x@@11))) o_40@@0 f_52@@0)) (select (|PolymorphicMapType_11627_6336_53#PolymorphicMapType_11627| newPMask@0) o_40@@0 f_52@@0))
 :qid |stdinbpl.896:39|
 :skolemid |50|
 :pattern ( (select (|PolymorphicMapType_11627_6336_53#PolymorphicMapType_11627| newPMask@0) o_40@@0 f_52@@0))
))) (forall ((o_40@@1 T@Ref) (f_52@@1 T@Field_11151_11152) ) (!  (=> (or (select (|PolymorphicMapType_11627_6336_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@75) null (|wand#sm| true x@@11 FullPerm))) o_40@@1 f_52@@1) (select (|PolymorphicMapType_11627_6336_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@75) null (|P#sm| x@@11))) o_40@@1 f_52@@1)) (select (|PolymorphicMapType_11627_6336_11152#PolymorphicMapType_11627| newPMask@0) o_40@@1 f_52@@1))
 :qid |stdinbpl.896:39|
 :skolemid |50|
 :pattern ( (select (|PolymorphicMapType_11627_6336_11152#PolymorphicMapType_11627| newPMask@0) o_40@@1 f_52@@1))
))) (forall ((o_40@@2 T@Ref) (f_52@@2 T@Field_11138_14482) ) (!  (=> (or (select (|PolymorphicMapType_11627_6336_42376#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@75) null (|wand#sm| true x@@11 FullPerm))) o_40@@2 f_52@@2) (select (|PolymorphicMapType_11627_6336_42376#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@75) null (|P#sm| x@@11))) o_40@@2 f_52@@2)) (select (|PolymorphicMapType_11627_6336_42376#PolymorphicMapType_11627| newPMask@0) o_40@@2 f_52@@2))
 :qid |stdinbpl.896:39|
 :skolemid |50|
 :pattern ( (select (|PolymorphicMapType_11627_6336_42376#PolymorphicMapType_11627| newPMask@0) o_40@@2 f_52@@2))
))) (forall ((o_40@@3 T@Ref) (f_52@@3 T@Field_11138_14493) ) (!  (=> (or (select (|PolymorphicMapType_11627_6336_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@75) null (|wand#sm| true x@@11 FullPerm))) o_40@@3 f_52@@3) (select (|PolymorphicMapType_11627_6336_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@75) null (|P#sm| x@@11))) o_40@@3 f_52@@3)) (select (|PolymorphicMapType_11627_6336_14493#PolymorphicMapType_11627| newPMask@0) o_40@@3 f_52@@3))
 :qid |stdinbpl.896:39|
 :skolemid |50|
 :pattern ( (select (|PolymorphicMapType_11627_6336_14493#PolymorphicMapType_11627| newPMask@0) o_40@@3 f_52@@3))
))) (forall ((o_40@@4 T@Ref) (f_52@@4 T@Field_14465_1199) ) (!  (=> (or (select (|PolymorphicMapType_11627_14465_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@75) null (|wand#sm| true x@@11 FullPerm))) o_40@@4 f_52@@4) (select (|PolymorphicMapType_11627_14465_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@75) null (|P#sm| x@@11))) o_40@@4 f_52@@4)) (select (|PolymorphicMapType_11627_14465_1716#PolymorphicMapType_11627| newPMask@0) o_40@@4 f_52@@4))
 :qid |stdinbpl.896:39|
 :skolemid |50|
 :pattern ( (select (|PolymorphicMapType_11627_14465_1716#PolymorphicMapType_11627| newPMask@0) o_40@@4 f_52@@4))
))) (forall ((o_40@@5 T@Ref) (f_52@@5 T@Field_14465_53) ) (!  (=> (or (select (|PolymorphicMapType_11627_14465_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@75) null (|wand#sm| true x@@11 FullPerm))) o_40@@5 f_52@@5) (select (|PolymorphicMapType_11627_14465_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@75) null (|P#sm| x@@11))) o_40@@5 f_52@@5)) (select (|PolymorphicMapType_11627_14465_53#PolymorphicMapType_11627| newPMask@0) o_40@@5 f_52@@5))
 :qid |stdinbpl.896:39|
 :skolemid |50|
 :pattern ( (select (|PolymorphicMapType_11627_14465_53#PolymorphicMapType_11627| newPMask@0) o_40@@5 f_52@@5))
))) (forall ((o_40@@6 T@Ref) (f_52@@6 T@Field_14465_11152) ) (!  (=> (or (select (|PolymorphicMapType_11627_14465_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@75) null (|wand#sm| true x@@11 FullPerm))) o_40@@6 f_52@@6) (select (|PolymorphicMapType_11627_14465_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@75) null (|P#sm| x@@11))) o_40@@6 f_52@@6)) (select (|PolymorphicMapType_11627_14465_11152#PolymorphicMapType_11627| newPMask@0) o_40@@6 f_52@@6))
 :qid |stdinbpl.896:39|
 :skolemid |50|
 :pattern ( (select (|PolymorphicMapType_11627_14465_11152#PolymorphicMapType_11627| newPMask@0) o_40@@6 f_52@@6))
))) (forall ((o_40@@7 T@Ref) (f_52@@7 T@Field_14477_14482) ) (!  (=> (or (select (|PolymorphicMapType_11627_14465_43424#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@75) null (|wand#sm| true x@@11 FullPerm))) o_40@@7 f_52@@7) (select (|PolymorphicMapType_11627_14465_43424#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@75) null (|P#sm| x@@11))) o_40@@7 f_52@@7)) (select (|PolymorphicMapType_11627_14465_43424#PolymorphicMapType_11627| newPMask@0) o_40@@7 f_52@@7))
 :qid |stdinbpl.896:39|
 :skolemid |50|
 :pattern ( (select (|PolymorphicMapType_11627_14465_43424#PolymorphicMapType_11627| newPMask@0) o_40@@7 f_52@@7))
))) (forall ((o_40@@8 T@Ref) (f_52@@8 T@Field_14492_14493) ) (!  (=> (or (select (|PolymorphicMapType_11627_14465_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@75) null (|wand#sm| true x@@11 FullPerm))) o_40@@8 f_52@@8) (select (|PolymorphicMapType_11627_14465_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@75) null (|P#sm| x@@11))) o_40@@8 f_52@@8)) (select (|PolymorphicMapType_11627_14465_14493#PolymorphicMapType_11627| newPMask@0) o_40@@8 f_52@@8))
 :qid |stdinbpl.896:39|
 :skolemid |50|
 :pattern ( (select (|PolymorphicMapType_11627_14465_14493#PolymorphicMapType_11627| newPMask@0) o_40@@8 f_52@@8))
))) (forall ((o_40@@9 T@Ref) (f_52@@9 T@Field_15021_1464) ) (!  (=> (or (select (|PolymorphicMapType_11627_15021_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@75) null (|wand#sm| true x@@11 FullPerm))) o_40@@9 f_52@@9) (select (|PolymorphicMapType_11627_15021_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@75) null (|P#sm| x@@11))) o_40@@9 f_52@@9)) (select (|PolymorphicMapType_11627_15021_1716#PolymorphicMapType_11627| newPMask@0) o_40@@9 f_52@@9))
 :qid |stdinbpl.896:39|
 :skolemid |50|
 :pattern ( (select (|PolymorphicMapType_11627_15021_1716#PolymorphicMapType_11627| newPMask@0) o_40@@9 f_52@@9))
))) (forall ((o_40@@10 T@Ref) (f_52@@10 T@Field_15021_53) ) (!  (=> (or (select (|PolymorphicMapType_11627_15021_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@75) null (|wand#sm| true x@@11 FullPerm))) o_40@@10 f_52@@10) (select (|PolymorphicMapType_11627_15021_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@75) null (|P#sm| x@@11))) o_40@@10 f_52@@10)) (select (|PolymorphicMapType_11627_15021_53#PolymorphicMapType_11627| newPMask@0) o_40@@10 f_52@@10))
 :qid |stdinbpl.896:39|
 :skolemid |50|
 :pattern ( (select (|PolymorphicMapType_11627_15021_53#PolymorphicMapType_11627| newPMask@0) o_40@@10 f_52@@10))
))) (forall ((o_40@@11 T@Ref) (f_52@@11 T@Field_15021_11152) ) (!  (=> (or (select (|PolymorphicMapType_11627_15021_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@75) null (|wand#sm| true x@@11 FullPerm))) o_40@@11 f_52@@11) (select (|PolymorphicMapType_11627_15021_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@75) null (|P#sm| x@@11))) o_40@@11 f_52@@11)) (select (|PolymorphicMapType_11627_15021_11152#PolymorphicMapType_11627| newPMask@0) o_40@@11 f_52@@11))
 :qid |stdinbpl.896:39|
 :skolemid |50|
 :pattern ( (select (|PolymorphicMapType_11627_15021_11152#PolymorphicMapType_11627| newPMask@0) o_40@@11 f_52@@11))
))) (forall ((o_40@@12 T@Ref) (f_52@@12 T@Field_15033_15038) ) (!  (=> (or (select (|PolymorphicMapType_11627_15021_44472#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@75) null (|wand#sm| true x@@11 FullPerm))) o_40@@12 f_52@@12) (select (|PolymorphicMapType_11627_15021_44472#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@75) null (|P#sm| x@@11))) o_40@@12 f_52@@12)) (select (|PolymorphicMapType_11627_15021_44472#PolymorphicMapType_11627| newPMask@0) o_40@@12 f_52@@12))
 :qid |stdinbpl.896:39|
 :skolemid |50|
 :pattern ( (select (|PolymorphicMapType_11627_15021_44472#PolymorphicMapType_11627| newPMask@0) o_40@@12 f_52@@12))
))) (forall ((o_40@@13 T@Ref) (f_52@@13 T@Field_15048_15049) ) (!  (=> (or (select (|PolymorphicMapType_11627_15021_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@75) null (|wand#sm| true x@@11 FullPerm))) o_40@@13 f_52@@13) (select (|PolymorphicMapType_11627_15021_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@75) null (|P#sm| x@@11))) o_40@@13 f_52@@13)) (select (|PolymorphicMapType_11627_15021_14493#PolymorphicMapType_11627| newPMask@0) o_40@@13 f_52@@13))
 :qid |stdinbpl.896:39|
 :skolemid |50|
 :pattern ( (select (|PolymorphicMapType_11627_15021_14493#PolymorphicMapType_11627| newPMask@0) o_40@@13 f_52@@13))
))) (forall ((o_40@@14 T@Ref) (f_52@@14 T@Field_15623_1199) ) (!  (=> (or (select (|PolymorphicMapType_11627_15623_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@75) null (|wand#sm| true x@@11 FullPerm))) o_40@@14 f_52@@14) (select (|PolymorphicMapType_11627_15623_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@75) null (|P#sm| x@@11))) o_40@@14 f_52@@14)) (select (|PolymorphicMapType_11627_15623_1716#PolymorphicMapType_11627| newPMask@0) o_40@@14 f_52@@14))
 :qid |stdinbpl.896:39|
 :skolemid |50|
 :pattern ( (select (|PolymorphicMapType_11627_15623_1716#PolymorphicMapType_11627| newPMask@0) o_40@@14 f_52@@14))
))) (forall ((o_40@@15 T@Ref) (f_52@@15 T@Field_15623_53) ) (!  (=> (or (select (|PolymorphicMapType_11627_15623_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@75) null (|wand#sm| true x@@11 FullPerm))) o_40@@15 f_52@@15) (select (|PolymorphicMapType_11627_15623_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@75) null (|P#sm| x@@11))) o_40@@15 f_52@@15)) (select (|PolymorphicMapType_11627_15623_53#PolymorphicMapType_11627| newPMask@0) o_40@@15 f_52@@15))
 :qid |stdinbpl.896:39|
 :skolemid |50|
 :pattern ( (select (|PolymorphicMapType_11627_15623_53#PolymorphicMapType_11627| newPMask@0) o_40@@15 f_52@@15))
))) (forall ((o_40@@16 T@Ref) (f_52@@16 T@Field_15623_11152) ) (!  (=> (or (select (|PolymorphicMapType_11627_15623_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@75) null (|wand#sm| true x@@11 FullPerm))) o_40@@16 f_52@@16) (select (|PolymorphicMapType_11627_15623_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@75) null (|P#sm| x@@11))) o_40@@16 f_52@@16)) (select (|PolymorphicMapType_11627_15623_11152#PolymorphicMapType_11627| newPMask@0) o_40@@16 f_52@@16))
 :qid |stdinbpl.896:39|
 :skolemid |50|
 :pattern ( (select (|PolymorphicMapType_11627_15623_11152#PolymorphicMapType_11627| newPMask@0) o_40@@16 f_52@@16))
))) (forall ((o_40@@17 T@Ref) (f_52@@17 T@Field_15636_15641) ) (!  (=> (or (select (|PolymorphicMapType_11627_15623_45520#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@75) null (|wand#sm| true x@@11 FullPerm))) o_40@@17 f_52@@17) (select (|PolymorphicMapType_11627_15623_45520#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@75) null (|P#sm| x@@11))) o_40@@17 f_52@@17)) (select (|PolymorphicMapType_11627_15623_45520#PolymorphicMapType_11627| newPMask@0) o_40@@17 f_52@@17))
 :qid |stdinbpl.896:39|
 :skolemid |50|
 :pattern ( (select (|PolymorphicMapType_11627_15623_45520#PolymorphicMapType_11627| newPMask@0) o_40@@17 f_52@@17))
))) (forall ((o_40@@18 T@Ref) (f_52@@18 T@Field_15623_15624) ) (!  (=> (or (select (|PolymorphicMapType_11627_15623_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@75) null (|wand#sm| true x@@11 FullPerm))) o_40@@18 f_52@@18) (select (|PolymorphicMapType_11627_15623_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@75) null (|P#sm| x@@11))) o_40@@18 f_52@@18)) (select (|PolymorphicMapType_11627_15623_14493#PolymorphicMapType_11627| newPMask@0) o_40@@18 f_52@@18))
 :qid |stdinbpl.896:39|
 :skolemid |50|
 :pattern ( (select (|PolymorphicMapType_11627_15623_14493#PolymorphicMapType_11627| newPMask@0) o_40@@18 f_52@@18))
))) (forall ((o_40@@19 T@Ref) (f_52@@19 T@Field_16561_1199) ) (!  (=> (or (select (|PolymorphicMapType_11627_16561_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@75) null (|wand#sm| true x@@11 FullPerm))) o_40@@19 f_52@@19) (select (|PolymorphicMapType_11627_16561_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@75) null (|P#sm| x@@11))) o_40@@19 f_52@@19)) (select (|PolymorphicMapType_11627_16561_1716#PolymorphicMapType_11627| newPMask@0) o_40@@19 f_52@@19))
 :qid |stdinbpl.896:39|
 :skolemid |50|
 :pattern ( (select (|PolymorphicMapType_11627_16561_1716#PolymorphicMapType_11627| newPMask@0) o_40@@19 f_52@@19))
))) (forall ((o_40@@20 T@Ref) (f_52@@20 T@Field_16561_53) ) (!  (=> (or (select (|PolymorphicMapType_11627_16561_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@75) null (|wand#sm| true x@@11 FullPerm))) o_40@@20 f_52@@20) (select (|PolymorphicMapType_11627_16561_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@75) null (|P#sm| x@@11))) o_40@@20 f_52@@20)) (select (|PolymorphicMapType_11627_16561_53#PolymorphicMapType_11627| newPMask@0) o_40@@20 f_52@@20))
 :qid |stdinbpl.896:39|
 :skolemid |50|
 :pattern ( (select (|PolymorphicMapType_11627_16561_53#PolymorphicMapType_11627| newPMask@0) o_40@@20 f_52@@20))
))) (forall ((o_40@@21 T@Ref) (f_52@@21 T@Field_16561_11152) ) (!  (=> (or (select (|PolymorphicMapType_11627_16561_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@75) null (|wand#sm| true x@@11 FullPerm))) o_40@@21 f_52@@21) (select (|PolymorphicMapType_11627_16561_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@75) null (|P#sm| x@@11))) o_40@@21 f_52@@21)) (select (|PolymorphicMapType_11627_16561_11152#PolymorphicMapType_11627| newPMask@0) o_40@@21 f_52@@21))
 :qid |stdinbpl.896:39|
 :skolemid |50|
 :pattern ( (select (|PolymorphicMapType_11627_16561_11152#PolymorphicMapType_11627| newPMask@0) o_40@@21 f_52@@21))
))) (forall ((o_40@@22 T@Ref) (f_52@@22 T@Field_16574_16579) ) (!  (=> (or (select (|PolymorphicMapType_11627_16561_46568#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@75) null (|wand#sm| true x@@11 FullPerm))) o_40@@22 f_52@@22) (select (|PolymorphicMapType_11627_16561_46568#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@75) null (|P#sm| x@@11))) o_40@@22 f_52@@22)) (select (|PolymorphicMapType_11627_16561_46568#PolymorphicMapType_11627| newPMask@0) o_40@@22 f_52@@22))
 :qid |stdinbpl.896:39|
 :skolemid |50|
 :pattern ( (select (|PolymorphicMapType_11627_16561_46568#PolymorphicMapType_11627| newPMask@0) o_40@@22 f_52@@22))
))) (forall ((o_40@@23 T@Ref) (f_52@@23 T@Field_16561_16562) ) (!  (=> (or (select (|PolymorphicMapType_11627_16561_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@75) null (|wand#sm| true x@@11 FullPerm))) o_40@@23 f_52@@23) (select (|PolymorphicMapType_11627_16561_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@75) null (|P#sm| x@@11))) o_40@@23 f_52@@23)) (select (|PolymorphicMapType_11627_16561_14493#PolymorphicMapType_11627| newPMask@0) o_40@@23 f_52@@23))
 :qid |stdinbpl.896:39|
 :skolemid |50|
 :pattern ( (select (|PolymorphicMapType_11627_16561_14493#PolymorphicMapType_11627| newPMask@0) o_40@@23 f_52@@23))
))) (= Heap@0 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@75) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@75) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@75) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@75) (store (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@75) null (|wand#sm| true x@@11 FullPerm) newPMask@0) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@75) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@75) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@75) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@75) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@75) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@75) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@75) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@75) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@75) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@75) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@75) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@75) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@75) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@75) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@75) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@75) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@75) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@75) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@75) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@75)))) (and (= Mask@3 Mask@2) (= neededTransfer@3 neededTransfer@2))) (and (and (= b_10@6 b_10@5) (= Used_5Mask@3 Used_5Mask@2)) (and (= Heap@1 Heap@0) (= (ControlFlow 0 49) 45)))) anon17_correct))))))
(let ((anon56_Else_correct  (=> (and (< maskTransfer@1 neededTransfer@1) (= takeTransfer@1 maskTransfer@1)) (and (=> (= (ControlFlow 0 52) 49) anon57_Then_correct) (=> (= (ControlFlow 0 52) 50) anon57_Else_correct)))))
(let ((anon56_Then_correct  (=> (and (<= neededTransfer@1 maskTransfer@1) (= takeTransfer@1 neededTransfer@1)) (and (=> (= (ControlFlow 0 51) 49) anon57_Then_correct) (=> (= (ControlFlow 0 51) 50) anon57_Else_correct)))))
(let ((anon55_Then_correct  (=> (and (and (and (and b_9@2 b_10@3) true) (> neededTransfer@1 0.0)) (= maskTransfer@1 (select (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| Mask@1) null (P x@@11)))) (and (=> (= (ControlFlow 0 53) 51) anon56_Then_correct) (=> (= (ControlFlow 0 53) 52) anon56_Else_correct)))))
(let ((anon55_Else_correct  (=> (not (and (and (and b_9@2 b_10@3) true) (> neededTransfer@1 0.0))) (=> (and (= Mask@3 Mask@1) (= neededTransfer@3 neededTransfer@1)) (=> (and (and (= b_10@6 b_10@3) (= Used_5Mask@3 Used_5Mask@1)) (and (= Heap@1 Heap@@75) (= (ControlFlow 0 48) 45))) anon17_correct)))))
(let ((anon54_Else_correct  (=> (>= 0.0 takeTransfer@0) (=> (and (and (= Ops_3Mask@1 ZeroMask) (= Used_5Mask@1 ZeroMask)) (and (= b_10@3 b_10@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 56) 53) anon55_Then_correct) (=> (= (ControlFlow 0 56) 48) anon55_Else_correct))))))
(let ((anon54_Then_correct  (=> (> takeTransfer@0 0.0) (=> (and (= neededTransfer@0 (- FullPerm takeTransfer@0)) (= Used_5Mask@0 (PolymorphicMapType_11099 (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| ZeroMask) (store (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| ZeroMask) null (P x@@11) (+ (select (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| ZeroMask) null (P x@@11)) takeTransfer@0)) (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| ZeroMask)))) (=> (and (and (and (= b_10@1  (and b_10@0 (state Used_5Heap@0 Used_5Mask@0))) (= TempMask@0 (PolymorphicMapType_11099 (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| ZeroMask) (store (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| ZeroMask) null (P x@@11) FullPerm) (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| ZeroMask)))) (and (= b_10@2  (and b_10@1 (IdenticalOnKnownLocations Ops_3Heap@0 Used_5Heap@0 TempMask@0))) (= Ops_3Mask@0 (PolymorphicMapType_11099 (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| ZeroMask) (store (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| ZeroMask) null (P x@@11) (- (select (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| ZeroMask) null (P x@@11)) takeTransfer@0)) (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| ZeroMask))))) (and (and (= Ops_3Mask@1 Ops_3Mask@0) (= Used_5Mask@1 Used_5Mask@0)) (and (= b_10@3 b_10@2) (= neededTransfer@1 neededTransfer@0)))) (and (=> (= (ControlFlow 0 55) 53) anon55_Then_correct) (=> (= (ControlFlow 0 55) 48) anon55_Else_correct)))))))
(let ((anon53_Else_correct  (=> (and (< maskTransfer@0 FullPerm) (= takeTransfer@0 maskTransfer@0)) (and (=> (= (ControlFlow 0 58) 55) anon54_Then_correct) (=> (= (ControlFlow 0 58) 56) anon54_Else_correct)))))
(let ((anon53_Then_correct  (=> (and (<= FullPerm maskTransfer@0) (= takeTransfer@0 FullPerm)) (and (=> (= (ControlFlow 0 57) 55) anon54_Then_correct) (=> (= (ControlFlow 0 57) 56) anon54_Else_correct)))))
(let ((anon52_Then_correct  (=> (and (and (and (and b_9@2 b_10@0) true) (> FullPerm 0.0)) (= maskTransfer@0 (select (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| ZeroMask) null (P x@@11)))) (and (=> (= (ControlFlow 0 59) 57) anon53_Then_correct) (=> (= (ControlFlow 0 59) 58) anon53_Else_correct)))))
(let ((anon52_Else_correct  (=> (not (and (and (and b_9@2 b_10@0) true) (> FullPerm 0.0))) (=> (and (and (= Ops_3Mask@1 ZeroMask) (= Used_5Mask@1 ZeroMask)) (and (= b_10@3 b_10@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 54) 53) anon55_Then_correct) (=> (= (ControlFlow 0 54) 48) anon55_Else_correct))))))
(let ((anon51_Then_correct  (=> b_9@2 (=> (and (and (|P#trigger_6339| Ops_3Heap@0 (P x@@11)) (= (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Ops_3Heap@0) null (P x@@11)) (FrameFragment_1716 (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Ops_3Heap@0) x@@11 f_7)))) (and (= b_10@0  (and b_10 (state Used_5Heap@0 ZeroMask))) (= initNeededTransfer@0 (+ (select (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| ZeroMask) null (P x@@11)) FullPerm)))) (and (=> (= (ControlFlow 0 60) (- 0 61)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 60) 59) anon52_Then_correct) (=> (= (ControlFlow 0 60) 54) anon52_Else_correct))))))))
(let ((anon51_Else_correct  (=> (not b_9@2) (=> (and (and (= b_9@10 b_9@2) (= Mask@4 Mask@1)) (and (= Ops_3Mask@3 ZeroMask) (= Heap@2 Heap@@75))) (and (=> (= (ControlFlow 0 44) 43) anon58_Then_correct) (=> (= (ControlFlow 0 44) 19) anon58_Else_correct))))))
(let ((anon4_correct  (=> (and (= b_9@1  (and b_9@0 (state Ops_3Heap@0 ZeroMask))) (= b_9@2  (and b_9@1 (state Ops_3Heap@0 ZeroMask)))) (and (=> (= (ControlFlow 0 62) 60) anon51_Then_correct) (=> (= (ControlFlow 0 62) 44) anon51_Else_correct)))))
(let ((anon50_Else_correct  (=> (and (not b_9@0) (= (ControlFlow 0 64) 62)) anon4_correct)))
(let ((anon50_Then_correct  (=> (and b_9@0 (= (ControlFlow 0 63) 62)) anon4_correct)))
(let ((anon49_Else_correct  (=> (and (= Mask@1 (PolymorphicMapType_11099 (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| Mask@0) (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| Mask@0) (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| Mask@0) (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| Mask@0) (store (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| Mask@0) null (wand_1 true x@@11 (/ (to_real 2) (to_real 3))) (+ (select (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| Mask@0) null (wand_1 true x@@11 (/ (to_real 2) (to_real 3)))) FullPerm)) (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| Mask@0) (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| Mask@0) (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| Mask@0) (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| Mask@0) (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| Mask@0) (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| Mask@0) (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| Mask@0) (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| Mask@0) (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| Mask@0) (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| Mask@0) (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| Mask@0) (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| Mask@0) (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| Mask@0) (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| Mask@0) (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| Mask@0) (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| Mask@0) (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| Mask@0) (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| Mask@0) (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| Mask@0) (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| Mask@0))) (state Heap@@75 Mask@1)) (=> (and (and (state Heap@@75 Mask@1) (state Heap@@75 Mask@1)) (and (= b_9@0  (and b_9 (state Ops_3Heap@0 ZeroMask))) (= b_8@0  (and b_8 (state Used_4Heap@0 ZeroMask))))) (and (=> (= (ControlFlow 0 65) 63) anon50_Then_correct) (=> (= (ControlFlow 0 65) 64) anon50_Else_correct))))))
(let ((anon49_Then_correct  (=> (and (and (state WandDefLHSHeap@0 ZeroMask) (state WandDefLHSHeap@0 ZeroMask)) (and (= perm@0 (/ (to_real 2) (to_real 3))) (= (ControlFlow 0 2) (- 0 1)))) (>= perm@0 NoPerm))))
(let ((anon0_correct  (=> (state Heap@@75 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@75) x@@11 $allocated)) (=> (and (and (= Mask@0 (PolymorphicMapType_11099 (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| ZeroMask) (store (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| ZeroMask) null (P x@@11) (+ (select (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| ZeroMask) null (P x@@11)) FullPerm)) (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| ZeroMask) (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| ZeroMask))) (state Heap@@75 Mask@0)) (and (state Heap@@75 Mask@0) (state Heap@@75 Mask@0))) (and (=> (= (ControlFlow 0 66) 2) anon49_Then_correct) (=> (= (ControlFlow 0 66) 65) anon49_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 67) 66) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
