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
(declare-sort T@Field_55572_53 0)
(declare-sort T@Field_55585_55586 0)
(declare-sort T@Field_60499_60500 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_58898_1186 0)
(declare-sort T@Field_60512_60517 0)
(declare-sort T@Field_75522_75523 0)
(declare-sort T@Field_75535_75540 0)
(declare-sort T@Field_58995_58996 0)
(declare-sort T@Field_59008_59013 0)
(declare-sort T@Field_88384_88385 0)
(declare-sort T@Field_88397_88402 0)
(declare-sort T@Field_26136_26206 0)
(declare-sort T@Field_26136_59013 0)
(declare-sort T@Field_26205_26137 0)
(declare-sort T@Field_26205_1186 0)
(declare-sort T@Field_26205_53 0)
(declare-sort T@Field_26140_26137 0)
(declare-sort T@Field_26140_1186 0)
(declare-sort T@Field_26140_53 0)
(declare-sort T@Field_60499_26137 0)
(declare-sort T@Field_60499_1186 0)
(declare-sort T@Field_60499_53 0)
(declare-sort T@Field_88384_26137 0)
(declare-sort T@Field_88384_1186 0)
(declare-sort T@Field_88384_53 0)
(declare-datatypes ((T@PolymorphicMapType_55533 0)) (((PolymorphicMapType_55533 (|PolymorphicMapType_55533_26134_1186#PolymorphicMapType_55533| (Array T@Ref T@Field_58898_1186 Real)) (|PolymorphicMapType_55533_26136_26137#PolymorphicMapType_55533| (Array T@Ref T@Field_55585_55586 Real)) (|PolymorphicMapType_55533_26140_26141#PolymorphicMapType_55533| (Array T@Ref T@Field_58995_58996 Real)) (|PolymorphicMapType_55533_26165_26166#PolymorphicMapType_55533| (Array T@Ref T@Field_60499_60500 Real)) (|PolymorphicMapType_55533_26205_26206#PolymorphicMapType_55533| (Array T@Ref T@Field_75522_75523 Real)) (|PolymorphicMapType_55533_26245_26246#PolymorphicMapType_55533| (Array T@Ref T@Field_88384_88385 Real)) (|PolymorphicMapType_55533_26134_26141#PolymorphicMapType_55533| (Array T@Ref T@Field_26136_26206 Real)) (|PolymorphicMapType_55533_26134_53#PolymorphicMapType_55533| (Array T@Ref T@Field_55572_53 Real)) (|PolymorphicMapType_55533_26134_250392#PolymorphicMapType_55533| (Array T@Ref T@Field_26136_59013 Real)) (|PolymorphicMapType_55533_26140_1186#PolymorphicMapType_55533| (Array T@Ref T@Field_26140_1186 Real)) (|PolymorphicMapType_55533_26140_26137#PolymorphicMapType_55533| (Array T@Ref T@Field_26140_26137 Real)) (|PolymorphicMapType_55533_26140_53#PolymorphicMapType_55533| (Array T@Ref T@Field_26140_53 Real)) (|PolymorphicMapType_55533_26140_250803#PolymorphicMapType_55533| (Array T@Ref T@Field_59008_59013 Real)) (|PolymorphicMapType_55533_26165_1186#PolymorphicMapType_55533| (Array T@Ref T@Field_60499_1186 Real)) (|PolymorphicMapType_55533_26165_26137#PolymorphicMapType_55533| (Array T@Ref T@Field_60499_26137 Real)) (|PolymorphicMapType_55533_26165_53#PolymorphicMapType_55533| (Array T@Ref T@Field_60499_53 Real)) (|PolymorphicMapType_55533_26165_251214#PolymorphicMapType_55533| (Array T@Ref T@Field_60512_60517 Real)) (|PolymorphicMapType_55533_26205_1186#PolymorphicMapType_55533| (Array T@Ref T@Field_26205_1186 Real)) (|PolymorphicMapType_55533_26205_26137#PolymorphicMapType_55533| (Array T@Ref T@Field_26205_26137 Real)) (|PolymorphicMapType_55533_26205_53#PolymorphicMapType_55533| (Array T@Ref T@Field_26205_53 Real)) (|PolymorphicMapType_55533_26205_251625#PolymorphicMapType_55533| (Array T@Ref T@Field_75535_75540 Real)) (|PolymorphicMapType_55533_26245_1186#PolymorphicMapType_55533| (Array T@Ref T@Field_88384_1186 Real)) (|PolymorphicMapType_55533_26245_26137#PolymorphicMapType_55533| (Array T@Ref T@Field_88384_26137 Real)) (|PolymorphicMapType_55533_26245_53#PolymorphicMapType_55533| (Array T@Ref T@Field_88384_53 Real)) (|PolymorphicMapType_55533_26245_252036#PolymorphicMapType_55533| (Array T@Ref T@Field_88397_88402 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_56061 0)) (((PolymorphicMapType_56061 (|PolymorphicMapType_56061_26134_1186#PolymorphicMapType_56061| (Array T@Ref T@Field_58898_1186 Bool)) (|PolymorphicMapType_56061_26136_26137#PolymorphicMapType_56061| (Array T@Ref T@Field_55585_55586 Bool)) (|PolymorphicMapType_56061_26134_53#PolymorphicMapType_56061| (Array T@Ref T@Field_55572_53 Bool)) (|PolymorphicMapType_56061_26134_58996#PolymorphicMapType_56061| (Array T@Ref T@Field_26136_26206 Bool)) (|PolymorphicMapType_56061_26134_233471#PolymorphicMapType_56061| (Array T@Ref T@Field_26136_59013 Bool)) (|PolymorphicMapType_56061_58995_1186#PolymorphicMapType_56061| (Array T@Ref T@Field_26140_1186 Bool)) (|PolymorphicMapType_56061_58995_26137#PolymorphicMapType_56061| (Array T@Ref T@Field_26140_26137 Bool)) (|PolymorphicMapType_56061_58995_53#PolymorphicMapType_56061| (Array T@Ref T@Field_26140_53 Bool)) (|PolymorphicMapType_56061_58995_58996#PolymorphicMapType_56061| (Array T@Ref T@Field_58995_58996 Bool)) (|PolymorphicMapType_56061_58995_234519#PolymorphicMapType_56061| (Array T@Ref T@Field_59008_59013 Bool)) (|PolymorphicMapType_56061_60499_1186#PolymorphicMapType_56061| (Array T@Ref T@Field_60499_1186 Bool)) (|PolymorphicMapType_56061_60499_26137#PolymorphicMapType_56061| (Array T@Ref T@Field_60499_26137 Bool)) (|PolymorphicMapType_56061_60499_53#PolymorphicMapType_56061| (Array T@Ref T@Field_60499_53 Bool)) (|PolymorphicMapType_56061_60499_58996#PolymorphicMapType_56061| (Array T@Ref T@Field_60499_60500 Bool)) (|PolymorphicMapType_56061_60499_235567#PolymorphicMapType_56061| (Array T@Ref T@Field_60512_60517 Bool)) (|PolymorphicMapType_56061_75522_1186#PolymorphicMapType_56061| (Array T@Ref T@Field_26205_1186 Bool)) (|PolymorphicMapType_56061_75522_26137#PolymorphicMapType_56061| (Array T@Ref T@Field_26205_26137 Bool)) (|PolymorphicMapType_56061_75522_53#PolymorphicMapType_56061| (Array T@Ref T@Field_26205_53 Bool)) (|PolymorphicMapType_56061_75522_58996#PolymorphicMapType_56061| (Array T@Ref T@Field_75522_75523 Bool)) (|PolymorphicMapType_56061_75522_236615#PolymorphicMapType_56061| (Array T@Ref T@Field_75535_75540 Bool)) (|PolymorphicMapType_56061_88384_1186#PolymorphicMapType_56061| (Array T@Ref T@Field_88384_1186 Bool)) (|PolymorphicMapType_56061_88384_26137#PolymorphicMapType_56061| (Array T@Ref T@Field_88384_26137 Bool)) (|PolymorphicMapType_56061_88384_53#PolymorphicMapType_56061| (Array T@Ref T@Field_88384_53 Bool)) (|PolymorphicMapType_56061_88384_58996#PolymorphicMapType_56061| (Array T@Ref T@Field_88384_88385 Bool)) (|PolymorphicMapType_56061_88384_237663#PolymorphicMapType_56061| (Array T@Ref T@Field_88397_88402 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_55512 0)) (((PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| (Array T@Ref T@Field_55572_53 Bool)) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| (Array T@Ref T@Field_55585_55586 T@Ref)) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| (Array T@Ref T@Field_60499_60500 T@FrameType)) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| (Array T@Ref T@Field_58898_1186 Int)) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| (Array T@Ref T@Field_60512_60517 T@PolymorphicMapType_56061)) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| (Array T@Ref T@Field_75522_75523 T@FrameType)) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| (Array T@Ref T@Field_75535_75540 T@PolymorphicMapType_56061)) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| (Array T@Ref T@Field_58995_58996 T@FrameType)) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| (Array T@Ref T@Field_59008_59013 T@PolymorphicMapType_56061)) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| (Array T@Ref T@Field_88384_88385 T@FrameType)) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| (Array T@Ref T@Field_88397_88402 T@PolymorphicMapType_56061)) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| (Array T@Ref T@Field_26136_26206 T@FrameType)) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| (Array T@Ref T@Field_26136_59013 T@PolymorphicMapType_56061)) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| (Array T@Ref T@Field_26205_26137 T@Ref)) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| (Array T@Ref T@Field_26205_1186 Int)) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| (Array T@Ref T@Field_26205_53 Bool)) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| (Array T@Ref T@Field_26140_26137 T@Ref)) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| (Array T@Ref T@Field_26140_1186 Int)) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| (Array T@Ref T@Field_26140_53 Bool)) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| (Array T@Ref T@Field_60499_26137 T@Ref)) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| (Array T@Ref T@Field_60499_1186 Int)) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| (Array T@Ref T@Field_60499_53 Bool)) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| (Array T@Ref T@Field_88384_26137 T@Ref)) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| (Array T@Ref T@Field_88384_1186 Int)) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| (Array T@Ref T@Field_88384_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_55572_53)
(declare-fun f_7 () T@Field_58898_1186)
(declare-fun next () T@Field_55585_55586)
(declare-fun succHeap (T@PolymorphicMapType_55512 T@PolymorphicMapType_55512) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_55512 T@PolymorphicMapType_55512) Bool)
(declare-fun state (T@PolymorphicMapType_55512 T@PolymorphicMapType_55533) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_55533) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_56061)
(declare-fun valid (T@Ref) T@Field_58995_58996)
(declare-fun IsPredicateField_26140_26141 (T@Field_58995_58996) Bool)
(declare-fun deeper (T@Ref) T@Field_60499_60500)
(declare-fun IsPredicateField_26165_26166 (T@Field_60499_60500) Bool)
(declare-fun strange (T@Ref) T@Field_75522_75523)
(declare-fun IsPredicateField_26205_26206 (T@Field_75522_75523) Bool)
(declare-fun deeperfalse (T@Ref) T@Field_88384_88385)
(declare-fun IsPredicateField_26245_26246 (T@Field_88384_88385) Bool)
(declare-fun |valid#trigger_26140| (T@PolymorphicMapType_55512 T@Field_58995_58996) Bool)
(declare-fun |valid#everUsed_26140| (T@Field_58995_58996) Bool)
(declare-fun |deeper#trigger_26165| (T@PolymorphicMapType_55512 T@Field_60499_60500) Bool)
(declare-fun |deeper#everUsed_26165| (T@Field_60499_60500) Bool)
(declare-fun |strange#trigger_26205| (T@PolymorphicMapType_55512 T@Field_75522_75523) Bool)
(declare-fun |strange#everUsed_26205| (T@Field_75522_75523) Bool)
(declare-fun |deeperfalse#trigger_26245| (T@PolymorphicMapType_55512 T@Field_88384_88385) Bool)
(declare-fun |deeperfalse#everUsed_26245| (T@Field_88384_88385) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_55512 T@PolymorphicMapType_55512 T@PolymorphicMapType_55533) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_26245 (T@Field_88384_88385) T@Field_88397_88402)
(declare-fun HasDirectPerm_88384_26206 (T@PolymorphicMapType_55533 T@Ref T@Field_88384_88385) Bool)
(declare-fun PredicateMaskField_26165 (T@Field_60499_60500) T@Field_60512_60517)
(declare-fun HasDirectPerm_60499_26206 (T@PolymorphicMapType_55533 T@Ref T@Field_60499_60500) Bool)
(declare-fun PredicateMaskField_26140 (T@Field_58995_58996) T@Field_59008_59013)
(declare-fun HasDirectPerm_26140_26141 (T@PolymorphicMapType_55533 T@Ref T@Field_58995_58996) Bool)
(declare-fun PredicateMaskField_26205 (T@Field_75522_75523) T@Field_75535_75540)
(declare-fun HasDirectPerm_26205_26206 (T@PolymorphicMapType_55533 T@Ref T@Field_75522_75523) Bool)
(declare-fun IsPredicateField_26136_231039 (T@Field_26136_26206) Bool)
(declare-fun PredicateMaskField_26136 (T@Field_26136_26206) T@Field_26136_59013)
(declare-fun HasDirectPerm_26136_26206 (T@PolymorphicMapType_55533 T@Ref T@Field_26136_26206) Bool)
(declare-fun IsWandField_88384_240742 (T@Field_88384_88385) Bool)
(declare-fun WandMaskField_88384 (T@Field_88384_88385) T@Field_88397_88402)
(declare-fun IsWandField_60499_240385 (T@Field_60499_60500) Bool)
(declare-fun WandMaskField_60499 (T@Field_60499_60500) T@Field_60512_60517)
(declare-fun IsWandField_26140_240028 (T@Field_58995_58996) Bool)
(declare-fun WandMaskField_26140 (T@Field_58995_58996) T@Field_59008_59013)
(declare-fun IsWandField_26205_239671 (T@Field_75522_75523) Bool)
(declare-fun WandMaskField_26205 (T@Field_75522_75523) T@Field_75535_75540)
(declare-fun IsWandField_26136_239314 (T@Field_26136_26206) Bool)
(declare-fun WandMaskField_26136 (T@Field_26136_26206) T@Field_26136_59013)
(declare-fun |valid#sm| (T@Ref) T@Field_59008_59013)
(declare-fun |deeper#sm| (T@Ref) T@Field_60512_60517)
(declare-fun |strange#sm| (T@Ref) T@Field_75535_75540)
(declare-fun |deeperfalse#sm| (T@Ref) T@Field_88397_88402)
(declare-fun dummyHeap () T@PolymorphicMapType_55512)
(declare-fun ZeroMask () T@PolymorphicMapType_55533)
(declare-fun InsidePredicate_55572_55572 (T@Field_26136_26206 T@FrameType T@Field_26136_26206 T@FrameType) Bool)
(declare-fun InsidePredicate_26245_88384 (T@Field_88384_88385 T@FrameType T@Field_88384_88385 T@FrameType) Bool)
(declare-fun InsidePredicate_26140_26140 (T@Field_58995_58996 T@FrameType T@Field_58995_58996 T@FrameType) Bool)
(declare-fun InsidePredicate_26205_26205 (T@Field_75522_75523 T@FrameType T@Field_75522_75523 T@FrameType) Bool)
(declare-fun InsidePredicate_26165_26165 (T@Field_60499_60500 T@FrameType T@Field_60499_60500 T@FrameType) Bool)
(declare-fun IsPredicateField_26134_1186 (T@Field_58898_1186) Bool)
(declare-fun IsWandField_26134_1186 (T@Field_58898_1186) Bool)
(declare-fun IsPredicateField_26136_26137 (T@Field_55585_55586) Bool)
(declare-fun IsWandField_26136_26137 (T@Field_55585_55586) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_26245_257803 (T@Field_88397_88402) Bool)
(declare-fun IsWandField_26245_257819 (T@Field_88397_88402) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_26245_53 (T@Field_88384_53) Bool)
(declare-fun IsWandField_26245_53 (T@Field_88384_53) Bool)
(declare-fun IsPredicateField_26245_26137 (T@Field_88384_26137) Bool)
(declare-fun IsWandField_26245_26137 (T@Field_88384_26137) Bool)
(declare-fun IsPredicateField_26245_1186 (T@Field_88384_1186) Bool)
(declare-fun IsWandField_26245_1186 (T@Field_88384_1186) Bool)
(declare-fun IsPredicateField_26205_256972 (T@Field_75535_75540) Bool)
(declare-fun IsWandField_26205_256988 (T@Field_75535_75540) Bool)
(declare-fun IsPredicateField_26205_53 (T@Field_26205_53) Bool)
(declare-fun IsWandField_26205_53 (T@Field_26205_53) Bool)
(declare-fun IsPredicateField_26205_26137 (T@Field_26205_26137) Bool)
(declare-fun IsWandField_26205_26137 (T@Field_26205_26137) Bool)
(declare-fun IsPredicateField_26205_1186 (T@Field_26205_1186) Bool)
(declare-fun IsWandField_26205_1186 (T@Field_26205_1186) Bool)
(declare-fun IsPredicateField_26165_256141 (T@Field_60512_60517) Bool)
(declare-fun IsWandField_26165_256157 (T@Field_60512_60517) Bool)
(declare-fun IsPredicateField_26165_53 (T@Field_60499_53) Bool)
(declare-fun IsWandField_26165_53 (T@Field_60499_53) Bool)
(declare-fun IsPredicateField_26165_26137 (T@Field_60499_26137) Bool)
(declare-fun IsWandField_26165_26137 (T@Field_60499_26137) Bool)
(declare-fun IsPredicateField_26165_1186 (T@Field_60499_1186) Bool)
(declare-fun IsWandField_26165_1186 (T@Field_60499_1186) Bool)
(declare-fun IsPredicateField_26140_255310 (T@Field_59008_59013) Bool)
(declare-fun IsWandField_26140_255326 (T@Field_59008_59013) Bool)
(declare-fun IsPredicateField_26140_53 (T@Field_26140_53) Bool)
(declare-fun IsWandField_26140_53 (T@Field_26140_53) Bool)
(declare-fun IsPredicateField_26140_26137 (T@Field_26140_26137) Bool)
(declare-fun IsWandField_26140_26137 (T@Field_26140_26137) Bool)
(declare-fun IsPredicateField_26140_1186 (T@Field_26140_1186) Bool)
(declare-fun IsWandField_26140_1186 (T@Field_26140_1186) Bool)
(declare-fun IsPredicateField_26134_254479 (T@Field_26136_59013) Bool)
(declare-fun IsWandField_26134_254495 (T@Field_26136_59013) Bool)
(declare-fun IsPredicateField_26134_53 (T@Field_55572_53) Bool)
(declare-fun IsWandField_26134_53 (T@Field_55572_53) Bool)
(declare-fun HasDirectPerm_88384_230794 (T@PolymorphicMapType_55533 T@Ref T@Field_88397_88402) Bool)
(declare-fun HasDirectPerm_88384_53 (T@PolymorphicMapType_55533 T@Ref T@Field_88384_53) Bool)
(declare-fun HasDirectPerm_88384_1186 (T@PolymorphicMapType_55533 T@Ref T@Field_88384_1186) Bool)
(declare-fun HasDirectPerm_88384_26137 (T@PolymorphicMapType_55533 T@Ref T@Field_88384_26137) Bool)
(declare-fun HasDirectPerm_60499_229676 (T@PolymorphicMapType_55533 T@Ref T@Field_60512_60517) Bool)
(declare-fun HasDirectPerm_60499_53 (T@PolymorphicMapType_55533 T@Ref T@Field_60499_53) Bool)
(declare-fun HasDirectPerm_60499_1186 (T@PolymorphicMapType_55533 T@Ref T@Field_60499_1186) Bool)
(declare-fun HasDirectPerm_60499_26137 (T@PolymorphicMapType_55533 T@Ref T@Field_60499_26137) Bool)
(declare-fun HasDirectPerm_26140_228558 (T@PolymorphicMapType_55533 T@Ref T@Field_59008_59013) Bool)
(declare-fun HasDirectPerm_26140_53 (T@PolymorphicMapType_55533 T@Ref T@Field_26140_53) Bool)
(declare-fun HasDirectPerm_26140_1186 (T@PolymorphicMapType_55533 T@Ref T@Field_26140_1186) Bool)
(declare-fun HasDirectPerm_26140_26137 (T@PolymorphicMapType_55533 T@Ref T@Field_26140_26137) Bool)
(declare-fun HasDirectPerm_26205_227460 (T@PolymorphicMapType_55533 T@Ref T@Field_75535_75540) Bool)
(declare-fun HasDirectPerm_26205_53 (T@PolymorphicMapType_55533 T@Ref T@Field_26205_53) Bool)
(declare-fun HasDirectPerm_26205_1186 (T@PolymorphicMapType_55533 T@Ref T@Field_26205_1186) Bool)
(declare-fun HasDirectPerm_26205_26137 (T@PolymorphicMapType_55533 T@Ref T@Field_26205_26137) Bool)
(declare-fun HasDirectPerm_26136_226319 (T@PolymorphicMapType_55533 T@Ref T@Field_26136_59013) Bool)
(declare-fun HasDirectPerm_26136_53 (T@PolymorphicMapType_55533 T@Ref T@Field_55572_53) Bool)
(declare-fun HasDirectPerm_26134_1186 (T@PolymorphicMapType_55533 T@Ref T@Field_58898_1186) Bool)
(declare-fun HasDirectPerm_26136_26137 (T@PolymorphicMapType_55533 T@Ref T@Field_55585_55586) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_55533 T@PolymorphicMapType_55533 T@PolymorphicMapType_55533) Bool)
(declare-fun getPredWandId_26140_26141 (T@Field_58995_58996) Int)
(declare-fun getPredWandId_26165_26166 (T@Field_60499_60500) Int)
(declare-fun getPredWandId_26205_26206 (T@Field_75522_75523) Int)
(declare-fun getPredWandId_26245_26246 (T@Field_88384_88385) Int)
(declare-fun InsidePredicate_55572_88384 (T@Field_26136_26206 T@FrameType T@Field_88384_88385 T@FrameType) Bool)
(declare-fun InsidePredicate_55572_26140 (T@Field_26136_26206 T@FrameType T@Field_58995_58996 T@FrameType) Bool)
(declare-fun InsidePredicate_55572_26205 (T@Field_26136_26206 T@FrameType T@Field_75522_75523 T@FrameType) Bool)
(declare-fun InsidePredicate_55572_26165 (T@Field_26136_26206 T@FrameType T@Field_60499_60500 T@FrameType) Bool)
(declare-fun InsidePredicate_26245_55572 (T@Field_88384_88385 T@FrameType T@Field_26136_26206 T@FrameType) Bool)
(declare-fun InsidePredicate_26245_26140 (T@Field_88384_88385 T@FrameType T@Field_58995_58996 T@FrameType) Bool)
(declare-fun InsidePredicate_26245_26205 (T@Field_88384_88385 T@FrameType T@Field_75522_75523 T@FrameType) Bool)
(declare-fun InsidePredicate_26245_26165 (T@Field_88384_88385 T@FrameType T@Field_60499_60500 T@FrameType) Bool)
(declare-fun InsidePredicate_26140_88384 (T@Field_58995_58996 T@FrameType T@Field_88384_88385 T@FrameType) Bool)
(declare-fun InsidePredicate_26140_55572 (T@Field_58995_58996 T@FrameType T@Field_26136_26206 T@FrameType) Bool)
(declare-fun InsidePredicate_26140_26205 (T@Field_58995_58996 T@FrameType T@Field_75522_75523 T@FrameType) Bool)
(declare-fun InsidePredicate_26140_26165 (T@Field_58995_58996 T@FrameType T@Field_60499_60500 T@FrameType) Bool)
(declare-fun InsidePredicate_26205_88384 (T@Field_75522_75523 T@FrameType T@Field_88384_88385 T@FrameType) Bool)
(declare-fun InsidePredicate_26205_55572 (T@Field_75522_75523 T@FrameType T@Field_26136_26206 T@FrameType) Bool)
(declare-fun InsidePredicate_26205_26140 (T@Field_75522_75523 T@FrameType T@Field_58995_58996 T@FrameType) Bool)
(declare-fun InsidePredicate_26205_26165 (T@Field_75522_75523 T@FrameType T@Field_60499_60500 T@FrameType) Bool)
(declare-fun InsidePredicate_26165_88384 (T@Field_60499_60500 T@FrameType T@Field_88384_88385 T@FrameType) Bool)
(declare-fun InsidePredicate_26165_55572 (T@Field_60499_60500 T@FrameType T@Field_26136_26206 T@FrameType) Bool)
(declare-fun InsidePredicate_26165_26140 (T@Field_60499_60500 T@FrameType T@Field_58995_58996 T@FrameType) Bool)
(declare-fun InsidePredicate_26165_26205 (T@Field_60499_60500 T@FrameType T@Field_75522_75523 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_55512) (Heap1 T@PolymorphicMapType_55512) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_55512) (Mask T@PolymorphicMapType_55533) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_55512) (Heap1@@0 T@PolymorphicMapType_55512) (Heap2 T@PolymorphicMapType_55512) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_88397_88402) ) (!  (not (select (|PolymorphicMapType_56061_88384_237663#PolymorphicMapType_56061| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_88384_237663#PolymorphicMapType_56061| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_88384_88385) ) (!  (not (select (|PolymorphicMapType_56061_88384_58996#PolymorphicMapType_56061| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_88384_58996#PolymorphicMapType_56061| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_88384_53) ) (!  (not (select (|PolymorphicMapType_56061_88384_53#PolymorphicMapType_56061| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_88384_53#PolymorphicMapType_56061| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_88384_26137) ) (!  (not (select (|PolymorphicMapType_56061_88384_26137#PolymorphicMapType_56061| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_88384_26137#PolymorphicMapType_56061| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_88384_1186) ) (!  (not (select (|PolymorphicMapType_56061_88384_1186#PolymorphicMapType_56061| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_88384_1186#PolymorphicMapType_56061| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_75535_75540) ) (!  (not (select (|PolymorphicMapType_56061_75522_236615#PolymorphicMapType_56061| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_75522_236615#PolymorphicMapType_56061| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_75522_75523) ) (!  (not (select (|PolymorphicMapType_56061_75522_58996#PolymorphicMapType_56061| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_75522_58996#PolymorphicMapType_56061| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_26205_53) ) (!  (not (select (|PolymorphicMapType_56061_75522_53#PolymorphicMapType_56061| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_75522_53#PolymorphicMapType_56061| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_26205_26137) ) (!  (not (select (|PolymorphicMapType_56061_75522_26137#PolymorphicMapType_56061| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_75522_26137#PolymorphicMapType_56061| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_26205_1186) ) (!  (not (select (|PolymorphicMapType_56061_75522_1186#PolymorphicMapType_56061| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_75522_1186#PolymorphicMapType_56061| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_60512_60517) ) (!  (not (select (|PolymorphicMapType_56061_60499_235567#PolymorphicMapType_56061| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_60499_235567#PolymorphicMapType_56061| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_60499_60500) ) (!  (not (select (|PolymorphicMapType_56061_60499_58996#PolymorphicMapType_56061| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_60499_58996#PolymorphicMapType_56061| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_60499_53) ) (!  (not (select (|PolymorphicMapType_56061_60499_53#PolymorphicMapType_56061| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_60499_53#PolymorphicMapType_56061| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_60499_26137) ) (!  (not (select (|PolymorphicMapType_56061_60499_26137#PolymorphicMapType_56061| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_60499_26137#PolymorphicMapType_56061| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_60499_1186) ) (!  (not (select (|PolymorphicMapType_56061_60499_1186#PolymorphicMapType_56061| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_60499_1186#PolymorphicMapType_56061| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_59008_59013) ) (!  (not (select (|PolymorphicMapType_56061_58995_234519#PolymorphicMapType_56061| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_58995_234519#PolymorphicMapType_56061| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_58995_58996) ) (!  (not (select (|PolymorphicMapType_56061_58995_58996#PolymorphicMapType_56061| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_58995_58996#PolymorphicMapType_56061| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_26140_53) ) (!  (not (select (|PolymorphicMapType_56061_58995_53#PolymorphicMapType_56061| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_58995_53#PolymorphicMapType_56061| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_26140_26137) ) (!  (not (select (|PolymorphicMapType_56061_58995_26137#PolymorphicMapType_56061| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_58995_26137#PolymorphicMapType_56061| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_26140_1186) ) (!  (not (select (|PolymorphicMapType_56061_58995_1186#PolymorphicMapType_56061| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_58995_1186#PolymorphicMapType_56061| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_26136_59013) ) (!  (not (select (|PolymorphicMapType_56061_26134_233471#PolymorphicMapType_56061| ZeroPMask) o_2@@19 f_4@@19))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_26134_233471#PolymorphicMapType_56061| ZeroPMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_26136_26206) ) (!  (not (select (|PolymorphicMapType_56061_26134_58996#PolymorphicMapType_56061| ZeroPMask) o_2@@20 f_4@@20))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_26134_58996#PolymorphicMapType_56061| ZeroPMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_55572_53) ) (!  (not (select (|PolymorphicMapType_56061_26134_53#PolymorphicMapType_56061| ZeroPMask) o_2@@21 f_4@@21))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_26134_53#PolymorphicMapType_56061| ZeroPMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_55585_55586) ) (!  (not (select (|PolymorphicMapType_56061_26136_26137#PolymorphicMapType_56061| ZeroPMask) o_2@@22 f_4@@22))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_26136_26137#PolymorphicMapType_56061| ZeroPMask) o_2@@22 f_4@@22))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_58898_1186) ) (!  (not (select (|PolymorphicMapType_56061_26134_1186#PolymorphicMapType_56061| ZeroPMask) o_2@@23 f_4@@23))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_26134_1186#PolymorphicMapType_56061| ZeroPMask) o_2@@23 f_4@@23))
)))
(assert (forall ((r_1 T@Ref) ) (! (IsPredicateField_26140_26141 (valid r_1))
 :qid |stdinbpl.198:15|
 :skolemid |23|
 :pattern ( (valid r_1))
)))
(assert (forall ((r_1@@0 T@Ref) ) (! (IsPredicateField_26165_26166 (deeper r_1@@0))
 :qid |stdinbpl.269:15|
 :skolemid |29|
 :pattern ( (deeper r_1@@0))
)))
(assert (forall ((r_1@@1 T@Ref) ) (! (IsPredicateField_26205_26206 (strange r_1@@1))
 :qid |stdinbpl.486:15|
 :skolemid |39|
 :pattern ( (strange r_1@@1))
)))
(assert (forall ((r_1@@2 T@Ref) ) (! (IsPredicateField_26245_26246 (deeperfalse r_1@@2))
 :qid |stdinbpl.745:15|
 :skolemid |49|
 :pattern ( (deeperfalse r_1@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_55512) (r_1@@3 T@Ref) ) (! (|valid#everUsed_26140| (valid r_1@@3))
 :qid |stdinbpl.217:15|
 :skolemid |27|
 :pattern ( (|valid#trigger_26140| Heap@@0 (valid r_1@@3)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_55512) (r_1@@4 T@Ref) ) (! (|deeper#everUsed_26165| (deeper r_1@@4))
 :qid |stdinbpl.288:15|
 :skolemid |33|
 :pattern ( (|deeper#trigger_26165| Heap@@1 (deeper r_1@@4)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_55512) (r_1@@5 T@Ref) ) (! (|strange#everUsed_26205| (strange r_1@@5))
 :qid |stdinbpl.505:15|
 :skolemid |43|
 :pattern ( (|strange#trigger_26205| Heap@@2 (strange r_1@@5)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_55512) (r_1@@6 T@Ref) ) (! (|deeperfalse#everUsed_26245| (deeperfalse r_1@@6))
 :qid |stdinbpl.764:15|
 :skolemid |53|
 :pattern ( (|deeperfalse#trigger_26245| Heap@@3 (deeperfalse r_1@@6)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_55512) (ExhaleHeap T@PolymorphicMapType_55512) (Mask@@0 T@PolymorphicMapType_55533) (pm_f_55 T@Field_88384_88385) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_88384_26206 Mask@@0 null pm_f_55) (IsPredicateField_26245_26246 pm_f_55)) (= (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@4) null (PredicateMaskField_26245 pm_f_55)) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap) null (PredicateMaskField_26245 pm_f_55)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (IsPredicateField_26245_26246 pm_f_55) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap) null (PredicateMaskField_26245 pm_f_55)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_55512) (ExhaleHeap@@0 T@PolymorphicMapType_55512) (Mask@@1 T@PolymorphicMapType_55533) (pm_f_55@@0 T@Field_60499_60500) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_60499_26206 Mask@@1 null pm_f_55@@0) (IsPredicateField_26165_26166 pm_f_55@@0)) (= (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@5) null (PredicateMaskField_26165 pm_f_55@@0)) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@0) null (PredicateMaskField_26165 pm_f_55@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (IsPredicateField_26165_26166 pm_f_55@@0) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@0) null (PredicateMaskField_26165 pm_f_55@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_55512) (ExhaleHeap@@1 T@PolymorphicMapType_55512) (Mask@@2 T@PolymorphicMapType_55533) (pm_f_55@@1 T@Field_58995_58996) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_26140_26141 Mask@@2 null pm_f_55@@1) (IsPredicateField_26140_26141 pm_f_55@@1)) (= (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@6) null (PredicateMaskField_26140 pm_f_55@@1)) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@1) null (PredicateMaskField_26140 pm_f_55@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@2) (IsPredicateField_26140_26141 pm_f_55@@1) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@1) null (PredicateMaskField_26140 pm_f_55@@1)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_55512) (ExhaleHeap@@2 T@PolymorphicMapType_55512) (Mask@@3 T@PolymorphicMapType_55533) (pm_f_55@@2 T@Field_75522_75523) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_26205_26206 Mask@@3 null pm_f_55@@2) (IsPredicateField_26205_26206 pm_f_55@@2)) (= (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@7) null (PredicateMaskField_26205 pm_f_55@@2)) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@2) null (PredicateMaskField_26205 pm_f_55@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@3) (IsPredicateField_26205_26206 pm_f_55@@2) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@2) null (PredicateMaskField_26205 pm_f_55@@2)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_55512) (ExhaleHeap@@3 T@PolymorphicMapType_55512) (Mask@@4 T@PolymorphicMapType_55533) (pm_f_55@@3 T@Field_26136_26206) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_26136_26206 Mask@@4 null pm_f_55@@3) (IsPredicateField_26136_231039 pm_f_55@@3)) (= (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@8) null (PredicateMaskField_26136 pm_f_55@@3)) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@3) null (PredicateMaskField_26136 pm_f_55@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@4) (IsPredicateField_26136_231039 pm_f_55@@3) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@3) null (PredicateMaskField_26136 pm_f_55@@3)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_55512) (ExhaleHeap@@4 T@PolymorphicMapType_55512) (Mask@@5 T@PolymorphicMapType_55533) (pm_f_55@@4 T@Field_88384_88385) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_88384_26206 Mask@@5 null pm_f_55@@4) (IsWandField_88384_240742 pm_f_55@@4)) (= (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@9) null (WandMaskField_88384 pm_f_55@@4)) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@4) null (WandMaskField_88384 pm_f_55@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@5) (IsWandField_88384_240742 pm_f_55@@4) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@4) null (WandMaskField_88384 pm_f_55@@4)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_55512) (ExhaleHeap@@5 T@PolymorphicMapType_55512) (Mask@@6 T@PolymorphicMapType_55533) (pm_f_55@@5 T@Field_60499_60500) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_60499_26206 Mask@@6 null pm_f_55@@5) (IsWandField_60499_240385 pm_f_55@@5)) (= (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@10) null (WandMaskField_60499 pm_f_55@@5)) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@5) null (WandMaskField_60499 pm_f_55@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@6) (IsWandField_60499_240385 pm_f_55@@5) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@5) null (WandMaskField_60499 pm_f_55@@5)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_55512) (ExhaleHeap@@6 T@PolymorphicMapType_55512) (Mask@@7 T@PolymorphicMapType_55533) (pm_f_55@@6 T@Field_58995_58996) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_26140_26141 Mask@@7 null pm_f_55@@6) (IsWandField_26140_240028 pm_f_55@@6)) (= (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@11) null (WandMaskField_26140 pm_f_55@@6)) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@6) null (WandMaskField_26140 pm_f_55@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@7) (IsWandField_26140_240028 pm_f_55@@6) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@6) null (WandMaskField_26140 pm_f_55@@6)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_55512) (ExhaleHeap@@7 T@PolymorphicMapType_55512) (Mask@@8 T@PolymorphicMapType_55533) (pm_f_55@@7 T@Field_75522_75523) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_26205_26206 Mask@@8 null pm_f_55@@7) (IsWandField_26205_239671 pm_f_55@@7)) (= (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@12) null (WandMaskField_26205 pm_f_55@@7)) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@7) null (WandMaskField_26205 pm_f_55@@7)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@8) (IsWandField_26205_239671 pm_f_55@@7) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@7) null (WandMaskField_26205 pm_f_55@@7)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_55512) (ExhaleHeap@@8 T@PolymorphicMapType_55512) (Mask@@9 T@PolymorphicMapType_55533) (pm_f_55@@8 T@Field_26136_26206) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_26136_26206 Mask@@9 null pm_f_55@@8) (IsWandField_26136_239314 pm_f_55@@8)) (= (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@13) null (WandMaskField_26136 pm_f_55@@8)) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@8) null (WandMaskField_26136 pm_f_55@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@9) (IsWandField_26136_239314 pm_f_55@@8) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@8) null (WandMaskField_26136 pm_f_55@@8)))
)))
(assert (forall ((r_1@@7 T@Ref) (r2 T@Ref) ) (!  (=> (= (valid r_1@@7) (valid r2)) (= r_1@@7 r2))
 :qid |stdinbpl.208:15|
 :skolemid |25|
 :pattern ( (valid r_1@@7) (valid r2))
)))
(assert (forall ((r_1@@8 T@Ref) (r2@@0 T@Ref) ) (!  (=> (= (|valid#sm| r_1@@8) (|valid#sm| r2@@0)) (= r_1@@8 r2@@0))
 :qid |stdinbpl.212:15|
 :skolemid |26|
 :pattern ( (|valid#sm| r_1@@8) (|valid#sm| r2@@0))
)))
(assert (forall ((r_1@@9 T@Ref) (r2@@1 T@Ref) ) (!  (=> (= (deeper r_1@@9) (deeper r2@@1)) (= r_1@@9 r2@@1))
 :qid |stdinbpl.279:15|
 :skolemid |31|
 :pattern ( (deeper r_1@@9) (deeper r2@@1))
)))
(assert (forall ((r_1@@10 T@Ref) (r2@@2 T@Ref) ) (!  (=> (= (|deeper#sm| r_1@@10) (|deeper#sm| r2@@2)) (= r_1@@10 r2@@2))
 :qid |stdinbpl.283:15|
 :skolemid |32|
 :pattern ( (|deeper#sm| r_1@@10) (|deeper#sm| r2@@2))
)))
(assert (forall ((r_1@@11 T@Ref) (r2@@3 T@Ref) ) (!  (=> (= (strange r_1@@11) (strange r2@@3)) (= r_1@@11 r2@@3))
 :qid |stdinbpl.496:15|
 :skolemid |41|
 :pattern ( (strange r_1@@11) (strange r2@@3))
)))
(assert (forall ((r_1@@12 T@Ref) (r2@@4 T@Ref) ) (!  (=> (= (|strange#sm| r_1@@12) (|strange#sm| r2@@4)) (= r_1@@12 r2@@4))
 :qid |stdinbpl.500:15|
 :skolemid |42|
 :pattern ( (|strange#sm| r_1@@12) (|strange#sm| r2@@4))
)))
(assert (forall ((r_1@@13 T@Ref) (r2@@5 T@Ref) ) (!  (=> (= (deeperfalse r_1@@13) (deeperfalse r2@@5)) (= r_1@@13 r2@@5))
 :qid |stdinbpl.755:15|
 :skolemid |51|
 :pattern ( (deeperfalse r_1@@13) (deeperfalse r2@@5))
)))
(assert (forall ((r_1@@14 T@Ref) (r2@@6 T@Ref) ) (!  (=> (= (|deeperfalse#sm| r_1@@14) (|deeperfalse#sm| r2@@6)) (= r_1@@14 r2@@6))
 :qid |stdinbpl.759:15|
 :skolemid |52|
 :pattern ( (|deeperfalse#sm| r_1@@14) (|deeperfalse#sm| r2@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_55512) (ExhaleHeap@@9 T@PolymorphicMapType_55512) (Mask@@10 T@PolymorphicMapType_55533) (o_109 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@10) (=> (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@14) o_109 $allocated) (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@9) o_109 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@10) (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@9) o_109 $allocated))
)))
(assert (forall ((p T@Field_26136_26206) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_55572_55572 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_55572_55572 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_88384_88385) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_26245_88384 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_26245_88384 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_58995_58996) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_26140_26140 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_26140_26140 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_75522_75523) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_26205_26205 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_26205_26205 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((p@@3 T@Field_60499_60500) (v_1@@3 T@FrameType) (w@@3 T@FrameType) ) (!  (not (InsidePredicate_26165_26165 p@@3 v_1@@3 p@@3 w@@3))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_26165_26165 p@@3 v_1@@3 p@@3 w@@3))
)))
(assert  (not (IsPredicateField_26134_1186 f_7)))
(assert  (not (IsWandField_26134_1186 f_7)))
(assert  (not (IsPredicateField_26136_26137 next)))
(assert  (not (IsWandField_26136_26137 next)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_55512) (ExhaleHeap@@10 T@PolymorphicMapType_55512) (Mask@@11 T@PolymorphicMapType_55533) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@11) (succHeap Heap@@15 ExhaleHeap@@10))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_55533) (o_2@@24 T@Ref) (f_4@@24 T@Field_88397_88402) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_55533_26245_252036#PolymorphicMapType_55533| Mask@@12) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_26245_257803 f_4@@24))) (not (IsWandField_26245_257819 f_4@@24))) (<= (select (|PolymorphicMapType_55533_26245_252036#PolymorphicMapType_55533| Mask@@12) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_55533_26245_252036#PolymorphicMapType_55533| Mask@@12) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_55533) (o_2@@25 T@Ref) (f_4@@25 T@Field_88384_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_55533_26245_53#PolymorphicMapType_55533| Mask@@13) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_26245_53 f_4@@25))) (not (IsWandField_26245_53 f_4@@25))) (<= (select (|PolymorphicMapType_55533_26245_53#PolymorphicMapType_55533| Mask@@13) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_55533_26245_53#PolymorphicMapType_55533| Mask@@13) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_55533) (o_2@@26 T@Ref) (f_4@@26 T@Field_88384_88385) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_55533_26245_26246#PolymorphicMapType_55533| Mask@@14) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_26245_26246 f_4@@26))) (not (IsWandField_88384_240742 f_4@@26))) (<= (select (|PolymorphicMapType_55533_26245_26246#PolymorphicMapType_55533| Mask@@14) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_55533_26245_26246#PolymorphicMapType_55533| Mask@@14) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_55533) (o_2@@27 T@Ref) (f_4@@27 T@Field_88384_26137) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_55533_26245_26137#PolymorphicMapType_55533| Mask@@15) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_26245_26137 f_4@@27))) (not (IsWandField_26245_26137 f_4@@27))) (<= (select (|PolymorphicMapType_55533_26245_26137#PolymorphicMapType_55533| Mask@@15) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_55533_26245_26137#PolymorphicMapType_55533| Mask@@15) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_55533) (o_2@@28 T@Ref) (f_4@@28 T@Field_88384_1186) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_55533_26245_1186#PolymorphicMapType_55533| Mask@@16) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_26245_1186 f_4@@28))) (not (IsWandField_26245_1186 f_4@@28))) (<= (select (|PolymorphicMapType_55533_26245_1186#PolymorphicMapType_55533| Mask@@16) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_55533_26245_1186#PolymorphicMapType_55533| Mask@@16) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_55533) (o_2@@29 T@Ref) (f_4@@29 T@Field_75535_75540) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_55533_26205_251625#PolymorphicMapType_55533| Mask@@17) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_26205_256972 f_4@@29))) (not (IsWandField_26205_256988 f_4@@29))) (<= (select (|PolymorphicMapType_55533_26205_251625#PolymorphicMapType_55533| Mask@@17) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_55533_26205_251625#PolymorphicMapType_55533| Mask@@17) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_55533) (o_2@@30 T@Ref) (f_4@@30 T@Field_26205_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_55533_26205_53#PolymorphicMapType_55533| Mask@@18) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_26205_53 f_4@@30))) (not (IsWandField_26205_53 f_4@@30))) (<= (select (|PolymorphicMapType_55533_26205_53#PolymorphicMapType_55533| Mask@@18) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_55533_26205_53#PolymorphicMapType_55533| Mask@@18) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_55533) (o_2@@31 T@Ref) (f_4@@31 T@Field_75522_75523) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_55533_26205_26206#PolymorphicMapType_55533| Mask@@19) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_26205_26206 f_4@@31))) (not (IsWandField_26205_239671 f_4@@31))) (<= (select (|PolymorphicMapType_55533_26205_26206#PolymorphicMapType_55533| Mask@@19) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_55533_26205_26206#PolymorphicMapType_55533| Mask@@19) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_55533) (o_2@@32 T@Ref) (f_4@@32 T@Field_26205_26137) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_55533_26205_26137#PolymorphicMapType_55533| Mask@@20) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_26205_26137 f_4@@32))) (not (IsWandField_26205_26137 f_4@@32))) (<= (select (|PolymorphicMapType_55533_26205_26137#PolymorphicMapType_55533| Mask@@20) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_55533_26205_26137#PolymorphicMapType_55533| Mask@@20) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_55533) (o_2@@33 T@Ref) (f_4@@33 T@Field_26205_1186) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_55533_26205_1186#PolymorphicMapType_55533| Mask@@21) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_26205_1186 f_4@@33))) (not (IsWandField_26205_1186 f_4@@33))) (<= (select (|PolymorphicMapType_55533_26205_1186#PolymorphicMapType_55533| Mask@@21) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_55533_26205_1186#PolymorphicMapType_55533| Mask@@21) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_55533) (o_2@@34 T@Ref) (f_4@@34 T@Field_60512_60517) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_55533_26165_251214#PolymorphicMapType_55533| Mask@@22) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_26165_256141 f_4@@34))) (not (IsWandField_26165_256157 f_4@@34))) (<= (select (|PolymorphicMapType_55533_26165_251214#PolymorphicMapType_55533| Mask@@22) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_55533_26165_251214#PolymorphicMapType_55533| Mask@@22) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_55533) (o_2@@35 T@Ref) (f_4@@35 T@Field_60499_53) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_55533_26165_53#PolymorphicMapType_55533| Mask@@23) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_26165_53 f_4@@35))) (not (IsWandField_26165_53 f_4@@35))) (<= (select (|PolymorphicMapType_55533_26165_53#PolymorphicMapType_55533| Mask@@23) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_55533_26165_53#PolymorphicMapType_55533| Mask@@23) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_55533) (o_2@@36 T@Ref) (f_4@@36 T@Field_60499_60500) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_55533_26165_26166#PolymorphicMapType_55533| Mask@@24) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_26165_26166 f_4@@36))) (not (IsWandField_60499_240385 f_4@@36))) (<= (select (|PolymorphicMapType_55533_26165_26166#PolymorphicMapType_55533| Mask@@24) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_55533_26165_26166#PolymorphicMapType_55533| Mask@@24) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_55533) (o_2@@37 T@Ref) (f_4@@37 T@Field_60499_26137) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_55533_26165_26137#PolymorphicMapType_55533| Mask@@25) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_26165_26137 f_4@@37))) (not (IsWandField_26165_26137 f_4@@37))) (<= (select (|PolymorphicMapType_55533_26165_26137#PolymorphicMapType_55533| Mask@@25) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_55533_26165_26137#PolymorphicMapType_55533| Mask@@25) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_55533) (o_2@@38 T@Ref) (f_4@@38 T@Field_60499_1186) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_55533_26165_1186#PolymorphicMapType_55533| Mask@@26) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_26165_1186 f_4@@38))) (not (IsWandField_26165_1186 f_4@@38))) (<= (select (|PolymorphicMapType_55533_26165_1186#PolymorphicMapType_55533| Mask@@26) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_55533_26165_1186#PolymorphicMapType_55533| Mask@@26) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_55533) (o_2@@39 T@Ref) (f_4@@39 T@Field_59008_59013) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_55533_26140_250803#PolymorphicMapType_55533| Mask@@27) o_2@@39 f_4@@39) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_26140_255310 f_4@@39))) (not (IsWandField_26140_255326 f_4@@39))) (<= (select (|PolymorphicMapType_55533_26140_250803#PolymorphicMapType_55533| Mask@@27) o_2@@39 f_4@@39) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_55533_26140_250803#PolymorphicMapType_55533| Mask@@27) o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_55533) (o_2@@40 T@Ref) (f_4@@40 T@Field_26140_53) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_55533_26140_53#PolymorphicMapType_55533| Mask@@28) o_2@@40 f_4@@40) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_26140_53 f_4@@40))) (not (IsWandField_26140_53 f_4@@40))) (<= (select (|PolymorphicMapType_55533_26140_53#PolymorphicMapType_55533| Mask@@28) o_2@@40 f_4@@40) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_55533_26140_53#PolymorphicMapType_55533| Mask@@28) o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_55533) (o_2@@41 T@Ref) (f_4@@41 T@Field_58995_58996) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_55533_26140_26141#PolymorphicMapType_55533| Mask@@29) o_2@@41 f_4@@41) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_26140_26141 f_4@@41))) (not (IsWandField_26140_240028 f_4@@41))) (<= (select (|PolymorphicMapType_55533_26140_26141#PolymorphicMapType_55533| Mask@@29) o_2@@41 f_4@@41) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_55533_26140_26141#PolymorphicMapType_55533| Mask@@29) o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_55533) (o_2@@42 T@Ref) (f_4@@42 T@Field_26140_26137) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_55533_26140_26137#PolymorphicMapType_55533| Mask@@30) o_2@@42 f_4@@42) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_26140_26137 f_4@@42))) (not (IsWandField_26140_26137 f_4@@42))) (<= (select (|PolymorphicMapType_55533_26140_26137#PolymorphicMapType_55533| Mask@@30) o_2@@42 f_4@@42) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_55533_26140_26137#PolymorphicMapType_55533| Mask@@30) o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_55533) (o_2@@43 T@Ref) (f_4@@43 T@Field_26140_1186) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_55533_26140_1186#PolymorphicMapType_55533| Mask@@31) o_2@@43 f_4@@43) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_26140_1186 f_4@@43))) (not (IsWandField_26140_1186 f_4@@43))) (<= (select (|PolymorphicMapType_55533_26140_1186#PolymorphicMapType_55533| Mask@@31) o_2@@43 f_4@@43) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_55533_26140_1186#PolymorphicMapType_55533| Mask@@31) o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_55533) (o_2@@44 T@Ref) (f_4@@44 T@Field_26136_59013) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_55533_26134_250392#PolymorphicMapType_55533| Mask@@32) o_2@@44 f_4@@44) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_26134_254479 f_4@@44))) (not (IsWandField_26134_254495 f_4@@44))) (<= (select (|PolymorphicMapType_55533_26134_250392#PolymorphicMapType_55533| Mask@@32) o_2@@44 f_4@@44) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_55533_26134_250392#PolymorphicMapType_55533| Mask@@32) o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_55533) (o_2@@45 T@Ref) (f_4@@45 T@Field_55572_53) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_55533_26134_53#PolymorphicMapType_55533| Mask@@33) o_2@@45 f_4@@45) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_26134_53 f_4@@45))) (not (IsWandField_26134_53 f_4@@45))) (<= (select (|PolymorphicMapType_55533_26134_53#PolymorphicMapType_55533| Mask@@33) o_2@@45 f_4@@45) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_55533_26134_53#PolymorphicMapType_55533| Mask@@33) o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_55533) (o_2@@46 T@Ref) (f_4@@46 T@Field_26136_26206) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_55533_26134_26141#PolymorphicMapType_55533| Mask@@34) o_2@@46 f_4@@46) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_26136_231039 f_4@@46))) (not (IsWandField_26136_239314 f_4@@46))) (<= (select (|PolymorphicMapType_55533_26134_26141#PolymorphicMapType_55533| Mask@@34) o_2@@46 f_4@@46) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_55533_26134_26141#PolymorphicMapType_55533| Mask@@34) o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_55533) (o_2@@47 T@Ref) (f_4@@47 T@Field_55585_55586) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_55533_26136_26137#PolymorphicMapType_55533| Mask@@35) o_2@@47 f_4@@47) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_26136_26137 f_4@@47))) (not (IsWandField_26136_26137 f_4@@47))) (<= (select (|PolymorphicMapType_55533_26136_26137#PolymorphicMapType_55533| Mask@@35) o_2@@47 f_4@@47) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_55533_26136_26137#PolymorphicMapType_55533| Mask@@35) o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_55533) (o_2@@48 T@Ref) (f_4@@48 T@Field_58898_1186) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_55533_26134_1186#PolymorphicMapType_55533| Mask@@36) o_2@@48 f_4@@48) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_26134_1186 f_4@@48))) (not (IsWandField_26134_1186 f_4@@48))) (<= (select (|PolymorphicMapType_55533_26134_1186#PolymorphicMapType_55533| Mask@@36) o_2@@48 f_4@@48) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_55533_26134_1186#PolymorphicMapType_55533| Mask@@36) o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_55533) (o_2@@49 T@Ref) (f_4@@49 T@Field_88397_88402) ) (! (= (HasDirectPerm_88384_230794 Mask@@37 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_55533_26245_252036#PolymorphicMapType_55533| Mask@@37) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_88384_230794 Mask@@37 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_55533) (o_2@@50 T@Ref) (f_4@@50 T@Field_88384_53) ) (! (= (HasDirectPerm_88384_53 Mask@@38 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_55533_26245_53#PolymorphicMapType_55533| Mask@@38) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_88384_53 Mask@@38 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_55533) (o_2@@51 T@Ref) (f_4@@51 T@Field_88384_88385) ) (! (= (HasDirectPerm_88384_26206 Mask@@39 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_55533_26245_26246#PolymorphicMapType_55533| Mask@@39) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_88384_26206 Mask@@39 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_55533) (o_2@@52 T@Ref) (f_4@@52 T@Field_88384_1186) ) (! (= (HasDirectPerm_88384_1186 Mask@@40 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_55533_26245_1186#PolymorphicMapType_55533| Mask@@40) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_88384_1186 Mask@@40 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_55533) (o_2@@53 T@Ref) (f_4@@53 T@Field_88384_26137) ) (! (= (HasDirectPerm_88384_26137 Mask@@41 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_55533_26245_26137#PolymorphicMapType_55533| Mask@@41) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_88384_26137 Mask@@41 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_55533) (o_2@@54 T@Ref) (f_4@@54 T@Field_60512_60517) ) (! (= (HasDirectPerm_60499_229676 Mask@@42 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_55533_26165_251214#PolymorphicMapType_55533| Mask@@42) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_60499_229676 Mask@@42 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_55533) (o_2@@55 T@Ref) (f_4@@55 T@Field_60499_53) ) (! (= (HasDirectPerm_60499_53 Mask@@43 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_55533_26165_53#PolymorphicMapType_55533| Mask@@43) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_60499_53 Mask@@43 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_55533) (o_2@@56 T@Ref) (f_4@@56 T@Field_60499_60500) ) (! (= (HasDirectPerm_60499_26206 Mask@@44 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_55533_26165_26166#PolymorphicMapType_55533| Mask@@44) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_60499_26206 Mask@@44 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_55533) (o_2@@57 T@Ref) (f_4@@57 T@Field_60499_1186) ) (! (= (HasDirectPerm_60499_1186 Mask@@45 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_55533_26165_1186#PolymorphicMapType_55533| Mask@@45) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_60499_1186 Mask@@45 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_55533) (o_2@@58 T@Ref) (f_4@@58 T@Field_60499_26137) ) (! (= (HasDirectPerm_60499_26137 Mask@@46 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_55533_26165_26137#PolymorphicMapType_55533| Mask@@46) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_60499_26137 Mask@@46 o_2@@58 f_4@@58))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_55533) (o_2@@59 T@Ref) (f_4@@59 T@Field_59008_59013) ) (! (= (HasDirectPerm_26140_228558 Mask@@47 o_2@@59 f_4@@59) (> (select (|PolymorphicMapType_55533_26140_250803#PolymorphicMapType_55533| Mask@@47) o_2@@59 f_4@@59) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26140_228558 Mask@@47 o_2@@59 f_4@@59))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_55533) (o_2@@60 T@Ref) (f_4@@60 T@Field_26140_53) ) (! (= (HasDirectPerm_26140_53 Mask@@48 o_2@@60 f_4@@60) (> (select (|PolymorphicMapType_55533_26140_53#PolymorphicMapType_55533| Mask@@48) o_2@@60 f_4@@60) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26140_53 Mask@@48 o_2@@60 f_4@@60))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_55533) (o_2@@61 T@Ref) (f_4@@61 T@Field_58995_58996) ) (! (= (HasDirectPerm_26140_26141 Mask@@49 o_2@@61 f_4@@61) (> (select (|PolymorphicMapType_55533_26140_26141#PolymorphicMapType_55533| Mask@@49) o_2@@61 f_4@@61) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26140_26141 Mask@@49 o_2@@61 f_4@@61))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_55533) (o_2@@62 T@Ref) (f_4@@62 T@Field_26140_1186) ) (! (= (HasDirectPerm_26140_1186 Mask@@50 o_2@@62 f_4@@62) (> (select (|PolymorphicMapType_55533_26140_1186#PolymorphicMapType_55533| Mask@@50) o_2@@62 f_4@@62) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26140_1186 Mask@@50 o_2@@62 f_4@@62))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_55533) (o_2@@63 T@Ref) (f_4@@63 T@Field_26140_26137) ) (! (= (HasDirectPerm_26140_26137 Mask@@51 o_2@@63 f_4@@63) (> (select (|PolymorphicMapType_55533_26140_26137#PolymorphicMapType_55533| Mask@@51) o_2@@63 f_4@@63) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26140_26137 Mask@@51 o_2@@63 f_4@@63))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_55533) (o_2@@64 T@Ref) (f_4@@64 T@Field_75535_75540) ) (! (= (HasDirectPerm_26205_227460 Mask@@52 o_2@@64 f_4@@64) (> (select (|PolymorphicMapType_55533_26205_251625#PolymorphicMapType_55533| Mask@@52) o_2@@64 f_4@@64) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26205_227460 Mask@@52 o_2@@64 f_4@@64))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_55533) (o_2@@65 T@Ref) (f_4@@65 T@Field_26205_53) ) (! (= (HasDirectPerm_26205_53 Mask@@53 o_2@@65 f_4@@65) (> (select (|PolymorphicMapType_55533_26205_53#PolymorphicMapType_55533| Mask@@53) o_2@@65 f_4@@65) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26205_53 Mask@@53 o_2@@65 f_4@@65))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_55533) (o_2@@66 T@Ref) (f_4@@66 T@Field_75522_75523) ) (! (= (HasDirectPerm_26205_26206 Mask@@54 o_2@@66 f_4@@66) (> (select (|PolymorphicMapType_55533_26205_26206#PolymorphicMapType_55533| Mask@@54) o_2@@66 f_4@@66) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26205_26206 Mask@@54 o_2@@66 f_4@@66))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_55533) (o_2@@67 T@Ref) (f_4@@67 T@Field_26205_1186) ) (! (= (HasDirectPerm_26205_1186 Mask@@55 o_2@@67 f_4@@67) (> (select (|PolymorphicMapType_55533_26205_1186#PolymorphicMapType_55533| Mask@@55) o_2@@67 f_4@@67) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26205_1186 Mask@@55 o_2@@67 f_4@@67))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_55533) (o_2@@68 T@Ref) (f_4@@68 T@Field_26205_26137) ) (! (= (HasDirectPerm_26205_26137 Mask@@56 o_2@@68 f_4@@68) (> (select (|PolymorphicMapType_55533_26205_26137#PolymorphicMapType_55533| Mask@@56) o_2@@68 f_4@@68) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26205_26137 Mask@@56 o_2@@68 f_4@@68))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_55533) (o_2@@69 T@Ref) (f_4@@69 T@Field_26136_59013) ) (! (= (HasDirectPerm_26136_226319 Mask@@57 o_2@@69 f_4@@69) (> (select (|PolymorphicMapType_55533_26134_250392#PolymorphicMapType_55533| Mask@@57) o_2@@69 f_4@@69) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26136_226319 Mask@@57 o_2@@69 f_4@@69))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_55533) (o_2@@70 T@Ref) (f_4@@70 T@Field_55572_53) ) (! (= (HasDirectPerm_26136_53 Mask@@58 o_2@@70 f_4@@70) (> (select (|PolymorphicMapType_55533_26134_53#PolymorphicMapType_55533| Mask@@58) o_2@@70 f_4@@70) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26136_53 Mask@@58 o_2@@70 f_4@@70))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_55533) (o_2@@71 T@Ref) (f_4@@71 T@Field_26136_26206) ) (! (= (HasDirectPerm_26136_26206 Mask@@59 o_2@@71 f_4@@71) (> (select (|PolymorphicMapType_55533_26134_26141#PolymorphicMapType_55533| Mask@@59) o_2@@71 f_4@@71) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26136_26206 Mask@@59 o_2@@71 f_4@@71))
)))
(assert (forall ((Mask@@60 T@PolymorphicMapType_55533) (o_2@@72 T@Ref) (f_4@@72 T@Field_58898_1186) ) (! (= (HasDirectPerm_26134_1186 Mask@@60 o_2@@72 f_4@@72) (> (select (|PolymorphicMapType_55533_26134_1186#PolymorphicMapType_55533| Mask@@60) o_2@@72 f_4@@72) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26134_1186 Mask@@60 o_2@@72 f_4@@72))
)))
(assert (forall ((Mask@@61 T@PolymorphicMapType_55533) (o_2@@73 T@Ref) (f_4@@73 T@Field_55585_55586) ) (! (= (HasDirectPerm_26136_26137 Mask@@61 o_2@@73 f_4@@73) (> (select (|PolymorphicMapType_55533_26136_26137#PolymorphicMapType_55533| Mask@@61) o_2@@73 f_4@@73) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26136_26137 Mask@@61 o_2@@73 f_4@@73))
)))
(assert (forall ((p@@4 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@4 f_6) (ite (> p@@4 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@4 f_6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_55512) (ExhaleHeap@@11 T@PolymorphicMapType_55512) (Mask@@62 T@PolymorphicMapType_55533) (o_109@@0 T@Ref) (f_203 T@Field_88397_88402) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@62) (=> (HasDirectPerm_88384_230794 Mask@@62 o_109@@0 f_203) (= (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@16) o_109@@0 f_203) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@11) o_109@@0 f_203))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@62) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@11) o_109@@0 f_203))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_55512) (ExhaleHeap@@12 T@PolymorphicMapType_55512) (Mask@@63 T@PolymorphicMapType_55533) (o_109@@1 T@Ref) (f_203@@0 T@Field_88384_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@63) (=> (HasDirectPerm_88384_53 Mask@@63 o_109@@1 f_203@@0) (= (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@17) o_109@@1 f_203@@0) (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@12) o_109@@1 f_203@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@63) (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@12) o_109@@1 f_203@@0))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_55512) (ExhaleHeap@@13 T@PolymorphicMapType_55512) (Mask@@64 T@PolymorphicMapType_55533) (o_109@@2 T@Ref) (f_203@@1 T@Field_88384_88385) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@64) (=> (HasDirectPerm_88384_26206 Mask@@64 o_109@@2 f_203@@1) (= (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@18) o_109@@2 f_203@@1) (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@13) o_109@@2 f_203@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@64) (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@13) o_109@@2 f_203@@1))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_55512) (ExhaleHeap@@14 T@PolymorphicMapType_55512) (Mask@@65 T@PolymorphicMapType_55533) (o_109@@3 T@Ref) (f_203@@2 T@Field_88384_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@65) (=> (HasDirectPerm_88384_1186 Mask@@65 o_109@@3 f_203@@2) (= (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@19) o_109@@3 f_203@@2) (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@14) o_109@@3 f_203@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@65) (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@14) o_109@@3 f_203@@2))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_55512) (ExhaleHeap@@15 T@PolymorphicMapType_55512) (Mask@@66 T@PolymorphicMapType_55533) (o_109@@4 T@Ref) (f_203@@3 T@Field_88384_26137) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@66) (=> (HasDirectPerm_88384_26137 Mask@@66 o_109@@4 f_203@@3) (= (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@20) o_109@@4 f_203@@3) (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@15) o_109@@4 f_203@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@66) (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@15) o_109@@4 f_203@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_55512) (ExhaleHeap@@16 T@PolymorphicMapType_55512) (Mask@@67 T@PolymorphicMapType_55533) (o_109@@5 T@Ref) (f_203@@4 T@Field_60512_60517) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@67) (=> (HasDirectPerm_60499_229676 Mask@@67 o_109@@5 f_203@@4) (= (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@21) o_109@@5 f_203@@4) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@16) o_109@@5 f_203@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@67) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@16) o_109@@5 f_203@@4))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_55512) (ExhaleHeap@@17 T@PolymorphicMapType_55512) (Mask@@68 T@PolymorphicMapType_55533) (o_109@@6 T@Ref) (f_203@@5 T@Field_60499_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@68) (=> (HasDirectPerm_60499_53 Mask@@68 o_109@@6 f_203@@5) (= (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@22) o_109@@6 f_203@@5) (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@17) o_109@@6 f_203@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@68) (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@17) o_109@@6 f_203@@5))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_55512) (ExhaleHeap@@18 T@PolymorphicMapType_55512) (Mask@@69 T@PolymorphicMapType_55533) (o_109@@7 T@Ref) (f_203@@6 T@Field_60499_60500) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@69) (=> (HasDirectPerm_60499_26206 Mask@@69 o_109@@7 f_203@@6) (= (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@23) o_109@@7 f_203@@6) (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@18) o_109@@7 f_203@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@69) (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@18) o_109@@7 f_203@@6))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_55512) (ExhaleHeap@@19 T@PolymorphicMapType_55512) (Mask@@70 T@PolymorphicMapType_55533) (o_109@@8 T@Ref) (f_203@@7 T@Field_60499_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@70) (=> (HasDirectPerm_60499_1186 Mask@@70 o_109@@8 f_203@@7) (= (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@24) o_109@@8 f_203@@7) (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@19) o_109@@8 f_203@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@70) (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@19) o_109@@8 f_203@@7))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_55512) (ExhaleHeap@@20 T@PolymorphicMapType_55512) (Mask@@71 T@PolymorphicMapType_55533) (o_109@@9 T@Ref) (f_203@@8 T@Field_60499_26137) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@71) (=> (HasDirectPerm_60499_26137 Mask@@71 o_109@@9 f_203@@8) (= (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@25) o_109@@9 f_203@@8) (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@20) o_109@@9 f_203@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@71) (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@20) o_109@@9 f_203@@8))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_55512) (ExhaleHeap@@21 T@PolymorphicMapType_55512) (Mask@@72 T@PolymorphicMapType_55533) (o_109@@10 T@Ref) (f_203@@9 T@Field_59008_59013) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@72) (=> (HasDirectPerm_26140_228558 Mask@@72 o_109@@10 f_203@@9) (= (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@26) o_109@@10 f_203@@9) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@21) o_109@@10 f_203@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@72) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@21) o_109@@10 f_203@@9))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_55512) (ExhaleHeap@@22 T@PolymorphicMapType_55512) (Mask@@73 T@PolymorphicMapType_55533) (o_109@@11 T@Ref) (f_203@@10 T@Field_26140_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@22 Mask@@73) (=> (HasDirectPerm_26140_53 Mask@@73 o_109@@11 f_203@@10) (= (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@27) o_109@@11 f_203@@10) (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@22) o_109@@11 f_203@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@22 Mask@@73) (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@22) o_109@@11 f_203@@10))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_55512) (ExhaleHeap@@23 T@PolymorphicMapType_55512) (Mask@@74 T@PolymorphicMapType_55533) (o_109@@12 T@Ref) (f_203@@11 T@Field_58995_58996) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@23 Mask@@74) (=> (HasDirectPerm_26140_26141 Mask@@74 o_109@@12 f_203@@11) (= (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@28) o_109@@12 f_203@@11) (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@23) o_109@@12 f_203@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@23 Mask@@74) (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@23) o_109@@12 f_203@@11))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_55512) (ExhaleHeap@@24 T@PolymorphicMapType_55512) (Mask@@75 T@PolymorphicMapType_55533) (o_109@@13 T@Ref) (f_203@@12 T@Field_26140_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@24 Mask@@75) (=> (HasDirectPerm_26140_1186 Mask@@75 o_109@@13 f_203@@12) (= (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@29) o_109@@13 f_203@@12) (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@24) o_109@@13 f_203@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@24 Mask@@75) (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@24) o_109@@13 f_203@@12))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_55512) (ExhaleHeap@@25 T@PolymorphicMapType_55512) (Mask@@76 T@PolymorphicMapType_55533) (o_109@@14 T@Ref) (f_203@@13 T@Field_26140_26137) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@25 Mask@@76) (=> (HasDirectPerm_26140_26137 Mask@@76 o_109@@14 f_203@@13) (= (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@30) o_109@@14 f_203@@13) (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@25) o_109@@14 f_203@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@25 Mask@@76) (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@25) o_109@@14 f_203@@13))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_55512) (ExhaleHeap@@26 T@PolymorphicMapType_55512) (Mask@@77 T@PolymorphicMapType_55533) (o_109@@15 T@Ref) (f_203@@14 T@Field_75535_75540) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@26 Mask@@77) (=> (HasDirectPerm_26205_227460 Mask@@77 o_109@@15 f_203@@14) (= (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@31) o_109@@15 f_203@@14) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@26) o_109@@15 f_203@@14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@26 Mask@@77) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@26) o_109@@15 f_203@@14))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_55512) (ExhaleHeap@@27 T@PolymorphicMapType_55512) (Mask@@78 T@PolymorphicMapType_55533) (o_109@@16 T@Ref) (f_203@@15 T@Field_26205_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@27 Mask@@78) (=> (HasDirectPerm_26205_53 Mask@@78 o_109@@16 f_203@@15) (= (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@32) o_109@@16 f_203@@15) (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@27) o_109@@16 f_203@@15))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@27 Mask@@78) (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@27) o_109@@16 f_203@@15))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_55512) (ExhaleHeap@@28 T@PolymorphicMapType_55512) (Mask@@79 T@PolymorphicMapType_55533) (o_109@@17 T@Ref) (f_203@@16 T@Field_75522_75523) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@28 Mask@@79) (=> (HasDirectPerm_26205_26206 Mask@@79 o_109@@17 f_203@@16) (= (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@33) o_109@@17 f_203@@16) (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@28) o_109@@17 f_203@@16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@28 Mask@@79) (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@28) o_109@@17 f_203@@16))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_55512) (ExhaleHeap@@29 T@PolymorphicMapType_55512) (Mask@@80 T@PolymorphicMapType_55533) (o_109@@18 T@Ref) (f_203@@17 T@Field_26205_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@29 Mask@@80) (=> (HasDirectPerm_26205_1186 Mask@@80 o_109@@18 f_203@@17) (= (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@34) o_109@@18 f_203@@17) (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@29) o_109@@18 f_203@@17))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@29 Mask@@80) (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@29) o_109@@18 f_203@@17))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_55512) (ExhaleHeap@@30 T@PolymorphicMapType_55512) (Mask@@81 T@PolymorphicMapType_55533) (o_109@@19 T@Ref) (f_203@@18 T@Field_26205_26137) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@30 Mask@@81) (=> (HasDirectPerm_26205_26137 Mask@@81 o_109@@19 f_203@@18) (= (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@35) o_109@@19 f_203@@18) (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@30) o_109@@19 f_203@@18))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@30 Mask@@81) (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@30) o_109@@19 f_203@@18))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_55512) (ExhaleHeap@@31 T@PolymorphicMapType_55512) (Mask@@82 T@PolymorphicMapType_55533) (o_109@@20 T@Ref) (f_203@@19 T@Field_26136_59013) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@31 Mask@@82) (=> (HasDirectPerm_26136_226319 Mask@@82 o_109@@20 f_203@@19) (= (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@36) o_109@@20 f_203@@19) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@31) o_109@@20 f_203@@19))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@31 Mask@@82) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@31) o_109@@20 f_203@@19))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_55512) (ExhaleHeap@@32 T@PolymorphicMapType_55512) (Mask@@83 T@PolymorphicMapType_55533) (o_109@@21 T@Ref) (f_203@@20 T@Field_55572_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@32 Mask@@83) (=> (HasDirectPerm_26136_53 Mask@@83 o_109@@21 f_203@@20) (= (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@37) o_109@@21 f_203@@20) (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@32) o_109@@21 f_203@@20))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@32 Mask@@83) (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@32) o_109@@21 f_203@@20))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_55512) (ExhaleHeap@@33 T@PolymorphicMapType_55512) (Mask@@84 T@PolymorphicMapType_55533) (o_109@@22 T@Ref) (f_203@@21 T@Field_26136_26206) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@33 Mask@@84) (=> (HasDirectPerm_26136_26206 Mask@@84 o_109@@22 f_203@@21) (= (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@38) o_109@@22 f_203@@21) (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@33) o_109@@22 f_203@@21))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@33 Mask@@84) (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@33) o_109@@22 f_203@@21))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_55512) (ExhaleHeap@@34 T@PolymorphicMapType_55512) (Mask@@85 T@PolymorphicMapType_55533) (o_109@@23 T@Ref) (f_203@@22 T@Field_58898_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@34 Mask@@85) (=> (HasDirectPerm_26134_1186 Mask@@85 o_109@@23 f_203@@22) (= (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@39) o_109@@23 f_203@@22) (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@34) o_109@@23 f_203@@22))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@34 Mask@@85) (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@34) o_109@@23 f_203@@22))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_55512) (ExhaleHeap@@35 T@PolymorphicMapType_55512) (Mask@@86 T@PolymorphicMapType_55533) (o_109@@24 T@Ref) (f_203@@23 T@Field_55585_55586) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@35 Mask@@86) (=> (HasDirectPerm_26136_26137 Mask@@86 o_109@@24 f_203@@23) (= (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@40) o_109@@24 f_203@@23) (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@35) o_109@@24 f_203@@23))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@35 Mask@@86) (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@35) o_109@@24 f_203@@23))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_88397_88402) ) (! (= (select (|PolymorphicMapType_55533_26245_252036#PolymorphicMapType_55533| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26245_252036#PolymorphicMapType_55533| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_88384_53) ) (! (= (select (|PolymorphicMapType_55533_26245_53#PolymorphicMapType_55533| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26245_53#PolymorphicMapType_55533| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_88384_88385) ) (! (= (select (|PolymorphicMapType_55533_26245_26246#PolymorphicMapType_55533| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26245_26246#PolymorphicMapType_55533| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_88384_26137) ) (! (= (select (|PolymorphicMapType_55533_26245_26137#PolymorphicMapType_55533| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26245_26137#PolymorphicMapType_55533| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_88384_1186) ) (! (= (select (|PolymorphicMapType_55533_26245_1186#PolymorphicMapType_55533| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26245_1186#PolymorphicMapType_55533| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((o_2@@79 T@Ref) (f_4@@79 T@Field_75535_75540) ) (! (= (select (|PolymorphicMapType_55533_26205_251625#PolymorphicMapType_55533| ZeroMask) o_2@@79 f_4@@79) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26205_251625#PolymorphicMapType_55533| ZeroMask) o_2@@79 f_4@@79))
)))
(assert (forall ((o_2@@80 T@Ref) (f_4@@80 T@Field_26205_53) ) (! (= (select (|PolymorphicMapType_55533_26205_53#PolymorphicMapType_55533| ZeroMask) o_2@@80 f_4@@80) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26205_53#PolymorphicMapType_55533| ZeroMask) o_2@@80 f_4@@80))
)))
(assert (forall ((o_2@@81 T@Ref) (f_4@@81 T@Field_75522_75523) ) (! (= (select (|PolymorphicMapType_55533_26205_26206#PolymorphicMapType_55533| ZeroMask) o_2@@81 f_4@@81) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26205_26206#PolymorphicMapType_55533| ZeroMask) o_2@@81 f_4@@81))
)))
(assert (forall ((o_2@@82 T@Ref) (f_4@@82 T@Field_26205_26137) ) (! (= (select (|PolymorphicMapType_55533_26205_26137#PolymorphicMapType_55533| ZeroMask) o_2@@82 f_4@@82) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26205_26137#PolymorphicMapType_55533| ZeroMask) o_2@@82 f_4@@82))
)))
(assert (forall ((o_2@@83 T@Ref) (f_4@@83 T@Field_26205_1186) ) (! (= (select (|PolymorphicMapType_55533_26205_1186#PolymorphicMapType_55533| ZeroMask) o_2@@83 f_4@@83) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26205_1186#PolymorphicMapType_55533| ZeroMask) o_2@@83 f_4@@83))
)))
(assert (forall ((o_2@@84 T@Ref) (f_4@@84 T@Field_60512_60517) ) (! (= (select (|PolymorphicMapType_55533_26165_251214#PolymorphicMapType_55533| ZeroMask) o_2@@84 f_4@@84) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26165_251214#PolymorphicMapType_55533| ZeroMask) o_2@@84 f_4@@84))
)))
(assert (forall ((o_2@@85 T@Ref) (f_4@@85 T@Field_60499_53) ) (! (= (select (|PolymorphicMapType_55533_26165_53#PolymorphicMapType_55533| ZeroMask) o_2@@85 f_4@@85) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26165_53#PolymorphicMapType_55533| ZeroMask) o_2@@85 f_4@@85))
)))
(assert (forall ((o_2@@86 T@Ref) (f_4@@86 T@Field_60499_60500) ) (! (= (select (|PolymorphicMapType_55533_26165_26166#PolymorphicMapType_55533| ZeroMask) o_2@@86 f_4@@86) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26165_26166#PolymorphicMapType_55533| ZeroMask) o_2@@86 f_4@@86))
)))
(assert (forall ((o_2@@87 T@Ref) (f_4@@87 T@Field_60499_26137) ) (! (= (select (|PolymorphicMapType_55533_26165_26137#PolymorphicMapType_55533| ZeroMask) o_2@@87 f_4@@87) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26165_26137#PolymorphicMapType_55533| ZeroMask) o_2@@87 f_4@@87))
)))
(assert (forall ((o_2@@88 T@Ref) (f_4@@88 T@Field_60499_1186) ) (! (= (select (|PolymorphicMapType_55533_26165_1186#PolymorphicMapType_55533| ZeroMask) o_2@@88 f_4@@88) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26165_1186#PolymorphicMapType_55533| ZeroMask) o_2@@88 f_4@@88))
)))
(assert (forall ((o_2@@89 T@Ref) (f_4@@89 T@Field_59008_59013) ) (! (= (select (|PolymorphicMapType_55533_26140_250803#PolymorphicMapType_55533| ZeroMask) o_2@@89 f_4@@89) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26140_250803#PolymorphicMapType_55533| ZeroMask) o_2@@89 f_4@@89))
)))
(assert (forall ((o_2@@90 T@Ref) (f_4@@90 T@Field_26140_53) ) (! (= (select (|PolymorphicMapType_55533_26140_53#PolymorphicMapType_55533| ZeroMask) o_2@@90 f_4@@90) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26140_53#PolymorphicMapType_55533| ZeroMask) o_2@@90 f_4@@90))
)))
(assert (forall ((o_2@@91 T@Ref) (f_4@@91 T@Field_58995_58996) ) (! (= (select (|PolymorphicMapType_55533_26140_26141#PolymorphicMapType_55533| ZeroMask) o_2@@91 f_4@@91) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26140_26141#PolymorphicMapType_55533| ZeroMask) o_2@@91 f_4@@91))
)))
(assert (forall ((o_2@@92 T@Ref) (f_4@@92 T@Field_26140_26137) ) (! (= (select (|PolymorphicMapType_55533_26140_26137#PolymorphicMapType_55533| ZeroMask) o_2@@92 f_4@@92) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26140_26137#PolymorphicMapType_55533| ZeroMask) o_2@@92 f_4@@92))
)))
(assert (forall ((o_2@@93 T@Ref) (f_4@@93 T@Field_26140_1186) ) (! (= (select (|PolymorphicMapType_55533_26140_1186#PolymorphicMapType_55533| ZeroMask) o_2@@93 f_4@@93) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26140_1186#PolymorphicMapType_55533| ZeroMask) o_2@@93 f_4@@93))
)))
(assert (forall ((o_2@@94 T@Ref) (f_4@@94 T@Field_26136_59013) ) (! (= (select (|PolymorphicMapType_55533_26134_250392#PolymorphicMapType_55533| ZeroMask) o_2@@94 f_4@@94) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26134_250392#PolymorphicMapType_55533| ZeroMask) o_2@@94 f_4@@94))
)))
(assert (forall ((o_2@@95 T@Ref) (f_4@@95 T@Field_55572_53) ) (! (= (select (|PolymorphicMapType_55533_26134_53#PolymorphicMapType_55533| ZeroMask) o_2@@95 f_4@@95) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26134_53#PolymorphicMapType_55533| ZeroMask) o_2@@95 f_4@@95))
)))
(assert (forall ((o_2@@96 T@Ref) (f_4@@96 T@Field_26136_26206) ) (! (= (select (|PolymorphicMapType_55533_26134_26141#PolymorphicMapType_55533| ZeroMask) o_2@@96 f_4@@96) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26134_26141#PolymorphicMapType_55533| ZeroMask) o_2@@96 f_4@@96))
)))
(assert (forall ((o_2@@97 T@Ref) (f_4@@97 T@Field_55585_55586) ) (! (= (select (|PolymorphicMapType_55533_26136_26137#PolymorphicMapType_55533| ZeroMask) o_2@@97 f_4@@97) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26136_26137#PolymorphicMapType_55533| ZeroMask) o_2@@97 f_4@@97))
)))
(assert (forall ((o_2@@98 T@Ref) (f_4@@98 T@Field_58898_1186) ) (! (= (select (|PolymorphicMapType_55533_26134_1186#PolymorphicMapType_55533| ZeroMask) o_2@@98 f_4@@98) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26134_1186#PolymorphicMapType_55533| ZeroMask) o_2@@98 f_4@@98))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_55533) (SummandMask1 T@PolymorphicMapType_55533) (SummandMask2 T@PolymorphicMapType_55533) (o_2@@99 T@Ref) (f_4@@99 T@Field_88397_88402) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_55533_26245_252036#PolymorphicMapType_55533| ResultMask) o_2@@99 f_4@@99) (+ (select (|PolymorphicMapType_55533_26245_252036#PolymorphicMapType_55533| SummandMask1) o_2@@99 f_4@@99) (select (|PolymorphicMapType_55533_26245_252036#PolymorphicMapType_55533| SummandMask2) o_2@@99 f_4@@99))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_55533_26245_252036#PolymorphicMapType_55533| ResultMask) o_2@@99 f_4@@99))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_55533_26245_252036#PolymorphicMapType_55533| SummandMask1) o_2@@99 f_4@@99))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_55533_26245_252036#PolymorphicMapType_55533| SummandMask2) o_2@@99 f_4@@99))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_55533) (SummandMask1@@0 T@PolymorphicMapType_55533) (SummandMask2@@0 T@PolymorphicMapType_55533) (o_2@@100 T@Ref) (f_4@@100 T@Field_88384_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_55533_26245_53#PolymorphicMapType_55533| ResultMask@@0) o_2@@100 f_4@@100) (+ (select (|PolymorphicMapType_55533_26245_53#PolymorphicMapType_55533| SummandMask1@@0) o_2@@100 f_4@@100) (select (|PolymorphicMapType_55533_26245_53#PolymorphicMapType_55533| SummandMask2@@0) o_2@@100 f_4@@100))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_55533_26245_53#PolymorphicMapType_55533| ResultMask@@0) o_2@@100 f_4@@100))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_55533_26245_53#PolymorphicMapType_55533| SummandMask1@@0) o_2@@100 f_4@@100))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_55533_26245_53#PolymorphicMapType_55533| SummandMask2@@0) o_2@@100 f_4@@100))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_55533) (SummandMask1@@1 T@PolymorphicMapType_55533) (SummandMask2@@1 T@PolymorphicMapType_55533) (o_2@@101 T@Ref) (f_4@@101 T@Field_88384_88385) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_55533_26245_26246#PolymorphicMapType_55533| ResultMask@@1) o_2@@101 f_4@@101) (+ (select (|PolymorphicMapType_55533_26245_26246#PolymorphicMapType_55533| SummandMask1@@1) o_2@@101 f_4@@101) (select (|PolymorphicMapType_55533_26245_26246#PolymorphicMapType_55533| SummandMask2@@1) o_2@@101 f_4@@101))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_55533_26245_26246#PolymorphicMapType_55533| ResultMask@@1) o_2@@101 f_4@@101))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_55533_26245_26246#PolymorphicMapType_55533| SummandMask1@@1) o_2@@101 f_4@@101))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_55533_26245_26246#PolymorphicMapType_55533| SummandMask2@@1) o_2@@101 f_4@@101))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_55533) (SummandMask1@@2 T@PolymorphicMapType_55533) (SummandMask2@@2 T@PolymorphicMapType_55533) (o_2@@102 T@Ref) (f_4@@102 T@Field_88384_26137) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_55533_26245_26137#PolymorphicMapType_55533| ResultMask@@2) o_2@@102 f_4@@102) (+ (select (|PolymorphicMapType_55533_26245_26137#PolymorphicMapType_55533| SummandMask1@@2) o_2@@102 f_4@@102) (select (|PolymorphicMapType_55533_26245_26137#PolymorphicMapType_55533| SummandMask2@@2) o_2@@102 f_4@@102))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_55533_26245_26137#PolymorphicMapType_55533| ResultMask@@2) o_2@@102 f_4@@102))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_55533_26245_26137#PolymorphicMapType_55533| SummandMask1@@2) o_2@@102 f_4@@102))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_55533_26245_26137#PolymorphicMapType_55533| SummandMask2@@2) o_2@@102 f_4@@102))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_55533) (SummandMask1@@3 T@PolymorphicMapType_55533) (SummandMask2@@3 T@PolymorphicMapType_55533) (o_2@@103 T@Ref) (f_4@@103 T@Field_88384_1186) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_55533_26245_1186#PolymorphicMapType_55533| ResultMask@@3) o_2@@103 f_4@@103) (+ (select (|PolymorphicMapType_55533_26245_1186#PolymorphicMapType_55533| SummandMask1@@3) o_2@@103 f_4@@103) (select (|PolymorphicMapType_55533_26245_1186#PolymorphicMapType_55533| SummandMask2@@3) o_2@@103 f_4@@103))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_55533_26245_1186#PolymorphicMapType_55533| ResultMask@@3) o_2@@103 f_4@@103))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_55533_26245_1186#PolymorphicMapType_55533| SummandMask1@@3) o_2@@103 f_4@@103))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_55533_26245_1186#PolymorphicMapType_55533| SummandMask2@@3) o_2@@103 f_4@@103))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_55533) (SummandMask1@@4 T@PolymorphicMapType_55533) (SummandMask2@@4 T@PolymorphicMapType_55533) (o_2@@104 T@Ref) (f_4@@104 T@Field_75535_75540) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_55533_26205_251625#PolymorphicMapType_55533| ResultMask@@4) o_2@@104 f_4@@104) (+ (select (|PolymorphicMapType_55533_26205_251625#PolymorphicMapType_55533| SummandMask1@@4) o_2@@104 f_4@@104) (select (|PolymorphicMapType_55533_26205_251625#PolymorphicMapType_55533| SummandMask2@@4) o_2@@104 f_4@@104))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_55533_26205_251625#PolymorphicMapType_55533| ResultMask@@4) o_2@@104 f_4@@104))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_55533_26205_251625#PolymorphicMapType_55533| SummandMask1@@4) o_2@@104 f_4@@104))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_55533_26205_251625#PolymorphicMapType_55533| SummandMask2@@4) o_2@@104 f_4@@104))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_55533) (SummandMask1@@5 T@PolymorphicMapType_55533) (SummandMask2@@5 T@PolymorphicMapType_55533) (o_2@@105 T@Ref) (f_4@@105 T@Field_26205_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_55533_26205_53#PolymorphicMapType_55533| ResultMask@@5) o_2@@105 f_4@@105) (+ (select (|PolymorphicMapType_55533_26205_53#PolymorphicMapType_55533| SummandMask1@@5) o_2@@105 f_4@@105) (select (|PolymorphicMapType_55533_26205_53#PolymorphicMapType_55533| SummandMask2@@5) o_2@@105 f_4@@105))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_55533_26205_53#PolymorphicMapType_55533| ResultMask@@5) o_2@@105 f_4@@105))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_55533_26205_53#PolymorphicMapType_55533| SummandMask1@@5) o_2@@105 f_4@@105))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_55533_26205_53#PolymorphicMapType_55533| SummandMask2@@5) o_2@@105 f_4@@105))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_55533) (SummandMask1@@6 T@PolymorphicMapType_55533) (SummandMask2@@6 T@PolymorphicMapType_55533) (o_2@@106 T@Ref) (f_4@@106 T@Field_75522_75523) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_55533_26205_26206#PolymorphicMapType_55533| ResultMask@@6) o_2@@106 f_4@@106) (+ (select (|PolymorphicMapType_55533_26205_26206#PolymorphicMapType_55533| SummandMask1@@6) o_2@@106 f_4@@106) (select (|PolymorphicMapType_55533_26205_26206#PolymorphicMapType_55533| SummandMask2@@6) o_2@@106 f_4@@106))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_55533_26205_26206#PolymorphicMapType_55533| ResultMask@@6) o_2@@106 f_4@@106))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_55533_26205_26206#PolymorphicMapType_55533| SummandMask1@@6) o_2@@106 f_4@@106))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_55533_26205_26206#PolymorphicMapType_55533| SummandMask2@@6) o_2@@106 f_4@@106))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_55533) (SummandMask1@@7 T@PolymorphicMapType_55533) (SummandMask2@@7 T@PolymorphicMapType_55533) (o_2@@107 T@Ref) (f_4@@107 T@Field_26205_26137) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_55533_26205_26137#PolymorphicMapType_55533| ResultMask@@7) o_2@@107 f_4@@107) (+ (select (|PolymorphicMapType_55533_26205_26137#PolymorphicMapType_55533| SummandMask1@@7) o_2@@107 f_4@@107) (select (|PolymorphicMapType_55533_26205_26137#PolymorphicMapType_55533| SummandMask2@@7) o_2@@107 f_4@@107))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_55533_26205_26137#PolymorphicMapType_55533| ResultMask@@7) o_2@@107 f_4@@107))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_55533_26205_26137#PolymorphicMapType_55533| SummandMask1@@7) o_2@@107 f_4@@107))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_55533_26205_26137#PolymorphicMapType_55533| SummandMask2@@7) o_2@@107 f_4@@107))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_55533) (SummandMask1@@8 T@PolymorphicMapType_55533) (SummandMask2@@8 T@PolymorphicMapType_55533) (o_2@@108 T@Ref) (f_4@@108 T@Field_26205_1186) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_55533_26205_1186#PolymorphicMapType_55533| ResultMask@@8) o_2@@108 f_4@@108) (+ (select (|PolymorphicMapType_55533_26205_1186#PolymorphicMapType_55533| SummandMask1@@8) o_2@@108 f_4@@108) (select (|PolymorphicMapType_55533_26205_1186#PolymorphicMapType_55533| SummandMask2@@8) o_2@@108 f_4@@108))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_55533_26205_1186#PolymorphicMapType_55533| ResultMask@@8) o_2@@108 f_4@@108))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_55533_26205_1186#PolymorphicMapType_55533| SummandMask1@@8) o_2@@108 f_4@@108))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_55533_26205_1186#PolymorphicMapType_55533| SummandMask2@@8) o_2@@108 f_4@@108))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_55533) (SummandMask1@@9 T@PolymorphicMapType_55533) (SummandMask2@@9 T@PolymorphicMapType_55533) (o_2@@109 T@Ref) (f_4@@109 T@Field_60512_60517) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_55533_26165_251214#PolymorphicMapType_55533| ResultMask@@9) o_2@@109 f_4@@109) (+ (select (|PolymorphicMapType_55533_26165_251214#PolymorphicMapType_55533| SummandMask1@@9) o_2@@109 f_4@@109) (select (|PolymorphicMapType_55533_26165_251214#PolymorphicMapType_55533| SummandMask2@@9) o_2@@109 f_4@@109))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_55533_26165_251214#PolymorphicMapType_55533| ResultMask@@9) o_2@@109 f_4@@109))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_55533_26165_251214#PolymorphicMapType_55533| SummandMask1@@9) o_2@@109 f_4@@109))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_55533_26165_251214#PolymorphicMapType_55533| SummandMask2@@9) o_2@@109 f_4@@109))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_55533) (SummandMask1@@10 T@PolymorphicMapType_55533) (SummandMask2@@10 T@PolymorphicMapType_55533) (o_2@@110 T@Ref) (f_4@@110 T@Field_60499_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_55533_26165_53#PolymorphicMapType_55533| ResultMask@@10) o_2@@110 f_4@@110) (+ (select (|PolymorphicMapType_55533_26165_53#PolymorphicMapType_55533| SummandMask1@@10) o_2@@110 f_4@@110) (select (|PolymorphicMapType_55533_26165_53#PolymorphicMapType_55533| SummandMask2@@10) o_2@@110 f_4@@110))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_55533_26165_53#PolymorphicMapType_55533| ResultMask@@10) o_2@@110 f_4@@110))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_55533_26165_53#PolymorphicMapType_55533| SummandMask1@@10) o_2@@110 f_4@@110))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_55533_26165_53#PolymorphicMapType_55533| SummandMask2@@10) o_2@@110 f_4@@110))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_55533) (SummandMask1@@11 T@PolymorphicMapType_55533) (SummandMask2@@11 T@PolymorphicMapType_55533) (o_2@@111 T@Ref) (f_4@@111 T@Field_60499_60500) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_55533_26165_26166#PolymorphicMapType_55533| ResultMask@@11) o_2@@111 f_4@@111) (+ (select (|PolymorphicMapType_55533_26165_26166#PolymorphicMapType_55533| SummandMask1@@11) o_2@@111 f_4@@111) (select (|PolymorphicMapType_55533_26165_26166#PolymorphicMapType_55533| SummandMask2@@11) o_2@@111 f_4@@111))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_55533_26165_26166#PolymorphicMapType_55533| ResultMask@@11) o_2@@111 f_4@@111))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_55533_26165_26166#PolymorphicMapType_55533| SummandMask1@@11) o_2@@111 f_4@@111))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_55533_26165_26166#PolymorphicMapType_55533| SummandMask2@@11) o_2@@111 f_4@@111))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_55533) (SummandMask1@@12 T@PolymorphicMapType_55533) (SummandMask2@@12 T@PolymorphicMapType_55533) (o_2@@112 T@Ref) (f_4@@112 T@Field_60499_26137) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_55533_26165_26137#PolymorphicMapType_55533| ResultMask@@12) o_2@@112 f_4@@112) (+ (select (|PolymorphicMapType_55533_26165_26137#PolymorphicMapType_55533| SummandMask1@@12) o_2@@112 f_4@@112) (select (|PolymorphicMapType_55533_26165_26137#PolymorphicMapType_55533| SummandMask2@@12) o_2@@112 f_4@@112))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_55533_26165_26137#PolymorphicMapType_55533| ResultMask@@12) o_2@@112 f_4@@112))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_55533_26165_26137#PolymorphicMapType_55533| SummandMask1@@12) o_2@@112 f_4@@112))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_55533_26165_26137#PolymorphicMapType_55533| SummandMask2@@12) o_2@@112 f_4@@112))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_55533) (SummandMask1@@13 T@PolymorphicMapType_55533) (SummandMask2@@13 T@PolymorphicMapType_55533) (o_2@@113 T@Ref) (f_4@@113 T@Field_60499_1186) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_55533_26165_1186#PolymorphicMapType_55533| ResultMask@@13) o_2@@113 f_4@@113) (+ (select (|PolymorphicMapType_55533_26165_1186#PolymorphicMapType_55533| SummandMask1@@13) o_2@@113 f_4@@113) (select (|PolymorphicMapType_55533_26165_1186#PolymorphicMapType_55533| SummandMask2@@13) o_2@@113 f_4@@113))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_55533_26165_1186#PolymorphicMapType_55533| ResultMask@@13) o_2@@113 f_4@@113))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_55533_26165_1186#PolymorphicMapType_55533| SummandMask1@@13) o_2@@113 f_4@@113))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_55533_26165_1186#PolymorphicMapType_55533| SummandMask2@@13) o_2@@113 f_4@@113))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_55533) (SummandMask1@@14 T@PolymorphicMapType_55533) (SummandMask2@@14 T@PolymorphicMapType_55533) (o_2@@114 T@Ref) (f_4@@114 T@Field_59008_59013) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_55533_26140_250803#PolymorphicMapType_55533| ResultMask@@14) o_2@@114 f_4@@114) (+ (select (|PolymorphicMapType_55533_26140_250803#PolymorphicMapType_55533| SummandMask1@@14) o_2@@114 f_4@@114) (select (|PolymorphicMapType_55533_26140_250803#PolymorphicMapType_55533| SummandMask2@@14) o_2@@114 f_4@@114))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_55533_26140_250803#PolymorphicMapType_55533| ResultMask@@14) o_2@@114 f_4@@114))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_55533_26140_250803#PolymorphicMapType_55533| SummandMask1@@14) o_2@@114 f_4@@114))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_55533_26140_250803#PolymorphicMapType_55533| SummandMask2@@14) o_2@@114 f_4@@114))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_55533) (SummandMask1@@15 T@PolymorphicMapType_55533) (SummandMask2@@15 T@PolymorphicMapType_55533) (o_2@@115 T@Ref) (f_4@@115 T@Field_26140_53) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_55533_26140_53#PolymorphicMapType_55533| ResultMask@@15) o_2@@115 f_4@@115) (+ (select (|PolymorphicMapType_55533_26140_53#PolymorphicMapType_55533| SummandMask1@@15) o_2@@115 f_4@@115) (select (|PolymorphicMapType_55533_26140_53#PolymorphicMapType_55533| SummandMask2@@15) o_2@@115 f_4@@115))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_55533_26140_53#PolymorphicMapType_55533| ResultMask@@15) o_2@@115 f_4@@115))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_55533_26140_53#PolymorphicMapType_55533| SummandMask1@@15) o_2@@115 f_4@@115))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_55533_26140_53#PolymorphicMapType_55533| SummandMask2@@15) o_2@@115 f_4@@115))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_55533) (SummandMask1@@16 T@PolymorphicMapType_55533) (SummandMask2@@16 T@PolymorphicMapType_55533) (o_2@@116 T@Ref) (f_4@@116 T@Field_58995_58996) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_55533_26140_26141#PolymorphicMapType_55533| ResultMask@@16) o_2@@116 f_4@@116) (+ (select (|PolymorphicMapType_55533_26140_26141#PolymorphicMapType_55533| SummandMask1@@16) o_2@@116 f_4@@116) (select (|PolymorphicMapType_55533_26140_26141#PolymorphicMapType_55533| SummandMask2@@16) o_2@@116 f_4@@116))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_55533_26140_26141#PolymorphicMapType_55533| ResultMask@@16) o_2@@116 f_4@@116))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_55533_26140_26141#PolymorphicMapType_55533| SummandMask1@@16) o_2@@116 f_4@@116))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_55533_26140_26141#PolymorphicMapType_55533| SummandMask2@@16) o_2@@116 f_4@@116))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_55533) (SummandMask1@@17 T@PolymorphicMapType_55533) (SummandMask2@@17 T@PolymorphicMapType_55533) (o_2@@117 T@Ref) (f_4@@117 T@Field_26140_26137) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_55533_26140_26137#PolymorphicMapType_55533| ResultMask@@17) o_2@@117 f_4@@117) (+ (select (|PolymorphicMapType_55533_26140_26137#PolymorphicMapType_55533| SummandMask1@@17) o_2@@117 f_4@@117) (select (|PolymorphicMapType_55533_26140_26137#PolymorphicMapType_55533| SummandMask2@@17) o_2@@117 f_4@@117))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_55533_26140_26137#PolymorphicMapType_55533| ResultMask@@17) o_2@@117 f_4@@117))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_55533_26140_26137#PolymorphicMapType_55533| SummandMask1@@17) o_2@@117 f_4@@117))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_55533_26140_26137#PolymorphicMapType_55533| SummandMask2@@17) o_2@@117 f_4@@117))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_55533) (SummandMask1@@18 T@PolymorphicMapType_55533) (SummandMask2@@18 T@PolymorphicMapType_55533) (o_2@@118 T@Ref) (f_4@@118 T@Field_26140_1186) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_55533_26140_1186#PolymorphicMapType_55533| ResultMask@@18) o_2@@118 f_4@@118) (+ (select (|PolymorphicMapType_55533_26140_1186#PolymorphicMapType_55533| SummandMask1@@18) o_2@@118 f_4@@118) (select (|PolymorphicMapType_55533_26140_1186#PolymorphicMapType_55533| SummandMask2@@18) o_2@@118 f_4@@118))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_55533_26140_1186#PolymorphicMapType_55533| ResultMask@@18) o_2@@118 f_4@@118))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_55533_26140_1186#PolymorphicMapType_55533| SummandMask1@@18) o_2@@118 f_4@@118))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_55533_26140_1186#PolymorphicMapType_55533| SummandMask2@@18) o_2@@118 f_4@@118))
)))
(assert (forall ((ResultMask@@19 T@PolymorphicMapType_55533) (SummandMask1@@19 T@PolymorphicMapType_55533) (SummandMask2@@19 T@PolymorphicMapType_55533) (o_2@@119 T@Ref) (f_4@@119 T@Field_26136_59013) ) (!  (=> (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (= (select (|PolymorphicMapType_55533_26134_250392#PolymorphicMapType_55533| ResultMask@@19) o_2@@119 f_4@@119) (+ (select (|PolymorphicMapType_55533_26134_250392#PolymorphicMapType_55533| SummandMask1@@19) o_2@@119 f_4@@119) (select (|PolymorphicMapType_55533_26134_250392#PolymorphicMapType_55533| SummandMask2@@19) o_2@@119 f_4@@119))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_55533_26134_250392#PolymorphicMapType_55533| ResultMask@@19) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_55533_26134_250392#PolymorphicMapType_55533| SummandMask1@@19) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_55533_26134_250392#PolymorphicMapType_55533| SummandMask2@@19) o_2@@119 f_4@@119))
)))
(assert (forall ((ResultMask@@20 T@PolymorphicMapType_55533) (SummandMask1@@20 T@PolymorphicMapType_55533) (SummandMask2@@20 T@PolymorphicMapType_55533) (o_2@@120 T@Ref) (f_4@@120 T@Field_55572_53) ) (!  (=> (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (= (select (|PolymorphicMapType_55533_26134_53#PolymorphicMapType_55533| ResultMask@@20) o_2@@120 f_4@@120) (+ (select (|PolymorphicMapType_55533_26134_53#PolymorphicMapType_55533| SummandMask1@@20) o_2@@120 f_4@@120) (select (|PolymorphicMapType_55533_26134_53#PolymorphicMapType_55533| SummandMask2@@20) o_2@@120 f_4@@120))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_55533_26134_53#PolymorphicMapType_55533| ResultMask@@20) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_55533_26134_53#PolymorphicMapType_55533| SummandMask1@@20) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_55533_26134_53#PolymorphicMapType_55533| SummandMask2@@20) o_2@@120 f_4@@120))
)))
(assert (forall ((ResultMask@@21 T@PolymorphicMapType_55533) (SummandMask1@@21 T@PolymorphicMapType_55533) (SummandMask2@@21 T@PolymorphicMapType_55533) (o_2@@121 T@Ref) (f_4@@121 T@Field_26136_26206) ) (!  (=> (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (= (select (|PolymorphicMapType_55533_26134_26141#PolymorphicMapType_55533| ResultMask@@21) o_2@@121 f_4@@121) (+ (select (|PolymorphicMapType_55533_26134_26141#PolymorphicMapType_55533| SummandMask1@@21) o_2@@121 f_4@@121) (select (|PolymorphicMapType_55533_26134_26141#PolymorphicMapType_55533| SummandMask2@@21) o_2@@121 f_4@@121))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_55533_26134_26141#PolymorphicMapType_55533| ResultMask@@21) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_55533_26134_26141#PolymorphicMapType_55533| SummandMask1@@21) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_55533_26134_26141#PolymorphicMapType_55533| SummandMask2@@21) o_2@@121 f_4@@121))
)))
(assert (forall ((ResultMask@@22 T@PolymorphicMapType_55533) (SummandMask1@@22 T@PolymorphicMapType_55533) (SummandMask2@@22 T@PolymorphicMapType_55533) (o_2@@122 T@Ref) (f_4@@122 T@Field_55585_55586) ) (!  (=> (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (= (select (|PolymorphicMapType_55533_26136_26137#PolymorphicMapType_55533| ResultMask@@22) o_2@@122 f_4@@122) (+ (select (|PolymorphicMapType_55533_26136_26137#PolymorphicMapType_55533| SummandMask1@@22) o_2@@122 f_4@@122) (select (|PolymorphicMapType_55533_26136_26137#PolymorphicMapType_55533| SummandMask2@@22) o_2@@122 f_4@@122))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_55533_26136_26137#PolymorphicMapType_55533| ResultMask@@22) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_55533_26136_26137#PolymorphicMapType_55533| SummandMask1@@22) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_55533_26136_26137#PolymorphicMapType_55533| SummandMask2@@22) o_2@@122 f_4@@122))
)))
(assert (forall ((ResultMask@@23 T@PolymorphicMapType_55533) (SummandMask1@@23 T@PolymorphicMapType_55533) (SummandMask2@@23 T@PolymorphicMapType_55533) (o_2@@123 T@Ref) (f_4@@123 T@Field_58898_1186) ) (!  (=> (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (= (select (|PolymorphicMapType_55533_26134_1186#PolymorphicMapType_55533| ResultMask@@23) o_2@@123 f_4@@123) (+ (select (|PolymorphicMapType_55533_26134_1186#PolymorphicMapType_55533| SummandMask1@@23) o_2@@123 f_4@@123) (select (|PolymorphicMapType_55533_26134_1186#PolymorphicMapType_55533| SummandMask2@@23) o_2@@123 f_4@@123))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_55533_26134_1186#PolymorphicMapType_55533| ResultMask@@23) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_55533_26134_1186#PolymorphicMapType_55533| SummandMask1@@23) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_55533_26134_1186#PolymorphicMapType_55533| SummandMask2@@23) o_2@@123 f_4@@123))
)))
(assert (forall ((r_1@@15 T@Ref) ) (! (= (getPredWandId_26140_26141 (valid r_1@@15)) 0)
 :qid |stdinbpl.202:15|
 :skolemid |24|
 :pattern ( (valid r_1@@15))
)))
(assert (forall ((r_1@@16 T@Ref) ) (! (= (getPredWandId_26165_26166 (deeper r_1@@16)) 1)
 :qid |stdinbpl.273:15|
 :skolemid |30|
 :pattern ( (deeper r_1@@16))
)))
(assert (forall ((r_1@@17 T@Ref) ) (! (= (getPredWandId_26205_26206 (strange r_1@@17)) 2)
 :qid |stdinbpl.490:15|
 :skolemid |40|
 :pattern ( (strange r_1@@17))
)))
(assert (forall ((r_1@@18 T@Ref) ) (! (= (getPredWandId_26245_26246 (deeperfalse r_1@@18)) 3)
 :qid |stdinbpl.749:15|
 :skolemid |50|
 :pattern ( (deeperfalse r_1@@18))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_55512) (o_106 T@Ref) (f_108 T@Field_88397_88402) (v T@PolymorphicMapType_56061) ) (! (succHeap Heap@@41 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@41) (store (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@41) o_106 f_108 v) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@41) (store (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@41) o_106 f_108 v) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_55512) (o_106@@0 T@Ref) (f_108@@0 T@Field_88384_1186) (v@@0 Int) ) (! (succHeap Heap@@42 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@42) (store (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@42) o_106@@0 f_108@@0 v@@0) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@42) (store (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@42) o_106@@0 f_108@@0 v@@0) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_55512) (o_106@@1 T@Ref) (f_108@@1 T@Field_88384_88385) (v@@1 T@FrameType) ) (! (succHeap Heap@@43 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@43) (store (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@43) o_106@@1 f_108@@1 v@@1) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@43) (store (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@43) o_106@@1 f_108@@1 v@@1) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_55512) (o_106@@2 T@Ref) (f_108@@2 T@Field_88384_26137) (v@@2 T@Ref) ) (! (succHeap Heap@@44 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@44) (store (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@44) o_106@@2 f_108@@2 v@@2) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@44) (store (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@44) o_106@@2 f_108@@2 v@@2) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_55512) (o_106@@3 T@Ref) (f_108@@3 T@Field_88384_53) (v@@3 Bool) ) (! (succHeap Heap@@45 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@45) (store (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@45) o_106@@3 f_108@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@45) (store (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@45) o_106@@3 f_108@@3 v@@3)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_55512) (o_106@@4 T@Ref) (f_108@@4 T@Field_59008_59013) (v@@4 T@PolymorphicMapType_56061) ) (! (succHeap Heap@@46 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@46) (store (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@46) o_106@@4 f_108@@4 v@@4) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@46) (store (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@46) o_106@@4 f_108@@4 v@@4) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_55512) (o_106@@5 T@Ref) (f_108@@5 T@Field_26140_1186) (v@@5 Int) ) (! (succHeap Heap@@47 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@47) (store (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@47) o_106@@5 f_108@@5 v@@5) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@47) (store (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@47) o_106@@5 f_108@@5 v@@5) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_55512) (o_106@@6 T@Ref) (f_108@@6 T@Field_58995_58996) (v@@6 T@FrameType) ) (! (succHeap Heap@@48 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@48) (store (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@48) o_106@@6 f_108@@6 v@@6) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@48) (store (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@48) o_106@@6 f_108@@6 v@@6) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_55512) (o_106@@7 T@Ref) (f_108@@7 T@Field_26140_26137) (v@@7 T@Ref) ) (! (succHeap Heap@@49 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@49) (store (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@49) o_106@@7 f_108@@7 v@@7) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@49) (store (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@49) o_106@@7 f_108@@7 v@@7) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_55512) (o_106@@8 T@Ref) (f_108@@8 T@Field_26140_53) (v@@8 Bool) ) (! (succHeap Heap@@50 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@50) (store (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@50) o_106@@8 f_108@@8 v@@8) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@50) (store (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@50) o_106@@8 f_108@@8 v@@8) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_55512) (o_106@@9 T@Ref) (f_108@@9 T@Field_75535_75540) (v@@9 T@PolymorphicMapType_56061) ) (! (succHeap Heap@@51 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@51) (store (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@51) o_106@@9 f_108@@9 v@@9) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@51) (store (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@51) o_106@@9 f_108@@9 v@@9) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_55512) (o_106@@10 T@Ref) (f_108@@10 T@Field_26205_1186) (v@@10 Int) ) (! (succHeap Heap@@52 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@52) (store (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@52) o_106@@10 f_108@@10 v@@10) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@52) (store (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@52) o_106@@10 f_108@@10 v@@10) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_55512) (o_106@@11 T@Ref) (f_108@@11 T@Field_75522_75523) (v@@11 T@FrameType) ) (! (succHeap Heap@@53 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@53) (store (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@53) o_106@@11 f_108@@11 v@@11) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@53) (store (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@53) o_106@@11 f_108@@11 v@@11) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_55512) (o_106@@12 T@Ref) (f_108@@12 T@Field_26205_26137) (v@@12 T@Ref) ) (! (succHeap Heap@@54 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@54) (store (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@54) o_106@@12 f_108@@12 v@@12) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@54) (store (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@54) o_106@@12 f_108@@12 v@@12) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_55512) (o_106@@13 T@Ref) (f_108@@13 T@Field_26205_53) (v@@13 Bool) ) (! (succHeap Heap@@55 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@55) (store (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@55) o_106@@13 f_108@@13 v@@13) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@55) (store (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@55) o_106@@13 f_108@@13 v@@13) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_55512) (o_106@@14 T@Ref) (f_108@@14 T@Field_60512_60517) (v@@14 T@PolymorphicMapType_56061) ) (! (succHeap Heap@@56 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@56) (store (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@56) o_106@@14 f_108@@14 v@@14) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@56) (store (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@56) o_106@@14 f_108@@14 v@@14) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_55512) (o_106@@15 T@Ref) (f_108@@15 T@Field_60499_1186) (v@@15 Int) ) (! (succHeap Heap@@57 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@57) (store (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@57) o_106@@15 f_108@@15 v@@15) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@57) (store (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@57) o_106@@15 f_108@@15 v@@15) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_55512) (o_106@@16 T@Ref) (f_108@@16 T@Field_60499_60500) (v@@16 T@FrameType) ) (! (succHeap Heap@@58 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@58) (store (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@58) o_106@@16 f_108@@16 v@@16) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@58) (store (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@58) o_106@@16 f_108@@16 v@@16) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_55512) (o_106@@17 T@Ref) (f_108@@17 T@Field_60499_26137) (v@@17 T@Ref) ) (! (succHeap Heap@@59 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@59) (store (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@59) o_106@@17 f_108@@17 v@@17) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@59) (store (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@59) o_106@@17 f_108@@17 v@@17) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_55512) (o_106@@18 T@Ref) (f_108@@18 T@Field_60499_53) (v@@18 Bool) ) (! (succHeap Heap@@60 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@60) (store (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@60) o_106@@18 f_108@@18 v@@18) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@60) (store (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@60) o_106@@18 f_108@@18 v@@18) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_55512) (o_106@@19 T@Ref) (f_108@@19 T@Field_26136_59013) (v@@19 T@PolymorphicMapType_56061) ) (! (succHeap Heap@@61 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@61) (store (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@61) o_106@@19 f_108@@19 v@@19) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@61) (store (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@61) o_106@@19 f_108@@19 v@@19) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_55512) (o_106@@20 T@Ref) (f_108@@20 T@Field_58898_1186) (v@@20 Int) ) (! (succHeap Heap@@62 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@62) (store (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@62) o_106@@20 f_108@@20 v@@20) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@62) (store (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@62) o_106@@20 f_108@@20 v@@20) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_55512) (o_106@@21 T@Ref) (f_108@@21 T@Field_26136_26206) (v@@21 T@FrameType) ) (! (succHeap Heap@@63 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@63) (store (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@63) o_106@@21 f_108@@21 v@@21) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@63) (store (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@63) o_106@@21 f_108@@21 v@@21) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_55512) (o_106@@22 T@Ref) (f_108@@22 T@Field_55585_55586) (v@@22 T@Ref) ) (! (succHeap Heap@@64 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@64) (store (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@64) o_106@@22 f_108@@22 v@@22) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@64) (store (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@64) o_106@@22 f_108@@22 v@@22) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_55512) (o_106@@23 T@Ref) (f_108@@23 T@Field_55572_53) (v@@23 Bool) ) (! (succHeap Heap@@65 (PolymorphicMapType_55512 (store (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@65) o_106@@23 f_108@@23 v@@23) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (store (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@65) o_106@@23 f_108@@23 v@@23) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@65)))
)))
(assert (forall ((r_1@@19 T@Ref) ) (! (= (PredicateMaskField_26140 (valid r_1@@19)) (|valid#sm| r_1@@19))
 :qid |stdinbpl.194:15|
 :skolemid |22|
 :pattern ( (PredicateMaskField_26140 (valid r_1@@19)))
)))
(assert (forall ((r_1@@20 T@Ref) ) (! (= (PredicateMaskField_26165 (deeper r_1@@20)) (|deeper#sm| r_1@@20))
 :qid |stdinbpl.265:15|
 :skolemid |28|
 :pattern ( (PredicateMaskField_26165 (deeper r_1@@20)))
)))
(assert (forall ((r_1@@21 T@Ref) ) (! (= (PredicateMaskField_26205 (strange r_1@@21)) (|strange#sm| r_1@@21))
 :qid |stdinbpl.482:15|
 :skolemid |38|
 :pattern ( (PredicateMaskField_26205 (strange r_1@@21)))
)))
(assert (forall ((r_1@@22 T@Ref) ) (! (= (PredicateMaskField_26245 (deeperfalse r_1@@22)) (|deeperfalse#sm| r_1@@22))
 :qid |stdinbpl.741:15|
 :skolemid |48|
 :pattern ( (PredicateMaskField_26245 (deeperfalse r_1@@22)))
)))
(assert (forall ((o_106@@24 T@Ref) (f_202 T@Field_55585_55586) (Heap@@66 T@PolymorphicMapType_55512) ) (!  (=> (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@66) o_106@@24 $allocated) (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@66) (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@66) o_106@@24 f_202) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@66) o_106@@24 f_202))
)))
(assert (forall ((p@@5 T@Field_26136_26206) (v_1@@4 T@FrameType) (q T@Field_26136_26206) (w@@4 T@FrameType) (r T@Field_88384_88385) (u T@FrameType) ) (!  (=> (and (InsidePredicate_55572_55572 p@@5 v_1@@4 q w@@4) (InsidePredicate_55572_88384 q w@@4 r u)) (InsidePredicate_55572_88384 p@@5 v_1@@4 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_55572 p@@5 v_1@@4 q w@@4) (InsidePredicate_55572_88384 q w@@4 r u))
)))
(assert (forall ((p@@6 T@Field_26136_26206) (v_1@@5 T@FrameType) (q@@0 T@Field_26136_26206) (w@@5 T@FrameType) (r@@0 T@Field_26136_26206) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_55572 p@@6 v_1@@5 q@@0 w@@5) (InsidePredicate_55572_55572 q@@0 w@@5 r@@0 u@@0)) (InsidePredicate_55572_55572 p@@6 v_1@@5 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_55572 p@@6 v_1@@5 q@@0 w@@5) (InsidePredicate_55572_55572 q@@0 w@@5 r@@0 u@@0))
)))
(assert (forall ((p@@7 T@Field_26136_26206) (v_1@@6 T@FrameType) (q@@1 T@Field_26136_26206) (w@@6 T@FrameType) (r@@1 T@Field_58995_58996) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_55572 p@@7 v_1@@6 q@@1 w@@6) (InsidePredicate_55572_26140 q@@1 w@@6 r@@1 u@@1)) (InsidePredicate_55572_26140 p@@7 v_1@@6 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_55572 p@@7 v_1@@6 q@@1 w@@6) (InsidePredicate_55572_26140 q@@1 w@@6 r@@1 u@@1))
)))
(assert (forall ((p@@8 T@Field_26136_26206) (v_1@@7 T@FrameType) (q@@2 T@Field_26136_26206) (w@@7 T@FrameType) (r@@2 T@Field_75522_75523) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_55572 p@@8 v_1@@7 q@@2 w@@7) (InsidePredicate_55572_26205 q@@2 w@@7 r@@2 u@@2)) (InsidePredicate_55572_26205 p@@8 v_1@@7 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_55572 p@@8 v_1@@7 q@@2 w@@7) (InsidePredicate_55572_26205 q@@2 w@@7 r@@2 u@@2))
)))
(assert (forall ((p@@9 T@Field_26136_26206) (v_1@@8 T@FrameType) (q@@3 T@Field_26136_26206) (w@@8 T@FrameType) (r@@3 T@Field_60499_60500) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_55572 p@@9 v_1@@8 q@@3 w@@8) (InsidePredicate_55572_26165 q@@3 w@@8 r@@3 u@@3)) (InsidePredicate_55572_26165 p@@9 v_1@@8 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_55572 p@@9 v_1@@8 q@@3 w@@8) (InsidePredicate_55572_26165 q@@3 w@@8 r@@3 u@@3))
)))
(assert (forall ((p@@10 T@Field_26136_26206) (v_1@@9 T@FrameType) (q@@4 T@Field_88384_88385) (w@@9 T@FrameType) (r@@4 T@Field_88384_88385) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_88384 p@@10 v_1@@9 q@@4 w@@9) (InsidePredicate_26245_88384 q@@4 w@@9 r@@4 u@@4)) (InsidePredicate_55572_88384 p@@10 v_1@@9 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_88384 p@@10 v_1@@9 q@@4 w@@9) (InsidePredicate_26245_88384 q@@4 w@@9 r@@4 u@@4))
)))
(assert (forall ((p@@11 T@Field_26136_26206) (v_1@@10 T@FrameType) (q@@5 T@Field_88384_88385) (w@@10 T@FrameType) (r@@5 T@Field_26136_26206) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_88384 p@@11 v_1@@10 q@@5 w@@10) (InsidePredicate_26245_55572 q@@5 w@@10 r@@5 u@@5)) (InsidePredicate_55572_55572 p@@11 v_1@@10 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_88384 p@@11 v_1@@10 q@@5 w@@10) (InsidePredicate_26245_55572 q@@5 w@@10 r@@5 u@@5))
)))
(assert (forall ((p@@12 T@Field_26136_26206) (v_1@@11 T@FrameType) (q@@6 T@Field_88384_88385) (w@@11 T@FrameType) (r@@6 T@Field_58995_58996) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_88384 p@@12 v_1@@11 q@@6 w@@11) (InsidePredicate_26245_26140 q@@6 w@@11 r@@6 u@@6)) (InsidePredicate_55572_26140 p@@12 v_1@@11 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_88384 p@@12 v_1@@11 q@@6 w@@11) (InsidePredicate_26245_26140 q@@6 w@@11 r@@6 u@@6))
)))
(assert (forall ((p@@13 T@Field_26136_26206) (v_1@@12 T@FrameType) (q@@7 T@Field_88384_88385) (w@@12 T@FrameType) (r@@7 T@Field_75522_75523) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_88384 p@@13 v_1@@12 q@@7 w@@12) (InsidePredicate_26245_26205 q@@7 w@@12 r@@7 u@@7)) (InsidePredicate_55572_26205 p@@13 v_1@@12 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_88384 p@@13 v_1@@12 q@@7 w@@12) (InsidePredicate_26245_26205 q@@7 w@@12 r@@7 u@@7))
)))
(assert (forall ((p@@14 T@Field_26136_26206) (v_1@@13 T@FrameType) (q@@8 T@Field_88384_88385) (w@@13 T@FrameType) (r@@8 T@Field_60499_60500) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_88384 p@@14 v_1@@13 q@@8 w@@13) (InsidePredicate_26245_26165 q@@8 w@@13 r@@8 u@@8)) (InsidePredicate_55572_26165 p@@14 v_1@@13 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_88384 p@@14 v_1@@13 q@@8 w@@13) (InsidePredicate_26245_26165 q@@8 w@@13 r@@8 u@@8))
)))
(assert (forall ((p@@15 T@Field_26136_26206) (v_1@@14 T@FrameType) (q@@9 T@Field_58995_58996) (w@@14 T@FrameType) (r@@9 T@Field_88384_88385) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_26140 p@@15 v_1@@14 q@@9 w@@14) (InsidePredicate_26140_88384 q@@9 w@@14 r@@9 u@@9)) (InsidePredicate_55572_88384 p@@15 v_1@@14 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_26140 p@@15 v_1@@14 q@@9 w@@14) (InsidePredicate_26140_88384 q@@9 w@@14 r@@9 u@@9))
)))
(assert (forall ((p@@16 T@Field_26136_26206) (v_1@@15 T@FrameType) (q@@10 T@Field_58995_58996) (w@@15 T@FrameType) (r@@10 T@Field_26136_26206) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_26140 p@@16 v_1@@15 q@@10 w@@15) (InsidePredicate_26140_55572 q@@10 w@@15 r@@10 u@@10)) (InsidePredicate_55572_55572 p@@16 v_1@@15 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_26140 p@@16 v_1@@15 q@@10 w@@15) (InsidePredicate_26140_55572 q@@10 w@@15 r@@10 u@@10))
)))
(assert (forall ((p@@17 T@Field_26136_26206) (v_1@@16 T@FrameType) (q@@11 T@Field_58995_58996) (w@@16 T@FrameType) (r@@11 T@Field_58995_58996) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_26140 p@@17 v_1@@16 q@@11 w@@16) (InsidePredicate_26140_26140 q@@11 w@@16 r@@11 u@@11)) (InsidePredicate_55572_26140 p@@17 v_1@@16 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_26140 p@@17 v_1@@16 q@@11 w@@16) (InsidePredicate_26140_26140 q@@11 w@@16 r@@11 u@@11))
)))
(assert (forall ((p@@18 T@Field_26136_26206) (v_1@@17 T@FrameType) (q@@12 T@Field_58995_58996) (w@@17 T@FrameType) (r@@12 T@Field_75522_75523) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_26140 p@@18 v_1@@17 q@@12 w@@17) (InsidePredicate_26140_26205 q@@12 w@@17 r@@12 u@@12)) (InsidePredicate_55572_26205 p@@18 v_1@@17 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_26140 p@@18 v_1@@17 q@@12 w@@17) (InsidePredicate_26140_26205 q@@12 w@@17 r@@12 u@@12))
)))
(assert (forall ((p@@19 T@Field_26136_26206) (v_1@@18 T@FrameType) (q@@13 T@Field_58995_58996) (w@@18 T@FrameType) (r@@13 T@Field_60499_60500) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_26140 p@@19 v_1@@18 q@@13 w@@18) (InsidePredicate_26140_26165 q@@13 w@@18 r@@13 u@@13)) (InsidePredicate_55572_26165 p@@19 v_1@@18 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_26140 p@@19 v_1@@18 q@@13 w@@18) (InsidePredicate_26140_26165 q@@13 w@@18 r@@13 u@@13))
)))
(assert (forall ((p@@20 T@Field_26136_26206) (v_1@@19 T@FrameType) (q@@14 T@Field_75522_75523) (w@@19 T@FrameType) (r@@14 T@Field_88384_88385) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_26205 p@@20 v_1@@19 q@@14 w@@19) (InsidePredicate_26205_88384 q@@14 w@@19 r@@14 u@@14)) (InsidePredicate_55572_88384 p@@20 v_1@@19 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_26205 p@@20 v_1@@19 q@@14 w@@19) (InsidePredicate_26205_88384 q@@14 w@@19 r@@14 u@@14))
)))
(assert (forall ((p@@21 T@Field_26136_26206) (v_1@@20 T@FrameType) (q@@15 T@Field_75522_75523) (w@@20 T@FrameType) (r@@15 T@Field_26136_26206) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_26205 p@@21 v_1@@20 q@@15 w@@20) (InsidePredicate_26205_55572 q@@15 w@@20 r@@15 u@@15)) (InsidePredicate_55572_55572 p@@21 v_1@@20 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_26205 p@@21 v_1@@20 q@@15 w@@20) (InsidePredicate_26205_55572 q@@15 w@@20 r@@15 u@@15))
)))
(assert (forall ((p@@22 T@Field_26136_26206) (v_1@@21 T@FrameType) (q@@16 T@Field_75522_75523) (w@@21 T@FrameType) (r@@16 T@Field_58995_58996) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_26205 p@@22 v_1@@21 q@@16 w@@21) (InsidePredicate_26205_26140 q@@16 w@@21 r@@16 u@@16)) (InsidePredicate_55572_26140 p@@22 v_1@@21 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_26205 p@@22 v_1@@21 q@@16 w@@21) (InsidePredicate_26205_26140 q@@16 w@@21 r@@16 u@@16))
)))
(assert (forall ((p@@23 T@Field_26136_26206) (v_1@@22 T@FrameType) (q@@17 T@Field_75522_75523) (w@@22 T@FrameType) (r@@17 T@Field_75522_75523) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_26205 p@@23 v_1@@22 q@@17 w@@22) (InsidePredicate_26205_26205 q@@17 w@@22 r@@17 u@@17)) (InsidePredicate_55572_26205 p@@23 v_1@@22 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_26205 p@@23 v_1@@22 q@@17 w@@22) (InsidePredicate_26205_26205 q@@17 w@@22 r@@17 u@@17))
)))
(assert (forall ((p@@24 T@Field_26136_26206) (v_1@@23 T@FrameType) (q@@18 T@Field_75522_75523) (w@@23 T@FrameType) (r@@18 T@Field_60499_60500) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_26205 p@@24 v_1@@23 q@@18 w@@23) (InsidePredicate_26205_26165 q@@18 w@@23 r@@18 u@@18)) (InsidePredicate_55572_26165 p@@24 v_1@@23 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_26205 p@@24 v_1@@23 q@@18 w@@23) (InsidePredicate_26205_26165 q@@18 w@@23 r@@18 u@@18))
)))
(assert (forall ((p@@25 T@Field_26136_26206) (v_1@@24 T@FrameType) (q@@19 T@Field_60499_60500) (w@@24 T@FrameType) (r@@19 T@Field_88384_88385) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_26165 p@@25 v_1@@24 q@@19 w@@24) (InsidePredicate_26165_88384 q@@19 w@@24 r@@19 u@@19)) (InsidePredicate_55572_88384 p@@25 v_1@@24 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_26165 p@@25 v_1@@24 q@@19 w@@24) (InsidePredicate_26165_88384 q@@19 w@@24 r@@19 u@@19))
)))
(assert (forall ((p@@26 T@Field_26136_26206) (v_1@@25 T@FrameType) (q@@20 T@Field_60499_60500) (w@@25 T@FrameType) (r@@20 T@Field_26136_26206) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_26165 p@@26 v_1@@25 q@@20 w@@25) (InsidePredicate_26165_55572 q@@20 w@@25 r@@20 u@@20)) (InsidePredicate_55572_55572 p@@26 v_1@@25 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_26165 p@@26 v_1@@25 q@@20 w@@25) (InsidePredicate_26165_55572 q@@20 w@@25 r@@20 u@@20))
)))
(assert (forall ((p@@27 T@Field_26136_26206) (v_1@@26 T@FrameType) (q@@21 T@Field_60499_60500) (w@@26 T@FrameType) (r@@21 T@Field_58995_58996) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_26165 p@@27 v_1@@26 q@@21 w@@26) (InsidePredicate_26165_26140 q@@21 w@@26 r@@21 u@@21)) (InsidePredicate_55572_26140 p@@27 v_1@@26 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_26165 p@@27 v_1@@26 q@@21 w@@26) (InsidePredicate_26165_26140 q@@21 w@@26 r@@21 u@@21))
)))
(assert (forall ((p@@28 T@Field_26136_26206) (v_1@@27 T@FrameType) (q@@22 T@Field_60499_60500) (w@@27 T@FrameType) (r@@22 T@Field_75522_75523) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_26165 p@@28 v_1@@27 q@@22 w@@27) (InsidePredicate_26165_26205 q@@22 w@@27 r@@22 u@@22)) (InsidePredicate_55572_26205 p@@28 v_1@@27 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_26165 p@@28 v_1@@27 q@@22 w@@27) (InsidePredicate_26165_26205 q@@22 w@@27 r@@22 u@@22))
)))
(assert (forall ((p@@29 T@Field_26136_26206) (v_1@@28 T@FrameType) (q@@23 T@Field_60499_60500) (w@@28 T@FrameType) (r@@23 T@Field_60499_60500) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_26165 p@@29 v_1@@28 q@@23 w@@28) (InsidePredicate_26165_26165 q@@23 w@@28 r@@23 u@@23)) (InsidePredicate_55572_26165 p@@29 v_1@@28 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_26165 p@@29 v_1@@28 q@@23 w@@28) (InsidePredicate_26165_26165 q@@23 w@@28 r@@23 u@@23))
)))
(assert (forall ((p@@30 T@Field_88384_88385) (v_1@@29 T@FrameType) (q@@24 T@Field_26136_26206) (w@@29 T@FrameType) (r@@24 T@Field_88384_88385) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_55572 p@@30 v_1@@29 q@@24 w@@29) (InsidePredicate_55572_88384 q@@24 w@@29 r@@24 u@@24)) (InsidePredicate_26245_88384 p@@30 v_1@@29 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_55572 p@@30 v_1@@29 q@@24 w@@29) (InsidePredicate_55572_88384 q@@24 w@@29 r@@24 u@@24))
)))
(assert (forall ((p@@31 T@Field_88384_88385) (v_1@@30 T@FrameType) (q@@25 T@Field_26136_26206) (w@@30 T@FrameType) (r@@25 T@Field_26136_26206) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_55572 p@@31 v_1@@30 q@@25 w@@30) (InsidePredicate_55572_55572 q@@25 w@@30 r@@25 u@@25)) (InsidePredicate_26245_55572 p@@31 v_1@@30 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_55572 p@@31 v_1@@30 q@@25 w@@30) (InsidePredicate_55572_55572 q@@25 w@@30 r@@25 u@@25))
)))
(assert (forall ((p@@32 T@Field_88384_88385) (v_1@@31 T@FrameType) (q@@26 T@Field_26136_26206) (w@@31 T@FrameType) (r@@26 T@Field_58995_58996) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_55572 p@@32 v_1@@31 q@@26 w@@31) (InsidePredicate_55572_26140 q@@26 w@@31 r@@26 u@@26)) (InsidePredicate_26245_26140 p@@32 v_1@@31 r@@26 u@@26))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_55572 p@@32 v_1@@31 q@@26 w@@31) (InsidePredicate_55572_26140 q@@26 w@@31 r@@26 u@@26))
)))
(assert (forall ((p@@33 T@Field_88384_88385) (v_1@@32 T@FrameType) (q@@27 T@Field_26136_26206) (w@@32 T@FrameType) (r@@27 T@Field_75522_75523) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_55572 p@@33 v_1@@32 q@@27 w@@32) (InsidePredicate_55572_26205 q@@27 w@@32 r@@27 u@@27)) (InsidePredicate_26245_26205 p@@33 v_1@@32 r@@27 u@@27))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_55572 p@@33 v_1@@32 q@@27 w@@32) (InsidePredicate_55572_26205 q@@27 w@@32 r@@27 u@@27))
)))
(assert (forall ((p@@34 T@Field_88384_88385) (v_1@@33 T@FrameType) (q@@28 T@Field_26136_26206) (w@@33 T@FrameType) (r@@28 T@Field_60499_60500) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_55572 p@@34 v_1@@33 q@@28 w@@33) (InsidePredicate_55572_26165 q@@28 w@@33 r@@28 u@@28)) (InsidePredicate_26245_26165 p@@34 v_1@@33 r@@28 u@@28))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_55572 p@@34 v_1@@33 q@@28 w@@33) (InsidePredicate_55572_26165 q@@28 w@@33 r@@28 u@@28))
)))
(assert (forall ((p@@35 T@Field_88384_88385) (v_1@@34 T@FrameType) (q@@29 T@Field_88384_88385) (w@@34 T@FrameType) (r@@29 T@Field_88384_88385) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_88384 p@@35 v_1@@34 q@@29 w@@34) (InsidePredicate_26245_88384 q@@29 w@@34 r@@29 u@@29)) (InsidePredicate_26245_88384 p@@35 v_1@@34 r@@29 u@@29))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_88384 p@@35 v_1@@34 q@@29 w@@34) (InsidePredicate_26245_88384 q@@29 w@@34 r@@29 u@@29))
)))
(assert (forall ((p@@36 T@Field_88384_88385) (v_1@@35 T@FrameType) (q@@30 T@Field_88384_88385) (w@@35 T@FrameType) (r@@30 T@Field_26136_26206) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_88384 p@@36 v_1@@35 q@@30 w@@35) (InsidePredicate_26245_55572 q@@30 w@@35 r@@30 u@@30)) (InsidePredicate_26245_55572 p@@36 v_1@@35 r@@30 u@@30))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_88384 p@@36 v_1@@35 q@@30 w@@35) (InsidePredicate_26245_55572 q@@30 w@@35 r@@30 u@@30))
)))
(assert (forall ((p@@37 T@Field_88384_88385) (v_1@@36 T@FrameType) (q@@31 T@Field_88384_88385) (w@@36 T@FrameType) (r@@31 T@Field_58995_58996) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_88384 p@@37 v_1@@36 q@@31 w@@36) (InsidePredicate_26245_26140 q@@31 w@@36 r@@31 u@@31)) (InsidePredicate_26245_26140 p@@37 v_1@@36 r@@31 u@@31))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_88384 p@@37 v_1@@36 q@@31 w@@36) (InsidePredicate_26245_26140 q@@31 w@@36 r@@31 u@@31))
)))
(assert (forall ((p@@38 T@Field_88384_88385) (v_1@@37 T@FrameType) (q@@32 T@Field_88384_88385) (w@@37 T@FrameType) (r@@32 T@Field_75522_75523) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_88384 p@@38 v_1@@37 q@@32 w@@37) (InsidePredicate_26245_26205 q@@32 w@@37 r@@32 u@@32)) (InsidePredicate_26245_26205 p@@38 v_1@@37 r@@32 u@@32))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_88384 p@@38 v_1@@37 q@@32 w@@37) (InsidePredicate_26245_26205 q@@32 w@@37 r@@32 u@@32))
)))
(assert (forall ((p@@39 T@Field_88384_88385) (v_1@@38 T@FrameType) (q@@33 T@Field_88384_88385) (w@@38 T@FrameType) (r@@33 T@Field_60499_60500) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_88384 p@@39 v_1@@38 q@@33 w@@38) (InsidePredicate_26245_26165 q@@33 w@@38 r@@33 u@@33)) (InsidePredicate_26245_26165 p@@39 v_1@@38 r@@33 u@@33))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_88384 p@@39 v_1@@38 q@@33 w@@38) (InsidePredicate_26245_26165 q@@33 w@@38 r@@33 u@@33))
)))
(assert (forall ((p@@40 T@Field_88384_88385) (v_1@@39 T@FrameType) (q@@34 T@Field_58995_58996) (w@@39 T@FrameType) (r@@34 T@Field_88384_88385) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_26140 p@@40 v_1@@39 q@@34 w@@39) (InsidePredicate_26140_88384 q@@34 w@@39 r@@34 u@@34)) (InsidePredicate_26245_88384 p@@40 v_1@@39 r@@34 u@@34))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_26140 p@@40 v_1@@39 q@@34 w@@39) (InsidePredicate_26140_88384 q@@34 w@@39 r@@34 u@@34))
)))
(assert (forall ((p@@41 T@Field_88384_88385) (v_1@@40 T@FrameType) (q@@35 T@Field_58995_58996) (w@@40 T@FrameType) (r@@35 T@Field_26136_26206) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_26140 p@@41 v_1@@40 q@@35 w@@40) (InsidePredicate_26140_55572 q@@35 w@@40 r@@35 u@@35)) (InsidePredicate_26245_55572 p@@41 v_1@@40 r@@35 u@@35))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_26140 p@@41 v_1@@40 q@@35 w@@40) (InsidePredicate_26140_55572 q@@35 w@@40 r@@35 u@@35))
)))
(assert (forall ((p@@42 T@Field_88384_88385) (v_1@@41 T@FrameType) (q@@36 T@Field_58995_58996) (w@@41 T@FrameType) (r@@36 T@Field_58995_58996) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_26140 p@@42 v_1@@41 q@@36 w@@41) (InsidePredicate_26140_26140 q@@36 w@@41 r@@36 u@@36)) (InsidePredicate_26245_26140 p@@42 v_1@@41 r@@36 u@@36))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_26140 p@@42 v_1@@41 q@@36 w@@41) (InsidePredicate_26140_26140 q@@36 w@@41 r@@36 u@@36))
)))
(assert (forall ((p@@43 T@Field_88384_88385) (v_1@@42 T@FrameType) (q@@37 T@Field_58995_58996) (w@@42 T@FrameType) (r@@37 T@Field_75522_75523) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_26140 p@@43 v_1@@42 q@@37 w@@42) (InsidePredicate_26140_26205 q@@37 w@@42 r@@37 u@@37)) (InsidePredicate_26245_26205 p@@43 v_1@@42 r@@37 u@@37))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_26140 p@@43 v_1@@42 q@@37 w@@42) (InsidePredicate_26140_26205 q@@37 w@@42 r@@37 u@@37))
)))
(assert (forall ((p@@44 T@Field_88384_88385) (v_1@@43 T@FrameType) (q@@38 T@Field_58995_58996) (w@@43 T@FrameType) (r@@38 T@Field_60499_60500) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_26140 p@@44 v_1@@43 q@@38 w@@43) (InsidePredicate_26140_26165 q@@38 w@@43 r@@38 u@@38)) (InsidePredicate_26245_26165 p@@44 v_1@@43 r@@38 u@@38))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_26140 p@@44 v_1@@43 q@@38 w@@43) (InsidePredicate_26140_26165 q@@38 w@@43 r@@38 u@@38))
)))
(assert (forall ((p@@45 T@Field_88384_88385) (v_1@@44 T@FrameType) (q@@39 T@Field_75522_75523) (w@@44 T@FrameType) (r@@39 T@Field_88384_88385) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_26205 p@@45 v_1@@44 q@@39 w@@44) (InsidePredicate_26205_88384 q@@39 w@@44 r@@39 u@@39)) (InsidePredicate_26245_88384 p@@45 v_1@@44 r@@39 u@@39))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_26205 p@@45 v_1@@44 q@@39 w@@44) (InsidePredicate_26205_88384 q@@39 w@@44 r@@39 u@@39))
)))
(assert (forall ((p@@46 T@Field_88384_88385) (v_1@@45 T@FrameType) (q@@40 T@Field_75522_75523) (w@@45 T@FrameType) (r@@40 T@Field_26136_26206) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_26205 p@@46 v_1@@45 q@@40 w@@45) (InsidePredicate_26205_55572 q@@40 w@@45 r@@40 u@@40)) (InsidePredicate_26245_55572 p@@46 v_1@@45 r@@40 u@@40))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_26205 p@@46 v_1@@45 q@@40 w@@45) (InsidePredicate_26205_55572 q@@40 w@@45 r@@40 u@@40))
)))
(assert (forall ((p@@47 T@Field_88384_88385) (v_1@@46 T@FrameType) (q@@41 T@Field_75522_75523) (w@@46 T@FrameType) (r@@41 T@Field_58995_58996) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_26205 p@@47 v_1@@46 q@@41 w@@46) (InsidePredicate_26205_26140 q@@41 w@@46 r@@41 u@@41)) (InsidePredicate_26245_26140 p@@47 v_1@@46 r@@41 u@@41))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_26205 p@@47 v_1@@46 q@@41 w@@46) (InsidePredicate_26205_26140 q@@41 w@@46 r@@41 u@@41))
)))
(assert (forall ((p@@48 T@Field_88384_88385) (v_1@@47 T@FrameType) (q@@42 T@Field_75522_75523) (w@@47 T@FrameType) (r@@42 T@Field_75522_75523) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_26205 p@@48 v_1@@47 q@@42 w@@47) (InsidePredicate_26205_26205 q@@42 w@@47 r@@42 u@@42)) (InsidePredicate_26245_26205 p@@48 v_1@@47 r@@42 u@@42))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_26205 p@@48 v_1@@47 q@@42 w@@47) (InsidePredicate_26205_26205 q@@42 w@@47 r@@42 u@@42))
)))
(assert (forall ((p@@49 T@Field_88384_88385) (v_1@@48 T@FrameType) (q@@43 T@Field_75522_75523) (w@@48 T@FrameType) (r@@43 T@Field_60499_60500) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_26205 p@@49 v_1@@48 q@@43 w@@48) (InsidePredicate_26205_26165 q@@43 w@@48 r@@43 u@@43)) (InsidePredicate_26245_26165 p@@49 v_1@@48 r@@43 u@@43))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_26205 p@@49 v_1@@48 q@@43 w@@48) (InsidePredicate_26205_26165 q@@43 w@@48 r@@43 u@@43))
)))
(assert (forall ((p@@50 T@Field_88384_88385) (v_1@@49 T@FrameType) (q@@44 T@Field_60499_60500) (w@@49 T@FrameType) (r@@44 T@Field_88384_88385) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_26165 p@@50 v_1@@49 q@@44 w@@49) (InsidePredicate_26165_88384 q@@44 w@@49 r@@44 u@@44)) (InsidePredicate_26245_88384 p@@50 v_1@@49 r@@44 u@@44))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_26165 p@@50 v_1@@49 q@@44 w@@49) (InsidePredicate_26165_88384 q@@44 w@@49 r@@44 u@@44))
)))
(assert (forall ((p@@51 T@Field_88384_88385) (v_1@@50 T@FrameType) (q@@45 T@Field_60499_60500) (w@@50 T@FrameType) (r@@45 T@Field_26136_26206) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_26165 p@@51 v_1@@50 q@@45 w@@50) (InsidePredicate_26165_55572 q@@45 w@@50 r@@45 u@@45)) (InsidePredicate_26245_55572 p@@51 v_1@@50 r@@45 u@@45))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_26165 p@@51 v_1@@50 q@@45 w@@50) (InsidePredicate_26165_55572 q@@45 w@@50 r@@45 u@@45))
)))
(assert (forall ((p@@52 T@Field_88384_88385) (v_1@@51 T@FrameType) (q@@46 T@Field_60499_60500) (w@@51 T@FrameType) (r@@46 T@Field_58995_58996) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_26165 p@@52 v_1@@51 q@@46 w@@51) (InsidePredicate_26165_26140 q@@46 w@@51 r@@46 u@@46)) (InsidePredicate_26245_26140 p@@52 v_1@@51 r@@46 u@@46))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_26165 p@@52 v_1@@51 q@@46 w@@51) (InsidePredicate_26165_26140 q@@46 w@@51 r@@46 u@@46))
)))
(assert (forall ((p@@53 T@Field_88384_88385) (v_1@@52 T@FrameType) (q@@47 T@Field_60499_60500) (w@@52 T@FrameType) (r@@47 T@Field_75522_75523) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_26165 p@@53 v_1@@52 q@@47 w@@52) (InsidePredicate_26165_26205 q@@47 w@@52 r@@47 u@@47)) (InsidePredicate_26245_26205 p@@53 v_1@@52 r@@47 u@@47))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_26165 p@@53 v_1@@52 q@@47 w@@52) (InsidePredicate_26165_26205 q@@47 w@@52 r@@47 u@@47))
)))
(assert (forall ((p@@54 T@Field_88384_88385) (v_1@@53 T@FrameType) (q@@48 T@Field_60499_60500) (w@@53 T@FrameType) (r@@48 T@Field_60499_60500) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_26165 p@@54 v_1@@53 q@@48 w@@53) (InsidePredicate_26165_26165 q@@48 w@@53 r@@48 u@@48)) (InsidePredicate_26245_26165 p@@54 v_1@@53 r@@48 u@@48))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_26165 p@@54 v_1@@53 q@@48 w@@53) (InsidePredicate_26165_26165 q@@48 w@@53 r@@48 u@@48))
)))
(assert (forall ((p@@55 T@Field_58995_58996) (v_1@@54 T@FrameType) (q@@49 T@Field_26136_26206) (w@@54 T@FrameType) (r@@49 T@Field_88384_88385) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_55572 p@@55 v_1@@54 q@@49 w@@54) (InsidePredicate_55572_88384 q@@49 w@@54 r@@49 u@@49)) (InsidePredicate_26140_88384 p@@55 v_1@@54 r@@49 u@@49))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_55572 p@@55 v_1@@54 q@@49 w@@54) (InsidePredicate_55572_88384 q@@49 w@@54 r@@49 u@@49))
)))
(assert (forall ((p@@56 T@Field_58995_58996) (v_1@@55 T@FrameType) (q@@50 T@Field_26136_26206) (w@@55 T@FrameType) (r@@50 T@Field_26136_26206) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_55572 p@@56 v_1@@55 q@@50 w@@55) (InsidePredicate_55572_55572 q@@50 w@@55 r@@50 u@@50)) (InsidePredicate_26140_55572 p@@56 v_1@@55 r@@50 u@@50))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_55572 p@@56 v_1@@55 q@@50 w@@55) (InsidePredicate_55572_55572 q@@50 w@@55 r@@50 u@@50))
)))
(assert (forall ((p@@57 T@Field_58995_58996) (v_1@@56 T@FrameType) (q@@51 T@Field_26136_26206) (w@@56 T@FrameType) (r@@51 T@Field_58995_58996) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_55572 p@@57 v_1@@56 q@@51 w@@56) (InsidePredicate_55572_26140 q@@51 w@@56 r@@51 u@@51)) (InsidePredicate_26140_26140 p@@57 v_1@@56 r@@51 u@@51))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_55572 p@@57 v_1@@56 q@@51 w@@56) (InsidePredicate_55572_26140 q@@51 w@@56 r@@51 u@@51))
)))
(assert (forall ((p@@58 T@Field_58995_58996) (v_1@@57 T@FrameType) (q@@52 T@Field_26136_26206) (w@@57 T@FrameType) (r@@52 T@Field_75522_75523) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_55572 p@@58 v_1@@57 q@@52 w@@57) (InsidePredicate_55572_26205 q@@52 w@@57 r@@52 u@@52)) (InsidePredicate_26140_26205 p@@58 v_1@@57 r@@52 u@@52))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_55572 p@@58 v_1@@57 q@@52 w@@57) (InsidePredicate_55572_26205 q@@52 w@@57 r@@52 u@@52))
)))
(assert (forall ((p@@59 T@Field_58995_58996) (v_1@@58 T@FrameType) (q@@53 T@Field_26136_26206) (w@@58 T@FrameType) (r@@53 T@Field_60499_60500) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_55572 p@@59 v_1@@58 q@@53 w@@58) (InsidePredicate_55572_26165 q@@53 w@@58 r@@53 u@@53)) (InsidePredicate_26140_26165 p@@59 v_1@@58 r@@53 u@@53))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_55572 p@@59 v_1@@58 q@@53 w@@58) (InsidePredicate_55572_26165 q@@53 w@@58 r@@53 u@@53))
)))
(assert (forall ((p@@60 T@Field_58995_58996) (v_1@@59 T@FrameType) (q@@54 T@Field_88384_88385) (w@@59 T@FrameType) (r@@54 T@Field_88384_88385) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_88384 p@@60 v_1@@59 q@@54 w@@59) (InsidePredicate_26245_88384 q@@54 w@@59 r@@54 u@@54)) (InsidePredicate_26140_88384 p@@60 v_1@@59 r@@54 u@@54))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_88384 p@@60 v_1@@59 q@@54 w@@59) (InsidePredicate_26245_88384 q@@54 w@@59 r@@54 u@@54))
)))
(assert (forall ((p@@61 T@Field_58995_58996) (v_1@@60 T@FrameType) (q@@55 T@Field_88384_88385) (w@@60 T@FrameType) (r@@55 T@Field_26136_26206) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_88384 p@@61 v_1@@60 q@@55 w@@60) (InsidePredicate_26245_55572 q@@55 w@@60 r@@55 u@@55)) (InsidePredicate_26140_55572 p@@61 v_1@@60 r@@55 u@@55))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_88384 p@@61 v_1@@60 q@@55 w@@60) (InsidePredicate_26245_55572 q@@55 w@@60 r@@55 u@@55))
)))
(assert (forall ((p@@62 T@Field_58995_58996) (v_1@@61 T@FrameType) (q@@56 T@Field_88384_88385) (w@@61 T@FrameType) (r@@56 T@Field_58995_58996) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_88384 p@@62 v_1@@61 q@@56 w@@61) (InsidePredicate_26245_26140 q@@56 w@@61 r@@56 u@@56)) (InsidePredicate_26140_26140 p@@62 v_1@@61 r@@56 u@@56))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_88384 p@@62 v_1@@61 q@@56 w@@61) (InsidePredicate_26245_26140 q@@56 w@@61 r@@56 u@@56))
)))
(assert (forall ((p@@63 T@Field_58995_58996) (v_1@@62 T@FrameType) (q@@57 T@Field_88384_88385) (w@@62 T@FrameType) (r@@57 T@Field_75522_75523) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_88384 p@@63 v_1@@62 q@@57 w@@62) (InsidePredicate_26245_26205 q@@57 w@@62 r@@57 u@@57)) (InsidePredicate_26140_26205 p@@63 v_1@@62 r@@57 u@@57))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_88384 p@@63 v_1@@62 q@@57 w@@62) (InsidePredicate_26245_26205 q@@57 w@@62 r@@57 u@@57))
)))
(assert (forall ((p@@64 T@Field_58995_58996) (v_1@@63 T@FrameType) (q@@58 T@Field_88384_88385) (w@@63 T@FrameType) (r@@58 T@Field_60499_60500) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_88384 p@@64 v_1@@63 q@@58 w@@63) (InsidePredicate_26245_26165 q@@58 w@@63 r@@58 u@@58)) (InsidePredicate_26140_26165 p@@64 v_1@@63 r@@58 u@@58))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_88384 p@@64 v_1@@63 q@@58 w@@63) (InsidePredicate_26245_26165 q@@58 w@@63 r@@58 u@@58))
)))
(assert (forall ((p@@65 T@Field_58995_58996) (v_1@@64 T@FrameType) (q@@59 T@Field_58995_58996) (w@@64 T@FrameType) (r@@59 T@Field_88384_88385) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_26140 p@@65 v_1@@64 q@@59 w@@64) (InsidePredicate_26140_88384 q@@59 w@@64 r@@59 u@@59)) (InsidePredicate_26140_88384 p@@65 v_1@@64 r@@59 u@@59))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_26140 p@@65 v_1@@64 q@@59 w@@64) (InsidePredicate_26140_88384 q@@59 w@@64 r@@59 u@@59))
)))
(assert (forall ((p@@66 T@Field_58995_58996) (v_1@@65 T@FrameType) (q@@60 T@Field_58995_58996) (w@@65 T@FrameType) (r@@60 T@Field_26136_26206) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_26140 p@@66 v_1@@65 q@@60 w@@65) (InsidePredicate_26140_55572 q@@60 w@@65 r@@60 u@@60)) (InsidePredicate_26140_55572 p@@66 v_1@@65 r@@60 u@@60))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_26140 p@@66 v_1@@65 q@@60 w@@65) (InsidePredicate_26140_55572 q@@60 w@@65 r@@60 u@@60))
)))
(assert (forall ((p@@67 T@Field_58995_58996) (v_1@@66 T@FrameType) (q@@61 T@Field_58995_58996) (w@@66 T@FrameType) (r@@61 T@Field_58995_58996) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_26140 p@@67 v_1@@66 q@@61 w@@66) (InsidePredicate_26140_26140 q@@61 w@@66 r@@61 u@@61)) (InsidePredicate_26140_26140 p@@67 v_1@@66 r@@61 u@@61))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_26140 p@@67 v_1@@66 q@@61 w@@66) (InsidePredicate_26140_26140 q@@61 w@@66 r@@61 u@@61))
)))
(assert (forall ((p@@68 T@Field_58995_58996) (v_1@@67 T@FrameType) (q@@62 T@Field_58995_58996) (w@@67 T@FrameType) (r@@62 T@Field_75522_75523) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_26140 p@@68 v_1@@67 q@@62 w@@67) (InsidePredicate_26140_26205 q@@62 w@@67 r@@62 u@@62)) (InsidePredicate_26140_26205 p@@68 v_1@@67 r@@62 u@@62))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_26140 p@@68 v_1@@67 q@@62 w@@67) (InsidePredicate_26140_26205 q@@62 w@@67 r@@62 u@@62))
)))
(assert (forall ((p@@69 T@Field_58995_58996) (v_1@@68 T@FrameType) (q@@63 T@Field_58995_58996) (w@@68 T@FrameType) (r@@63 T@Field_60499_60500) (u@@63 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_26140 p@@69 v_1@@68 q@@63 w@@68) (InsidePredicate_26140_26165 q@@63 w@@68 r@@63 u@@63)) (InsidePredicate_26140_26165 p@@69 v_1@@68 r@@63 u@@63))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_26140 p@@69 v_1@@68 q@@63 w@@68) (InsidePredicate_26140_26165 q@@63 w@@68 r@@63 u@@63))
)))
(assert (forall ((p@@70 T@Field_58995_58996) (v_1@@69 T@FrameType) (q@@64 T@Field_75522_75523) (w@@69 T@FrameType) (r@@64 T@Field_88384_88385) (u@@64 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_26205 p@@70 v_1@@69 q@@64 w@@69) (InsidePredicate_26205_88384 q@@64 w@@69 r@@64 u@@64)) (InsidePredicate_26140_88384 p@@70 v_1@@69 r@@64 u@@64))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_26205 p@@70 v_1@@69 q@@64 w@@69) (InsidePredicate_26205_88384 q@@64 w@@69 r@@64 u@@64))
)))
(assert (forall ((p@@71 T@Field_58995_58996) (v_1@@70 T@FrameType) (q@@65 T@Field_75522_75523) (w@@70 T@FrameType) (r@@65 T@Field_26136_26206) (u@@65 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_26205 p@@71 v_1@@70 q@@65 w@@70) (InsidePredicate_26205_55572 q@@65 w@@70 r@@65 u@@65)) (InsidePredicate_26140_55572 p@@71 v_1@@70 r@@65 u@@65))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_26205 p@@71 v_1@@70 q@@65 w@@70) (InsidePredicate_26205_55572 q@@65 w@@70 r@@65 u@@65))
)))
(assert (forall ((p@@72 T@Field_58995_58996) (v_1@@71 T@FrameType) (q@@66 T@Field_75522_75523) (w@@71 T@FrameType) (r@@66 T@Field_58995_58996) (u@@66 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_26205 p@@72 v_1@@71 q@@66 w@@71) (InsidePredicate_26205_26140 q@@66 w@@71 r@@66 u@@66)) (InsidePredicate_26140_26140 p@@72 v_1@@71 r@@66 u@@66))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_26205 p@@72 v_1@@71 q@@66 w@@71) (InsidePredicate_26205_26140 q@@66 w@@71 r@@66 u@@66))
)))
(assert (forall ((p@@73 T@Field_58995_58996) (v_1@@72 T@FrameType) (q@@67 T@Field_75522_75523) (w@@72 T@FrameType) (r@@67 T@Field_75522_75523) (u@@67 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_26205 p@@73 v_1@@72 q@@67 w@@72) (InsidePredicate_26205_26205 q@@67 w@@72 r@@67 u@@67)) (InsidePredicate_26140_26205 p@@73 v_1@@72 r@@67 u@@67))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_26205 p@@73 v_1@@72 q@@67 w@@72) (InsidePredicate_26205_26205 q@@67 w@@72 r@@67 u@@67))
)))
(assert (forall ((p@@74 T@Field_58995_58996) (v_1@@73 T@FrameType) (q@@68 T@Field_75522_75523) (w@@73 T@FrameType) (r@@68 T@Field_60499_60500) (u@@68 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_26205 p@@74 v_1@@73 q@@68 w@@73) (InsidePredicate_26205_26165 q@@68 w@@73 r@@68 u@@68)) (InsidePredicate_26140_26165 p@@74 v_1@@73 r@@68 u@@68))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_26205 p@@74 v_1@@73 q@@68 w@@73) (InsidePredicate_26205_26165 q@@68 w@@73 r@@68 u@@68))
)))
(assert (forall ((p@@75 T@Field_58995_58996) (v_1@@74 T@FrameType) (q@@69 T@Field_60499_60500) (w@@74 T@FrameType) (r@@69 T@Field_88384_88385) (u@@69 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_26165 p@@75 v_1@@74 q@@69 w@@74) (InsidePredicate_26165_88384 q@@69 w@@74 r@@69 u@@69)) (InsidePredicate_26140_88384 p@@75 v_1@@74 r@@69 u@@69))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_26165 p@@75 v_1@@74 q@@69 w@@74) (InsidePredicate_26165_88384 q@@69 w@@74 r@@69 u@@69))
)))
(assert (forall ((p@@76 T@Field_58995_58996) (v_1@@75 T@FrameType) (q@@70 T@Field_60499_60500) (w@@75 T@FrameType) (r@@70 T@Field_26136_26206) (u@@70 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_26165 p@@76 v_1@@75 q@@70 w@@75) (InsidePredicate_26165_55572 q@@70 w@@75 r@@70 u@@70)) (InsidePredicate_26140_55572 p@@76 v_1@@75 r@@70 u@@70))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_26165 p@@76 v_1@@75 q@@70 w@@75) (InsidePredicate_26165_55572 q@@70 w@@75 r@@70 u@@70))
)))
(assert (forall ((p@@77 T@Field_58995_58996) (v_1@@76 T@FrameType) (q@@71 T@Field_60499_60500) (w@@76 T@FrameType) (r@@71 T@Field_58995_58996) (u@@71 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_26165 p@@77 v_1@@76 q@@71 w@@76) (InsidePredicate_26165_26140 q@@71 w@@76 r@@71 u@@71)) (InsidePredicate_26140_26140 p@@77 v_1@@76 r@@71 u@@71))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_26165 p@@77 v_1@@76 q@@71 w@@76) (InsidePredicate_26165_26140 q@@71 w@@76 r@@71 u@@71))
)))
(assert (forall ((p@@78 T@Field_58995_58996) (v_1@@77 T@FrameType) (q@@72 T@Field_60499_60500) (w@@77 T@FrameType) (r@@72 T@Field_75522_75523) (u@@72 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_26165 p@@78 v_1@@77 q@@72 w@@77) (InsidePredicate_26165_26205 q@@72 w@@77 r@@72 u@@72)) (InsidePredicate_26140_26205 p@@78 v_1@@77 r@@72 u@@72))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_26165 p@@78 v_1@@77 q@@72 w@@77) (InsidePredicate_26165_26205 q@@72 w@@77 r@@72 u@@72))
)))
(assert (forall ((p@@79 T@Field_58995_58996) (v_1@@78 T@FrameType) (q@@73 T@Field_60499_60500) (w@@78 T@FrameType) (r@@73 T@Field_60499_60500) (u@@73 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_26165 p@@79 v_1@@78 q@@73 w@@78) (InsidePredicate_26165_26165 q@@73 w@@78 r@@73 u@@73)) (InsidePredicate_26140_26165 p@@79 v_1@@78 r@@73 u@@73))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_26165 p@@79 v_1@@78 q@@73 w@@78) (InsidePredicate_26165_26165 q@@73 w@@78 r@@73 u@@73))
)))
(assert (forall ((p@@80 T@Field_75522_75523) (v_1@@79 T@FrameType) (q@@74 T@Field_26136_26206) (w@@79 T@FrameType) (r@@74 T@Field_88384_88385) (u@@74 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_55572 p@@80 v_1@@79 q@@74 w@@79) (InsidePredicate_55572_88384 q@@74 w@@79 r@@74 u@@74)) (InsidePredicate_26205_88384 p@@80 v_1@@79 r@@74 u@@74))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_55572 p@@80 v_1@@79 q@@74 w@@79) (InsidePredicate_55572_88384 q@@74 w@@79 r@@74 u@@74))
)))
(assert (forall ((p@@81 T@Field_75522_75523) (v_1@@80 T@FrameType) (q@@75 T@Field_26136_26206) (w@@80 T@FrameType) (r@@75 T@Field_26136_26206) (u@@75 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_55572 p@@81 v_1@@80 q@@75 w@@80) (InsidePredicate_55572_55572 q@@75 w@@80 r@@75 u@@75)) (InsidePredicate_26205_55572 p@@81 v_1@@80 r@@75 u@@75))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_55572 p@@81 v_1@@80 q@@75 w@@80) (InsidePredicate_55572_55572 q@@75 w@@80 r@@75 u@@75))
)))
(assert (forall ((p@@82 T@Field_75522_75523) (v_1@@81 T@FrameType) (q@@76 T@Field_26136_26206) (w@@81 T@FrameType) (r@@76 T@Field_58995_58996) (u@@76 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_55572 p@@82 v_1@@81 q@@76 w@@81) (InsidePredicate_55572_26140 q@@76 w@@81 r@@76 u@@76)) (InsidePredicate_26205_26140 p@@82 v_1@@81 r@@76 u@@76))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_55572 p@@82 v_1@@81 q@@76 w@@81) (InsidePredicate_55572_26140 q@@76 w@@81 r@@76 u@@76))
)))
(assert (forall ((p@@83 T@Field_75522_75523) (v_1@@82 T@FrameType) (q@@77 T@Field_26136_26206) (w@@82 T@FrameType) (r@@77 T@Field_75522_75523) (u@@77 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_55572 p@@83 v_1@@82 q@@77 w@@82) (InsidePredicate_55572_26205 q@@77 w@@82 r@@77 u@@77)) (InsidePredicate_26205_26205 p@@83 v_1@@82 r@@77 u@@77))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_55572 p@@83 v_1@@82 q@@77 w@@82) (InsidePredicate_55572_26205 q@@77 w@@82 r@@77 u@@77))
)))
(assert (forall ((p@@84 T@Field_75522_75523) (v_1@@83 T@FrameType) (q@@78 T@Field_26136_26206) (w@@83 T@FrameType) (r@@78 T@Field_60499_60500) (u@@78 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_55572 p@@84 v_1@@83 q@@78 w@@83) (InsidePredicate_55572_26165 q@@78 w@@83 r@@78 u@@78)) (InsidePredicate_26205_26165 p@@84 v_1@@83 r@@78 u@@78))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_55572 p@@84 v_1@@83 q@@78 w@@83) (InsidePredicate_55572_26165 q@@78 w@@83 r@@78 u@@78))
)))
(assert (forall ((p@@85 T@Field_75522_75523) (v_1@@84 T@FrameType) (q@@79 T@Field_88384_88385) (w@@84 T@FrameType) (r@@79 T@Field_88384_88385) (u@@79 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_88384 p@@85 v_1@@84 q@@79 w@@84) (InsidePredicate_26245_88384 q@@79 w@@84 r@@79 u@@79)) (InsidePredicate_26205_88384 p@@85 v_1@@84 r@@79 u@@79))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_88384 p@@85 v_1@@84 q@@79 w@@84) (InsidePredicate_26245_88384 q@@79 w@@84 r@@79 u@@79))
)))
(assert (forall ((p@@86 T@Field_75522_75523) (v_1@@85 T@FrameType) (q@@80 T@Field_88384_88385) (w@@85 T@FrameType) (r@@80 T@Field_26136_26206) (u@@80 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_88384 p@@86 v_1@@85 q@@80 w@@85) (InsidePredicate_26245_55572 q@@80 w@@85 r@@80 u@@80)) (InsidePredicate_26205_55572 p@@86 v_1@@85 r@@80 u@@80))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_88384 p@@86 v_1@@85 q@@80 w@@85) (InsidePredicate_26245_55572 q@@80 w@@85 r@@80 u@@80))
)))
(assert (forall ((p@@87 T@Field_75522_75523) (v_1@@86 T@FrameType) (q@@81 T@Field_88384_88385) (w@@86 T@FrameType) (r@@81 T@Field_58995_58996) (u@@81 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_88384 p@@87 v_1@@86 q@@81 w@@86) (InsidePredicate_26245_26140 q@@81 w@@86 r@@81 u@@81)) (InsidePredicate_26205_26140 p@@87 v_1@@86 r@@81 u@@81))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_88384 p@@87 v_1@@86 q@@81 w@@86) (InsidePredicate_26245_26140 q@@81 w@@86 r@@81 u@@81))
)))
(assert (forall ((p@@88 T@Field_75522_75523) (v_1@@87 T@FrameType) (q@@82 T@Field_88384_88385) (w@@87 T@FrameType) (r@@82 T@Field_75522_75523) (u@@82 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_88384 p@@88 v_1@@87 q@@82 w@@87) (InsidePredicate_26245_26205 q@@82 w@@87 r@@82 u@@82)) (InsidePredicate_26205_26205 p@@88 v_1@@87 r@@82 u@@82))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_88384 p@@88 v_1@@87 q@@82 w@@87) (InsidePredicate_26245_26205 q@@82 w@@87 r@@82 u@@82))
)))
(assert (forall ((p@@89 T@Field_75522_75523) (v_1@@88 T@FrameType) (q@@83 T@Field_88384_88385) (w@@88 T@FrameType) (r@@83 T@Field_60499_60500) (u@@83 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_88384 p@@89 v_1@@88 q@@83 w@@88) (InsidePredicate_26245_26165 q@@83 w@@88 r@@83 u@@83)) (InsidePredicate_26205_26165 p@@89 v_1@@88 r@@83 u@@83))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_88384 p@@89 v_1@@88 q@@83 w@@88) (InsidePredicate_26245_26165 q@@83 w@@88 r@@83 u@@83))
)))
(assert (forall ((p@@90 T@Field_75522_75523) (v_1@@89 T@FrameType) (q@@84 T@Field_58995_58996) (w@@89 T@FrameType) (r@@84 T@Field_88384_88385) (u@@84 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_26140 p@@90 v_1@@89 q@@84 w@@89) (InsidePredicate_26140_88384 q@@84 w@@89 r@@84 u@@84)) (InsidePredicate_26205_88384 p@@90 v_1@@89 r@@84 u@@84))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_26140 p@@90 v_1@@89 q@@84 w@@89) (InsidePredicate_26140_88384 q@@84 w@@89 r@@84 u@@84))
)))
(assert (forall ((p@@91 T@Field_75522_75523) (v_1@@90 T@FrameType) (q@@85 T@Field_58995_58996) (w@@90 T@FrameType) (r@@85 T@Field_26136_26206) (u@@85 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_26140 p@@91 v_1@@90 q@@85 w@@90) (InsidePredicate_26140_55572 q@@85 w@@90 r@@85 u@@85)) (InsidePredicate_26205_55572 p@@91 v_1@@90 r@@85 u@@85))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_26140 p@@91 v_1@@90 q@@85 w@@90) (InsidePredicate_26140_55572 q@@85 w@@90 r@@85 u@@85))
)))
(assert (forall ((p@@92 T@Field_75522_75523) (v_1@@91 T@FrameType) (q@@86 T@Field_58995_58996) (w@@91 T@FrameType) (r@@86 T@Field_58995_58996) (u@@86 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_26140 p@@92 v_1@@91 q@@86 w@@91) (InsidePredicate_26140_26140 q@@86 w@@91 r@@86 u@@86)) (InsidePredicate_26205_26140 p@@92 v_1@@91 r@@86 u@@86))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_26140 p@@92 v_1@@91 q@@86 w@@91) (InsidePredicate_26140_26140 q@@86 w@@91 r@@86 u@@86))
)))
(assert (forall ((p@@93 T@Field_75522_75523) (v_1@@92 T@FrameType) (q@@87 T@Field_58995_58996) (w@@92 T@FrameType) (r@@87 T@Field_75522_75523) (u@@87 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_26140 p@@93 v_1@@92 q@@87 w@@92) (InsidePredicate_26140_26205 q@@87 w@@92 r@@87 u@@87)) (InsidePredicate_26205_26205 p@@93 v_1@@92 r@@87 u@@87))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_26140 p@@93 v_1@@92 q@@87 w@@92) (InsidePredicate_26140_26205 q@@87 w@@92 r@@87 u@@87))
)))
(assert (forall ((p@@94 T@Field_75522_75523) (v_1@@93 T@FrameType) (q@@88 T@Field_58995_58996) (w@@93 T@FrameType) (r@@88 T@Field_60499_60500) (u@@88 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_26140 p@@94 v_1@@93 q@@88 w@@93) (InsidePredicate_26140_26165 q@@88 w@@93 r@@88 u@@88)) (InsidePredicate_26205_26165 p@@94 v_1@@93 r@@88 u@@88))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_26140 p@@94 v_1@@93 q@@88 w@@93) (InsidePredicate_26140_26165 q@@88 w@@93 r@@88 u@@88))
)))
(assert (forall ((p@@95 T@Field_75522_75523) (v_1@@94 T@FrameType) (q@@89 T@Field_75522_75523) (w@@94 T@FrameType) (r@@89 T@Field_88384_88385) (u@@89 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_26205 p@@95 v_1@@94 q@@89 w@@94) (InsidePredicate_26205_88384 q@@89 w@@94 r@@89 u@@89)) (InsidePredicate_26205_88384 p@@95 v_1@@94 r@@89 u@@89))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_26205 p@@95 v_1@@94 q@@89 w@@94) (InsidePredicate_26205_88384 q@@89 w@@94 r@@89 u@@89))
)))
(assert (forall ((p@@96 T@Field_75522_75523) (v_1@@95 T@FrameType) (q@@90 T@Field_75522_75523) (w@@95 T@FrameType) (r@@90 T@Field_26136_26206) (u@@90 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_26205 p@@96 v_1@@95 q@@90 w@@95) (InsidePredicate_26205_55572 q@@90 w@@95 r@@90 u@@90)) (InsidePredicate_26205_55572 p@@96 v_1@@95 r@@90 u@@90))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_26205 p@@96 v_1@@95 q@@90 w@@95) (InsidePredicate_26205_55572 q@@90 w@@95 r@@90 u@@90))
)))
(assert (forall ((p@@97 T@Field_75522_75523) (v_1@@96 T@FrameType) (q@@91 T@Field_75522_75523) (w@@96 T@FrameType) (r@@91 T@Field_58995_58996) (u@@91 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_26205 p@@97 v_1@@96 q@@91 w@@96) (InsidePredicate_26205_26140 q@@91 w@@96 r@@91 u@@91)) (InsidePredicate_26205_26140 p@@97 v_1@@96 r@@91 u@@91))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_26205 p@@97 v_1@@96 q@@91 w@@96) (InsidePredicate_26205_26140 q@@91 w@@96 r@@91 u@@91))
)))
(assert (forall ((p@@98 T@Field_75522_75523) (v_1@@97 T@FrameType) (q@@92 T@Field_75522_75523) (w@@97 T@FrameType) (r@@92 T@Field_75522_75523) (u@@92 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_26205 p@@98 v_1@@97 q@@92 w@@97) (InsidePredicate_26205_26205 q@@92 w@@97 r@@92 u@@92)) (InsidePredicate_26205_26205 p@@98 v_1@@97 r@@92 u@@92))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_26205 p@@98 v_1@@97 q@@92 w@@97) (InsidePredicate_26205_26205 q@@92 w@@97 r@@92 u@@92))
)))
(assert (forall ((p@@99 T@Field_75522_75523) (v_1@@98 T@FrameType) (q@@93 T@Field_75522_75523) (w@@98 T@FrameType) (r@@93 T@Field_60499_60500) (u@@93 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_26205 p@@99 v_1@@98 q@@93 w@@98) (InsidePredicate_26205_26165 q@@93 w@@98 r@@93 u@@93)) (InsidePredicate_26205_26165 p@@99 v_1@@98 r@@93 u@@93))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_26205 p@@99 v_1@@98 q@@93 w@@98) (InsidePredicate_26205_26165 q@@93 w@@98 r@@93 u@@93))
)))
(assert (forall ((p@@100 T@Field_75522_75523) (v_1@@99 T@FrameType) (q@@94 T@Field_60499_60500) (w@@99 T@FrameType) (r@@94 T@Field_88384_88385) (u@@94 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_26165 p@@100 v_1@@99 q@@94 w@@99) (InsidePredicate_26165_88384 q@@94 w@@99 r@@94 u@@94)) (InsidePredicate_26205_88384 p@@100 v_1@@99 r@@94 u@@94))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_26165 p@@100 v_1@@99 q@@94 w@@99) (InsidePredicate_26165_88384 q@@94 w@@99 r@@94 u@@94))
)))
(assert (forall ((p@@101 T@Field_75522_75523) (v_1@@100 T@FrameType) (q@@95 T@Field_60499_60500) (w@@100 T@FrameType) (r@@95 T@Field_26136_26206) (u@@95 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_26165 p@@101 v_1@@100 q@@95 w@@100) (InsidePredicate_26165_55572 q@@95 w@@100 r@@95 u@@95)) (InsidePredicate_26205_55572 p@@101 v_1@@100 r@@95 u@@95))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_26165 p@@101 v_1@@100 q@@95 w@@100) (InsidePredicate_26165_55572 q@@95 w@@100 r@@95 u@@95))
)))
(assert (forall ((p@@102 T@Field_75522_75523) (v_1@@101 T@FrameType) (q@@96 T@Field_60499_60500) (w@@101 T@FrameType) (r@@96 T@Field_58995_58996) (u@@96 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_26165 p@@102 v_1@@101 q@@96 w@@101) (InsidePredicate_26165_26140 q@@96 w@@101 r@@96 u@@96)) (InsidePredicate_26205_26140 p@@102 v_1@@101 r@@96 u@@96))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_26165 p@@102 v_1@@101 q@@96 w@@101) (InsidePredicate_26165_26140 q@@96 w@@101 r@@96 u@@96))
)))
(assert (forall ((p@@103 T@Field_75522_75523) (v_1@@102 T@FrameType) (q@@97 T@Field_60499_60500) (w@@102 T@FrameType) (r@@97 T@Field_75522_75523) (u@@97 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_26165 p@@103 v_1@@102 q@@97 w@@102) (InsidePredicate_26165_26205 q@@97 w@@102 r@@97 u@@97)) (InsidePredicate_26205_26205 p@@103 v_1@@102 r@@97 u@@97))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_26165 p@@103 v_1@@102 q@@97 w@@102) (InsidePredicate_26165_26205 q@@97 w@@102 r@@97 u@@97))
)))
(assert (forall ((p@@104 T@Field_75522_75523) (v_1@@103 T@FrameType) (q@@98 T@Field_60499_60500) (w@@103 T@FrameType) (r@@98 T@Field_60499_60500) (u@@98 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_26165 p@@104 v_1@@103 q@@98 w@@103) (InsidePredicate_26165_26165 q@@98 w@@103 r@@98 u@@98)) (InsidePredicate_26205_26165 p@@104 v_1@@103 r@@98 u@@98))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_26165 p@@104 v_1@@103 q@@98 w@@103) (InsidePredicate_26165_26165 q@@98 w@@103 r@@98 u@@98))
)))
(assert (forall ((p@@105 T@Field_60499_60500) (v_1@@104 T@FrameType) (q@@99 T@Field_26136_26206) (w@@104 T@FrameType) (r@@99 T@Field_88384_88385) (u@@99 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_55572 p@@105 v_1@@104 q@@99 w@@104) (InsidePredicate_55572_88384 q@@99 w@@104 r@@99 u@@99)) (InsidePredicate_26165_88384 p@@105 v_1@@104 r@@99 u@@99))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_55572 p@@105 v_1@@104 q@@99 w@@104) (InsidePredicate_55572_88384 q@@99 w@@104 r@@99 u@@99))
)))
(assert (forall ((p@@106 T@Field_60499_60500) (v_1@@105 T@FrameType) (q@@100 T@Field_26136_26206) (w@@105 T@FrameType) (r@@100 T@Field_26136_26206) (u@@100 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_55572 p@@106 v_1@@105 q@@100 w@@105) (InsidePredicate_55572_55572 q@@100 w@@105 r@@100 u@@100)) (InsidePredicate_26165_55572 p@@106 v_1@@105 r@@100 u@@100))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_55572 p@@106 v_1@@105 q@@100 w@@105) (InsidePredicate_55572_55572 q@@100 w@@105 r@@100 u@@100))
)))
(assert (forall ((p@@107 T@Field_60499_60500) (v_1@@106 T@FrameType) (q@@101 T@Field_26136_26206) (w@@106 T@FrameType) (r@@101 T@Field_58995_58996) (u@@101 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_55572 p@@107 v_1@@106 q@@101 w@@106) (InsidePredicate_55572_26140 q@@101 w@@106 r@@101 u@@101)) (InsidePredicate_26165_26140 p@@107 v_1@@106 r@@101 u@@101))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_55572 p@@107 v_1@@106 q@@101 w@@106) (InsidePredicate_55572_26140 q@@101 w@@106 r@@101 u@@101))
)))
(assert (forall ((p@@108 T@Field_60499_60500) (v_1@@107 T@FrameType) (q@@102 T@Field_26136_26206) (w@@107 T@FrameType) (r@@102 T@Field_75522_75523) (u@@102 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_55572 p@@108 v_1@@107 q@@102 w@@107) (InsidePredicate_55572_26205 q@@102 w@@107 r@@102 u@@102)) (InsidePredicate_26165_26205 p@@108 v_1@@107 r@@102 u@@102))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_55572 p@@108 v_1@@107 q@@102 w@@107) (InsidePredicate_55572_26205 q@@102 w@@107 r@@102 u@@102))
)))
(assert (forall ((p@@109 T@Field_60499_60500) (v_1@@108 T@FrameType) (q@@103 T@Field_26136_26206) (w@@108 T@FrameType) (r@@103 T@Field_60499_60500) (u@@103 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_55572 p@@109 v_1@@108 q@@103 w@@108) (InsidePredicate_55572_26165 q@@103 w@@108 r@@103 u@@103)) (InsidePredicate_26165_26165 p@@109 v_1@@108 r@@103 u@@103))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_55572 p@@109 v_1@@108 q@@103 w@@108) (InsidePredicate_55572_26165 q@@103 w@@108 r@@103 u@@103))
)))
(assert (forall ((p@@110 T@Field_60499_60500) (v_1@@109 T@FrameType) (q@@104 T@Field_88384_88385) (w@@109 T@FrameType) (r@@104 T@Field_88384_88385) (u@@104 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_88384 p@@110 v_1@@109 q@@104 w@@109) (InsidePredicate_26245_88384 q@@104 w@@109 r@@104 u@@104)) (InsidePredicate_26165_88384 p@@110 v_1@@109 r@@104 u@@104))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_88384 p@@110 v_1@@109 q@@104 w@@109) (InsidePredicate_26245_88384 q@@104 w@@109 r@@104 u@@104))
)))
(assert (forall ((p@@111 T@Field_60499_60500) (v_1@@110 T@FrameType) (q@@105 T@Field_88384_88385) (w@@110 T@FrameType) (r@@105 T@Field_26136_26206) (u@@105 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_88384 p@@111 v_1@@110 q@@105 w@@110) (InsidePredicate_26245_55572 q@@105 w@@110 r@@105 u@@105)) (InsidePredicate_26165_55572 p@@111 v_1@@110 r@@105 u@@105))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_88384 p@@111 v_1@@110 q@@105 w@@110) (InsidePredicate_26245_55572 q@@105 w@@110 r@@105 u@@105))
)))
(assert (forall ((p@@112 T@Field_60499_60500) (v_1@@111 T@FrameType) (q@@106 T@Field_88384_88385) (w@@111 T@FrameType) (r@@106 T@Field_58995_58996) (u@@106 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_88384 p@@112 v_1@@111 q@@106 w@@111) (InsidePredicate_26245_26140 q@@106 w@@111 r@@106 u@@106)) (InsidePredicate_26165_26140 p@@112 v_1@@111 r@@106 u@@106))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_88384 p@@112 v_1@@111 q@@106 w@@111) (InsidePredicate_26245_26140 q@@106 w@@111 r@@106 u@@106))
)))
(assert (forall ((p@@113 T@Field_60499_60500) (v_1@@112 T@FrameType) (q@@107 T@Field_88384_88385) (w@@112 T@FrameType) (r@@107 T@Field_75522_75523) (u@@107 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_88384 p@@113 v_1@@112 q@@107 w@@112) (InsidePredicate_26245_26205 q@@107 w@@112 r@@107 u@@107)) (InsidePredicate_26165_26205 p@@113 v_1@@112 r@@107 u@@107))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_88384 p@@113 v_1@@112 q@@107 w@@112) (InsidePredicate_26245_26205 q@@107 w@@112 r@@107 u@@107))
)))
(assert (forall ((p@@114 T@Field_60499_60500) (v_1@@113 T@FrameType) (q@@108 T@Field_88384_88385) (w@@113 T@FrameType) (r@@108 T@Field_60499_60500) (u@@108 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_88384 p@@114 v_1@@113 q@@108 w@@113) (InsidePredicate_26245_26165 q@@108 w@@113 r@@108 u@@108)) (InsidePredicate_26165_26165 p@@114 v_1@@113 r@@108 u@@108))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_88384 p@@114 v_1@@113 q@@108 w@@113) (InsidePredicate_26245_26165 q@@108 w@@113 r@@108 u@@108))
)))
(assert (forall ((p@@115 T@Field_60499_60500) (v_1@@114 T@FrameType) (q@@109 T@Field_58995_58996) (w@@114 T@FrameType) (r@@109 T@Field_88384_88385) (u@@109 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_26140 p@@115 v_1@@114 q@@109 w@@114) (InsidePredicate_26140_88384 q@@109 w@@114 r@@109 u@@109)) (InsidePredicate_26165_88384 p@@115 v_1@@114 r@@109 u@@109))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_26140 p@@115 v_1@@114 q@@109 w@@114) (InsidePredicate_26140_88384 q@@109 w@@114 r@@109 u@@109))
)))
(assert (forall ((p@@116 T@Field_60499_60500) (v_1@@115 T@FrameType) (q@@110 T@Field_58995_58996) (w@@115 T@FrameType) (r@@110 T@Field_26136_26206) (u@@110 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_26140 p@@116 v_1@@115 q@@110 w@@115) (InsidePredicate_26140_55572 q@@110 w@@115 r@@110 u@@110)) (InsidePredicate_26165_55572 p@@116 v_1@@115 r@@110 u@@110))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_26140 p@@116 v_1@@115 q@@110 w@@115) (InsidePredicate_26140_55572 q@@110 w@@115 r@@110 u@@110))
)))
(assert (forall ((p@@117 T@Field_60499_60500) (v_1@@116 T@FrameType) (q@@111 T@Field_58995_58996) (w@@116 T@FrameType) (r@@111 T@Field_58995_58996) (u@@111 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_26140 p@@117 v_1@@116 q@@111 w@@116) (InsidePredicate_26140_26140 q@@111 w@@116 r@@111 u@@111)) (InsidePredicate_26165_26140 p@@117 v_1@@116 r@@111 u@@111))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_26140 p@@117 v_1@@116 q@@111 w@@116) (InsidePredicate_26140_26140 q@@111 w@@116 r@@111 u@@111))
)))
(assert (forall ((p@@118 T@Field_60499_60500) (v_1@@117 T@FrameType) (q@@112 T@Field_58995_58996) (w@@117 T@FrameType) (r@@112 T@Field_75522_75523) (u@@112 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_26140 p@@118 v_1@@117 q@@112 w@@117) (InsidePredicate_26140_26205 q@@112 w@@117 r@@112 u@@112)) (InsidePredicate_26165_26205 p@@118 v_1@@117 r@@112 u@@112))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_26140 p@@118 v_1@@117 q@@112 w@@117) (InsidePredicate_26140_26205 q@@112 w@@117 r@@112 u@@112))
)))
(assert (forall ((p@@119 T@Field_60499_60500) (v_1@@118 T@FrameType) (q@@113 T@Field_58995_58996) (w@@118 T@FrameType) (r@@113 T@Field_60499_60500) (u@@113 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_26140 p@@119 v_1@@118 q@@113 w@@118) (InsidePredicate_26140_26165 q@@113 w@@118 r@@113 u@@113)) (InsidePredicate_26165_26165 p@@119 v_1@@118 r@@113 u@@113))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_26140 p@@119 v_1@@118 q@@113 w@@118) (InsidePredicate_26140_26165 q@@113 w@@118 r@@113 u@@113))
)))
(assert (forall ((p@@120 T@Field_60499_60500) (v_1@@119 T@FrameType) (q@@114 T@Field_75522_75523) (w@@119 T@FrameType) (r@@114 T@Field_88384_88385) (u@@114 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_26205 p@@120 v_1@@119 q@@114 w@@119) (InsidePredicate_26205_88384 q@@114 w@@119 r@@114 u@@114)) (InsidePredicate_26165_88384 p@@120 v_1@@119 r@@114 u@@114))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_26205 p@@120 v_1@@119 q@@114 w@@119) (InsidePredicate_26205_88384 q@@114 w@@119 r@@114 u@@114))
)))
(assert (forall ((p@@121 T@Field_60499_60500) (v_1@@120 T@FrameType) (q@@115 T@Field_75522_75523) (w@@120 T@FrameType) (r@@115 T@Field_26136_26206) (u@@115 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_26205 p@@121 v_1@@120 q@@115 w@@120) (InsidePredicate_26205_55572 q@@115 w@@120 r@@115 u@@115)) (InsidePredicate_26165_55572 p@@121 v_1@@120 r@@115 u@@115))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_26205 p@@121 v_1@@120 q@@115 w@@120) (InsidePredicate_26205_55572 q@@115 w@@120 r@@115 u@@115))
)))
(assert (forall ((p@@122 T@Field_60499_60500) (v_1@@121 T@FrameType) (q@@116 T@Field_75522_75523) (w@@121 T@FrameType) (r@@116 T@Field_58995_58996) (u@@116 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_26205 p@@122 v_1@@121 q@@116 w@@121) (InsidePredicate_26205_26140 q@@116 w@@121 r@@116 u@@116)) (InsidePredicate_26165_26140 p@@122 v_1@@121 r@@116 u@@116))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_26205 p@@122 v_1@@121 q@@116 w@@121) (InsidePredicate_26205_26140 q@@116 w@@121 r@@116 u@@116))
)))
(assert (forall ((p@@123 T@Field_60499_60500) (v_1@@122 T@FrameType) (q@@117 T@Field_75522_75523) (w@@122 T@FrameType) (r@@117 T@Field_75522_75523) (u@@117 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_26205 p@@123 v_1@@122 q@@117 w@@122) (InsidePredicate_26205_26205 q@@117 w@@122 r@@117 u@@117)) (InsidePredicate_26165_26205 p@@123 v_1@@122 r@@117 u@@117))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_26205 p@@123 v_1@@122 q@@117 w@@122) (InsidePredicate_26205_26205 q@@117 w@@122 r@@117 u@@117))
)))
(assert (forall ((p@@124 T@Field_60499_60500) (v_1@@123 T@FrameType) (q@@118 T@Field_75522_75523) (w@@123 T@FrameType) (r@@118 T@Field_60499_60500) (u@@118 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_26205 p@@124 v_1@@123 q@@118 w@@123) (InsidePredicate_26205_26165 q@@118 w@@123 r@@118 u@@118)) (InsidePredicate_26165_26165 p@@124 v_1@@123 r@@118 u@@118))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_26205 p@@124 v_1@@123 q@@118 w@@123) (InsidePredicate_26205_26165 q@@118 w@@123 r@@118 u@@118))
)))
(assert (forall ((p@@125 T@Field_60499_60500) (v_1@@124 T@FrameType) (q@@119 T@Field_60499_60500) (w@@124 T@FrameType) (r@@119 T@Field_88384_88385) (u@@119 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_26165 p@@125 v_1@@124 q@@119 w@@124) (InsidePredicate_26165_88384 q@@119 w@@124 r@@119 u@@119)) (InsidePredicate_26165_88384 p@@125 v_1@@124 r@@119 u@@119))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_26165 p@@125 v_1@@124 q@@119 w@@124) (InsidePredicate_26165_88384 q@@119 w@@124 r@@119 u@@119))
)))
(assert (forall ((p@@126 T@Field_60499_60500) (v_1@@125 T@FrameType) (q@@120 T@Field_60499_60500) (w@@125 T@FrameType) (r@@120 T@Field_26136_26206) (u@@120 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_26165 p@@126 v_1@@125 q@@120 w@@125) (InsidePredicate_26165_55572 q@@120 w@@125 r@@120 u@@120)) (InsidePredicate_26165_55572 p@@126 v_1@@125 r@@120 u@@120))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_26165 p@@126 v_1@@125 q@@120 w@@125) (InsidePredicate_26165_55572 q@@120 w@@125 r@@120 u@@120))
)))
(assert (forall ((p@@127 T@Field_60499_60500) (v_1@@126 T@FrameType) (q@@121 T@Field_60499_60500) (w@@126 T@FrameType) (r@@121 T@Field_58995_58996) (u@@121 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_26165 p@@127 v_1@@126 q@@121 w@@126) (InsidePredicate_26165_26140 q@@121 w@@126 r@@121 u@@121)) (InsidePredicate_26165_26140 p@@127 v_1@@126 r@@121 u@@121))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_26165 p@@127 v_1@@126 q@@121 w@@126) (InsidePredicate_26165_26140 q@@121 w@@126 r@@121 u@@121))
)))
(assert (forall ((p@@128 T@Field_60499_60500) (v_1@@127 T@FrameType) (q@@122 T@Field_60499_60500) (w@@127 T@FrameType) (r@@122 T@Field_75522_75523) (u@@122 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_26165 p@@128 v_1@@127 q@@122 w@@127) (InsidePredicate_26165_26205 q@@122 w@@127 r@@122 u@@122)) (InsidePredicate_26165_26205 p@@128 v_1@@127 r@@122 u@@122))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_26165 p@@128 v_1@@127 q@@122 w@@127) (InsidePredicate_26165_26205 q@@122 w@@127 r@@122 u@@122))
)))
(assert (forall ((p@@129 T@Field_60499_60500) (v_1@@128 T@FrameType) (q@@123 T@Field_60499_60500) (w@@128 T@FrameType) (r@@123 T@Field_60499_60500) (u@@123 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_26165 p@@129 v_1@@128 q@@123 w@@128) (InsidePredicate_26165_26165 q@@123 w@@128 r@@123 u@@123)) (InsidePredicate_26165_26165 p@@129 v_1@@128 r@@123 u@@123))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_26165 p@@129 v_1@@128 q@@123 w@@128) (InsidePredicate_26165_26165 q@@123 w@@128 r@@123 u@@123))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_55512) (ExhaleHeap@@36 T@PolymorphicMapType_55512) (Mask@@87 T@PolymorphicMapType_55533) (pm_f_55@@9 T@Field_88384_88385) ) (!  (=> (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@36 Mask@@87) (=> (and (HasDirectPerm_88384_26206 Mask@@87 null pm_f_55@@9) (IsPredicateField_26245_26246 pm_f_55@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_55 T@Ref) (f_203@@24 T@Field_58898_1186) ) (!  (=> (select (|PolymorphicMapType_56061_26134_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55 f_203@@24) (= (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@67) o2_55 f_203@@24) (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55 f_203@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55 f_203@@24))
)) (forall ((o2_55@@0 T@Ref) (f_203@@25 T@Field_55585_55586) ) (!  (=> (select (|PolymorphicMapType_56061_26136_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@0 f_203@@25) (= (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@67) o2_55@@0 f_203@@25) (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@0 f_203@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@0 f_203@@25))
))) (forall ((o2_55@@1 T@Ref) (f_203@@26 T@Field_55572_53) ) (!  (=> (select (|PolymorphicMapType_56061_26134_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@1 f_203@@26) (= (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@67) o2_55@@1 f_203@@26) (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@1 f_203@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@1 f_203@@26))
))) (forall ((o2_55@@2 T@Ref) (f_203@@27 T@Field_26136_26206) ) (!  (=> (select (|PolymorphicMapType_56061_26134_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@2 f_203@@27) (= (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@67) o2_55@@2 f_203@@27) (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@2 f_203@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@2 f_203@@27))
))) (forall ((o2_55@@3 T@Ref) (f_203@@28 T@Field_26136_59013) ) (!  (=> (select (|PolymorphicMapType_56061_26134_233471#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@3 f_203@@28) (= (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@67) o2_55@@3 f_203@@28) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@3 f_203@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@3 f_203@@28))
))) (forall ((o2_55@@4 T@Ref) (f_203@@29 T@Field_26140_1186) ) (!  (=> (select (|PolymorphicMapType_56061_58995_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@4 f_203@@29) (= (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@67) o2_55@@4 f_203@@29) (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@4 f_203@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@4 f_203@@29))
))) (forall ((o2_55@@5 T@Ref) (f_203@@30 T@Field_26140_26137) ) (!  (=> (select (|PolymorphicMapType_56061_58995_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@5 f_203@@30) (= (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@67) o2_55@@5 f_203@@30) (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@5 f_203@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@5 f_203@@30))
))) (forall ((o2_55@@6 T@Ref) (f_203@@31 T@Field_26140_53) ) (!  (=> (select (|PolymorphicMapType_56061_58995_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@6 f_203@@31) (= (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@67) o2_55@@6 f_203@@31) (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@6 f_203@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@6 f_203@@31))
))) (forall ((o2_55@@7 T@Ref) (f_203@@32 T@Field_58995_58996) ) (!  (=> (select (|PolymorphicMapType_56061_58995_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@7 f_203@@32) (= (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@67) o2_55@@7 f_203@@32) (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@7 f_203@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@7 f_203@@32))
))) (forall ((o2_55@@8 T@Ref) (f_203@@33 T@Field_59008_59013) ) (!  (=> (select (|PolymorphicMapType_56061_58995_234519#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@8 f_203@@33) (= (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@67) o2_55@@8 f_203@@33) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@8 f_203@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@8 f_203@@33))
))) (forall ((o2_55@@9 T@Ref) (f_203@@34 T@Field_60499_1186) ) (!  (=> (select (|PolymorphicMapType_56061_60499_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@9 f_203@@34) (= (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@67) o2_55@@9 f_203@@34) (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@9 f_203@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@9 f_203@@34))
))) (forall ((o2_55@@10 T@Ref) (f_203@@35 T@Field_60499_26137) ) (!  (=> (select (|PolymorphicMapType_56061_60499_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@10 f_203@@35) (= (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@67) o2_55@@10 f_203@@35) (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@10 f_203@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@10 f_203@@35))
))) (forall ((o2_55@@11 T@Ref) (f_203@@36 T@Field_60499_53) ) (!  (=> (select (|PolymorphicMapType_56061_60499_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@11 f_203@@36) (= (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@67) o2_55@@11 f_203@@36) (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@11 f_203@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@11 f_203@@36))
))) (forall ((o2_55@@12 T@Ref) (f_203@@37 T@Field_60499_60500) ) (!  (=> (select (|PolymorphicMapType_56061_60499_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@12 f_203@@37) (= (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@67) o2_55@@12 f_203@@37) (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@12 f_203@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@12 f_203@@37))
))) (forall ((o2_55@@13 T@Ref) (f_203@@38 T@Field_60512_60517) ) (!  (=> (select (|PolymorphicMapType_56061_60499_235567#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@13 f_203@@38) (= (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@67) o2_55@@13 f_203@@38) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@13 f_203@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@13 f_203@@38))
))) (forall ((o2_55@@14 T@Ref) (f_203@@39 T@Field_26205_1186) ) (!  (=> (select (|PolymorphicMapType_56061_75522_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@14 f_203@@39) (= (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@67) o2_55@@14 f_203@@39) (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@14 f_203@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@14 f_203@@39))
))) (forall ((o2_55@@15 T@Ref) (f_203@@40 T@Field_26205_26137) ) (!  (=> (select (|PolymorphicMapType_56061_75522_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@15 f_203@@40) (= (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@67) o2_55@@15 f_203@@40) (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@15 f_203@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@15 f_203@@40))
))) (forall ((o2_55@@16 T@Ref) (f_203@@41 T@Field_26205_53) ) (!  (=> (select (|PolymorphicMapType_56061_75522_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@16 f_203@@41) (= (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@67) o2_55@@16 f_203@@41) (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@16 f_203@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@16 f_203@@41))
))) (forall ((o2_55@@17 T@Ref) (f_203@@42 T@Field_75522_75523) ) (!  (=> (select (|PolymorphicMapType_56061_75522_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@17 f_203@@42) (= (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@67) o2_55@@17 f_203@@42) (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@17 f_203@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@17 f_203@@42))
))) (forall ((o2_55@@18 T@Ref) (f_203@@43 T@Field_75535_75540) ) (!  (=> (select (|PolymorphicMapType_56061_75522_236615#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@18 f_203@@43) (= (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@67) o2_55@@18 f_203@@43) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@18 f_203@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@18 f_203@@43))
))) (forall ((o2_55@@19 T@Ref) (f_203@@44 T@Field_88384_1186) ) (!  (=> (select (|PolymorphicMapType_56061_88384_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@19 f_203@@44) (= (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@67) o2_55@@19 f_203@@44) (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@19 f_203@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@19 f_203@@44))
))) (forall ((o2_55@@20 T@Ref) (f_203@@45 T@Field_88384_26137) ) (!  (=> (select (|PolymorphicMapType_56061_88384_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@20 f_203@@45) (= (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@67) o2_55@@20 f_203@@45) (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@20 f_203@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@20 f_203@@45))
))) (forall ((o2_55@@21 T@Ref) (f_203@@46 T@Field_88384_53) ) (!  (=> (select (|PolymorphicMapType_56061_88384_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@21 f_203@@46) (= (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@67) o2_55@@21 f_203@@46) (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@21 f_203@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@21 f_203@@46))
))) (forall ((o2_55@@22 T@Ref) (f_203@@47 T@Field_88384_88385) ) (!  (=> (select (|PolymorphicMapType_56061_88384_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@22 f_203@@47) (= (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@67) o2_55@@22 f_203@@47) (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@22 f_203@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@22 f_203@@47))
))) (forall ((o2_55@@23 T@Ref) (f_203@@48 T@Field_88397_88402) ) (!  (=> (select (|PolymorphicMapType_56061_88384_237663#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@23 f_203@@48) (= (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) o2_55@@23 f_203@@48) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@23 f_203@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@23 f_203@@48))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@36 Mask@@87) (IsPredicateField_26245_26246 pm_f_55@@9))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_55512) (ExhaleHeap@@37 T@PolymorphicMapType_55512) (Mask@@88 T@PolymorphicMapType_55533) (pm_f_55@@10 T@Field_60499_60500) ) (!  (=> (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@37 Mask@@88) (=> (and (HasDirectPerm_60499_26206 Mask@@88 null pm_f_55@@10) (IsPredicateField_26165_26166 pm_f_55@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_55@@24 T@Ref) (f_203@@49 T@Field_58898_1186) ) (!  (=> (select (|PolymorphicMapType_56061_26134_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@24 f_203@@49) (= (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@68) o2_55@@24 f_203@@49) (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@24 f_203@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@24 f_203@@49))
)) (forall ((o2_55@@25 T@Ref) (f_203@@50 T@Field_55585_55586) ) (!  (=> (select (|PolymorphicMapType_56061_26136_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@25 f_203@@50) (= (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@68) o2_55@@25 f_203@@50) (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@25 f_203@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@25 f_203@@50))
))) (forall ((o2_55@@26 T@Ref) (f_203@@51 T@Field_55572_53) ) (!  (=> (select (|PolymorphicMapType_56061_26134_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@26 f_203@@51) (= (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@68) o2_55@@26 f_203@@51) (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@26 f_203@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@26 f_203@@51))
))) (forall ((o2_55@@27 T@Ref) (f_203@@52 T@Field_26136_26206) ) (!  (=> (select (|PolymorphicMapType_56061_26134_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@27 f_203@@52) (= (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@68) o2_55@@27 f_203@@52) (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@27 f_203@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@27 f_203@@52))
))) (forall ((o2_55@@28 T@Ref) (f_203@@53 T@Field_26136_59013) ) (!  (=> (select (|PolymorphicMapType_56061_26134_233471#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@28 f_203@@53) (= (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@68) o2_55@@28 f_203@@53) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@28 f_203@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@28 f_203@@53))
))) (forall ((o2_55@@29 T@Ref) (f_203@@54 T@Field_26140_1186) ) (!  (=> (select (|PolymorphicMapType_56061_58995_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@29 f_203@@54) (= (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@68) o2_55@@29 f_203@@54) (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@29 f_203@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@29 f_203@@54))
))) (forall ((o2_55@@30 T@Ref) (f_203@@55 T@Field_26140_26137) ) (!  (=> (select (|PolymorphicMapType_56061_58995_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@30 f_203@@55) (= (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@68) o2_55@@30 f_203@@55) (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@30 f_203@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@30 f_203@@55))
))) (forall ((o2_55@@31 T@Ref) (f_203@@56 T@Field_26140_53) ) (!  (=> (select (|PolymorphicMapType_56061_58995_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@31 f_203@@56) (= (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@68) o2_55@@31 f_203@@56) (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@31 f_203@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@31 f_203@@56))
))) (forall ((o2_55@@32 T@Ref) (f_203@@57 T@Field_58995_58996) ) (!  (=> (select (|PolymorphicMapType_56061_58995_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@32 f_203@@57) (= (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@68) o2_55@@32 f_203@@57) (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@32 f_203@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@32 f_203@@57))
))) (forall ((o2_55@@33 T@Ref) (f_203@@58 T@Field_59008_59013) ) (!  (=> (select (|PolymorphicMapType_56061_58995_234519#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@33 f_203@@58) (= (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@68) o2_55@@33 f_203@@58) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@33 f_203@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@33 f_203@@58))
))) (forall ((o2_55@@34 T@Ref) (f_203@@59 T@Field_60499_1186) ) (!  (=> (select (|PolymorphicMapType_56061_60499_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@34 f_203@@59) (= (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@68) o2_55@@34 f_203@@59) (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@34 f_203@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@34 f_203@@59))
))) (forall ((o2_55@@35 T@Ref) (f_203@@60 T@Field_60499_26137) ) (!  (=> (select (|PolymorphicMapType_56061_60499_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@35 f_203@@60) (= (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@68) o2_55@@35 f_203@@60) (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@35 f_203@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@35 f_203@@60))
))) (forall ((o2_55@@36 T@Ref) (f_203@@61 T@Field_60499_53) ) (!  (=> (select (|PolymorphicMapType_56061_60499_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@36 f_203@@61) (= (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@68) o2_55@@36 f_203@@61) (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@36 f_203@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@36 f_203@@61))
))) (forall ((o2_55@@37 T@Ref) (f_203@@62 T@Field_60499_60500) ) (!  (=> (select (|PolymorphicMapType_56061_60499_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@37 f_203@@62) (= (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@68) o2_55@@37 f_203@@62) (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@37 f_203@@62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@37 f_203@@62))
))) (forall ((o2_55@@38 T@Ref) (f_203@@63 T@Field_60512_60517) ) (!  (=> (select (|PolymorphicMapType_56061_60499_235567#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@38 f_203@@63) (= (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) o2_55@@38 f_203@@63) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@38 f_203@@63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@38 f_203@@63))
))) (forall ((o2_55@@39 T@Ref) (f_203@@64 T@Field_26205_1186) ) (!  (=> (select (|PolymorphicMapType_56061_75522_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@39 f_203@@64) (= (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@68) o2_55@@39 f_203@@64) (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@39 f_203@@64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@39 f_203@@64))
))) (forall ((o2_55@@40 T@Ref) (f_203@@65 T@Field_26205_26137) ) (!  (=> (select (|PolymorphicMapType_56061_75522_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@40 f_203@@65) (= (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@68) o2_55@@40 f_203@@65) (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@40 f_203@@65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@40 f_203@@65))
))) (forall ((o2_55@@41 T@Ref) (f_203@@66 T@Field_26205_53) ) (!  (=> (select (|PolymorphicMapType_56061_75522_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@41 f_203@@66) (= (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@68) o2_55@@41 f_203@@66) (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@41 f_203@@66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@41 f_203@@66))
))) (forall ((o2_55@@42 T@Ref) (f_203@@67 T@Field_75522_75523) ) (!  (=> (select (|PolymorphicMapType_56061_75522_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@42 f_203@@67) (= (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@68) o2_55@@42 f_203@@67) (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@42 f_203@@67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@42 f_203@@67))
))) (forall ((o2_55@@43 T@Ref) (f_203@@68 T@Field_75535_75540) ) (!  (=> (select (|PolymorphicMapType_56061_75522_236615#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@43 f_203@@68) (= (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@68) o2_55@@43 f_203@@68) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@43 f_203@@68)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@43 f_203@@68))
))) (forall ((o2_55@@44 T@Ref) (f_203@@69 T@Field_88384_1186) ) (!  (=> (select (|PolymorphicMapType_56061_88384_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@44 f_203@@69) (= (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@68) o2_55@@44 f_203@@69) (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@44 f_203@@69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@44 f_203@@69))
))) (forall ((o2_55@@45 T@Ref) (f_203@@70 T@Field_88384_26137) ) (!  (=> (select (|PolymorphicMapType_56061_88384_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@45 f_203@@70) (= (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@68) o2_55@@45 f_203@@70) (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@45 f_203@@70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@45 f_203@@70))
))) (forall ((o2_55@@46 T@Ref) (f_203@@71 T@Field_88384_53) ) (!  (=> (select (|PolymorphicMapType_56061_88384_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@46 f_203@@71) (= (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@68) o2_55@@46 f_203@@71) (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@46 f_203@@71)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@46 f_203@@71))
))) (forall ((o2_55@@47 T@Ref) (f_203@@72 T@Field_88384_88385) ) (!  (=> (select (|PolymorphicMapType_56061_88384_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@47 f_203@@72) (= (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@68) o2_55@@47 f_203@@72) (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@47 f_203@@72)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@47 f_203@@72))
))) (forall ((o2_55@@48 T@Ref) (f_203@@73 T@Field_88397_88402) ) (!  (=> (select (|PolymorphicMapType_56061_88384_237663#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@48 f_203@@73) (= (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@68) o2_55@@48 f_203@@73) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@48 f_203@@73)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@48 f_203@@73))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@37 Mask@@88) (IsPredicateField_26165_26166 pm_f_55@@10))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_55512) (ExhaleHeap@@38 T@PolymorphicMapType_55512) (Mask@@89 T@PolymorphicMapType_55533) (pm_f_55@@11 T@Field_58995_58996) ) (!  (=> (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@38 Mask@@89) (=> (and (HasDirectPerm_26140_26141 Mask@@89 null pm_f_55@@11) (IsPredicateField_26140_26141 pm_f_55@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_55@@49 T@Ref) (f_203@@74 T@Field_58898_1186) ) (!  (=> (select (|PolymorphicMapType_56061_26134_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@49 f_203@@74) (= (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@69) o2_55@@49 f_203@@74) (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@49 f_203@@74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@49 f_203@@74))
)) (forall ((o2_55@@50 T@Ref) (f_203@@75 T@Field_55585_55586) ) (!  (=> (select (|PolymorphicMapType_56061_26136_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@50 f_203@@75) (= (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@69) o2_55@@50 f_203@@75) (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@50 f_203@@75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@50 f_203@@75))
))) (forall ((o2_55@@51 T@Ref) (f_203@@76 T@Field_55572_53) ) (!  (=> (select (|PolymorphicMapType_56061_26134_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@51 f_203@@76) (= (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@69) o2_55@@51 f_203@@76) (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@51 f_203@@76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@51 f_203@@76))
))) (forall ((o2_55@@52 T@Ref) (f_203@@77 T@Field_26136_26206) ) (!  (=> (select (|PolymorphicMapType_56061_26134_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@52 f_203@@77) (= (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@69) o2_55@@52 f_203@@77) (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@52 f_203@@77)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@52 f_203@@77))
))) (forall ((o2_55@@53 T@Ref) (f_203@@78 T@Field_26136_59013) ) (!  (=> (select (|PolymorphicMapType_56061_26134_233471#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@53 f_203@@78) (= (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@69) o2_55@@53 f_203@@78) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@53 f_203@@78)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@53 f_203@@78))
))) (forall ((o2_55@@54 T@Ref) (f_203@@79 T@Field_26140_1186) ) (!  (=> (select (|PolymorphicMapType_56061_58995_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@54 f_203@@79) (= (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@69) o2_55@@54 f_203@@79) (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@54 f_203@@79)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@54 f_203@@79))
))) (forall ((o2_55@@55 T@Ref) (f_203@@80 T@Field_26140_26137) ) (!  (=> (select (|PolymorphicMapType_56061_58995_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@55 f_203@@80) (= (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@69) o2_55@@55 f_203@@80) (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@55 f_203@@80)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@55 f_203@@80))
))) (forall ((o2_55@@56 T@Ref) (f_203@@81 T@Field_26140_53) ) (!  (=> (select (|PolymorphicMapType_56061_58995_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@56 f_203@@81) (= (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@69) o2_55@@56 f_203@@81) (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@56 f_203@@81)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@56 f_203@@81))
))) (forall ((o2_55@@57 T@Ref) (f_203@@82 T@Field_58995_58996) ) (!  (=> (select (|PolymorphicMapType_56061_58995_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@57 f_203@@82) (= (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@69) o2_55@@57 f_203@@82) (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@57 f_203@@82)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@57 f_203@@82))
))) (forall ((o2_55@@58 T@Ref) (f_203@@83 T@Field_59008_59013) ) (!  (=> (select (|PolymorphicMapType_56061_58995_234519#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@58 f_203@@83) (= (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) o2_55@@58 f_203@@83) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@58 f_203@@83)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@58 f_203@@83))
))) (forall ((o2_55@@59 T@Ref) (f_203@@84 T@Field_60499_1186) ) (!  (=> (select (|PolymorphicMapType_56061_60499_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@59 f_203@@84) (= (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@69) o2_55@@59 f_203@@84) (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@59 f_203@@84)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@59 f_203@@84))
))) (forall ((o2_55@@60 T@Ref) (f_203@@85 T@Field_60499_26137) ) (!  (=> (select (|PolymorphicMapType_56061_60499_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@60 f_203@@85) (= (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@69) o2_55@@60 f_203@@85) (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@60 f_203@@85)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@60 f_203@@85))
))) (forall ((o2_55@@61 T@Ref) (f_203@@86 T@Field_60499_53) ) (!  (=> (select (|PolymorphicMapType_56061_60499_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@61 f_203@@86) (= (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@69) o2_55@@61 f_203@@86) (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@61 f_203@@86)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@61 f_203@@86))
))) (forall ((o2_55@@62 T@Ref) (f_203@@87 T@Field_60499_60500) ) (!  (=> (select (|PolymorphicMapType_56061_60499_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@62 f_203@@87) (= (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@69) o2_55@@62 f_203@@87) (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@62 f_203@@87)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@62 f_203@@87))
))) (forall ((o2_55@@63 T@Ref) (f_203@@88 T@Field_60512_60517) ) (!  (=> (select (|PolymorphicMapType_56061_60499_235567#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@63 f_203@@88) (= (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@69) o2_55@@63 f_203@@88) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@63 f_203@@88)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@63 f_203@@88))
))) (forall ((o2_55@@64 T@Ref) (f_203@@89 T@Field_26205_1186) ) (!  (=> (select (|PolymorphicMapType_56061_75522_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@64 f_203@@89) (= (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@69) o2_55@@64 f_203@@89) (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@64 f_203@@89)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@64 f_203@@89))
))) (forall ((o2_55@@65 T@Ref) (f_203@@90 T@Field_26205_26137) ) (!  (=> (select (|PolymorphicMapType_56061_75522_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@65 f_203@@90) (= (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@69) o2_55@@65 f_203@@90) (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@65 f_203@@90)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@65 f_203@@90))
))) (forall ((o2_55@@66 T@Ref) (f_203@@91 T@Field_26205_53) ) (!  (=> (select (|PolymorphicMapType_56061_75522_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@66 f_203@@91) (= (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@69) o2_55@@66 f_203@@91) (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@66 f_203@@91)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@66 f_203@@91))
))) (forall ((o2_55@@67 T@Ref) (f_203@@92 T@Field_75522_75523) ) (!  (=> (select (|PolymorphicMapType_56061_75522_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@67 f_203@@92) (= (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@69) o2_55@@67 f_203@@92) (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@67 f_203@@92)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@67 f_203@@92))
))) (forall ((o2_55@@68 T@Ref) (f_203@@93 T@Field_75535_75540) ) (!  (=> (select (|PolymorphicMapType_56061_75522_236615#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@68 f_203@@93) (= (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@69) o2_55@@68 f_203@@93) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@68 f_203@@93)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@68 f_203@@93))
))) (forall ((o2_55@@69 T@Ref) (f_203@@94 T@Field_88384_1186) ) (!  (=> (select (|PolymorphicMapType_56061_88384_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@69 f_203@@94) (= (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@69) o2_55@@69 f_203@@94) (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@69 f_203@@94)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@69 f_203@@94))
))) (forall ((o2_55@@70 T@Ref) (f_203@@95 T@Field_88384_26137) ) (!  (=> (select (|PolymorphicMapType_56061_88384_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@70 f_203@@95) (= (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@69) o2_55@@70 f_203@@95) (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@70 f_203@@95)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@70 f_203@@95))
))) (forall ((o2_55@@71 T@Ref) (f_203@@96 T@Field_88384_53) ) (!  (=> (select (|PolymorphicMapType_56061_88384_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@71 f_203@@96) (= (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@69) o2_55@@71 f_203@@96) (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@71 f_203@@96)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@71 f_203@@96))
))) (forall ((o2_55@@72 T@Ref) (f_203@@97 T@Field_88384_88385) ) (!  (=> (select (|PolymorphicMapType_56061_88384_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@72 f_203@@97) (= (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@69) o2_55@@72 f_203@@97) (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@72 f_203@@97)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@72 f_203@@97))
))) (forall ((o2_55@@73 T@Ref) (f_203@@98 T@Field_88397_88402) ) (!  (=> (select (|PolymorphicMapType_56061_88384_237663#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@73 f_203@@98) (= (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@69) o2_55@@73 f_203@@98) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@73 f_203@@98)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@73 f_203@@98))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@38 Mask@@89) (IsPredicateField_26140_26141 pm_f_55@@11))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_55512) (ExhaleHeap@@39 T@PolymorphicMapType_55512) (Mask@@90 T@PolymorphicMapType_55533) (pm_f_55@@12 T@Field_75522_75523) ) (!  (=> (IdenticalOnKnownLocations Heap@@70 ExhaleHeap@@39 Mask@@90) (=> (and (HasDirectPerm_26205_26206 Mask@@90 null pm_f_55@@12) (IsPredicateField_26205_26206 pm_f_55@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_55@@74 T@Ref) (f_203@@99 T@Field_58898_1186) ) (!  (=> (select (|PolymorphicMapType_56061_26134_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@74 f_203@@99) (= (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@70) o2_55@@74 f_203@@99) (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@74 f_203@@99)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@74 f_203@@99))
)) (forall ((o2_55@@75 T@Ref) (f_203@@100 T@Field_55585_55586) ) (!  (=> (select (|PolymorphicMapType_56061_26136_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@75 f_203@@100) (= (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@70) o2_55@@75 f_203@@100) (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@75 f_203@@100)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@75 f_203@@100))
))) (forall ((o2_55@@76 T@Ref) (f_203@@101 T@Field_55572_53) ) (!  (=> (select (|PolymorphicMapType_56061_26134_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@76 f_203@@101) (= (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@70) o2_55@@76 f_203@@101) (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@76 f_203@@101)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@76 f_203@@101))
))) (forall ((o2_55@@77 T@Ref) (f_203@@102 T@Field_26136_26206) ) (!  (=> (select (|PolymorphicMapType_56061_26134_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@77 f_203@@102) (= (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@70) o2_55@@77 f_203@@102) (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@77 f_203@@102)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@77 f_203@@102))
))) (forall ((o2_55@@78 T@Ref) (f_203@@103 T@Field_26136_59013) ) (!  (=> (select (|PolymorphicMapType_56061_26134_233471#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@78 f_203@@103) (= (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@70) o2_55@@78 f_203@@103) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@78 f_203@@103)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@78 f_203@@103))
))) (forall ((o2_55@@79 T@Ref) (f_203@@104 T@Field_26140_1186) ) (!  (=> (select (|PolymorphicMapType_56061_58995_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@79 f_203@@104) (= (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@70) o2_55@@79 f_203@@104) (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@79 f_203@@104)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@79 f_203@@104))
))) (forall ((o2_55@@80 T@Ref) (f_203@@105 T@Field_26140_26137) ) (!  (=> (select (|PolymorphicMapType_56061_58995_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@80 f_203@@105) (= (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@70) o2_55@@80 f_203@@105) (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@80 f_203@@105)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@80 f_203@@105))
))) (forall ((o2_55@@81 T@Ref) (f_203@@106 T@Field_26140_53) ) (!  (=> (select (|PolymorphicMapType_56061_58995_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@81 f_203@@106) (= (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@70) o2_55@@81 f_203@@106) (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@81 f_203@@106)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@81 f_203@@106))
))) (forall ((o2_55@@82 T@Ref) (f_203@@107 T@Field_58995_58996) ) (!  (=> (select (|PolymorphicMapType_56061_58995_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@82 f_203@@107) (= (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@70) o2_55@@82 f_203@@107) (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@82 f_203@@107)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@82 f_203@@107))
))) (forall ((o2_55@@83 T@Ref) (f_203@@108 T@Field_59008_59013) ) (!  (=> (select (|PolymorphicMapType_56061_58995_234519#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@83 f_203@@108) (= (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@70) o2_55@@83 f_203@@108) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@83 f_203@@108)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@83 f_203@@108))
))) (forall ((o2_55@@84 T@Ref) (f_203@@109 T@Field_60499_1186) ) (!  (=> (select (|PolymorphicMapType_56061_60499_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@84 f_203@@109) (= (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@70) o2_55@@84 f_203@@109) (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@84 f_203@@109)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@84 f_203@@109))
))) (forall ((o2_55@@85 T@Ref) (f_203@@110 T@Field_60499_26137) ) (!  (=> (select (|PolymorphicMapType_56061_60499_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@85 f_203@@110) (= (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@70) o2_55@@85 f_203@@110) (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@85 f_203@@110)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@85 f_203@@110))
))) (forall ((o2_55@@86 T@Ref) (f_203@@111 T@Field_60499_53) ) (!  (=> (select (|PolymorphicMapType_56061_60499_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@86 f_203@@111) (= (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@70) o2_55@@86 f_203@@111) (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@86 f_203@@111)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@86 f_203@@111))
))) (forall ((o2_55@@87 T@Ref) (f_203@@112 T@Field_60499_60500) ) (!  (=> (select (|PolymorphicMapType_56061_60499_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@87 f_203@@112) (= (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@70) o2_55@@87 f_203@@112) (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@87 f_203@@112)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@87 f_203@@112))
))) (forall ((o2_55@@88 T@Ref) (f_203@@113 T@Field_60512_60517) ) (!  (=> (select (|PolymorphicMapType_56061_60499_235567#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@88 f_203@@113) (= (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@70) o2_55@@88 f_203@@113) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@88 f_203@@113)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@88 f_203@@113))
))) (forall ((o2_55@@89 T@Ref) (f_203@@114 T@Field_26205_1186) ) (!  (=> (select (|PolymorphicMapType_56061_75522_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@89 f_203@@114) (= (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@70) o2_55@@89 f_203@@114) (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@89 f_203@@114)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@89 f_203@@114))
))) (forall ((o2_55@@90 T@Ref) (f_203@@115 T@Field_26205_26137) ) (!  (=> (select (|PolymorphicMapType_56061_75522_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@90 f_203@@115) (= (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@70) o2_55@@90 f_203@@115) (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@90 f_203@@115)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@90 f_203@@115))
))) (forall ((o2_55@@91 T@Ref) (f_203@@116 T@Field_26205_53) ) (!  (=> (select (|PolymorphicMapType_56061_75522_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@91 f_203@@116) (= (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@70) o2_55@@91 f_203@@116) (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@91 f_203@@116)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@91 f_203@@116))
))) (forall ((o2_55@@92 T@Ref) (f_203@@117 T@Field_75522_75523) ) (!  (=> (select (|PolymorphicMapType_56061_75522_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@92 f_203@@117) (= (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@70) o2_55@@92 f_203@@117) (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@92 f_203@@117)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@92 f_203@@117))
))) (forall ((o2_55@@93 T@Ref) (f_203@@118 T@Field_75535_75540) ) (!  (=> (select (|PolymorphicMapType_56061_75522_236615#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@93 f_203@@118) (= (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) o2_55@@93 f_203@@118) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@93 f_203@@118)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@93 f_203@@118))
))) (forall ((o2_55@@94 T@Ref) (f_203@@119 T@Field_88384_1186) ) (!  (=> (select (|PolymorphicMapType_56061_88384_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@94 f_203@@119) (= (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@70) o2_55@@94 f_203@@119) (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@94 f_203@@119)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@94 f_203@@119))
))) (forall ((o2_55@@95 T@Ref) (f_203@@120 T@Field_88384_26137) ) (!  (=> (select (|PolymorphicMapType_56061_88384_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@95 f_203@@120) (= (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@70) o2_55@@95 f_203@@120) (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@95 f_203@@120)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@95 f_203@@120))
))) (forall ((o2_55@@96 T@Ref) (f_203@@121 T@Field_88384_53) ) (!  (=> (select (|PolymorphicMapType_56061_88384_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@96 f_203@@121) (= (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@70) o2_55@@96 f_203@@121) (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@96 f_203@@121)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@96 f_203@@121))
))) (forall ((o2_55@@97 T@Ref) (f_203@@122 T@Field_88384_88385) ) (!  (=> (select (|PolymorphicMapType_56061_88384_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@97 f_203@@122) (= (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@70) o2_55@@97 f_203@@122) (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@97 f_203@@122)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@97 f_203@@122))
))) (forall ((o2_55@@98 T@Ref) (f_203@@123 T@Field_88397_88402) ) (!  (=> (select (|PolymorphicMapType_56061_88384_237663#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@98 f_203@@123) (= (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@70) o2_55@@98 f_203@@123) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@98 f_203@@123)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@98 f_203@@123))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@70 ExhaleHeap@@39 Mask@@90) (IsPredicateField_26205_26206 pm_f_55@@12))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_55512) (ExhaleHeap@@40 T@PolymorphicMapType_55512) (Mask@@91 T@PolymorphicMapType_55533) (pm_f_55@@13 T@Field_26136_26206) ) (!  (=> (IdenticalOnKnownLocations Heap@@71 ExhaleHeap@@40 Mask@@91) (=> (and (HasDirectPerm_26136_26206 Mask@@91 null pm_f_55@@13) (IsPredicateField_26136_231039 pm_f_55@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_55@@99 T@Ref) (f_203@@124 T@Field_58898_1186) ) (!  (=> (select (|PolymorphicMapType_56061_26134_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@99 f_203@@124) (= (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@71) o2_55@@99 f_203@@124) (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@99 f_203@@124)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@99 f_203@@124))
)) (forall ((o2_55@@100 T@Ref) (f_203@@125 T@Field_55585_55586) ) (!  (=> (select (|PolymorphicMapType_56061_26136_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@100 f_203@@125) (= (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@71) o2_55@@100 f_203@@125) (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@100 f_203@@125)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@100 f_203@@125))
))) (forall ((o2_55@@101 T@Ref) (f_203@@126 T@Field_55572_53) ) (!  (=> (select (|PolymorphicMapType_56061_26134_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@101 f_203@@126) (= (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@71) o2_55@@101 f_203@@126) (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@101 f_203@@126)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@101 f_203@@126))
))) (forall ((o2_55@@102 T@Ref) (f_203@@127 T@Field_26136_26206) ) (!  (=> (select (|PolymorphicMapType_56061_26134_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@102 f_203@@127) (= (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@71) o2_55@@102 f_203@@127) (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@102 f_203@@127)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@102 f_203@@127))
))) (forall ((o2_55@@103 T@Ref) (f_203@@128 T@Field_26136_59013) ) (!  (=> (select (|PolymorphicMapType_56061_26134_233471#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@103 f_203@@128) (= (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) o2_55@@103 f_203@@128) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@103 f_203@@128)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@103 f_203@@128))
))) (forall ((o2_55@@104 T@Ref) (f_203@@129 T@Field_26140_1186) ) (!  (=> (select (|PolymorphicMapType_56061_58995_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@104 f_203@@129) (= (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@71) o2_55@@104 f_203@@129) (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@104 f_203@@129)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@104 f_203@@129))
))) (forall ((o2_55@@105 T@Ref) (f_203@@130 T@Field_26140_26137) ) (!  (=> (select (|PolymorphicMapType_56061_58995_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@105 f_203@@130) (= (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@71) o2_55@@105 f_203@@130) (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@105 f_203@@130)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@105 f_203@@130))
))) (forall ((o2_55@@106 T@Ref) (f_203@@131 T@Field_26140_53) ) (!  (=> (select (|PolymorphicMapType_56061_58995_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@106 f_203@@131) (= (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@71) o2_55@@106 f_203@@131) (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@106 f_203@@131)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@106 f_203@@131))
))) (forall ((o2_55@@107 T@Ref) (f_203@@132 T@Field_58995_58996) ) (!  (=> (select (|PolymorphicMapType_56061_58995_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@107 f_203@@132) (= (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@71) o2_55@@107 f_203@@132) (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@107 f_203@@132)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@107 f_203@@132))
))) (forall ((o2_55@@108 T@Ref) (f_203@@133 T@Field_59008_59013) ) (!  (=> (select (|PolymorphicMapType_56061_58995_234519#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@108 f_203@@133) (= (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@71) o2_55@@108 f_203@@133) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@108 f_203@@133)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@108 f_203@@133))
))) (forall ((o2_55@@109 T@Ref) (f_203@@134 T@Field_60499_1186) ) (!  (=> (select (|PolymorphicMapType_56061_60499_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@109 f_203@@134) (= (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@71) o2_55@@109 f_203@@134) (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@109 f_203@@134)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@109 f_203@@134))
))) (forall ((o2_55@@110 T@Ref) (f_203@@135 T@Field_60499_26137) ) (!  (=> (select (|PolymorphicMapType_56061_60499_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@110 f_203@@135) (= (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@71) o2_55@@110 f_203@@135) (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@110 f_203@@135)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@110 f_203@@135))
))) (forall ((o2_55@@111 T@Ref) (f_203@@136 T@Field_60499_53) ) (!  (=> (select (|PolymorphicMapType_56061_60499_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@111 f_203@@136) (= (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@71) o2_55@@111 f_203@@136) (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@111 f_203@@136)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@111 f_203@@136))
))) (forall ((o2_55@@112 T@Ref) (f_203@@137 T@Field_60499_60500) ) (!  (=> (select (|PolymorphicMapType_56061_60499_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@112 f_203@@137) (= (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@71) o2_55@@112 f_203@@137) (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@112 f_203@@137)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@112 f_203@@137))
))) (forall ((o2_55@@113 T@Ref) (f_203@@138 T@Field_60512_60517) ) (!  (=> (select (|PolymorphicMapType_56061_60499_235567#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@113 f_203@@138) (= (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@71) o2_55@@113 f_203@@138) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@113 f_203@@138)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@113 f_203@@138))
))) (forall ((o2_55@@114 T@Ref) (f_203@@139 T@Field_26205_1186) ) (!  (=> (select (|PolymorphicMapType_56061_75522_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@114 f_203@@139) (= (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@71) o2_55@@114 f_203@@139) (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@114 f_203@@139)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@114 f_203@@139))
))) (forall ((o2_55@@115 T@Ref) (f_203@@140 T@Field_26205_26137) ) (!  (=> (select (|PolymorphicMapType_56061_75522_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@115 f_203@@140) (= (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@71) o2_55@@115 f_203@@140) (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@115 f_203@@140)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@115 f_203@@140))
))) (forall ((o2_55@@116 T@Ref) (f_203@@141 T@Field_26205_53) ) (!  (=> (select (|PolymorphicMapType_56061_75522_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@116 f_203@@141) (= (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@71) o2_55@@116 f_203@@141) (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@116 f_203@@141)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@116 f_203@@141))
))) (forall ((o2_55@@117 T@Ref) (f_203@@142 T@Field_75522_75523) ) (!  (=> (select (|PolymorphicMapType_56061_75522_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@117 f_203@@142) (= (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@71) o2_55@@117 f_203@@142) (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@117 f_203@@142)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@117 f_203@@142))
))) (forall ((o2_55@@118 T@Ref) (f_203@@143 T@Field_75535_75540) ) (!  (=> (select (|PolymorphicMapType_56061_75522_236615#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@118 f_203@@143) (= (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@71) o2_55@@118 f_203@@143) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@118 f_203@@143)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@118 f_203@@143))
))) (forall ((o2_55@@119 T@Ref) (f_203@@144 T@Field_88384_1186) ) (!  (=> (select (|PolymorphicMapType_56061_88384_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@119 f_203@@144) (= (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@71) o2_55@@119 f_203@@144) (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@119 f_203@@144)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@119 f_203@@144))
))) (forall ((o2_55@@120 T@Ref) (f_203@@145 T@Field_88384_26137) ) (!  (=> (select (|PolymorphicMapType_56061_88384_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@120 f_203@@145) (= (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@71) o2_55@@120 f_203@@145) (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@120 f_203@@145)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@120 f_203@@145))
))) (forall ((o2_55@@121 T@Ref) (f_203@@146 T@Field_88384_53) ) (!  (=> (select (|PolymorphicMapType_56061_88384_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@121 f_203@@146) (= (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@71) o2_55@@121 f_203@@146) (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@121 f_203@@146)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@121 f_203@@146))
))) (forall ((o2_55@@122 T@Ref) (f_203@@147 T@Field_88384_88385) ) (!  (=> (select (|PolymorphicMapType_56061_88384_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@122 f_203@@147) (= (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@71) o2_55@@122 f_203@@147) (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@122 f_203@@147)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@122 f_203@@147))
))) (forall ((o2_55@@123 T@Ref) (f_203@@148 T@Field_88397_88402) ) (!  (=> (select (|PolymorphicMapType_56061_88384_237663#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@123 f_203@@148) (= (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@71) o2_55@@123 f_203@@148) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@123 f_203@@148)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@123 f_203@@148))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@71 ExhaleHeap@@40 Mask@@91) (IsPredicateField_26136_231039 pm_f_55@@13))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_55512) (ExhaleHeap@@41 T@PolymorphicMapType_55512) (Mask@@92 T@PolymorphicMapType_55533) (pm_f_55@@14 T@Field_88384_88385) ) (!  (=> (IdenticalOnKnownLocations Heap@@72 ExhaleHeap@@41 Mask@@92) (=> (and (HasDirectPerm_88384_26206 Mask@@92 null pm_f_55@@14) (IsWandField_88384_240742 pm_f_55@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_55@@124 T@Ref) (f_203@@149 T@Field_58898_1186) ) (!  (=> (select (|PolymorphicMapType_56061_26134_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@124 f_203@@149) (= (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@72) o2_55@@124 f_203@@149) (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@124 f_203@@149)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@124 f_203@@149))
)) (forall ((o2_55@@125 T@Ref) (f_203@@150 T@Field_55585_55586) ) (!  (=> (select (|PolymorphicMapType_56061_26136_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@125 f_203@@150) (= (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@72) o2_55@@125 f_203@@150) (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@125 f_203@@150)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@125 f_203@@150))
))) (forall ((o2_55@@126 T@Ref) (f_203@@151 T@Field_55572_53) ) (!  (=> (select (|PolymorphicMapType_56061_26134_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@126 f_203@@151) (= (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@72) o2_55@@126 f_203@@151) (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@126 f_203@@151)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@126 f_203@@151))
))) (forall ((o2_55@@127 T@Ref) (f_203@@152 T@Field_26136_26206) ) (!  (=> (select (|PolymorphicMapType_56061_26134_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@127 f_203@@152) (= (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@72) o2_55@@127 f_203@@152) (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@127 f_203@@152)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@127 f_203@@152))
))) (forall ((o2_55@@128 T@Ref) (f_203@@153 T@Field_26136_59013) ) (!  (=> (select (|PolymorphicMapType_56061_26134_233471#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@128 f_203@@153) (= (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@72) o2_55@@128 f_203@@153) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@128 f_203@@153)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@128 f_203@@153))
))) (forall ((o2_55@@129 T@Ref) (f_203@@154 T@Field_26140_1186) ) (!  (=> (select (|PolymorphicMapType_56061_58995_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@129 f_203@@154) (= (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@72) o2_55@@129 f_203@@154) (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@129 f_203@@154)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@129 f_203@@154))
))) (forall ((o2_55@@130 T@Ref) (f_203@@155 T@Field_26140_26137) ) (!  (=> (select (|PolymorphicMapType_56061_58995_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@130 f_203@@155) (= (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@72) o2_55@@130 f_203@@155) (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@130 f_203@@155)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@130 f_203@@155))
))) (forall ((o2_55@@131 T@Ref) (f_203@@156 T@Field_26140_53) ) (!  (=> (select (|PolymorphicMapType_56061_58995_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@131 f_203@@156) (= (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@72) o2_55@@131 f_203@@156) (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@131 f_203@@156)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@131 f_203@@156))
))) (forall ((o2_55@@132 T@Ref) (f_203@@157 T@Field_58995_58996) ) (!  (=> (select (|PolymorphicMapType_56061_58995_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@132 f_203@@157) (= (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@72) o2_55@@132 f_203@@157) (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@132 f_203@@157)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@132 f_203@@157))
))) (forall ((o2_55@@133 T@Ref) (f_203@@158 T@Field_59008_59013) ) (!  (=> (select (|PolymorphicMapType_56061_58995_234519#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@133 f_203@@158) (= (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@72) o2_55@@133 f_203@@158) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@133 f_203@@158)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@133 f_203@@158))
))) (forall ((o2_55@@134 T@Ref) (f_203@@159 T@Field_60499_1186) ) (!  (=> (select (|PolymorphicMapType_56061_60499_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@134 f_203@@159) (= (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@72) o2_55@@134 f_203@@159) (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@134 f_203@@159)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@134 f_203@@159))
))) (forall ((o2_55@@135 T@Ref) (f_203@@160 T@Field_60499_26137) ) (!  (=> (select (|PolymorphicMapType_56061_60499_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@135 f_203@@160) (= (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@72) o2_55@@135 f_203@@160) (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@135 f_203@@160)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@135 f_203@@160))
))) (forall ((o2_55@@136 T@Ref) (f_203@@161 T@Field_60499_53) ) (!  (=> (select (|PolymorphicMapType_56061_60499_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@136 f_203@@161) (= (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@72) o2_55@@136 f_203@@161) (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@136 f_203@@161)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@136 f_203@@161))
))) (forall ((o2_55@@137 T@Ref) (f_203@@162 T@Field_60499_60500) ) (!  (=> (select (|PolymorphicMapType_56061_60499_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@137 f_203@@162) (= (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@72) o2_55@@137 f_203@@162) (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@137 f_203@@162)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@137 f_203@@162))
))) (forall ((o2_55@@138 T@Ref) (f_203@@163 T@Field_60512_60517) ) (!  (=> (select (|PolymorphicMapType_56061_60499_235567#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@138 f_203@@163) (= (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@72) o2_55@@138 f_203@@163) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@138 f_203@@163)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@138 f_203@@163))
))) (forall ((o2_55@@139 T@Ref) (f_203@@164 T@Field_26205_1186) ) (!  (=> (select (|PolymorphicMapType_56061_75522_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@139 f_203@@164) (= (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@72) o2_55@@139 f_203@@164) (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@139 f_203@@164)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@139 f_203@@164))
))) (forall ((o2_55@@140 T@Ref) (f_203@@165 T@Field_26205_26137) ) (!  (=> (select (|PolymorphicMapType_56061_75522_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@140 f_203@@165) (= (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@72) o2_55@@140 f_203@@165) (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@140 f_203@@165)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@140 f_203@@165))
))) (forall ((o2_55@@141 T@Ref) (f_203@@166 T@Field_26205_53) ) (!  (=> (select (|PolymorphicMapType_56061_75522_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@141 f_203@@166) (= (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@72) o2_55@@141 f_203@@166) (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@141 f_203@@166)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@141 f_203@@166))
))) (forall ((o2_55@@142 T@Ref) (f_203@@167 T@Field_75522_75523) ) (!  (=> (select (|PolymorphicMapType_56061_75522_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@142 f_203@@167) (= (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@72) o2_55@@142 f_203@@167) (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@142 f_203@@167)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@142 f_203@@167))
))) (forall ((o2_55@@143 T@Ref) (f_203@@168 T@Field_75535_75540) ) (!  (=> (select (|PolymorphicMapType_56061_75522_236615#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@143 f_203@@168) (= (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@72) o2_55@@143 f_203@@168) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@143 f_203@@168)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@143 f_203@@168))
))) (forall ((o2_55@@144 T@Ref) (f_203@@169 T@Field_88384_1186) ) (!  (=> (select (|PolymorphicMapType_56061_88384_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@144 f_203@@169) (= (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@72) o2_55@@144 f_203@@169) (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@144 f_203@@169)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@144 f_203@@169))
))) (forall ((o2_55@@145 T@Ref) (f_203@@170 T@Field_88384_26137) ) (!  (=> (select (|PolymorphicMapType_56061_88384_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@145 f_203@@170) (= (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@72) o2_55@@145 f_203@@170) (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@145 f_203@@170)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@145 f_203@@170))
))) (forall ((o2_55@@146 T@Ref) (f_203@@171 T@Field_88384_53) ) (!  (=> (select (|PolymorphicMapType_56061_88384_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@146 f_203@@171) (= (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@72) o2_55@@146 f_203@@171) (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@146 f_203@@171)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@146 f_203@@171))
))) (forall ((o2_55@@147 T@Ref) (f_203@@172 T@Field_88384_88385) ) (!  (=> (select (|PolymorphicMapType_56061_88384_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@147 f_203@@172) (= (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@72) o2_55@@147 f_203@@172) (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@147 f_203@@172)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@147 f_203@@172))
))) (forall ((o2_55@@148 T@Ref) (f_203@@173 T@Field_88397_88402) ) (!  (=> (select (|PolymorphicMapType_56061_88384_237663#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@148 f_203@@173) (= (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) o2_55@@148 f_203@@173) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@148 f_203@@173)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@148 f_203@@173))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@72 ExhaleHeap@@41 Mask@@92) (IsWandField_88384_240742 pm_f_55@@14))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_55512) (ExhaleHeap@@42 T@PolymorphicMapType_55512) (Mask@@93 T@PolymorphicMapType_55533) (pm_f_55@@15 T@Field_60499_60500) ) (!  (=> (IdenticalOnKnownLocations Heap@@73 ExhaleHeap@@42 Mask@@93) (=> (and (HasDirectPerm_60499_26206 Mask@@93 null pm_f_55@@15) (IsWandField_60499_240385 pm_f_55@@15)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_55@@149 T@Ref) (f_203@@174 T@Field_58898_1186) ) (!  (=> (select (|PolymorphicMapType_56061_26134_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@149 f_203@@174) (= (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@73) o2_55@@149 f_203@@174) (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@149 f_203@@174)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@149 f_203@@174))
)) (forall ((o2_55@@150 T@Ref) (f_203@@175 T@Field_55585_55586) ) (!  (=> (select (|PolymorphicMapType_56061_26136_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@150 f_203@@175) (= (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@73) o2_55@@150 f_203@@175) (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@150 f_203@@175)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@150 f_203@@175))
))) (forall ((o2_55@@151 T@Ref) (f_203@@176 T@Field_55572_53) ) (!  (=> (select (|PolymorphicMapType_56061_26134_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@151 f_203@@176) (= (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@73) o2_55@@151 f_203@@176) (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@151 f_203@@176)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@151 f_203@@176))
))) (forall ((o2_55@@152 T@Ref) (f_203@@177 T@Field_26136_26206) ) (!  (=> (select (|PolymorphicMapType_56061_26134_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@152 f_203@@177) (= (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@73) o2_55@@152 f_203@@177) (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@152 f_203@@177)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@152 f_203@@177))
))) (forall ((o2_55@@153 T@Ref) (f_203@@178 T@Field_26136_59013) ) (!  (=> (select (|PolymorphicMapType_56061_26134_233471#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@153 f_203@@178) (= (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@73) o2_55@@153 f_203@@178) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@153 f_203@@178)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@153 f_203@@178))
))) (forall ((o2_55@@154 T@Ref) (f_203@@179 T@Field_26140_1186) ) (!  (=> (select (|PolymorphicMapType_56061_58995_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@154 f_203@@179) (= (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@73) o2_55@@154 f_203@@179) (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@154 f_203@@179)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@154 f_203@@179))
))) (forall ((o2_55@@155 T@Ref) (f_203@@180 T@Field_26140_26137) ) (!  (=> (select (|PolymorphicMapType_56061_58995_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@155 f_203@@180) (= (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@73) o2_55@@155 f_203@@180) (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@155 f_203@@180)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@155 f_203@@180))
))) (forall ((o2_55@@156 T@Ref) (f_203@@181 T@Field_26140_53) ) (!  (=> (select (|PolymorphicMapType_56061_58995_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@156 f_203@@181) (= (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@73) o2_55@@156 f_203@@181) (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@156 f_203@@181)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@156 f_203@@181))
))) (forall ((o2_55@@157 T@Ref) (f_203@@182 T@Field_58995_58996) ) (!  (=> (select (|PolymorphicMapType_56061_58995_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@157 f_203@@182) (= (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@73) o2_55@@157 f_203@@182) (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@157 f_203@@182)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@157 f_203@@182))
))) (forall ((o2_55@@158 T@Ref) (f_203@@183 T@Field_59008_59013) ) (!  (=> (select (|PolymorphicMapType_56061_58995_234519#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@158 f_203@@183) (= (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@73) o2_55@@158 f_203@@183) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@158 f_203@@183)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@158 f_203@@183))
))) (forall ((o2_55@@159 T@Ref) (f_203@@184 T@Field_60499_1186) ) (!  (=> (select (|PolymorphicMapType_56061_60499_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@159 f_203@@184) (= (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@73) o2_55@@159 f_203@@184) (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@159 f_203@@184)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@159 f_203@@184))
))) (forall ((o2_55@@160 T@Ref) (f_203@@185 T@Field_60499_26137) ) (!  (=> (select (|PolymorphicMapType_56061_60499_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@160 f_203@@185) (= (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@73) o2_55@@160 f_203@@185) (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@160 f_203@@185)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@160 f_203@@185))
))) (forall ((o2_55@@161 T@Ref) (f_203@@186 T@Field_60499_53) ) (!  (=> (select (|PolymorphicMapType_56061_60499_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@161 f_203@@186) (= (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@73) o2_55@@161 f_203@@186) (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@161 f_203@@186)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@161 f_203@@186))
))) (forall ((o2_55@@162 T@Ref) (f_203@@187 T@Field_60499_60500) ) (!  (=> (select (|PolymorphicMapType_56061_60499_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@162 f_203@@187) (= (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@73) o2_55@@162 f_203@@187) (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@162 f_203@@187)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@162 f_203@@187))
))) (forall ((o2_55@@163 T@Ref) (f_203@@188 T@Field_60512_60517) ) (!  (=> (select (|PolymorphicMapType_56061_60499_235567#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@163 f_203@@188) (= (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) o2_55@@163 f_203@@188) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@163 f_203@@188)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@163 f_203@@188))
))) (forall ((o2_55@@164 T@Ref) (f_203@@189 T@Field_26205_1186) ) (!  (=> (select (|PolymorphicMapType_56061_75522_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@164 f_203@@189) (= (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@73) o2_55@@164 f_203@@189) (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@164 f_203@@189)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@164 f_203@@189))
))) (forall ((o2_55@@165 T@Ref) (f_203@@190 T@Field_26205_26137) ) (!  (=> (select (|PolymorphicMapType_56061_75522_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@165 f_203@@190) (= (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@73) o2_55@@165 f_203@@190) (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@165 f_203@@190)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@165 f_203@@190))
))) (forall ((o2_55@@166 T@Ref) (f_203@@191 T@Field_26205_53) ) (!  (=> (select (|PolymorphicMapType_56061_75522_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@166 f_203@@191) (= (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@73) o2_55@@166 f_203@@191) (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@166 f_203@@191)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@166 f_203@@191))
))) (forall ((o2_55@@167 T@Ref) (f_203@@192 T@Field_75522_75523) ) (!  (=> (select (|PolymorphicMapType_56061_75522_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@167 f_203@@192) (= (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@73) o2_55@@167 f_203@@192) (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@167 f_203@@192)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@167 f_203@@192))
))) (forall ((o2_55@@168 T@Ref) (f_203@@193 T@Field_75535_75540) ) (!  (=> (select (|PolymorphicMapType_56061_75522_236615#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@168 f_203@@193) (= (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@73) o2_55@@168 f_203@@193) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@168 f_203@@193)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@168 f_203@@193))
))) (forall ((o2_55@@169 T@Ref) (f_203@@194 T@Field_88384_1186) ) (!  (=> (select (|PolymorphicMapType_56061_88384_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@169 f_203@@194) (= (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@73) o2_55@@169 f_203@@194) (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@169 f_203@@194)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@169 f_203@@194))
))) (forall ((o2_55@@170 T@Ref) (f_203@@195 T@Field_88384_26137) ) (!  (=> (select (|PolymorphicMapType_56061_88384_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@170 f_203@@195) (= (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@73) o2_55@@170 f_203@@195) (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@170 f_203@@195)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@170 f_203@@195))
))) (forall ((o2_55@@171 T@Ref) (f_203@@196 T@Field_88384_53) ) (!  (=> (select (|PolymorphicMapType_56061_88384_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@171 f_203@@196) (= (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@73) o2_55@@171 f_203@@196) (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@171 f_203@@196)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@171 f_203@@196))
))) (forall ((o2_55@@172 T@Ref) (f_203@@197 T@Field_88384_88385) ) (!  (=> (select (|PolymorphicMapType_56061_88384_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@172 f_203@@197) (= (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@73) o2_55@@172 f_203@@197) (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@172 f_203@@197)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@172 f_203@@197))
))) (forall ((o2_55@@173 T@Ref) (f_203@@198 T@Field_88397_88402) ) (!  (=> (select (|PolymorphicMapType_56061_88384_237663#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@173 f_203@@198) (= (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@73) o2_55@@173 f_203@@198) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@173 f_203@@198)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@173 f_203@@198))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@73 ExhaleHeap@@42 Mask@@93) (IsWandField_60499_240385 pm_f_55@@15))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_55512) (ExhaleHeap@@43 T@PolymorphicMapType_55512) (Mask@@94 T@PolymorphicMapType_55533) (pm_f_55@@16 T@Field_58995_58996) ) (!  (=> (IdenticalOnKnownLocations Heap@@74 ExhaleHeap@@43 Mask@@94) (=> (and (HasDirectPerm_26140_26141 Mask@@94 null pm_f_55@@16) (IsWandField_26140_240028 pm_f_55@@16)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_55@@174 T@Ref) (f_203@@199 T@Field_58898_1186) ) (!  (=> (select (|PolymorphicMapType_56061_26134_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@174 f_203@@199) (= (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@74) o2_55@@174 f_203@@199) (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@174 f_203@@199)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@174 f_203@@199))
)) (forall ((o2_55@@175 T@Ref) (f_203@@200 T@Field_55585_55586) ) (!  (=> (select (|PolymorphicMapType_56061_26136_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@175 f_203@@200) (= (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@74) o2_55@@175 f_203@@200) (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@175 f_203@@200)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@175 f_203@@200))
))) (forall ((o2_55@@176 T@Ref) (f_203@@201 T@Field_55572_53) ) (!  (=> (select (|PolymorphicMapType_56061_26134_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@176 f_203@@201) (= (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@74) o2_55@@176 f_203@@201) (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@176 f_203@@201)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@176 f_203@@201))
))) (forall ((o2_55@@177 T@Ref) (f_203@@202 T@Field_26136_26206) ) (!  (=> (select (|PolymorphicMapType_56061_26134_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@177 f_203@@202) (= (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@74) o2_55@@177 f_203@@202) (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@177 f_203@@202)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@177 f_203@@202))
))) (forall ((o2_55@@178 T@Ref) (f_203@@203 T@Field_26136_59013) ) (!  (=> (select (|PolymorphicMapType_56061_26134_233471#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@178 f_203@@203) (= (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@74) o2_55@@178 f_203@@203) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@178 f_203@@203)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@178 f_203@@203))
))) (forall ((o2_55@@179 T@Ref) (f_203@@204 T@Field_26140_1186) ) (!  (=> (select (|PolymorphicMapType_56061_58995_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@179 f_203@@204) (= (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@74) o2_55@@179 f_203@@204) (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@179 f_203@@204)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@179 f_203@@204))
))) (forall ((o2_55@@180 T@Ref) (f_203@@205 T@Field_26140_26137) ) (!  (=> (select (|PolymorphicMapType_56061_58995_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@180 f_203@@205) (= (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@74) o2_55@@180 f_203@@205) (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@180 f_203@@205)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@180 f_203@@205))
))) (forall ((o2_55@@181 T@Ref) (f_203@@206 T@Field_26140_53) ) (!  (=> (select (|PolymorphicMapType_56061_58995_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@181 f_203@@206) (= (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@74) o2_55@@181 f_203@@206) (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@181 f_203@@206)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@181 f_203@@206))
))) (forall ((o2_55@@182 T@Ref) (f_203@@207 T@Field_58995_58996) ) (!  (=> (select (|PolymorphicMapType_56061_58995_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@182 f_203@@207) (= (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@74) o2_55@@182 f_203@@207) (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@182 f_203@@207)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@182 f_203@@207))
))) (forall ((o2_55@@183 T@Ref) (f_203@@208 T@Field_59008_59013) ) (!  (=> (select (|PolymorphicMapType_56061_58995_234519#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@183 f_203@@208) (= (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) o2_55@@183 f_203@@208) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@183 f_203@@208)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@183 f_203@@208))
))) (forall ((o2_55@@184 T@Ref) (f_203@@209 T@Field_60499_1186) ) (!  (=> (select (|PolymorphicMapType_56061_60499_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@184 f_203@@209) (= (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@74) o2_55@@184 f_203@@209) (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@184 f_203@@209)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@184 f_203@@209))
))) (forall ((o2_55@@185 T@Ref) (f_203@@210 T@Field_60499_26137) ) (!  (=> (select (|PolymorphicMapType_56061_60499_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@185 f_203@@210) (= (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@74) o2_55@@185 f_203@@210) (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@185 f_203@@210)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@185 f_203@@210))
))) (forall ((o2_55@@186 T@Ref) (f_203@@211 T@Field_60499_53) ) (!  (=> (select (|PolymorphicMapType_56061_60499_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@186 f_203@@211) (= (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@74) o2_55@@186 f_203@@211) (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@186 f_203@@211)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@186 f_203@@211))
))) (forall ((o2_55@@187 T@Ref) (f_203@@212 T@Field_60499_60500) ) (!  (=> (select (|PolymorphicMapType_56061_60499_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@187 f_203@@212) (= (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@74) o2_55@@187 f_203@@212) (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@187 f_203@@212)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@187 f_203@@212))
))) (forall ((o2_55@@188 T@Ref) (f_203@@213 T@Field_60512_60517) ) (!  (=> (select (|PolymorphicMapType_56061_60499_235567#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@188 f_203@@213) (= (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@74) o2_55@@188 f_203@@213) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@188 f_203@@213)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@188 f_203@@213))
))) (forall ((o2_55@@189 T@Ref) (f_203@@214 T@Field_26205_1186) ) (!  (=> (select (|PolymorphicMapType_56061_75522_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@189 f_203@@214) (= (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@74) o2_55@@189 f_203@@214) (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@189 f_203@@214)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@189 f_203@@214))
))) (forall ((o2_55@@190 T@Ref) (f_203@@215 T@Field_26205_26137) ) (!  (=> (select (|PolymorphicMapType_56061_75522_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@190 f_203@@215) (= (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@74) o2_55@@190 f_203@@215) (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@190 f_203@@215)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@190 f_203@@215))
))) (forall ((o2_55@@191 T@Ref) (f_203@@216 T@Field_26205_53) ) (!  (=> (select (|PolymorphicMapType_56061_75522_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@191 f_203@@216) (= (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@74) o2_55@@191 f_203@@216) (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@191 f_203@@216)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@191 f_203@@216))
))) (forall ((o2_55@@192 T@Ref) (f_203@@217 T@Field_75522_75523) ) (!  (=> (select (|PolymorphicMapType_56061_75522_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@192 f_203@@217) (= (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@74) o2_55@@192 f_203@@217) (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@192 f_203@@217)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@192 f_203@@217))
))) (forall ((o2_55@@193 T@Ref) (f_203@@218 T@Field_75535_75540) ) (!  (=> (select (|PolymorphicMapType_56061_75522_236615#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@193 f_203@@218) (= (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@74) o2_55@@193 f_203@@218) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@193 f_203@@218)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@193 f_203@@218))
))) (forall ((o2_55@@194 T@Ref) (f_203@@219 T@Field_88384_1186) ) (!  (=> (select (|PolymorphicMapType_56061_88384_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@194 f_203@@219) (= (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@74) o2_55@@194 f_203@@219) (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@194 f_203@@219)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@194 f_203@@219))
))) (forall ((o2_55@@195 T@Ref) (f_203@@220 T@Field_88384_26137) ) (!  (=> (select (|PolymorphicMapType_56061_88384_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@195 f_203@@220) (= (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@74) o2_55@@195 f_203@@220) (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@195 f_203@@220)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@195 f_203@@220))
))) (forall ((o2_55@@196 T@Ref) (f_203@@221 T@Field_88384_53) ) (!  (=> (select (|PolymorphicMapType_56061_88384_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@196 f_203@@221) (= (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@74) o2_55@@196 f_203@@221) (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@196 f_203@@221)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@196 f_203@@221))
))) (forall ((o2_55@@197 T@Ref) (f_203@@222 T@Field_88384_88385) ) (!  (=> (select (|PolymorphicMapType_56061_88384_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@197 f_203@@222) (= (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@74) o2_55@@197 f_203@@222) (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@197 f_203@@222)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@197 f_203@@222))
))) (forall ((o2_55@@198 T@Ref) (f_203@@223 T@Field_88397_88402) ) (!  (=> (select (|PolymorphicMapType_56061_88384_237663#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@198 f_203@@223) (= (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@74) o2_55@@198 f_203@@223) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@198 f_203@@223)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@198 f_203@@223))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@74 ExhaleHeap@@43 Mask@@94) (IsWandField_26140_240028 pm_f_55@@16))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_55512) (ExhaleHeap@@44 T@PolymorphicMapType_55512) (Mask@@95 T@PolymorphicMapType_55533) (pm_f_55@@17 T@Field_75522_75523) ) (!  (=> (IdenticalOnKnownLocations Heap@@75 ExhaleHeap@@44 Mask@@95) (=> (and (HasDirectPerm_26205_26206 Mask@@95 null pm_f_55@@17) (IsWandField_26205_239671 pm_f_55@@17)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_55@@199 T@Ref) (f_203@@224 T@Field_58898_1186) ) (!  (=> (select (|PolymorphicMapType_56061_26134_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@199 f_203@@224) (= (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@75) o2_55@@199 f_203@@224) (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@199 f_203@@224)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@199 f_203@@224))
)) (forall ((o2_55@@200 T@Ref) (f_203@@225 T@Field_55585_55586) ) (!  (=> (select (|PolymorphicMapType_56061_26136_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@200 f_203@@225) (= (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@75) o2_55@@200 f_203@@225) (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@200 f_203@@225)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@200 f_203@@225))
))) (forall ((o2_55@@201 T@Ref) (f_203@@226 T@Field_55572_53) ) (!  (=> (select (|PolymorphicMapType_56061_26134_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@201 f_203@@226) (= (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@75) o2_55@@201 f_203@@226) (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@201 f_203@@226)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@201 f_203@@226))
))) (forall ((o2_55@@202 T@Ref) (f_203@@227 T@Field_26136_26206) ) (!  (=> (select (|PolymorphicMapType_56061_26134_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@202 f_203@@227) (= (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@75) o2_55@@202 f_203@@227) (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@202 f_203@@227)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@202 f_203@@227))
))) (forall ((o2_55@@203 T@Ref) (f_203@@228 T@Field_26136_59013) ) (!  (=> (select (|PolymorphicMapType_56061_26134_233471#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@203 f_203@@228) (= (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@75) o2_55@@203 f_203@@228) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@203 f_203@@228)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@203 f_203@@228))
))) (forall ((o2_55@@204 T@Ref) (f_203@@229 T@Field_26140_1186) ) (!  (=> (select (|PolymorphicMapType_56061_58995_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@204 f_203@@229) (= (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@75) o2_55@@204 f_203@@229) (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@204 f_203@@229)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@204 f_203@@229))
))) (forall ((o2_55@@205 T@Ref) (f_203@@230 T@Field_26140_26137) ) (!  (=> (select (|PolymorphicMapType_56061_58995_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@205 f_203@@230) (= (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@75) o2_55@@205 f_203@@230) (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@205 f_203@@230)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@205 f_203@@230))
))) (forall ((o2_55@@206 T@Ref) (f_203@@231 T@Field_26140_53) ) (!  (=> (select (|PolymorphicMapType_56061_58995_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@206 f_203@@231) (= (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@75) o2_55@@206 f_203@@231) (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@206 f_203@@231)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@206 f_203@@231))
))) (forall ((o2_55@@207 T@Ref) (f_203@@232 T@Field_58995_58996) ) (!  (=> (select (|PolymorphicMapType_56061_58995_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@207 f_203@@232) (= (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@75) o2_55@@207 f_203@@232) (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@207 f_203@@232)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@207 f_203@@232))
))) (forall ((o2_55@@208 T@Ref) (f_203@@233 T@Field_59008_59013) ) (!  (=> (select (|PolymorphicMapType_56061_58995_234519#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@208 f_203@@233) (= (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@75) o2_55@@208 f_203@@233) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@208 f_203@@233)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@208 f_203@@233))
))) (forall ((o2_55@@209 T@Ref) (f_203@@234 T@Field_60499_1186) ) (!  (=> (select (|PolymorphicMapType_56061_60499_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@209 f_203@@234) (= (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@75) o2_55@@209 f_203@@234) (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@209 f_203@@234)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@209 f_203@@234))
))) (forall ((o2_55@@210 T@Ref) (f_203@@235 T@Field_60499_26137) ) (!  (=> (select (|PolymorphicMapType_56061_60499_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@210 f_203@@235) (= (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@75) o2_55@@210 f_203@@235) (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@210 f_203@@235)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@210 f_203@@235))
))) (forall ((o2_55@@211 T@Ref) (f_203@@236 T@Field_60499_53) ) (!  (=> (select (|PolymorphicMapType_56061_60499_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@211 f_203@@236) (= (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@75) o2_55@@211 f_203@@236) (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@211 f_203@@236)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@211 f_203@@236))
))) (forall ((o2_55@@212 T@Ref) (f_203@@237 T@Field_60499_60500) ) (!  (=> (select (|PolymorphicMapType_56061_60499_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@212 f_203@@237) (= (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@75) o2_55@@212 f_203@@237) (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@212 f_203@@237)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@212 f_203@@237))
))) (forall ((o2_55@@213 T@Ref) (f_203@@238 T@Field_60512_60517) ) (!  (=> (select (|PolymorphicMapType_56061_60499_235567#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@213 f_203@@238) (= (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@75) o2_55@@213 f_203@@238) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@213 f_203@@238)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@213 f_203@@238))
))) (forall ((o2_55@@214 T@Ref) (f_203@@239 T@Field_26205_1186) ) (!  (=> (select (|PolymorphicMapType_56061_75522_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@214 f_203@@239) (= (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@75) o2_55@@214 f_203@@239) (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@214 f_203@@239)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@214 f_203@@239))
))) (forall ((o2_55@@215 T@Ref) (f_203@@240 T@Field_26205_26137) ) (!  (=> (select (|PolymorphicMapType_56061_75522_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@215 f_203@@240) (= (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@75) o2_55@@215 f_203@@240) (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@215 f_203@@240)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@215 f_203@@240))
))) (forall ((o2_55@@216 T@Ref) (f_203@@241 T@Field_26205_53) ) (!  (=> (select (|PolymorphicMapType_56061_75522_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@216 f_203@@241) (= (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@75) o2_55@@216 f_203@@241) (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@216 f_203@@241)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@216 f_203@@241))
))) (forall ((o2_55@@217 T@Ref) (f_203@@242 T@Field_75522_75523) ) (!  (=> (select (|PolymorphicMapType_56061_75522_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@217 f_203@@242) (= (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@75) o2_55@@217 f_203@@242) (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@217 f_203@@242)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@217 f_203@@242))
))) (forall ((o2_55@@218 T@Ref) (f_203@@243 T@Field_75535_75540) ) (!  (=> (select (|PolymorphicMapType_56061_75522_236615#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@218 f_203@@243) (= (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) o2_55@@218 f_203@@243) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@218 f_203@@243)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@218 f_203@@243))
))) (forall ((o2_55@@219 T@Ref) (f_203@@244 T@Field_88384_1186) ) (!  (=> (select (|PolymorphicMapType_56061_88384_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@219 f_203@@244) (= (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@75) o2_55@@219 f_203@@244) (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@219 f_203@@244)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@219 f_203@@244))
))) (forall ((o2_55@@220 T@Ref) (f_203@@245 T@Field_88384_26137) ) (!  (=> (select (|PolymorphicMapType_56061_88384_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@220 f_203@@245) (= (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@75) o2_55@@220 f_203@@245) (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@220 f_203@@245)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@220 f_203@@245))
))) (forall ((o2_55@@221 T@Ref) (f_203@@246 T@Field_88384_53) ) (!  (=> (select (|PolymorphicMapType_56061_88384_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@221 f_203@@246) (= (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@75) o2_55@@221 f_203@@246) (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@221 f_203@@246)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@221 f_203@@246))
))) (forall ((o2_55@@222 T@Ref) (f_203@@247 T@Field_88384_88385) ) (!  (=> (select (|PolymorphicMapType_56061_88384_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@222 f_203@@247) (= (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@75) o2_55@@222 f_203@@247) (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@222 f_203@@247)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@222 f_203@@247))
))) (forall ((o2_55@@223 T@Ref) (f_203@@248 T@Field_88397_88402) ) (!  (=> (select (|PolymorphicMapType_56061_88384_237663#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@223 f_203@@248) (= (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@75) o2_55@@223 f_203@@248) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@223 f_203@@248)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@223 f_203@@248))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@75 ExhaleHeap@@44 Mask@@95) (IsWandField_26205_239671 pm_f_55@@17))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_55512) (ExhaleHeap@@45 T@PolymorphicMapType_55512) (Mask@@96 T@PolymorphicMapType_55533) (pm_f_55@@18 T@Field_26136_26206) ) (!  (=> (IdenticalOnKnownLocations Heap@@76 ExhaleHeap@@45 Mask@@96) (=> (and (HasDirectPerm_26136_26206 Mask@@96 null pm_f_55@@18) (IsWandField_26136_239314 pm_f_55@@18)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_55@@224 T@Ref) (f_203@@249 T@Field_58898_1186) ) (!  (=> (select (|PolymorphicMapType_56061_26134_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@224 f_203@@249) (= (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@76) o2_55@@224 f_203@@249) (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@224 f_203@@249)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@224 f_203@@249))
)) (forall ((o2_55@@225 T@Ref) (f_203@@250 T@Field_55585_55586) ) (!  (=> (select (|PolymorphicMapType_56061_26136_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@225 f_203@@250) (= (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@76) o2_55@@225 f_203@@250) (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@225 f_203@@250)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@225 f_203@@250))
))) (forall ((o2_55@@226 T@Ref) (f_203@@251 T@Field_55572_53) ) (!  (=> (select (|PolymorphicMapType_56061_26134_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@226 f_203@@251) (= (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@76) o2_55@@226 f_203@@251) (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@226 f_203@@251)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@226 f_203@@251))
))) (forall ((o2_55@@227 T@Ref) (f_203@@252 T@Field_26136_26206) ) (!  (=> (select (|PolymorphicMapType_56061_26134_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@227 f_203@@252) (= (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@76) o2_55@@227 f_203@@252) (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@227 f_203@@252)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@227 f_203@@252))
))) (forall ((o2_55@@228 T@Ref) (f_203@@253 T@Field_26136_59013) ) (!  (=> (select (|PolymorphicMapType_56061_26134_233471#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@228 f_203@@253) (= (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) o2_55@@228 f_203@@253) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@228 f_203@@253)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@228 f_203@@253))
))) (forall ((o2_55@@229 T@Ref) (f_203@@254 T@Field_26140_1186) ) (!  (=> (select (|PolymorphicMapType_56061_58995_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@229 f_203@@254) (= (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@76) o2_55@@229 f_203@@254) (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@229 f_203@@254)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@229 f_203@@254))
))) (forall ((o2_55@@230 T@Ref) (f_203@@255 T@Field_26140_26137) ) (!  (=> (select (|PolymorphicMapType_56061_58995_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@230 f_203@@255) (= (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@76) o2_55@@230 f_203@@255) (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@230 f_203@@255)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@230 f_203@@255))
))) (forall ((o2_55@@231 T@Ref) (f_203@@256 T@Field_26140_53) ) (!  (=> (select (|PolymorphicMapType_56061_58995_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@231 f_203@@256) (= (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@76) o2_55@@231 f_203@@256) (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@231 f_203@@256)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@231 f_203@@256))
))) (forall ((o2_55@@232 T@Ref) (f_203@@257 T@Field_58995_58996) ) (!  (=> (select (|PolymorphicMapType_56061_58995_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@232 f_203@@257) (= (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@76) o2_55@@232 f_203@@257) (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@232 f_203@@257)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@232 f_203@@257))
))) (forall ((o2_55@@233 T@Ref) (f_203@@258 T@Field_59008_59013) ) (!  (=> (select (|PolymorphicMapType_56061_58995_234519#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@233 f_203@@258) (= (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@76) o2_55@@233 f_203@@258) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@233 f_203@@258)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@233 f_203@@258))
))) (forall ((o2_55@@234 T@Ref) (f_203@@259 T@Field_60499_1186) ) (!  (=> (select (|PolymorphicMapType_56061_60499_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@234 f_203@@259) (= (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@76) o2_55@@234 f_203@@259) (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@234 f_203@@259)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@234 f_203@@259))
))) (forall ((o2_55@@235 T@Ref) (f_203@@260 T@Field_60499_26137) ) (!  (=> (select (|PolymorphicMapType_56061_60499_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@235 f_203@@260) (= (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@76) o2_55@@235 f_203@@260) (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@235 f_203@@260)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@235 f_203@@260))
))) (forall ((o2_55@@236 T@Ref) (f_203@@261 T@Field_60499_53) ) (!  (=> (select (|PolymorphicMapType_56061_60499_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@236 f_203@@261) (= (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@76) o2_55@@236 f_203@@261) (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@236 f_203@@261)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@236 f_203@@261))
))) (forall ((o2_55@@237 T@Ref) (f_203@@262 T@Field_60499_60500) ) (!  (=> (select (|PolymorphicMapType_56061_60499_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@237 f_203@@262) (= (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@76) o2_55@@237 f_203@@262) (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@237 f_203@@262)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@237 f_203@@262))
))) (forall ((o2_55@@238 T@Ref) (f_203@@263 T@Field_60512_60517) ) (!  (=> (select (|PolymorphicMapType_56061_60499_235567#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@238 f_203@@263) (= (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@76) o2_55@@238 f_203@@263) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@238 f_203@@263)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@238 f_203@@263))
))) (forall ((o2_55@@239 T@Ref) (f_203@@264 T@Field_26205_1186) ) (!  (=> (select (|PolymorphicMapType_56061_75522_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@239 f_203@@264) (= (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@76) o2_55@@239 f_203@@264) (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@239 f_203@@264)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@239 f_203@@264))
))) (forall ((o2_55@@240 T@Ref) (f_203@@265 T@Field_26205_26137) ) (!  (=> (select (|PolymorphicMapType_56061_75522_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@240 f_203@@265) (= (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@76) o2_55@@240 f_203@@265) (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@240 f_203@@265)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@240 f_203@@265))
))) (forall ((o2_55@@241 T@Ref) (f_203@@266 T@Field_26205_53) ) (!  (=> (select (|PolymorphicMapType_56061_75522_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@241 f_203@@266) (= (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@76) o2_55@@241 f_203@@266) (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@241 f_203@@266)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@241 f_203@@266))
))) (forall ((o2_55@@242 T@Ref) (f_203@@267 T@Field_75522_75523) ) (!  (=> (select (|PolymorphicMapType_56061_75522_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@242 f_203@@267) (= (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@76) o2_55@@242 f_203@@267) (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@242 f_203@@267)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@242 f_203@@267))
))) (forall ((o2_55@@243 T@Ref) (f_203@@268 T@Field_75535_75540) ) (!  (=> (select (|PolymorphicMapType_56061_75522_236615#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@243 f_203@@268) (= (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@76) o2_55@@243 f_203@@268) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@243 f_203@@268)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@243 f_203@@268))
))) (forall ((o2_55@@244 T@Ref) (f_203@@269 T@Field_88384_1186) ) (!  (=> (select (|PolymorphicMapType_56061_88384_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@244 f_203@@269) (= (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@76) o2_55@@244 f_203@@269) (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@244 f_203@@269)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@244 f_203@@269))
))) (forall ((o2_55@@245 T@Ref) (f_203@@270 T@Field_88384_26137) ) (!  (=> (select (|PolymorphicMapType_56061_88384_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@245 f_203@@270) (= (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@76) o2_55@@245 f_203@@270) (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@245 f_203@@270)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@245 f_203@@270))
))) (forall ((o2_55@@246 T@Ref) (f_203@@271 T@Field_88384_53) ) (!  (=> (select (|PolymorphicMapType_56061_88384_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@246 f_203@@271) (= (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@76) o2_55@@246 f_203@@271) (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@246 f_203@@271)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@246 f_203@@271))
))) (forall ((o2_55@@247 T@Ref) (f_203@@272 T@Field_88384_88385) ) (!  (=> (select (|PolymorphicMapType_56061_88384_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@247 f_203@@272) (= (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@76) o2_55@@247 f_203@@272) (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@247 f_203@@272)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@247 f_203@@272))
))) (forall ((o2_55@@248 T@Ref) (f_203@@273 T@Field_88397_88402) ) (!  (=> (select (|PolymorphicMapType_56061_88384_237663#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@248 f_203@@273) (= (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@76) o2_55@@248 f_203@@273) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@248 f_203@@273)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@248 f_203@@273))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@76 ExhaleHeap@@45 Mask@@96) (IsWandField_26136_239314 pm_f_55@@18))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@77 () T@PolymorphicMapType_55512)
(declare-fun r_1@@23 () T@Ref)
(declare-fun Mask@3 () T@PolymorphicMapType_55533)
(declare-fun Mask@1 () T@PolymorphicMapType_55533)
(declare-fun Mask@2 () T@PolymorphicMapType_55533)
(declare-fun Mask@0 () T@PolymorphicMapType_55533)
(set-info :boogie-vc-id |valid#definedness|)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon2_correct true))
(let ((anon3_Else_correct  (=> (= (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@77) r_1@@23 next) null) (=> (and (= Mask@3 Mask@1) (= (ControlFlow 0 4) 1)) anon2_correct))))
(let ((anon3_Then_correct  (=> (not (= (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@77) r_1@@23 next) null)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_26136_26137 Mask@1 r_1@@23 next)) (=> (HasDirectPerm_26136_26137 Mask@1 r_1@@23 next) (=> (and (and (= Mask@2 (PolymorphicMapType_55533 (|PolymorphicMapType_55533_26134_1186#PolymorphicMapType_55533| Mask@1) (|PolymorphicMapType_55533_26136_26137#PolymorphicMapType_55533| Mask@1) (store (|PolymorphicMapType_55533_26140_26141#PolymorphicMapType_55533| Mask@1) null (valid (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@77) r_1@@23 next)) (+ (select (|PolymorphicMapType_55533_26140_26141#PolymorphicMapType_55533| Mask@1) null (valid (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@77) r_1@@23 next))) FullPerm)) (|PolymorphicMapType_55533_26165_26166#PolymorphicMapType_55533| Mask@1) (|PolymorphicMapType_55533_26205_26206#PolymorphicMapType_55533| Mask@1) (|PolymorphicMapType_55533_26245_26246#PolymorphicMapType_55533| Mask@1) (|PolymorphicMapType_55533_26134_26141#PolymorphicMapType_55533| Mask@1) (|PolymorphicMapType_55533_26134_53#PolymorphicMapType_55533| Mask@1) (|PolymorphicMapType_55533_26134_250392#PolymorphicMapType_55533| Mask@1) (|PolymorphicMapType_55533_26140_1186#PolymorphicMapType_55533| Mask@1) (|PolymorphicMapType_55533_26140_26137#PolymorphicMapType_55533| Mask@1) (|PolymorphicMapType_55533_26140_53#PolymorphicMapType_55533| Mask@1) (|PolymorphicMapType_55533_26140_250803#PolymorphicMapType_55533| Mask@1) (|PolymorphicMapType_55533_26165_1186#PolymorphicMapType_55533| Mask@1) (|PolymorphicMapType_55533_26165_26137#PolymorphicMapType_55533| Mask@1) (|PolymorphicMapType_55533_26165_53#PolymorphicMapType_55533| Mask@1) (|PolymorphicMapType_55533_26165_251214#PolymorphicMapType_55533| Mask@1) (|PolymorphicMapType_55533_26205_1186#PolymorphicMapType_55533| Mask@1) (|PolymorphicMapType_55533_26205_26137#PolymorphicMapType_55533| Mask@1) (|PolymorphicMapType_55533_26205_53#PolymorphicMapType_55533| Mask@1) (|PolymorphicMapType_55533_26205_251625#PolymorphicMapType_55533| Mask@1) (|PolymorphicMapType_55533_26245_1186#PolymorphicMapType_55533| Mask@1) (|PolymorphicMapType_55533_26245_26137#PolymorphicMapType_55533| Mask@1) (|PolymorphicMapType_55533_26245_53#PolymorphicMapType_55533| Mask@1) (|PolymorphicMapType_55533_26245_252036#PolymorphicMapType_55533| Mask@1))) (state Heap@@77 Mask@2)) (and (= Mask@3 Mask@2) (= (ControlFlow 0 2) 1))) anon2_correct))))))
(let ((anon0_correct  (=> (state Heap@@77 ZeroMask) (=> (and (and (and AssumePermUpperBound (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@77) r_1@@23 $allocated)) (and (not (= r_1@@23 null)) (= Mask@0 (PolymorphicMapType_55533 (store (|PolymorphicMapType_55533_26134_1186#PolymorphicMapType_55533| ZeroMask) r_1@@23 f_7 (+ (select (|PolymorphicMapType_55533_26134_1186#PolymorphicMapType_55533| ZeroMask) r_1@@23 f_7) FullPerm)) (|PolymorphicMapType_55533_26136_26137#PolymorphicMapType_55533| ZeroMask) (|PolymorphicMapType_55533_26140_26141#PolymorphicMapType_55533| ZeroMask) (|PolymorphicMapType_55533_26165_26166#PolymorphicMapType_55533| ZeroMask) (|PolymorphicMapType_55533_26205_26206#PolymorphicMapType_55533| ZeroMask) (|PolymorphicMapType_55533_26245_26246#PolymorphicMapType_55533| ZeroMask) (|PolymorphicMapType_55533_26134_26141#PolymorphicMapType_55533| ZeroMask) (|PolymorphicMapType_55533_26134_53#PolymorphicMapType_55533| ZeroMask) (|PolymorphicMapType_55533_26134_250392#PolymorphicMapType_55533| ZeroMask) (|PolymorphicMapType_55533_26140_1186#PolymorphicMapType_55533| ZeroMask) (|PolymorphicMapType_55533_26140_26137#PolymorphicMapType_55533| ZeroMask) (|PolymorphicMapType_55533_26140_53#PolymorphicMapType_55533| ZeroMask) (|PolymorphicMapType_55533_26140_250803#PolymorphicMapType_55533| ZeroMask) (|PolymorphicMapType_55533_26165_1186#PolymorphicMapType_55533| ZeroMask) (|PolymorphicMapType_55533_26165_26137#PolymorphicMapType_55533| ZeroMask) (|PolymorphicMapType_55533_26165_53#PolymorphicMapType_55533| ZeroMask) (|PolymorphicMapType_55533_26165_251214#PolymorphicMapType_55533| ZeroMask) (|PolymorphicMapType_55533_26205_1186#PolymorphicMapType_55533| ZeroMask) (|PolymorphicMapType_55533_26205_26137#PolymorphicMapType_55533| ZeroMask) (|PolymorphicMapType_55533_26205_53#PolymorphicMapType_55533| ZeroMask) (|PolymorphicMapType_55533_26205_251625#PolymorphicMapType_55533| ZeroMask) (|PolymorphicMapType_55533_26245_1186#PolymorphicMapType_55533| ZeroMask) (|PolymorphicMapType_55533_26245_26137#PolymorphicMapType_55533| ZeroMask) (|PolymorphicMapType_55533_26245_53#PolymorphicMapType_55533| ZeroMask) (|PolymorphicMapType_55533_26245_252036#PolymorphicMapType_55533| ZeroMask))))) (and (and (state Heap@@77 Mask@0) (not (= r_1@@23 null))) (and (= Mask@1 (PolymorphicMapType_55533 (|PolymorphicMapType_55533_26134_1186#PolymorphicMapType_55533| Mask@0) (store (|PolymorphicMapType_55533_26136_26137#PolymorphicMapType_55533| Mask@0) r_1@@23 next (+ (select (|PolymorphicMapType_55533_26136_26137#PolymorphicMapType_55533| Mask@0) r_1@@23 next) FullPerm)) (|PolymorphicMapType_55533_26140_26141#PolymorphicMapType_55533| Mask@0) (|PolymorphicMapType_55533_26165_26166#PolymorphicMapType_55533| Mask@0) (|PolymorphicMapType_55533_26205_26206#PolymorphicMapType_55533| Mask@0) (|PolymorphicMapType_55533_26245_26246#PolymorphicMapType_55533| Mask@0) (|PolymorphicMapType_55533_26134_26141#PolymorphicMapType_55533| Mask@0) (|PolymorphicMapType_55533_26134_53#PolymorphicMapType_55533| Mask@0) (|PolymorphicMapType_55533_26134_250392#PolymorphicMapType_55533| Mask@0) (|PolymorphicMapType_55533_26140_1186#PolymorphicMapType_55533| Mask@0) (|PolymorphicMapType_55533_26140_26137#PolymorphicMapType_55533| Mask@0) (|PolymorphicMapType_55533_26140_53#PolymorphicMapType_55533| Mask@0) (|PolymorphicMapType_55533_26140_250803#PolymorphicMapType_55533| Mask@0) (|PolymorphicMapType_55533_26165_1186#PolymorphicMapType_55533| Mask@0) (|PolymorphicMapType_55533_26165_26137#PolymorphicMapType_55533| Mask@0) (|PolymorphicMapType_55533_26165_53#PolymorphicMapType_55533| Mask@0) (|PolymorphicMapType_55533_26165_251214#PolymorphicMapType_55533| Mask@0) (|PolymorphicMapType_55533_26205_1186#PolymorphicMapType_55533| Mask@0) (|PolymorphicMapType_55533_26205_26137#PolymorphicMapType_55533| Mask@0) (|PolymorphicMapType_55533_26205_53#PolymorphicMapType_55533| Mask@0) (|PolymorphicMapType_55533_26205_251625#PolymorphicMapType_55533| Mask@0) (|PolymorphicMapType_55533_26245_1186#PolymorphicMapType_55533| Mask@0) (|PolymorphicMapType_55533_26245_26137#PolymorphicMapType_55533| Mask@0) (|PolymorphicMapType_55533_26245_53#PolymorphicMapType_55533| Mask@0) (|PolymorphicMapType_55533_26245_252036#PolymorphicMapType_55533| Mask@0))) (state Heap@@77 Mask@1)))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_26136_26137 Mask@1 r_1@@23 next)) (=> (HasDirectPerm_26136_26137 Mask@1 r_1@@23 next) (and (=> (= (ControlFlow 0 5) 2) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 5) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
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
(declare-sort T@Field_55572_53 0)
(declare-sort T@Field_55585_55586 0)
(declare-sort T@Field_60499_60500 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_58898_1186 0)
(declare-sort T@Field_60512_60517 0)
(declare-sort T@Field_75522_75523 0)
(declare-sort T@Field_75535_75540 0)
(declare-sort T@Field_58995_58996 0)
(declare-sort T@Field_59008_59013 0)
(declare-sort T@Field_88384_88385 0)
(declare-sort T@Field_88397_88402 0)
(declare-sort T@Field_26136_26206 0)
(declare-sort T@Field_26136_59013 0)
(declare-sort T@Field_26205_26137 0)
(declare-sort T@Field_26205_1186 0)
(declare-sort T@Field_26205_53 0)
(declare-sort T@Field_26140_26137 0)
(declare-sort T@Field_26140_1186 0)
(declare-sort T@Field_26140_53 0)
(declare-sort T@Field_60499_26137 0)
(declare-sort T@Field_60499_1186 0)
(declare-sort T@Field_60499_53 0)
(declare-sort T@Field_88384_26137 0)
(declare-sort T@Field_88384_1186 0)
(declare-sort T@Field_88384_53 0)
(declare-datatypes ((T@PolymorphicMapType_55533 0)) (((PolymorphicMapType_55533 (|PolymorphicMapType_55533_26134_1186#PolymorphicMapType_55533| (Array T@Ref T@Field_58898_1186 Real)) (|PolymorphicMapType_55533_26136_26137#PolymorphicMapType_55533| (Array T@Ref T@Field_55585_55586 Real)) (|PolymorphicMapType_55533_26140_26141#PolymorphicMapType_55533| (Array T@Ref T@Field_58995_58996 Real)) (|PolymorphicMapType_55533_26165_26166#PolymorphicMapType_55533| (Array T@Ref T@Field_60499_60500 Real)) (|PolymorphicMapType_55533_26205_26206#PolymorphicMapType_55533| (Array T@Ref T@Field_75522_75523 Real)) (|PolymorphicMapType_55533_26245_26246#PolymorphicMapType_55533| (Array T@Ref T@Field_88384_88385 Real)) (|PolymorphicMapType_55533_26134_26141#PolymorphicMapType_55533| (Array T@Ref T@Field_26136_26206 Real)) (|PolymorphicMapType_55533_26134_53#PolymorphicMapType_55533| (Array T@Ref T@Field_55572_53 Real)) (|PolymorphicMapType_55533_26134_250392#PolymorphicMapType_55533| (Array T@Ref T@Field_26136_59013 Real)) (|PolymorphicMapType_55533_26140_1186#PolymorphicMapType_55533| (Array T@Ref T@Field_26140_1186 Real)) (|PolymorphicMapType_55533_26140_26137#PolymorphicMapType_55533| (Array T@Ref T@Field_26140_26137 Real)) (|PolymorphicMapType_55533_26140_53#PolymorphicMapType_55533| (Array T@Ref T@Field_26140_53 Real)) (|PolymorphicMapType_55533_26140_250803#PolymorphicMapType_55533| (Array T@Ref T@Field_59008_59013 Real)) (|PolymorphicMapType_55533_26165_1186#PolymorphicMapType_55533| (Array T@Ref T@Field_60499_1186 Real)) (|PolymorphicMapType_55533_26165_26137#PolymorphicMapType_55533| (Array T@Ref T@Field_60499_26137 Real)) (|PolymorphicMapType_55533_26165_53#PolymorphicMapType_55533| (Array T@Ref T@Field_60499_53 Real)) (|PolymorphicMapType_55533_26165_251214#PolymorphicMapType_55533| (Array T@Ref T@Field_60512_60517 Real)) (|PolymorphicMapType_55533_26205_1186#PolymorphicMapType_55533| (Array T@Ref T@Field_26205_1186 Real)) (|PolymorphicMapType_55533_26205_26137#PolymorphicMapType_55533| (Array T@Ref T@Field_26205_26137 Real)) (|PolymorphicMapType_55533_26205_53#PolymorphicMapType_55533| (Array T@Ref T@Field_26205_53 Real)) (|PolymorphicMapType_55533_26205_251625#PolymorphicMapType_55533| (Array T@Ref T@Field_75535_75540 Real)) (|PolymorphicMapType_55533_26245_1186#PolymorphicMapType_55533| (Array T@Ref T@Field_88384_1186 Real)) (|PolymorphicMapType_55533_26245_26137#PolymorphicMapType_55533| (Array T@Ref T@Field_88384_26137 Real)) (|PolymorphicMapType_55533_26245_53#PolymorphicMapType_55533| (Array T@Ref T@Field_88384_53 Real)) (|PolymorphicMapType_55533_26245_252036#PolymorphicMapType_55533| (Array T@Ref T@Field_88397_88402 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_56061 0)) (((PolymorphicMapType_56061 (|PolymorphicMapType_56061_26134_1186#PolymorphicMapType_56061| (Array T@Ref T@Field_58898_1186 Bool)) (|PolymorphicMapType_56061_26136_26137#PolymorphicMapType_56061| (Array T@Ref T@Field_55585_55586 Bool)) (|PolymorphicMapType_56061_26134_53#PolymorphicMapType_56061| (Array T@Ref T@Field_55572_53 Bool)) (|PolymorphicMapType_56061_26134_58996#PolymorphicMapType_56061| (Array T@Ref T@Field_26136_26206 Bool)) (|PolymorphicMapType_56061_26134_233471#PolymorphicMapType_56061| (Array T@Ref T@Field_26136_59013 Bool)) (|PolymorphicMapType_56061_58995_1186#PolymorphicMapType_56061| (Array T@Ref T@Field_26140_1186 Bool)) (|PolymorphicMapType_56061_58995_26137#PolymorphicMapType_56061| (Array T@Ref T@Field_26140_26137 Bool)) (|PolymorphicMapType_56061_58995_53#PolymorphicMapType_56061| (Array T@Ref T@Field_26140_53 Bool)) (|PolymorphicMapType_56061_58995_58996#PolymorphicMapType_56061| (Array T@Ref T@Field_58995_58996 Bool)) (|PolymorphicMapType_56061_58995_234519#PolymorphicMapType_56061| (Array T@Ref T@Field_59008_59013 Bool)) (|PolymorphicMapType_56061_60499_1186#PolymorphicMapType_56061| (Array T@Ref T@Field_60499_1186 Bool)) (|PolymorphicMapType_56061_60499_26137#PolymorphicMapType_56061| (Array T@Ref T@Field_60499_26137 Bool)) (|PolymorphicMapType_56061_60499_53#PolymorphicMapType_56061| (Array T@Ref T@Field_60499_53 Bool)) (|PolymorphicMapType_56061_60499_58996#PolymorphicMapType_56061| (Array T@Ref T@Field_60499_60500 Bool)) (|PolymorphicMapType_56061_60499_235567#PolymorphicMapType_56061| (Array T@Ref T@Field_60512_60517 Bool)) (|PolymorphicMapType_56061_75522_1186#PolymorphicMapType_56061| (Array T@Ref T@Field_26205_1186 Bool)) (|PolymorphicMapType_56061_75522_26137#PolymorphicMapType_56061| (Array T@Ref T@Field_26205_26137 Bool)) (|PolymorphicMapType_56061_75522_53#PolymorphicMapType_56061| (Array T@Ref T@Field_26205_53 Bool)) (|PolymorphicMapType_56061_75522_58996#PolymorphicMapType_56061| (Array T@Ref T@Field_75522_75523 Bool)) (|PolymorphicMapType_56061_75522_236615#PolymorphicMapType_56061| (Array T@Ref T@Field_75535_75540 Bool)) (|PolymorphicMapType_56061_88384_1186#PolymorphicMapType_56061| (Array T@Ref T@Field_88384_1186 Bool)) (|PolymorphicMapType_56061_88384_26137#PolymorphicMapType_56061| (Array T@Ref T@Field_88384_26137 Bool)) (|PolymorphicMapType_56061_88384_53#PolymorphicMapType_56061| (Array T@Ref T@Field_88384_53 Bool)) (|PolymorphicMapType_56061_88384_58996#PolymorphicMapType_56061| (Array T@Ref T@Field_88384_88385 Bool)) (|PolymorphicMapType_56061_88384_237663#PolymorphicMapType_56061| (Array T@Ref T@Field_88397_88402 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_55512 0)) (((PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| (Array T@Ref T@Field_55572_53 Bool)) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| (Array T@Ref T@Field_55585_55586 T@Ref)) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| (Array T@Ref T@Field_60499_60500 T@FrameType)) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| (Array T@Ref T@Field_58898_1186 Int)) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| (Array T@Ref T@Field_60512_60517 T@PolymorphicMapType_56061)) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| (Array T@Ref T@Field_75522_75523 T@FrameType)) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| (Array T@Ref T@Field_75535_75540 T@PolymorphicMapType_56061)) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| (Array T@Ref T@Field_58995_58996 T@FrameType)) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| (Array T@Ref T@Field_59008_59013 T@PolymorphicMapType_56061)) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| (Array T@Ref T@Field_88384_88385 T@FrameType)) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| (Array T@Ref T@Field_88397_88402 T@PolymorphicMapType_56061)) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| (Array T@Ref T@Field_26136_26206 T@FrameType)) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| (Array T@Ref T@Field_26136_59013 T@PolymorphicMapType_56061)) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| (Array T@Ref T@Field_26205_26137 T@Ref)) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| (Array T@Ref T@Field_26205_1186 Int)) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| (Array T@Ref T@Field_26205_53 Bool)) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| (Array T@Ref T@Field_26140_26137 T@Ref)) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| (Array T@Ref T@Field_26140_1186 Int)) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| (Array T@Ref T@Field_26140_53 Bool)) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| (Array T@Ref T@Field_60499_26137 T@Ref)) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| (Array T@Ref T@Field_60499_1186 Int)) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| (Array T@Ref T@Field_60499_53 Bool)) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| (Array T@Ref T@Field_88384_26137 T@Ref)) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| (Array T@Ref T@Field_88384_1186 Int)) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| (Array T@Ref T@Field_88384_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_55572_53)
(declare-fun f_7 () T@Field_58898_1186)
(declare-fun next () T@Field_55585_55586)
(declare-fun succHeap (T@PolymorphicMapType_55512 T@PolymorphicMapType_55512) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_55512 T@PolymorphicMapType_55512) Bool)
(declare-fun state (T@PolymorphicMapType_55512 T@PolymorphicMapType_55533) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_55533) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_56061)
(declare-fun valid (T@Ref) T@Field_58995_58996)
(declare-fun IsPredicateField_26140_26141 (T@Field_58995_58996) Bool)
(declare-fun deeper (T@Ref) T@Field_60499_60500)
(declare-fun IsPredicateField_26165_26166 (T@Field_60499_60500) Bool)
(declare-fun strange (T@Ref) T@Field_75522_75523)
(declare-fun IsPredicateField_26205_26206 (T@Field_75522_75523) Bool)
(declare-fun deeperfalse (T@Ref) T@Field_88384_88385)
(declare-fun IsPredicateField_26245_26246 (T@Field_88384_88385) Bool)
(declare-fun |valid#trigger_26140| (T@PolymorphicMapType_55512 T@Field_58995_58996) Bool)
(declare-fun |valid#everUsed_26140| (T@Field_58995_58996) Bool)
(declare-fun |deeper#trigger_26165| (T@PolymorphicMapType_55512 T@Field_60499_60500) Bool)
(declare-fun |deeper#everUsed_26165| (T@Field_60499_60500) Bool)
(declare-fun |strange#trigger_26205| (T@PolymorphicMapType_55512 T@Field_75522_75523) Bool)
(declare-fun |strange#everUsed_26205| (T@Field_75522_75523) Bool)
(declare-fun |deeperfalse#trigger_26245| (T@PolymorphicMapType_55512 T@Field_88384_88385) Bool)
(declare-fun |deeperfalse#everUsed_26245| (T@Field_88384_88385) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_55512 T@PolymorphicMapType_55512 T@PolymorphicMapType_55533) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_26245 (T@Field_88384_88385) T@Field_88397_88402)
(declare-fun HasDirectPerm_88384_26206 (T@PolymorphicMapType_55533 T@Ref T@Field_88384_88385) Bool)
(declare-fun PredicateMaskField_26165 (T@Field_60499_60500) T@Field_60512_60517)
(declare-fun HasDirectPerm_60499_26206 (T@PolymorphicMapType_55533 T@Ref T@Field_60499_60500) Bool)
(declare-fun PredicateMaskField_26140 (T@Field_58995_58996) T@Field_59008_59013)
(declare-fun HasDirectPerm_26140_26141 (T@PolymorphicMapType_55533 T@Ref T@Field_58995_58996) Bool)
(declare-fun PredicateMaskField_26205 (T@Field_75522_75523) T@Field_75535_75540)
(declare-fun HasDirectPerm_26205_26206 (T@PolymorphicMapType_55533 T@Ref T@Field_75522_75523) Bool)
(declare-fun IsPredicateField_26136_231039 (T@Field_26136_26206) Bool)
(declare-fun PredicateMaskField_26136 (T@Field_26136_26206) T@Field_26136_59013)
(declare-fun HasDirectPerm_26136_26206 (T@PolymorphicMapType_55533 T@Ref T@Field_26136_26206) Bool)
(declare-fun IsWandField_88384_240742 (T@Field_88384_88385) Bool)
(declare-fun WandMaskField_88384 (T@Field_88384_88385) T@Field_88397_88402)
(declare-fun IsWandField_60499_240385 (T@Field_60499_60500) Bool)
(declare-fun WandMaskField_60499 (T@Field_60499_60500) T@Field_60512_60517)
(declare-fun IsWandField_26140_240028 (T@Field_58995_58996) Bool)
(declare-fun WandMaskField_26140 (T@Field_58995_58996) T@Field_59008_59013)
(declare-fun IsWandField_26205_239671 (T@Field_75522_75523) Bool)
(declare-fun WandMaskField_26205 (T@Field_75522_75523) T@Field_75535_75540)
(declare-fun IsWandField_26136_239314 (T@Field_26136_26206) Bool)
(declare-fun WandMaskField_26136 (T@Field_26136_26206) T@Field_26136_59013)
(declare-fun |valid#sm| (T@Ref) T@Field_59008_59013)
(declare-fun |deeper#sm| (T@Ref) T@Field_60512_60517)
(declare-fun |strange#sm| (T@Ref) T@Field_75535_75540)
(declare-fun |deeperfalse#sm| (T@Ref) T@Field_88397_88402)
(declare-fun dummyHeap () T@PolymorphicMapType_55512)
(declare-fun ZeroMask () T@PolymorphicMapType_55533)
(declare-fun InsidePredicate_55572_55572 (T@Field_26136_26206 T@FrameType T@Field_26136_26206 T@FrameType) Bool)
(declare-fun InsidePredicate_26245_88384 (T@Field_88384_88385 T@FrameType T@Field_88384_88385 T@FrameType) Bool)
(declare-fun InsidePredicate_26140_26140 (T@Field_58995_58996 T@FrameType T@Field_58995_58996 T@FrameType) Bool)
(declare-fun InsidePredicate_26205_26205 (T@Field_75522_75523 T@FrameType T@Field_75522_75523 T@FrameType) Bool)
(declare-fun InsidePredicate_26165_26165 (T@Field_60499_60500 T@FrameType T@Field_60499_60500 T@FrameType) Bool)
(declare-fun IsPredicateField_26134_1186 (T@Field_58898_1186) Bool)
(declare-fun IsWandField_26134_1186 (T@Field_58898_1186) Bool)
(declare-fun IsPredicateField_26136_26137 (T@Field_55585_55586) Bool)
(declare-fun IsWandField_26136_26137 (T@Field_55585_55586) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_26245_257803 (T@Field_88397_88402) Bool)
(declare-fun IsWandField_26245_257819 (T@Field_88397_88402) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_26245_53 (T@Field_88384_53) Bool)
(declare-fun IsWandField_26245_53 (T@Field_88384_53) Bool)
(declare-fun IsPredicateField_26245_26137 (T@Field_88384_26137) Bool)
(declare-fun IsWandField_26245_26137 (T@Field_88384_26137) Bool)
(declare-fun IsPredicateField_26245_1186 (T@Field_88384_1186) Bool)
(declare-fun IsWandField_26245_1186 (T@Field_88384_1186) Bool)
(declare-fun IsPredicateField_26205_256972 (T@Field_75535_75540) Bool)
(declare-fun IsWandField_26205_256988 (T@Field_75535_75540) Bool)
(declare-fun IsPredicateField_26205_53 (T@Field_26205_53) Bool)
(declare-fun IsWandField_26205_53 (T@Field_26205_53) Bool)
(declare-fun IsPredicateField_26205_26137 (T@Field_26205_26137) Bool)
(declare-fun IsWandField_26205_26137 (T@Field_26205_26137) Bool)
(declare-fun IsPredicateField_26205_1186 (T@Field_26205_1186) Bool)
(declare-fun IsWandField_26205_1186 (T@Field_26205_1186) Bool)
(declare-fun IsPredicateField_26165_256141 (T@Field_60512_60517) Bool)
(declare-fun IsWandField_26165_256157 (T@Field_60512_60517) Bool)
(declare-fun IsPredicateField_26165_53 (T@Field_60499_53) Bool)
(declare-fun IsWandField_26165_53 (T@Field_60499_53) Bool)
(declare-fun IsPredicateField_26165_26137 (T@Field_60499_26137) Bool)
(declare-fun IsWandField_26165_26137 (T@Field_60499_26137) Bool)
(declare-fun IsPredicateField_26165_1186 (T@Field_60499_1186) Bool)
(declare-fun IsWandField_26165_1186 (T@Field_60499_1186) Bool)
(declare-fun IsPredicateField_26140_255310 (T@Field_59008_59013) Bool)
(declare-fun IsWandField_26140_255326 (T@Field_59008_59013) Bool)
(declare-fun IsPredicateField_26140_53 (T@Field_26140_53) Bool)
(declare-fun IsWandField_26140_53 (T@Field_26140_53) Bool)
(declare-fun IsPredicateField_26140_26137 (T@Field_26140_26137) Bool)
(declare-fun IsWandField_26140_26137 (T@Field_26140_26137) Bool)
(declare-fun IsPredicateField_26140_1186 (T@Field_26140_1186) Bool)
(declare-fun IsWandField_26140_1186 (T@Field_26140_1186) Bool)
(declare-fun IsPredicateField_26134_254479 (T@Field_26136_59013) Bool)
(declare-fun IsWandField_26134_254495 (T@Field_26136_59013) Bool)
(declare-fun IsPredicateField_26134_53 (T@Field_55572_53) Bool)
(declare-fun IsWandField_26134_53 (T@Field_55572_53) Bool)
(declare-fun HasDirectPerm_88384_230794 (T@PolymorphicMapType_55533 T@Ref T@Field_88397_88402) Bool)
(declare-fun HasDirectPerm_88384_53 (T@PolymorphicMapType_55533 T@Ref T@Field_88384_53) Bool)
(declare-fun HasDirectPerm_88384_1186 (T@PolymorphicMapType_55533 T@Ref T@Field_88384_1186) Bool)
(declare-fun HasDirectPerm_88384_26137 (T@PolymorphicMapType_55533 T@Ref T@Field_88384_26137) Bool)
(declare-fun HasDirectPerm_60499_229676 (T@PolymorphicMapType_55533 T@Ref T@Field_60512_60517) Bool)
(declare-fun HasDirectPerm_60499_53 (T@PolymorphicMapType_55533 T@Ref T@Field_60499_53) Bool)
(declare-fun HasDirectPerm_60499_1186 (T@PolymorphicMapType_55533 T@Ref T@Field_60499_1186) Bool)
(declare-fun HasDirectPerm_60499_26137 (T@PolymorphicMapType_55533 T@Ref T@Field_60499_26137) Bool)
(declare-fun HasDirectPerm_26140_228558 (T@PolymorphicMapType_55533 T@Ref T@Field_59008_59013) Bool)
(declare-fun HasDirectPerm_26140_53 (T@PolymorphicMapType_55533 T@Ref T@Field_26140_53) Bool)
(declare-fun HasDirectPerm_26140_1186 (T@PolymorphicMapType_55533 T@Ref T@Field_26140_1186) Bool)
(declare-fun HasDirectPerm_26140_26137 (T@PolymorphicMapType_55533 T@Ref T@Field_26140_26137) Bool)
(declare-fun HasDirectPerm_26205_227460 (T@PolymorphicMapType_55533 T@Ref T@Field_75535_75540) Bool)
(declare-fun HasDirectPerm_26205_53 (T@PolymorphicMapType_55533 T@Ref T@Field_26205_53) Bool)
(declare-fun HasDirectPerm_26205_1186 (T@PolymorphicMapType_55533 T@Ref T@Field_26205_1186) Bool)
(declare-fun HasDirectPerm_26205_26137 (T@PolymorphicMapType_55533 T@Ref T@Field_26205_26137) Bool)
(declare-fun HasDirectPerm_26136_226319 (T@PolymorphicMapType_55533 T@Ref T@Field_26136_59013) Bool)
(declare-fun HasDirectPerm_26136_53 (T@PolymorphicMapType_55533 T@Ref T@Field_55572_53) Bool)
(declare-fun HasDirectPerm_26134_1186 (T@PolymorphicMapType_55533 T@Ref T@Field_58898_1186) Bool)
(declare-fun HasDirectPerm_26136_26137 (T@PolymorphicMapType_55533 T@Ref T@Field_55585_55586) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_55533 T@PolymorphicMapType_55533 T@PolymorphicMapType_55533) Bool)
(declare-fun getPredWandId_26140_26141 (T@Field_58995_58996) Int)
(declare-fun getPredWandId_26165_26166 (T@Field_60499_60500) Int)
(declare-fun getPredWandId_26205_26206 (T@Field_75522_75523) Int)
(declare-fun getPredWandId_26245_26246 (T@Field_88384_88385) Int)
(declare-fun InsidePredicate_55572_88384 (T@Field_26136_26206 T@FrameType T@Field_88384_88385 T@FrameType) Bool)
(declare-fun InsidePredicate_55572_26140 (T@Field_26136_26206 T@FrameType T@Field_58995_58996 T@FrameType) Bool)
(declare-fun InsidePredicate_55572_26205 (T@Field_26136_26206 T@FrameType T@Field_75522_75523 T@FrameType) Bool)
(declare-fun InsidePredicate_55572_26165 (T@Field_26136_26206 T@FrameType T@Field_60499_60500 T@FrameType) Bool)
(declare-fun InsidePredicate_26245_55572 (T@Field_88384_88385 T@FrameType T@Field_26136_26206 T@FrameType) Bool)
(declare-fun InsidePredicate_26245_26140 (T@Field_88384_88385 T@FrameType T@Field_58995_58996 T@FrameType) Bool)
(declare-fun InsidePredicate_26245_26205 (T@Field_88384_88385 T@FrameType T@Field_75522_75523 T@FrameType) Bool)
(declare-fun InsidePredicate_26245_26165 (T@Field_88384_88385 T@FrameType T@Field_60499_60500 T@FrameType) Bool)
(declare-fun InsidePredicate_26140_88384 (T@Field_58995_58996 T@FrameType T@Field_88384_88385 T@FrameType) Bool)
(declare-fun InsidePredicate_26140_55572 (T@Field_58995_58996 T@FrameType T@Field_26136_26206 T@FrameType) Bool)
(declare-fun InsidePredicate_26140_26205 (T@Field_58995_58996 T@FrameType T@Field_75522_75523 T@FrameType) Bool)
(declare-fun InsidePredicate_26140_26165 (T@Field_58995_58996 T@FrameType T@Field_60499_60500 T@FrameType) Bool)
(declare-fun InsidePredicate_26205_88384 (T@Field_75522_75523 T@FrameType T@Field_88384_88385 T@FrameType) Bool)
(declare-fun InsidePredicate_26205_55572 (T@Field_75522_75523 T@FrameType T@Field_26136_26206 T@FrameType) Bool)
(declare-fun InsidePredicate_26205_26140 (T@Field_75522_75523 T@FrameType T@Field_58995_58996 T@FrameType) Bool)
(declare-fun InsidePredicate_26205_26165 (T@Field_75522_75523 T@FrameType T@Field_60499_60500 T@FrameType) Bool)
(declare-fun InsidePredicate_26165_88384 (T@Field_60499_60500 T@FrameType T@Field_88384_88385 T@FrameType) Bool)
(declare-fun InsidePredicate_26165_55572 (T@Field_60499_60500 T@FrameType T@Field_26136_26206 T@FrameType) Bool)
(declare-fun InsidePredicate_26165_26140 (T@Field_60499_60500 T@FrameType T@Field_58995_58996 T@FrameType) Bool)
(declare-fun InsidePredicate_26165_26205 (T@Field_60499_60500 T@FrameType T@Field_75522_75523 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_55512) (Heap1 T@PolymorphicMapType_55512) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_55512) (Mask T@PolymorphicMapType_55533) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_55512) (Heap1@@0 T@PolymorphicMapType_55512) (Heap2 T@PolymorphicMapType_55512) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_88397_88402) ) (!  (not (select (|PolymorphicMapType_56061_88384_237663#PolymorphicMapType_56061| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_88384_237663#PolymorphicMapType_56061| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_88384_88385) ) (!  (not (select (|PolymorphicMapType_56061_88384_58996#PolymorphicMapType_56061| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_88384_58996#PolymorphicMapType_56061| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_88384_53) ) (!  (not (select (|PolymorphicMapType_56061_88384_53#PolymorphicMapType_56061| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_88384_53#PolymorphicMapType_56061| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_88384_26137) ) (!  (not (select (|PolymorphicMapType_56061_88384_26137#PolymorphicMapType_56061| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_88384_26137#PolymorphicMapType_56061| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_88384_1186) ) (!  (not (select (|PolymorphicMapType_56061_88384_1186#PolymorphicMapType_56061| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_88384_1186#PolymorphicMapType_56061| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_75535_75540) ) (!  (not (select (|PolymorphicMapType_56061_75522_236615#PolymorphicMapType_56061| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_75522_236615#PolymorphicMapType_56061| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_75522_75523) ) (!  (not (select (|PolymorphicMapType_56061_75522_58996#PolymorphicMapType_56061| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_75522_58996#PolymorphicMapType_56061| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_26205_53) ) (!  (not (select (|PolymorphicMapType_56061_75522_53#PolymorphicMapType_56061| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_75522_53#PolymorphicMapType_56061| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_26205_26137) ) (!  (not (select (|PolymorphicMapType_56061_75522_26137#PolymorphicMapType_56061| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_75522_26137#PolymorphicMapType_56061| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_26205_1186) ) (!  (not (select (|PolymorphicMapType_56061_75522_1186#PolymorphicMapType_56061| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_75522_1186#PolymorphicMapType_56061| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_60512_60517) ) (!  (not (select (|PolymorphicMapType_56061_60499_235567#PolymorphicMapType_56061| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_60499_235567#PolymorphicMapType_56061| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_60499_60500) ) (!  (not (select (|PolymorphicMapType_56061_60499_58996#PolymorphicMapType_56061| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_60499_58996#PolymorphicMapType_56061| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_60499_53) ) (!  (not (select (|PolymorphicMapType_56061_60499_53#PolymorphicMapType_56061| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_60499_53#PolymorphicMapType_56061| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_60499_26137) ) (!  (not (select (|PolymorphicMapType_56061_60499_26137#PolymorphicMapType_56061| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_60499_26137#PolymorphicMapType_56061| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_60499_1186) ) (!  (not (select (|PolymorphicMapType_56061_60499_1186#PolymorphicMapType_56061| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_60499_1186#PolymorphicMapType_56061| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_59008_59013) ) (!  (not (select (|PolymorphicMapType_56061_58995_234519#PolymorphicMapType_56061| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_58995_234519#PolymorphicMapType_56061| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_58995_58996) ) (!  (not (select (|PolymorphicMapType_56061_58995_58996#PolymorphicMapType_56061| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_58995_58996#PolymorphicMapType_56061| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_26140_53) ) (!  (not (select (|PolymorphicMapType_56061_58995_53#PolymorphicMapType_56061| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_58995_53#PolymorphicMapType_56061| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_26140_26137) ) (!  (not (select (|PolymorphicMapType_56061_58995_26137#PolymorphicMapType_56061| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_58995_26137#PolymorphicMapType_56061| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_26140_1186) ) (!  (not (select (|PolymorphicMapType_56061_58995_1186#PolymorphicMapType_56061| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_58995_1186#PolymorphicMapType_56061| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_26136_59013) ) (!  (not (select (|PolymorphicMapType_56061_26134_233471#PolymorphicMapType_56061| ZeroPMask) o_2@@19 f_4@@19))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_26134_233471#PolymorphicMapType_56061| ZeroPMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_26136_26206) ) (!  (not (select (|PolymorphicMapType_56061_26134_58996#PolymorphicMapType_56061| ZeroPMask) o_2@@20 f_4@@20))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_26134_58996#PolymorphicMapType_56061| ZeroPMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_55572_53) ) (!  (not (select (|PolymorphicMapType_56061_26134_53#PolymorphicMapType_56061| ZeroPMask) o_2@@21 f_4@@21))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_26134_53#PolymorphicMapType_56061| ZeroPMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_55585_55586) ) (!  (not (select (|PolymorphicMapType_56061_26136_26137#PolymorphicMapType_56061| ZeroPMask) o_2@@22 f_4@@22))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_26136_26137#PolymorphicMapType_56061| ZeroPMask) o_2@@22 f_4@@22))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_58898_1186) ) (!  (not (select (|PolymorphicMapType_56061_26134_1186#PolymorphicMapType_56061| ZeroPMask) o_2@@23 f_4@@23))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_56061_26134_1186#PolymorphicMapType_56061| ZeroPMask) o_2@@23 f_4@@23))
)))
(assert (forall ((r_1 T@Ref) ) (! (IsPredicateField_26140_26141 (valid r_1))
 :qid |stdinbpl.198:15|
 :skolemid |23|
 :pattern ( (valid r_1))
)))
(assert (forall ((r_1@@0 T@Ref) ) (! (IsPredicateField_26165_26166 (deeper r_1@@0))
 :qid |stdinbpl.269:15|
 :skolemid |29|
 :pattern ( (deeper r_1@@0))
)))
(assert (forall ((r_1@@1 T@Ref) ) (! (IsPredicateField_26205_26206 (strange r_1@@1))
 :qid |stdinbpl.486:15|
 :skolemid |39|
 :pattern ( (strange r_1@@1))
)))
(assert (forall ((r_1@@2 T@Ref) ) (! (IsPredicateField_26245_26246 (deeperfalse r_1@@2))
 :qid |stdinbpl.745:15|
 :skolemid |49|
 :pattern ( (deeperfalse r_1@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_55512) (r_1@@3 T@Ref) ) (! (|valid#everUsed_26140| (valid r_1@@3))
 :qid |stdinbpl.217:15|
 :skolemid |27|
 :pattern ( (|valid#trigger_26140| Heap@@0 (valid r_1@@3)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_55512) (r_1@@4 T@Ref) ) (! (|deeper#everUsed_26165| (deeper r_1@@4))
 :qid |stdinbpl.288:15|
 :skolemid |33|
 :pattern ( (|deeper#trigger_26165| Heap@@1 (deeper r_1@@4)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_55512) (r_1@@5 T@Ref) ) (! (|strange#everUsed_26205| (strange r_1@@5))
 :qid |stdinbpl.505:15|
 :skolemid |43|
 :pattern ( (|strange#trigger_26205| Heap@@2 (strange r_1@@5)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_55512) (r_1@@6 T@Ref) ) (! (|deeperfalse#everUsed_26245| (deeperfalse r_1@@6))
 :qid |stdinbpl.764:15|
 :skolemid |53|
 :pattern ( (|deeperfalse#trigger_26245| Heap@@3 (deeperfalse r_1@@6)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_55512) (ExhaleHeap T@PolymorphicMapType_55512) (Mask@@0 T@PolymorphicMapType_55533) (pm_f_55 T@Field_88384_88385) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_88384_26206 Mask@@0 null pm_f_55) (IsPredicateField_26245_26246 pm_f_55)) (= (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@4) null (PredicateMaskField_26245 pm_f_55)) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap) null (PredicateMaskField_26245 pm_f_55)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (IsPredicateField_26245_26246 pm_f_55) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap) null (PredicateMaskField_26245 pm_f_55)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_55512) (ExhaleHeap@@0 T@PolymorphicMapType_55512) (Mask@@1 T@PolymorphicMapType_55533) (pm_f_55@@0 T@Field_60499_60500) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_60499_26206 Mask@@1 null pm_f_55@@0) (IsPredicateField_26165_26166 pm_f_55@@0)) (= (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@5) null (PredicateMaskField_26165 pm_f_55@@0)) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@0) null (PredicateMaskField_26165 pm_f_55@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (IsPredicateField_26165_26166 pm_f_55@@0) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@0) null (PredicateMaskField_26165 pm_f_55@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_55512) (ExhaleHeap@@1 T@PolymorphicMapType_55512) (Mask@@2 T@PolymorphicMapType_55533) (pm_f_55@@1 T@Field_58995_58996) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_26140_26141 Mask@@2 null pm_f_55@@1) (IsPredicateField_26140_26141 pm_f_55@@1)) (= (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@6) null (PredicateMaskField_26140 pm_f_55@@1)) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@1) null (PredicateMaskField_26140 pm_f_55@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@2) (IsPredicateField_26140_26141 pm_f_55@@1) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@1) null (PredicateMaskField_26140 pm_f_55@@1)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_55512) (ExhaleHeap@@2 T@PolymorphicMapType_55512) (Mask@@3 T@PolymorphicMapType_55533) (pm_f_55@@2 T@Field_75522_75523) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_26205_26206 Mask@@3 null pm_f_55@@2) (IsPredicateField_26205_26206 pm_f_55@@2)) (= (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@7) null (PredicateMaskField_26205 pm_f_55@@2)) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@2) null (PredicateMaskField_26205 pm_f_55@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@3) (IsPredicateField_26205_26206 pm_f_55@@2) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@2) null (PredicateMaskField_26205 pm_f_55@@2)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_55512) (ExhaleHeap@@3 T@PolymorphicMapType_55512) (Mask@@4 T@PolymorphicMapType_55533) (pm_f_55@@3 T@Field_26136_26206) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_26136_26206 Mask@@4 null pm_f_55@@3) (IsPredicateField_26136_231039 pm_f_55@@3)) (= (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@8) null (PredicateMaskField_26136 pm_f_55@@3)) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@3) null (PredicateMaskField_26136 pm_f_55@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@4) (IsPredicateField_26136_231039 pm_f_55@@3) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@3) null (PredicateMaskField_26136 pm_f_55@@3)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_55512) (ExhaleHeap@@4 T@PolymorphicMapType_55512) (Mask@@5 T@PolymorphicMapType_55533) (pm_f_55@@4 T@Field_88384_88385) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_88384_26206 Mask@@5 null pm_f_55@@4) (IsWandField_88384_240742 pm_f_55@@4)) (= (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@9) null (WandMaskField_88384 pm_f_55@@4)) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@4) null (WandMaskField_88384 pm_f_55@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@5) (IsWandField_88384_240742 pm_f_55@@4) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@4) null (WandMaskField_88384 pm_f_55@@4)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_55512) (ExhaleHeap@@5 T@PolymorphicMapType_55512) (Mask@@6 T@PolymorphicMapType_55533) (pm_f_55@@5 T@Field_60499_60500) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_60499_26206 Mask@@6 null pm_f_55@@5) (IsWandField_60499_240385 pm_f_55@@5)) (= (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@10) null (WandMaskField_60499 pm_f_55@@5)) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@5) null (WandMaskField_60499 pm_f_55@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@6) (IsWandField_60499_240385 pm_f_55@@5) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@5) null (WandMaskField_60499 pm_f_55@@5)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_55512) (ExhaleHeap@@6 T@PolymorphicMapType_55512) (Mask@@7 T@PolymorphicMapType_55533) (pm_f_55@@6 T@Field_58995_58996) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_26140_26141 Mask@@7 null pm_f_55@@6) (IsWandField_26140_240028 pm_f_55@@6)) (= (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@11) null (WandMaskField_26140 pm_f_55@@6)) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@6) null (WandMaskField_26140 pm_f_55@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@7) (IsWandField_26140_240028 pm_f_55@@6) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@6) null (WandMaskField_26140 pm_f_55@@6)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_55512) (ExhaleHeap@@7 T@PolymorphicMapType_55512) (Mask@@8 T@PolymorphicMapType_55533) (pm_f_55@@7 T@Field_75522_75523) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_26205_26206 Mask@@8 null pm_f_55@@7) (IsWandField_26205_239671 pm_f_55@@7)) (= (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@12) null (WandMaskField_26205 pm_f_55@@7)) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@7) null (WandMaskField_26205 pm_f_55@@7)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@8) (IsWandField_26205_239671 pm_f_55@@7) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@7) null (WandMaskField_26205 pm_f_55@@7)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_55512) (ExhaleHeap@@8 T@PolymorphicMapType_55512) (Mask@@9 T@PolymorphicMapType_55533) (pm_f_55@@8 T@Field_26136_26206) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_26136_26206 Mask@@9 null pm_f_55@@8) (IsWandField_26136_239314 pm_f_55@@8)) (= (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@13) null (WandMaskField_26136 pm_f_55@@8)) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@8) null (WandMaskField_26136 pm_f_55@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@9) (IsWandField_26136_239314 pm_f_55@@8) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@8) null (WandMaskField_26136 pm_f_55@@8)))
)))
(assert (forall ((r_1@@7 T@Ref) (r2 T@Ref) ) (!  (=> (= (valid r_1@@7) (valid r2)) (= r_1@@7 r2))
 :qid |stdinbpl.208:15|
 :skolemid |25|
 :pattern ( (valid r_1@@7) (valid r2))
)))
(assert (forall ((r_1@@8 T@Ref) (r2@@0 T@Ref) ) (!  (=> (= (|valid#sm| r_1@@8) (|valid#sm| r2@@0)) (= r_1@@8 r2@@0))
 :qid |stdinbpl.212:15|
 :skolemid |26|
 :pattern ( (|valid#sm| r_1@@8) (|valid#sm| r2@@0))
)))
(assert (forall ((r_1@@9 T@Ref) (r2@@1 T@Ref) ) (!  (=> (= (deeper r_1@@9) (deeper r2@@1)) (= r_1@@9 r2@@1))
 :qid |stdinbpl.279:15|
 :skolemid |31|
 :pattern ( (deeper r_1@@9) (deeper r2@@1))
)))
(assert (forall ((r_1@@10 T@Ref) (r2@@2 T@Ref) ) (!  (=> (= (|deeper#sm| r_1@@10) (|deeper#sm| r2@@2)) (= r_1@@10 r2@@2))
 :qid |stdinbpl.283:15|
 :skolemid |32|
 :pattern ( (|deeper#sm| r_1@@10) (|deeper#sm| r2@@2))
)))
(assert (forall ((r_1@@11 T@Ref) (r2@@3 T@Ref) ) (!  (=> (= (strange r_1@@11) (strange r2@@3)) (= r_1@@11 r2@@3))
 :qid |stdinbpl.496:15|
 :skolemid |41|
 :pattern ( (strange r_1@@11) (strange r2@@3))
)))
(assert (forall ((r_1@@12 T@Ref) (r2@@4 T@Ref) ) (!  (=> (= (|strange#sm| r_1@@12) (|strange#sm| r2@@4)) (= r_1@@12 r2@@4))
 :qid |stdinbpl.500:15|
 :skolemid |42|
 :pattern ( (|strange#sm| r_1@@12) (|strange#sm| r2@@4))
)))
(assert (forall ((r_1@@13 T@Ref) (r2@@5 T@Ref) ) (!  (=> (= (deeperfalse r_1@@13) (deeperfalse r2@@5)) (= r_1@@13 r2@@5))
 :qid |stdinbpl.755:15|
 :skolemid |51|
 :pattern ( (deeperfalse r_1@@13) (deeperfalse r2@@5))
)))
(assert (forall ((r_1@@14 T@Ref) (r2@@6 T@Ref) ) (!  (=> (= (|deeperfalse#sm| r_1@@14) (|deeperfalse#sm| r2@@6)) (= r_1@@14 r2@@6))
 :qid |stdinbpl.759:15|
 :skolemid |52|
 :pattern ( (|deeperfalse#sm| r_1@@14) (|deeperfalse#sm| r2@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_55512) (ExhaleHeap@@9 T@PolymorphicMapType_55512) (Mask@@10 T@PolymorphicMapType_55533) (o_109 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@10) (=> (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@14) o_109 $allocated) (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@9) o_109 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@10) (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@9) o_109 $allocated))
)))
(assert (forall ((p T@Field_26136_26206) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_55572_55572 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_55572_55572 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_88384_88385) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_26245_88384 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_26245_88384 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_58995_58996) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_26140_26140 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_26140_26140 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_75522_75523) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_26205_26205 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_26205_26205 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((p@@3 T@Field_60499_60500) (v_1@@3 T@FrameType) (w@@3 T@FrameType) ) (!  (not (InsidePredicate_26165_26165 p@@3 v_1@@3 p@@3 w@@3))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_26165_26165 p@@3 v_1@@3 p@@3 w@@3))
)))
(assert  (not (IsPredicateField_26134_1186 f_7)))
(assert  (not (IsWandField_26134_1186 f_7)))
(assert  (not (IsPredicateField_26136_26137 next)))
(assert  (not (IsWandField_26136_26137 next)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_55512) (ExhaleHeap@@10 T@PolymorphicMapType_55512) (Mask@@11 T@PolymorphicMapType_55533) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@11) (succHeap Heap@@15 ExhaleHeap@@10))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_55533) (o_2@@24 T@Ref) (f_4@@24 T@Field_88397_88402) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_55533_26245_252036#PolymorphicMapType_55533| Mask@@12) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_26245_257803 f_4@@24))) (not (IsWandField_26245_257819 f_4@@24))) (<= (select (|PolymorphicMapType_55533_26245_252036#PolymorphicMapType_55533| Mask@@12) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_55533_26245_252036#PolymorphicMapType_55533| Mask@@12) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_55533) (o_2@@25 T@Ref) (f_4@@25 T@Field_88384_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_55533_26245_53#PolymorphicMapType_55533| Mask@@13) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_26245_53 f_4@@25))) (not (IsWandField_26245_53 f_4@@25))) (<= (select (|PolymorphicMapType_55533_26245_53#PolymorphicMapType_55533| Mask@@13) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_55533_26245_53#PolymorphicMapType_55533| Mask@@13) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_55533) (o_2@@26 T@Ref) (f_4@@26 T@Field_88384_88385) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_55533_26245_26246#PolymorphicMapType_55533| Mask@@14) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_26245_26246 f_4@@26))) (not (IsWandField_88384_240742 f_4@@26))) (<= (select (|PolymorphicMapType_55533_26245_26246#PolymorphicMapType_55533| Mask@@14) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_55533_26245_26246#PolymorphicMapType_55533| Mask@@14) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_55533) (o_2@@27 T@Ref) (f_4@@27 T@Field_88384_26137) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_55533_26245_26137#PolymorphicMapType_55533| Mask@@15) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_26245_26137 f_4@@27))) (not (IsWandField_26245_26137 f_4@@27))) (<= (select (|PolymorphicMapType_55533_26245_26137#PolymorphicMapType_55533| Mask@@15) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_55533_26245_26137#PolymorphicMapType_55533| Mask@@15) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_55533) (o_2@@28 T@Ref) (f_4@@28 T@Field_88384_1186) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_55533_26245_1186#PolymorphicMapType_55533| Mask@@16) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_26245_1186 f_4@@28))) (not (IsWandField_26245_1186 f_4@@28))) (<= (select (|PolymorphicMapType_55533_26245_1186#PolymorphicMapType_55533| Mask@@16) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_55533_26245_1186#PolymorphicMapType_55533| Mask@@16) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_55533) (o_2@@29 T@Ref) (f_4@@29 T@Field_75535_75540) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_55533_26205_251625#PolymorphicMapType_55533| Mask@@17) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_26205_256972 f_4@@29))) (not (IsWandField_26205_256988 f_4@@29))) (<= (select (|PolymorphicMapType_55533_26205_251625#PolymorphicMapType_55533| Mask@@17) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_55533_26205_251625#PolymorphicMapType_55533| Mask@@17) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_55533) (o_2@@30 T@Ref) (f_4@@30 T@Field_26205_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_55533_26205_53#PolymorphicMapType_55533| Mask@@18) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_26205_53 f_4@@30))) (not (IsWandField_26205_53 f_4@@30))) (<= (select (|PolymorphicMapType_55533_26205_53#PolymorphicMapType_55533| Mask@@18) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_55533_26205_53#PolymorphicMapType_55533| Mask@@18) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_55533) (o_2@@31 T@Ref) (f_4@@31 T@Field_75522_75523) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_55533_26205_26206#PolymorphicMapType_55533| Mask@@19) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_26205_26206 f_4@@31))) (not (IsWandField_26205_239671 f_4@@31))) (<= (select (|PolymorphicMapType_55533_26205_26206#PolymorphicMapType_55533| Mask@@19) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_55533_26205_26206#PolymorphicMapType_55533| Mask@@19) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_55533) (o_2@@32 T@Ref) (f_4@@32 T@Field_26205_26137) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_55533_26205_26137#PolymorphicMapType_55533| Mask@@20) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_26205_26137 f_4@@32))) (not (IsWandField_26205_26137 f_4@@32))) (<= (select (|PolymorphicMapType_55533_26205_26137#PolymorphicMapType_55533| Mask@@20) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_55533_26205_26137#PolymorphicMapType_55533| Mask@@20) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_55533) (o_2@@33 T@Ref) (f_4@@33 T@Field_26205_1186) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_55533_26205_1186#PolymorphicMapType_55533| Mask@@21) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_26205_1186 f_4@@33))) (not (IsWandField_26205_1186 f_4@@33))) (<= (select (|PolymorphicMapType_55533_26205_1186#PolymorphicMapType_55533| Mask@@21) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_55533_26205_1186#PolymorphicMapType_55533| Mask@@21) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_55533) (o_2@@34 T@Ref) (f_4@@34 T@Field_60512_60517) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_55533_26165_251214#PolymorphicMapType_55533| Mask@@22) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_26165_256141 f_4@@34))) (not (IsWandField_26165_256157 f_4@@34))) (<= (select (|PolymorphicMapType_55533_26165_251214#PolymorphicMapType_55533| Mask@@22) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_55533_26165_251214#PolymorphicMapType_55533| Mask@@22) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_55533) (o_2@@35 T@Ref) (f_4@@35 T@Field_60499_53) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_55533_26165_53#PolymorphicMapType_55533| Mask@@23) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_26165_53 f_4@@35))) (not (IsWandField_26165_53 f_4@@35))) (<= (select (|PolymorphicMapType_55533_26165_53#PolymorphicMapType_55533| Mask@@23) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_55533_26165_53#PolymorphicMapType_55533| Mask@@23) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_55533) (o_2@@36 T@Ref) (f_4@@36 T@Field_60499_60500) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_55533_26165_26166#PolymorphicMapType_55533| Mask@@24) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_26165_26166 f_4@@36))) (not (IsWandField_60499_240385 f_4@@36))) (<= (select (|PolymorphicMapType_55533_26165_26166#PolymorphicMapType_55533| Mask@@24) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_55533_26165_26166#PolymorphicMapType_55533| Mask@@24) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_55533) (o_2@@37 T@Ref) (f_4@@37 T@Field_60499_26137) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_55533_26165_26137#PolymorphicMapType_55533| Mask@@25) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_26165_26137 f_4@@37))) (not (IsWandField_26165_26137 f_4@@37))) (<= (select (|PolymorphicMapType_55533_26165_26137#PolymorphicMapType_55533| Mask@@25) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_55533_26165_26137#PolymorphicMapType_55533| Mask@@25) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_55533) (o_2@@38 T@Ref) (f_4@@38 T@Field_60499_1186) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_55533_26165_1186#PolymorphicMapType_55533| Mask@@26) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_26165_1186 f_4@@38))) (not (IsWandField_26165_1186 f_4@@38))) (<= (select (|PolymorphicMapType_55533_26165_1186#PolymorphicMapType_55533| Mask@@26) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_55533_26165_1186#PolymorphicMapType_55533| Mask@@26) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_55533) (o_2@@39 T@Ref) (f_4@@39 T@Field_59008_59013) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_55533_26140_250803#PolymorphicMapType_55533| Mask@@27) o_2@@39 f_4@@39) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_26140_255310 f_4@@39))) (not (IsWandField_26140_255326 f_4@@39))) (<= (select (|PolymorphicMapType_55533_26140_250803#PolymorphicMapType_55533| Mask@@27) o_2@@39 f_4@@39) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_55533_26140_250803#PolymorphicMapType_55533| Mask@@27) o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_55533) (o_2@@40 T@Ref) (f_4@@40 T@Field_26140_53) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_55533_26140_53#PolymorphicMapType_55533| Mask@@28) o_2@@40 f_4@@40) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_26140_53 f_4@@40))) (not (IsWandField_26140_53 f_4@@40))) (<= (select (|PolymorphicMapType_55533_26140_53#PolymorphicMapType_55533| Mask@@28) o_2@@40 f_4@@40) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_55533_26140_53#PolymorphicMapType_55533| Mask@@28) o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_55533) (o_2@@41 T@Ref) (f_4@@41 T@Field_58995_58996) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_55533_26140_26141#PolymorphicMapType_55533| Mask@@29) o_2@@41 f_4@@41) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_26140_26141 f_4@@41))) (not (IsWandField_26140_240028 f_4@@41))) (<= (select (|PolymorphicMapType_55533_26140_26141#PolymorphicMapType_55533| Mask@@29) o_2@@41 f_4@@41) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_55533_26140_26141#PolymorphicMapType_55533| Mask@@29) o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_55533) (o_2@@42 T@Ref) (f_4@@42 T@Field_26140_26137) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_55533_26140_26137#PolymorphicMapType_55533| Mask@@30) o_2@@42 f_4@@42) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_26140_26137 f_4@@42))) (not (IsWandField_26140_26137 f_4@@42))) (<= (select (|PolymorphicMapType_55533_26140_26137#PolymorphicMapType_55533| Mask@@30) o_2@@42 f_4@@42) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_55533_26140_26137#PolymorphicMapType_55533| Mask@@30) o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_55533) (o_2@@43 T@Ref) (f_4@@43 T@Field_26140_1186) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_55533_26140_1186#PolymorphicMapType_55533| Mask@@31) o_2@@43 f_4@@43) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_26140_1186 f_4@@43))) (not (IsWandField_26140_1186 f_4@@43))) (<= (select (|PolymorphicMapType_55533_26140_1186#PolymorphicMapType_55533| Mask@@31) o_2@@43 f_4@@43) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_55533_26140_1186#PolymorphicMapType_55533| Mask@@31) o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_55533) (o_2@@44 T@Ref) (f_4@@44 T@Field_26136_59013) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_55533_26134_250392#PolymorphicMapType_55533| Mask@@32) o_2@@44 f_4@@44) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_26134_254479 f_4@@44))) (not (IsWandField_26134_254495 f_4@@44))) (<= (select (|PolymorphicMapType_55533_26134_250392#PolymorphicMapType_55533| Mask@@32) o_2@@44 f_4@@44) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_55533_26134_250392#PolymorphicMapType_55533| Mask@@32) o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_55533) (o_2@@45 T@Ref) (f_4@@45 T@Field_55572_53) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_55533_26134_53#PolymorphicMapType_55533| Mask@@33) o_2@@45 f_4@@45) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_26134_53 f_4@@45))) (not (IsWandField_26134_53 f_4@@45))) (<= (select (|PolymorphicMapType_55533_26134_53#PolymorphicMapType_55533| Mask@@33) o_2@@45 f_4@@45) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_55533_26134_53#PolymorphicMapType_55533| Mask@@33) o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_55533) (o_2@@46 T@Ref) (f_4@@46 T@Field_26136_26206) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_55533_26134_26141#PolymorphicMapType_55533| Mask@@34) o_2@@46 f_4@@46) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_26136_231039 f_4@@46))) (not (IsWandField_26136_239314 f_4@@46))) (<= (select (|PolymorphicMapType_55533_26134_26141#PolymorphicMapType_55533| Mask@@34) o_2@@46 f_4@@46) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_55533_26134_26141#PolymorphicMapType_55533| Mask@@34) o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_55533) (o_2@@47 T@Ref) (f_4@@47 T@Field_55585_55586) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_55533_26136_26137#PolymorphicMapType_55533| Mask@@35) o_2@@47 f_4@@47) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_26136_26137 f_4@@47))) (not (IsWandField_26136_26137 f_4@@47))) (<= (select (|PolymorphicMapType_55533_26136_26137#PolymorphicMapType_55533| Mask@@35) o_2@@47 f_4@@47) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_55533_26136_26137#PolymorphicMapType_55533| Mask@@35) o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_55533) (o_2@@48 T@Ref) (f_4@@48 T@Field_58898_1186) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_55533_26134_1186#PolymorphicMapType_55533| Mask@@36) o_2@@48 f_4@@48) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_26134_1186 f_4@@48))) (not (IsWandField_26134_1186 f_4@@48))) (<= (select (|PolymorphicMapType_55533_26134_1186#PolymorphicMapType_55533| Mask@@36) o_2@@48 f_4@@48) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_55533_26134_1186#PolymorphicMapType_55533| Mask@@36) o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_55533) (o_2@@49 T@Ref) (f_4@@49 T@Field_88397_88402) ) (! (= (HasDirectPerm_88384_230794 Mask@@37 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_55533_26245_252036#PolymorphicMapType_55533| Mask@@37) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_88384_230794 Mask@@37 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_55533) (o_2@@50 T@Ref) (f_4@@50 T@Field_88384_53) ) (! (= (HasDirectPerm_88384_53 Mask@@38 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_55533_26245_53#PolymorphicMapType_55533| Mask@@38) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_88384_53 Mask@@38 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_55533) (o_2@@51 T@Ref) (f_4@@51 T@Field_88384_88385) ) (! (= (HasDirectPerm_88384_26206 Mask@@39 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_55533_26245_26246#PolymorphicMapType_55533| Mask@@39) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_88384_26206 Mask@@39 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_55533) (o_2@@52 T@Ref) (f_4@@52 T@Field_88384_1186) ) (! (= (HasDirectPerm_88384_1186 Mask@@40 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_55533_26245_1186#PolymorphicMapType_55533| Mask@@40) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_88384_1186 Mask@@40 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_55533) (o_2@@53 T@Ref) (f_4@@53 T@Field_88384_26137) ) (! (= (HasDirectPerm_88384_26137 Mask@@41 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_55533_26245_26137#PolymorphicMapType_55533| Mask@@41) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_88384_26137 Mask@@41 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_55533) (o_2@@54 T@Ref) (f_4@@54 T@Field_60512_60517) ) (! (= (HasDirectPerm_60499_229676 Mask@@42 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_55533_26165_251214#PolymorphicMapType_55533| Mask@@42) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_60499_229676 Mask@@42 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_55533) (o_2@@55 T@Ref) (f_4@@55 T@Field_60499_53) ) (! (= (HasDirectPerm_60499_53 Mask@@43 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_55533_26165_53#PolymorphicMapType_55533| Mask@@43) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_60499_53 Mask@@43 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_55533) (o_2@@56 T@Ref) (f_4@@56 T@Field_60499_60500) ) (! (= (HasDirectPerm_60499_26206 Mask@@44 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_55533_26165_26166#PolymorphicMapType_55533| Mask@@44) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_60499_26206 Mask@@44 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_55533) (o_2@@57 T@Ref) (f_4@@57 T@Field_60499_1186) ) (! (= (HasDirectPerm_60499_1186 Mask@@45 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_55533_26165_1186#PolymorphicMapType_55533| Mask@@45) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_60499_1186 Mask@@45 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_55533) (o_2@@58 T@Ref) (f_4@@58 T@Field_60499_26137) ) (! (= (HasDirectPerm_60499_26137 Mask@@46 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_55533_26165_26137#PolymorphicMapType_55533| Mask@@46) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_60499_26137 Mask@@46 o_2@@58 f_4@@58))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_55533) (o_2@@59 T@Ref) (f_4@@59 T@Field_59008_59013) ) (! (= (HasDirectPerm_26140_228558 Mask@@47 o_2@@59 f_4@@59) (> (select (|PolymorphicMapType_55533_26140_250803#PolymorphicMapType_55533| Mask@@47) o_2@@59 f_4@@59) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26140_228558 Mask@@47 o_2@@59 f_4@@59))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_55533) (o_2@@60 T@Ref) (f_4@@60 T@Field_26140_53) ) (! (= (HasDirectPerm_26140_53 Mask@@48 o_2@@60 f_4@@60) (> (select (|PolymorphicMapType_55533_26140_53#PolymorphicMapType_55533| Mask@@48) o_2@@60 f_4@@60) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26140_53 Mask@@48 o_2@@60 f_4@@60))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_55533) (o_2@@61 T@Ref) (f_4@@61 T@Field_58995_58996) ) (! (= (HasDirectPerm_26140_26141 Mask@@49 o_2@@61 f_4@@61) (> (select (|PolymorphicMapType_55533_26140_26141#PolymorphicMapType_55533| Mask@@49) o_2@@61 f_4@@61) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26140_26141 Mask@@49 o_2@@61 f_4@@61))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_55533) (o_2@@62 T@Ref) (f_4@@62 T@Field_26140_1186) ) (! (= (HasDirectPerm_26140_1186 Mask@@50 o_2@@62 f_4@@62) (> (select (|PolymorphicMapType_55533_26140_1186#PolymorphicMapType_55533| Mask@@50) o_2@@62 f_4@@62) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26140_1186 Mask@@50 o_2@@62 f_4@@62))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_55533) (o_2@@63 T@Ref) (f_4@@63 T@Field_26140_26137) ) (! (= (HasDirectPerm_26140_26137 Mask@@51 o_2@@63 f_4@@63) (> (select (|PolymorphicMapType_55533_26140_26137#PolymorphicMapType_55533| Mask@@51) o_2@@63 f_4@@63) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26140_26137 Mask@@51 o_2@@63 f_4@@63))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_55533) (o_2@@64 T@Ref) (f_4@@64 T@Field_75535_75540) ) (! (= (HasDirectPerm_26205_227460 Mask@@52 o_2@@64 f_4@@64) (> (select (|PolymorphicMapType_55533_26205_251625#PolymorphicMapType_55533| Mask@@52) o_2@@64 f_4@@64) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26205_227460 Mask@@52 o_2@@64 f_4@@64))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_55533) (o_2@@65 T@Ref) (f_4@@65 T@Field_26205_53) ) (! (= (HasDirectPerm_26205_53 Mask@@53 o_2@@65 f_4@@65) (> (select (|PolymorphicMapType_55533_26205_53#PolymorphicMapType_55533| Mask@@53) o_2@@65 f_4@@65) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26205_53 Mask@@53 o_2@@65 f_4@@65))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_55533) (o_2@@66 T@Ref) (f_4@@66 T@Field_75522_75523) ) (! (= (HasDirectPerm_26205_26206 Mask@@54 o_2@@66 f_4@@66) (> (select (|PolymorphicMapType_55533_26205_26206#PolymorphicMapType_55533| Mask@@54) o_2@@66 f_4@@66) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26205_26206 Mask@@54 o_2@@66 f_4@@66))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_55533) (o_2@@67 T@Ref) (f_4@@67 T@Field_26205_1186) ) (! (= (HasDirectPerm_26205_1186 Mask@@55 o_2@@67 f_4@@67) (> (select (|PolymorphicMapType_55533_26205_1186#PolymorphicMapType_55533| Mask@@55) o_2@@67 f_4@@67) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26205_1186 Mask@@55 o_2@@67 f_4@@67))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_55533) (o_2@@68 T@Ref) (f_4@@68 T@Field_26205_26137) ) (! (= (HasDirectPerm_26205_26137 Mask@@56 o_2@@68 f_4@@68) (> (select (|PolymorphicMapType_55533_26205_26137#PolymorphicMapType_55533| Mask@@56) o_2@@68 f_4@@68) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26205_26137 Mask@@56 o_2@@68 f_4@@68))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_55533) (o_2@@69 T@Ref) (f_4@@69 T@Field_26136_59013) ) (! (= (HasDirectPerm_26136_226319 Mask@@57 o_2@@69 f_4@@69) (> (select (|PolymorphicMapType_55533_26134_250392#PolymorphicMapType_55533| Mask@@57) o_2@@69 f_4@@69) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26136_226319 Mask@@57 o_2@@69 f_4@@69))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_55533) (o_2@@70 T@Ref) (f_4@@70 T@Field_55572_53) ) (! (= (HasDirectPerm_26136_53 Mask@@58 o_2@@70 f_4@@70) (> (select (|PolymorphicMapType_55533_26134_53#PolymorphicMapType_55533| Mask@@58) o_2@@70 f_4@@70) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26136_53 Mask@@58 o_2@@70 f_4@@70))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_55533) (o_2@@71 T@Ref) (f_4@@71 T@Field_26136_26206) ) (! (= (HasDirectPerm_26136_26206 Mask@@59 o_2@@71 f_4@@71) (> (select (|PolymorphicMapType_55533_26134_26141#PolymorphicMapType_55533| Mask@@59) o_2@@71 f_4@@71) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26136_26206 Mask@@59 o_2@@71 f_4@@71))
)))
(assert (forall ((Mask@@60 T@PolymorphicMapType_55533) (o_2@@72 T@Ref) (f_4@@72 T@Field_58898_1186) ) (! (= (HasDirectPerm_26134_1186 Mask@@60 o_2@@72 f_4@@72) (> (select (|PolymorphicMapType_55533_26134_1186#PolymorphicMapType_55533| Mask@@60) o_2@@72 f_4@@72) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26134_1186 Mask@@60 o_2@@72 f_4@@72))
)))
(assert (forall ((Mask@@61 T@PolymorphicMapType_55533) (o_2@@73 T@Ref) (f_4@@73 T@Field_55585_55586) ) (! (= (HasDirectPerm_26136_26137 Mask@@61 o_2@@73 f_4@@73) (> (select (|PolymorphicMapType_55533_26136_26137#PolymorphicMapType_55533| Mask@@61) o_2@@73 f_4@@73) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26136_26137 Mask@@61 o_2@@73 f_4@@73))
)))
(assert (forall ((p@@4 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@4 f_6) (ite (> p@@4 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@4 f_6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_55512) (ExhaleHeap@@11 T@PolymorphicMapType_55512) (Mask@@62 T@PolymorphicMapType_55533) (o_109@@0 T@Ref) (f_203 T@Field_88397_88402) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@62) (=> (HasDirectPerm_88384_230794 Mask@@62 o_109@@0 f_203) (= (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@16) o_109@@0 f_203) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@11) o_109@@0 f_203))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@62) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@11) o_109@@0 f_203))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_55512) (ExhaleHeap@@12 T@PolymorphicMapType_55512) (Mask@@63 T@PolymorphicMapType_55533) (o_109@@1 T@Ref) (f_203@@0 T@Field_88384_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@63) (=> (HasDirectPerm_88384_53 Mask@@63 o_109@@1 f_203@@0) (= (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@17) o_109@@1 f_203@@0) (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@12) o_109@@1 f_203@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@63) (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@12) o_109@@1 f_203@@0))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_55512) (ExhaleHeap@@13 T@PolymorphicMapType_55512) (Mask@@64 T@PolymorphicMapType_55533) (o_109@@2 T@Ref) (f_203@@1 T@Field_88384_88385) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@64) (=> (HasDirectPerm_88384_26206 Mask@@64 o_109@@2 f_203@@1) (= (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@18) o_109@@2 f_203@@1) (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@13) o_109@@2 f_203@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@64) (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@13) o_109@@2 f_203@@1))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_55512) (ExhaleHeap@@14 T@PolymorphicMapType_55512) (Mask@@65 T@PolymorphicMapType_55533) (o_109@@3 T@Ref) (f_203@@2 T@Field_88384_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@65) (=> (HasDirectPerm_88384_1186 Mask@@65 o_109@@3 f_203@@2) (= (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@19) o_109@@3 f_203@@2) (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@14) o_109@@3 f_203@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@65) (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@14) o_109@@3 f_203@@2))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_55512) (ExhaleHeap@@15 T@PolymorphicMapType_55512) (Mask@@66 T@PolymorphicMapType_55533) (o_109@@4 T@Ref) (f_203@@3 T@Field_88384_26137) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@66) (=> (HasDirectPerm_88384_26137 Mask@@66 o_109@@4 f_203@@3) (= (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@20) o_109@@4 f_203@@3) (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@15) o_109@@4 f_203@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@66) (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@15) o_109@@4 f_203@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_55512) (ExhaleHeap@@16 T@PolymorphicMapType_55512) (Mask@@67 T@PolymorphicMapType_55533) (o_109@@5 T@Ref) (f_203@@4 T@Field_60512_60517) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@67) (=> (HasDirectPerm_60499_229676 Mask@@67 o_109@@5 f_203@@4) (= (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@21) o_109@@5 f_203@@4) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@16) o_109@@5 f_203@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@67) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@16) o_109@@5 f_203@@4))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_55512) (ExhaleHeap@@17 T@PolymorphicMapType_55512) (Mask@@68 T@PolymorphicMapType_55533) (o_109@@6 T@Ref) (f_203@@5 T@Field_60499_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@68) (=> (HasDirectPerm_60499_53 Mask@@68 o_109@@6 f_203@@5) (= (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@22) o_109@@6 f_203@@5) (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@17) o_109@@6 f_203@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@68) (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@17) o_109@@6 f_203@@5))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_55512) (ExhaleHeap@@18 T@PolymorphicMapType_55512) (Mask@@69 T@PolymorphicMapType_55533) (o_109@@7 T@Ref) (f_203@@6 T@Field_60499_60500) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@69) (=> (HasDirectPerm_60499_26206 Mask@@69 o_109@@7 f_203@@6) (= (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@23) o_109@@7 f_203@@6) (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@18) o_109@@7 f_203@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@69) (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@18) o_109@@7 f_203@@6))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_55512) (ExhaleHeap@@19 T@PolymorphicMapType_55512) (Mask@@70 T@PolymorphicMapType_55533) (o_109@@8 T@Ref) (f_203@@7 T@Field_60499_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@70) (=> (HasDirectPerm_60499_1186 Mask@@70 o_109@@8 f_203@@7) (= (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@24) o_109@@8 f_203@@7) (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@19) o_109@@8 f_203@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@70) (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@19) o_109@@8 f_203@@7))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_55512) (ExhaleHeap@@20 T@PolymorphicMapType_55512) (Mask@@71 T@PolymorphicMapType_55533) (o_109@@9 T@Ref) (f_203@@8 T@Field_60499_26137) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@71) (=> (HasDirectPerm_60499_26137 Mask@@71 o_109@@9 f_203@@8) (= (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@25) o_109@@9 f_203@@8) (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@20) o_109@@9 f_203@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@71) (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@20) o_109@@9 f_203@@8))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_55512) (ExhaleHeap@@21 T@PolymorphicMapType_55512) (Mask@@72 T@PolymorphicMapType_55533) (o_109@@10 T@Ref) (f_203@@9 T@Field_59008_59013) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@72) (=> (HasDirectPerm_26140_228558 Mask@@72 o_109@@10 f_203@@9) (= (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@26) o_109@@10 f_203@@9) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@21) o_109@@10 f_203@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@72) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@21) o_109@@10 f_203@@9))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_55512) (ExhaleHeap@@22 T@PolymorphicMapType_55512) (Mask@@73 T@PolymorphicMapType_55533) (o_109@@11 T@Ref) (f_203@@10 T@Field_26140_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@22 Mask@@73) (=> (HasDirectPerm_26140_53 Mask@@73 o_109@@11 f_203@@10) (= (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@27) o_109@@11 f_203@@10) (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@22) o_109@@11 f_203@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@22 Mask@@73) (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@22) o_109@@11 f_203@@10))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_55512) (ExhaleHeap@@23 T@PolymorphicMapType_55512) (Mask@@74 T@PolymorphicMapType_55533) (o_109@@12 T@Ref) (f_203@@11 T@Field_58995_58996) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@23 Mask@@74) (=> (HasDirectPerm_26140_26141 Mask@@74 o_109@@12 f_203@@11) (= (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@28) o_109@@12 f_203@@11) (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@23) o_109@@12 f_203@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@23 Mask@@74) (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@23) o_109@@12 f_203@@11))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_55512) (ExhaleHeap@@24 T@PolymorphicMapType_55512) (Mask@@75 T@PolymorphicMapType_55533) (o_109@@13 T@Ref) (f_203@@12 T@Field_26140_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@24 Mask@@75) (=> (HasDirectPerm_26140_1186 Mask@@75 o_109@@13 f_203@@12) (= (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@29) o_109@@13 f_203@@12) (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@24) o_109@@13 f_203@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@24 Mask@@75) (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@24) o_109@@13 f_203@@12))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_55512) (ExhaleHeap@@25 T@PolymorphicMapType_55512) (Mask@@76 T@PolymorphicMapType_55533) (o_109@@14 T@Ref) (f_203@@13 T@Field_26140_26137) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@25 Mask@@76) (=> (HasDirectPerm_26140_26137 Mask@@76 o_109@@14 f_203@@13) (= (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@30) o_109@@14 f_203@@13) (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@25) o_109@@14 f_203@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@25 Mask@@76) (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@25) o_109@@14 f_203@@13))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_55512) (ExhaleHeap@@26 T@PolymorphicMapType_55512) (Mask@@77 T@PolymorphicMapType_55533) (o_109@@15 T@Ref) (f_203@@14 T@Field_75535_75540) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@26 Mask@@77) (=> (HasDirectPerm_26205_227460 Mask@@77 o_109@@15 f_203@@14) (= (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@31) o_109@@15 f_203@@14) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@26) o_109@@15 f_203@@14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@26 Mask@@77) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@26) o_109@@15 f_203@@14))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_55512) (ExhaleHeap@@27 T@PolymorphicMapType_55512) (Mask@@78 T@PolymorphicMapType_55533) (o_109@@16 T@Ref) (f_203@@15 T@Field_26205_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@27 Mask@@78) (=> (HasDirectPerm_26205_53 Mask@@78 o_109@@16 f_203@@15) (= (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@32) o_109@@16 f_203@@15) (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@27) o_109@@16 f_203@@15))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@27 Mask@@78) (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@27) o_109@@16 f_203@@15))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_55512) (ExhaleHeap@@28 T@PolymorphicMapType_55512) (Mask@@79 T@PolymorphicMapType_55533) (o_109@@17 T@Ref) (f_203@@16 T@Field_75522_75523) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@28 Mask@@79) (=> (HasDirectPerm_26205_26206 Mask@@79 o_109@@17 f_203@@16) (= (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@33) o_109@@17 f_203@@16) (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@28) o_109@@17 f_203@@16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@28 Mask@@79) (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@28) o_109@@17 f_203@@16))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_55512) (ExhaleHeap@@29 T@PolymorphicMapType_55512) (Mask@@80 T@PolymorphicMapType_55533) (o_109@@18 T@Ref) (f_203@@17 T@Field_26205_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@29 Mask@@80) (=> (HasDirectPerm_26205_1186 Mask@@80 o_109@@18 f_203@@17) (= (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@34) o_109@@18 f_203@@17) (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@29) o_109@@18 f_203@@17))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@29 Mask@@80) (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@29) o_109@@18 f_203@@17))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_55512) (ExhaleHeap@@30 T@PolymorphicMapType_55512) (Mask@@81 T@PolymorphicMapType_55533) (o_109@@19 T@Ref) (f_203@@18 T@Field_26205_26137) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@30 Mask@@81) (=> (HasDirectPerm_26205_26137 Mask@@81 o_109@@19 f_203@@18) (= (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@35) o_109@@19 f_203@@18) (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@30) o_109@@19 f_203@@18))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@30 Mask@@81) (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@30) o_109@@19 f_203@@18))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_55512) (ExhaleHeap@@31 T@PolymorphicMapType_55512) (Mask@@82 T@PolymorphicMapType_55533) (o_109@@20 T@Ref) (f_203@@19 T@Field_26136_59013) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@31 Mask@@82) (=> (HasDirectPerm_26136_226319 Mask@@82 o_109@@20 f_203@@19) (= (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@36) o_109@@20 f_203@@19) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@31) o_109@@20 f_203@@19))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@31 Mask@@82) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@31) o_109@@20 f_203@@19))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_55512) (ExhaleHeap@@32 T@PolymorphicMapType_55512) (Mask@@83 T@PolymorphicMapType_55533) (o_109@@21 T@Ref) (f_203@@20 T@Field_55572_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@32 Mask@@83) (=> (HasDirectPerm_26136_53 Mask@@83 o_109@@21 f_203@@20) (= (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@37) o_109@@21 f_203@@20) (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@32) o_109@@21 f_203@@20))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@32 Mask@@83) (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@32) o_109@@21 f_203@@20))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_55512) (ExhaleHeap@@33 T@PolymorphicMapType_55512) (Mask@@84 T@PolymorphicMapType_55533) (o_109@@22 T@Ref) (f_203@@21 T@Field_26136_26206) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@33 Mask@@84) (=> (HasDirectPerm_26136_26206 Mask@@84 o_109@@22 f_203@@21) (= (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@38) o_109@@22 f_203@@21) (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@33) o_109@@22 f_203@@21))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@33 Mask@@84) (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@33) o_109@@22 f_203@@21))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_55512) (ExhaleHeap@@34 T@PolymorphicMapType_55512) (Mask@@85 T@PolymorphicMapType_55533) (o_109@@23 T@Ref) (f_203@@22 T@Field_58898_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@34 Mask@@85) (=> (HasDirectPerm_26134_1186 Mask@@85 o_109@@23 f_203@@22) (= (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@39) o_109@@23 f_203@@22) (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@34) o_109@@23 f_203@@22))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@34 Mask@@85) (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@34) o_109@@23 f_203@@22))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_55512) (ExhaleHeap@@35 T@PolymorphicMapType_55512) (Mask@@86 T@PolymorphicMapType_55533) (o_109@@24 T@Ref) (f_203@@23 T@Field_55585_55586) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@35 Mask@@86) (=> (HasDirectPerm_26136_26137 Mask@@86 o_109@@24 f_203@@23) (= (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@40) o_109@@24 f_203@@23) (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@35) o_109@@24 f_203@@23))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@35 Mask@@86) (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@35) o_109@@24 f_203@@23))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_88397_88402) ) (! (= (select (|PolymorphicMapType_55533_26245_252036#PolymorphicMapType_55533| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26245_252036#PolymorphicMapType_55533| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_88384_53) ) (! (= (select (|PolymorphicMapType_55533_26245_53#PolymorphicMapType_55533| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26245_53#PolymorphicMapType_55533| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_88384_88385) ) (! (= (select (|PolymorphicMapType_55533_26245_26246#PolymorphicMapType_55533| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26245_26246#PolymorphicMapType_55533| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_88384_26137) ) (! (= (select (|PolymorphicMapType_55533_26245_26137#PolymorphicMapType_55533| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26245_26137#PolymorphicMapType_55533| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_88384_1186) ) (! (= (select (|PolymorphicMapType_55533_26245_1186#PolymorphicMapType_55533| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26245_1186#PolymorphicMapType_55533| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((o_2@@79 T@Ref) (f_4@@79 T@Field_75535_75540) ) (! (= (select (|PolymorphicMapType_55533_26205_251625#PolymorphicMapType_55533| ZeroMask) o_2@@79 f_4@@79) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26205_251625#PolymorphicMapType_55533| ZeroMask) o_2@@79 f_4@@79))
)))
(assert (forall ((o_2@@80 T@Ref) (f_4@@80 T@Field_26205_53) ) (! (= (select (|PolymorphicMapType_55533_26205_53#PolymorphicMapType_55533| ZeroMask) o_2@@80 f_4@@80) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26205_53#PolymorphicMapType_55533| ZeroMask) o_2@@80 f_4@@80))
)))
(assert (forall ((o_2@@81 T@Ref) (f_4@@81 T@Field_75522_75523) ) (! (= (select (|PolymorphicMapType_55533_26205_26206#PolymorphicMapType_55533| ZeroMask) o_2@@81 f_4@@81) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26205_26206#PolymorphicMapType_55533| ZeroMask) o_2@@81 f_4@@81))
)))
(assert (forall ((o_2@@82 T@Ref) (f_4@@82 T@Field_26205_26137) ) (! (= (select (|PolymorphicMapType_55533_26205_26137#PolymorphicMapType_55533| ZeroMask) o_2@@82 f_4@@82) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26205_26137#PolymorphicMapType_55533| ZeroMask) o_2@@82 f_4@@82))
)))
(assert (forall ((o_2@@83 T@Ref) (f_4@@83 T@Field_26205_1186) ) (! (= (select (|PolymorphicMapType_55533_26205_1186#PolymorphicMapType_55533| ZeroMask) o_2@@83 f_4@@83) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26205_1186#PolymorphicMapType_55533| ZeroMask) o_2@@83 f_4@@83))
)))
(assert (forall ((o_2@@84 T@Ref) (f_4@@84 T@Field_60512_60517) ) (! (= (select (|PolymorphicMapType_55533_26165_251214#PolymorphicMapType_55533| ZeroMask) o_2@@84 f_4@@84) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26165_251214#PolymorphicMapType_55533| ZeroMask) o_2@@84 f_4@@84))
)))
(assert (forall ((o_2@@85 T@Ref) (f_4@@85 T@Field_60499_53) ) (! (= (select (|PolymorphicMapType_55533_26165_53#PolymorphicMapType_55533| ZeroMask) o_2@@85 f_4@@85) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26165_53#PolymorphicMapType_55533| ZeroMask) o_2@@85 f_4@@85))
)))
(assert (forall ((o_2@@86 T@Ref) (f_4@@86 T@Field_60499_60500) ) (! (= (select (|PolymorphicMapType_55533_26165_26166#PolymorphicMapType_55533| ZeroMask) o_2@@86 f_4@@86) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26165_26166#PolymorphicMapType_55533| ZeroMask) o_2@@86 f_4@@86))
)))
(assert (forall ((o_2@@87 T@Ref) (f_4@@87 T@Field_60499_26137) ) (! (= (select (|PolymorphicMapType_55533_26165_26137#PolymorphicMapType_55533| ZeroMask) o_2@@87 f_4@@87) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26165_26137#PolymorphicMapType_55533| ZeroMask) o_2@@87 f_4@@87))
)))
(assert (forall ((o_2@@88 T@Ref) (f_4@@88 T@Field_60499_1186) ) (! (= (select (|PolymorphicMapType_55533_26165_1186#PolymorphicMapType_55533| ZeroMask) o_2@@88 f_4@@88) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26165_1186#PolymorphicMapType_55533| ZeroMask) o_2@@88 f_4@@88))
)))
(assert (forall ((o_2@@89 T@Ref) (f_4@@89 T@Field_59008_59013) ) (! (= (select (|PolymorphicMapType_55533_26140_250803#PolymorphicMapType_55533| ZeroMask) o_2@@89 f_4@@89) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26140_250803#PolymorphicMapType_55533| ZeroMask) o_2@@89 f_4@@89))
)))
(assert (forall ((o_2@@90 T@Ref) (f_4@@90 T@Field_26140_53) ) (! (= (select (|PolymorphicMapType_55533_26140_53#PolymorphicMapType_55533| ZeroMask) o_2@@90 f_4@@90) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26140_53#PolymorphicMapType_55533| ZeroMask) o_2@@90 f_4@@90))
)))
(assert (forall ((o_2@@91 T@Ref) (f_4@@91 T@Field_58995_58996) ) (! (= (select (|PolymorphicMapType_55533_26140_26141#PolymorphicMapType_55533| ZeroMask) o_2@@91 f_4@@91) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26140_26141#PolymorphicMapType_55533| ZeroMask) o_2@@91 f_4@@91))
)))
(assert (forall ((o_2@@92 T@Ref) (f_4@@92 T@Field_26140_26137) ) (! (= (select (|PolymorphicMapType_55533_26140_26137#PolymorphicMapType_55533| ZeroMask) o_2@@92 f_4@@92) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26140_26137#PolymorphicMapType_55533| ZeroMask) o_2@@92 f_4@@92))
)))
(assert (forall ((o_2@@93 T@Ref) (f_4@@93 T@Field_26140_1186) ) (! (= (select (|PolymorphicMapType_55533_26140_1186#PolymorphicMapType_55533| ZeroMask) o_2@@93 f_4@@93) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26140_1186#PolymorphicMapType_55533| ZeroMask) o_2@@93 f_4@@93))
)))
(assert (forall ((o_2@@94 T@Ref) (f_4@@94 T@Field_26136_59013) ) (! (= (select (|PolymorphicMapType_55533_26134_250392#PolymorphicMapType_55533| ZeroMask) o_2@@94 f_4@@94) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26134_250392#PolymorphicMapType_55533| ZeroMask) o_2@@94 f_4@@94))
)))
(assert (forall ((o_2@@95 T@Ref) (f_4@@95 T@Field_55572_53) ) (! (= (select (|PolymorphicMapType_55533_26134_53#PolymorphicMapType_55533| ZeroMask) o_2@@95 f_4@@95) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26134_53#PolymorphicMapType_55533| ZeroMask) o_2@@95 f_4@@95))
)))
(assert (forall ((o_2@@96 T@Ref) (f_4@@96 T@Field_26136_26206) ) (! (= (select (|PolymorphicMapType_55533_26134_26141#PolymorphicMapType_55533| ZeroMask) o_2@@96 f_4@@96) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26134_26141#PolymorphicMapType_55533| ZeroMask) o_2@@96 f_4@@96))
)))
(assert (forall ((o_2@@97 T@Ref) (f_4@@97 T@Field_55585_55586) ) (! (= (select (|PolymorphicMapType_55533_26136_26137#PolymorphicMapType_55533| ZeroMask) o_2@@97 f_4@@97) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26136_26137#PolymorphicMapType_55533| ZeroMask) o_2@@97 f_4@@97))
)))
(assert (forall ((o_2@@98 T@Ref) (f_4@@98 T@Field_58898_1186) ) (! (= (select (|PolymorphicMapType_55533_26134_1186#PolymorphicMapType_55533| ZeroMask) o_2@@98 f_4@@98) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_55533_26134_1186#PolymorphicMapType_55533| ZeroMask) o_2@@98 f_4@@98))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_55533) (SummandMask1 T@PolymorphicMapType_55533) (SummandMask2 T@PolymorphicMapType_55533) (o_2@@99 T@Ref) (f_4@@99 T@Field_88397_88402) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_55533_26245_252036#PolymorphicMapType_55533| ResultMask) o_2@@99 f_4@@99) (+ (select (|PolymorphicMapType_55533_26245_252036#PolymorphicMapType_55533| SummandMask1) o_2@@99 f_4@@99) (select (|PolymorphicMapType_55533_26245_252036#PolymorphicMapType_55533| SummandMask2) o_2@@99 f_4@@99))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_55533_26245_252036#PolymorphicMapType_55533| ResultMask) o_2@@99 f_4@@99))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_55533_26245_252036#PolymorphicMapType_55533| SummandMask1) o_2@@99 f_4@@99))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_55533_26245_252036#PolymorphicMapType_55533| SummandMask2) o_2@@99 f_4@@99))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_55533) (SummandMask1@@0 T@PolymorphicMapType_55533) (SummandMask2@@0 T@PolymorphicMapType_55533) (o_2@@100 T@Ref) (f_4@@100 T@Field_88384_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_55533_26245_53#PolymorphicMapType_55533| ResultMask@@0) o_2@@100 f_4@@100) (+ (select (|PolymorphicMapType_55533_26245_53#PolymorphicMapType_55533| SummandMask1@@0) o_2@@100 f_4@@100) (select (|PolymorphicMapType_55533_26245_53#PolymorphicMapType_55533| SummandMask2@@0) o_2@@100 f_4@@100))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_55533_26245_53#PolymorphicMapType_55533| ResultMask@@0) o_2@@100 f_4@@100))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_55533_26245_53#PolymorphicMapType_55533| SummandMask1@@0) o_2@@100 f_4@@100))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_55533_26245_53#PolymorphicMapType_55533| SummandMask2@@0) o_2@@100 f_4@@100))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_55533) (SummandMask1@@1 T@PolymorphicMapType_55533) (SummandMask2@@1 T@PolymorphicMapType_55533) (o_2@@101 T@Ref) (f_4@@101 T@Field_88384_88385) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_55533_26245_26246#PolymorphicMapType_55533| ResultMask@@1) o_2@@101 f_4@@101) (+ (select (|PolymorphicMapType_55533_26245_26246#PolymorphicMapType_55533| SummandMask1@@1) o_2@@101 f_4@@101) (select (|PolymorphicMapType_55533_26245_26246#PolymorphicMapType_55533| SummandMask2@@1) o_2@@101 f_4@@101))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_55533_26245_26246#PolymorphicMapType_55533| ResultMask@@1) o_2@@101 f_4@@101))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_55533_26245_26246#PolymorphicMapType_55533| SummandMask1@@1) o_2@@101 f_4@@101))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_55533_26245_26246#PolymorphicMapType_55533| SummandMask2@@1) o_2@@101 f_4@@101))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_55533) (SummandMask1@@2 T@PolymorphicMapType_55533) (SummandMask2@@2 T@PolymorphicMapType_55533) (o_2@@102 T@Ref) (f_4@@102 T@Field_88384_26137) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_55533_26245_26137#PolymorphicMapType_55533| ResultMask@@2) o_2@@102 f_4@@102) (+ (select (|PolymorphicMapType_55533_26245_26137#PolymorphicMapType_55533| SummandMask1@@2) o_2@@102 f_4@@102) (select (|PolymorphicMapType_55533_26245_26137#PolymorphicMapType_55533| SummandMask2@@2) o_2@@102 f_4@@102))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_55533_26245_26137#PolymorphicMapType_55533| ResultMask@@2) o_2@@102 f_4@@102))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_55533_26245_26137#PolymorphicMapType_55533| SummandMask1@@2) o_2@@102 f_4@@102))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_55533_26245_26137#PolymorphicMapType_55533| SummandMask2@@2) o_2@@102 f_4@@102))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_55533) (SummandMask1@@3 T@PolymorphicMapType_55533) (SummandMask2@@3 T@PolymorphicMapType_55533) (o_2@@103 T@Ref) (f_4@@103 T@Field_88384_1186) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_55533_26245_1186#PolymorphicMapType_55533| ResultMask@@3) o_2@@103 f_4@@103) (+ (select (|PolymorphicMapType_55533_26245_1186#PolymorphicMapType_55533| SummandMask1@@3) o_2@@103 f_4@@103) (select (|PolymorphicMapType_55533_26245_1186#PolymorphicMapType_55533| SummandMask2@@3) o_2@@103 f_4@@103))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_55533_26245_1186#PolymorphicMapType_55533| ResultMask@@3) o_2@@103 f_4@@103))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_55533_26245_1186#PolymorphicMapType_55533| SummandMask1@@3) o_2@@103 f_4@@103))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_55533_26245_1186#PolymorphicMapType_55533| SummandMask2@@3) o_2@@103 f_4@@103))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_55533) (SummandMask1@@4 T@PolymorphicMapType_55533) (SummandMask2@@4 T@PolymorphicMapType_55533) (o_2@@104 T@Ref) (f_4@@104 T@Field_75535_75540) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_55533_26205_251625#PolymorphicMapType_55533| ResultMask@@4) o_2@@104 f_4@@104) (+ (select (|PolymorphicMapType_55533_26205_251625#PolymorphicMapType_55533| SummandMask1@@4) o_2@@104 f_4@@104) (select (|PolymorphicMapType_55533_26205_251625#PolymorphicMapType_55533| SummandMask2@@4) o_2@@104 f_4@@104))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_55533_26205_251625#PolymorphicMapType_55533| ResultMask@@4) o_2@@104 f_4@@104))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_55533_26205_251625#PolymorphicMapType_55533| SummandMask1@@4) o_2@@104 f_4@@104))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_55533_26205_251625#PolymorphicMapType_55533| SummandMask2@@4) o_2@@104 f_4@@104))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_55533) (SummandMask1@@5 T@PolymorphicMapType_55533) (SummandMask2@@5 T@PolymorphicMapType_55533) (o_2@@105 T@Ref) (f_4@@105 T@Field_26205_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_55533_26205_53#PolymorphicMapType_55533| ResultMask@@5) o_2@@105 f_4@@105) (+ (select (|PolymorphicMapType_55533_26205_53#PolymorphicMapType_55533| SummandMask1@@5) o_2@@105 f_4@@105) (select (|PolymorphicMapType_55533_26205_53#PolymorphicMapType_55533| SummandMask2@@5) o_2@@105 f_4@@105))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_55533_26205_53#PolymorphicMapType_55533| ResultMask@@5) o_2@@105 f_4@@105))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_55533_26205_53#PolymorphicMapType_55533| SummandMask1@@5) o_2@@105 f_4@@105))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_55533_26205_53#PolymorphicMapType_55533| SummandMask2@@5) o_2@@105 f_4@@105))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_55533) (SummandMask1@@6 T@PolymorphicMapType_55533) (SummandMask2@@6 T@PolymorphicMapType_55533) (o_2@@106 T@Ref) (f_4@@106 T@Field_75522_75523) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_55533_26205_26206#PolymorphicMapType_55533| ResultMask@@6) o_2@@106 f_4@@106) (+ (select (|PolymorphicMapType_55533_26205_26206#PolymorphicMapType_55533| SummandMask1@@6) o_2@@106 f_4@@106) (select (|PolymorphicMapType_55533_26205_26206#PolymorphicMapType_55533| SummandMask2@@6) o_2@@106 f_4@@106))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_55533_26205_26206#PolymorphicMapType_55533| ResultMask@@6) o_2@@106 f_4@@106))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_55533_26205_26206#PolymorphicMapType_55533| SummandMask1@@6) o_2@@106 f_4@@106))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_55533_26205_26206#PolymorphicMapType_55533| SummandMask2@@6) o_2@@106 f_4@@106))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_55533) (SummandMask1@@7 T@PolymorphicMapType_55533) (SummandMask2@@7 T@PolymorphicMapType_55533) (o_2@@107 T@Ref) (f_4@@107 T@Field_26205_26137) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_55533_26205_26137#PolymorphicMapType_55533| ResultMask@@7) o_2@@107 f_4@@107) (+ (select (|PolymorphicMapType_55533_26205_26137#PolymorphicMapType_55533| SummandMask1@@7) o_2@@107 f_4@@107) (select (|PolymorphicMapType_55533_26205_26137#PolymorphicMapType_55533| SummandMask2@@7) o_2@@107 f_4@@107))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_55533_26205_26137#PolymorphicMapType_55533| ResultMask@@7) o_2@@107 f_4@@107))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_55533_26205_26137#PolymorphicMapType_55533| SummandMask1@@7) o_2@@107 f_4@@107))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_55533_26205_26137#PolymorphicMapType_55533| SummandMask2@@7) o_2@@107 f_4@@107))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_55533) (SummandMask1@@8 T@PolymorphicMapType_55533) (SummandMask2@@8 T@PolymorphicMapType_55533) (o_2@@108 T@Ref) (f_4@@108 T@Field_26205_1186) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_55533_26205_1186#PolymorphicMapType_55533| ResultMask@@8) o_2@@108 f_4@@108) (+ (select (|PolymorphicMapType_55533_26205_1186#PolymorphicMapType_55533| SummandMask1@@8) o_2@@108 f_4@@108) (select (|PolymorphicMapType_55533_26205_1186#PolymorphicMapType_55533| SummandMask2@@8) o_2@@108 f_4@@108))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_55533_26205_1186#PolymorphicMapType_55533| ResultMask@@8) o_2@@108 f_4@@108))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_55533_26205_1186#PolymorphicMapType_55533| SummandMask1@@8) o_2@@108 f_4@@108))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_55533_26205_1186#PolymorphicMapType_55533| SummandMask2@@8) o_2@@108 f_4@@108))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_55533) (SummandMask1@@9 T@PolymorphicMapType_55533) (SummandMask2@@9 T@PolymorphicMapType_55533) (o_2@@109 T@Ref) (f_4@@109 T@Field_60512_60517) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_55533_26165_251214#PolymorphicMapType_55533| ResultMask@@9) o_2@@109 f_4@@109) (+ (select (|PolymorphicMapType_55533_26165_251214#PolymorphicMapType_55533| SummandMask1@@9) o_2@@109 f_4@@109) (select (|PolymorphicMapType_55533_26165_251214#PolymorphicMapType_55533| SummandMask2@@9) o_2@@109 f_4@@109))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_55533_26165_251214#PolymorphicMapType_55533| ResultMask@@9) o_2@@109 f_4@@109))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_55533_26165_251214#PolymorphicMapType_55533| SummandMask1@@9) o_2@@109 f_4@@109))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_55533_26165_251214#PolymorphicMapType_55533| SummandMask2@@9) o_2@@109 f_4@@109))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_55533) (SummandMask1@@10 T@PolymorphicMapType_55533) (SummandMask2@@10 T@PolymorphicMapType_55533) (o_2@@110 T@Ref) (f_4@@110 T@Field_60499_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_55533_26165_53#PolymorphicMapType_55533| ResultMask@@10) o_2@@110 f_4@@110) (+ (select (|PolymorphicMapType_55533_26165_53#PolymorphicMapType_55533| SummandMask1@@10) o_2@@110 f_4@@110) (select (|PolymorphicMapType_55533_26165_53#PolymorphicMapType_55533| SummandMask2@@10) o_2@@110 f_4@@110))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_55533_26165_53#PolymorphicMapType_55533| ResultMask@@10) o_2@@110 f_4@@110))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_55533_26165_53#PolymorphicMapType_55533| SummandMask1@@10) o_2@@110 f_4@@110))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_55533_26165_53#PolymorphicMapType_55533| SummandMask2@@10) o_2@@110 f_4@@110))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_55533) (SummandMask1@@11 T@PolymorphicMapType_55533) (SummandMask2@@11 T@PolymorphicMapType_55533) (o_2@@111 T@Ref) (f_4@@111 T@Field_60499_60500) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_55533_26165_26166#PolymorphicMapType_55533| ResultMask@@11) o_2@@111 f_4@@111) (+ (select (|PolymorphicMapType_55533_26165_26166#PolymorphicMapType_55533| SummandMask1@@11) o_2@@111 f_4@@111) (select (|PolymorphicMapType_55533_26165_26166#PolymorphicMapType_55533| SummandMask2@@11) o_2@@111 f_4@@111))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_55533_26165_26166#PolymorphicMapType_55533| ResultMask@@11) o_2@@111 f_4@@111))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_55533_26165_26166#PolymorphicMapType_55533| SummandMask1@@11) o_2@@111 f_4@@111))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_55533_26165_26166#PolymorphicMapType_55533| SummandMask2@@11) o_2@@111 f_4@@111))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_55533) (SummandMask1@@12 T@PolymorphicMapType_55533) (SummandMask2@@12 T@PolymorphicMapType_55533) (o_2@@112 T@Ref) (f_4@@112 T@Field_60499_26137) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_55533_26165_26137#PolymorphicMapType_55533| ResultMask@@12) o_2@@112 f_4@@112) (+ (select (|PolymorphicMapType_55533_26165_26137#PolymorphicMapType_55533| SummandMask1@@12) o_2@@112 f_4@@112) (select (|PolymorphicMapType_55533_26165_26137#PolymorphicMapType_55533| SummandMask2@@12) o_2@@112 f_4@@112))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_55533_26165_26137#PolymorphicMapType_55533| ResultMask@@12) o_2@@112 f_4@@112))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_55533_26165_26137#PolymorphicMapType_55533| SummandMask1@@12) o_2@@112 f_4@@112))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_55533_26165_26137#PolymorphicMapType_55533| SummandMask2@@12) o_2@@112 f_4@@112))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_55533) (SummandMask1@@13 T@PolymorphicMapType_55533) (SummandMask2@@13 T@PolymorphicMapType_55533) (o_2@@113 T@Ref) (f_4@@113 T@Field_60499_1186) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_55533_26165_1186#PolymorphicMapType_55533| ResultMask@@13) o_2@@113 f_4@@113) (+ (select (|PolymorphicMapType_55533_26165_1186#PolymorphicMapType_55533| SummandMask1@@13) o_2@@113 f_4@@113) (select (|PolymorphicMapType_55533_26165_1186#PolymorphicMapType_55533| SummandMask2@@13) o_2@@113 f_4@@113))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_55533_26165_1186#PolymorphicMapType_55533| ResultMask@@13) o_2@@113 f_4@@113))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_55533_26165_1186#PolymorphicMapType_55533| SummandMask1@@13) o_2@@113 f_4@@113))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_55533_26165_1186#PolymorphicMapType_55533| SummandMask2@@13) o_2@@113 f_4@@113))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_55533) (SummandMask1@@14 T@PolymorphicMapType_55533) (SummandMask2@@14 T@PolymorphicMapType_55533) (o_2@@114 T@Ref) (f_4@@114 T@Field_59008_59013) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_55533_26140_250803#PolymorphicMapType_55533| ResultMask@@14) o_2@@114 f_4@@114) (+ (select (|PolymorphicMapType_55533_26140_250803#PolymorphicMapType_55533| SummandMask1@@14) o_2@@114 f_4@@114) (select (|PolymorphicMapType_55533_26140_250803#PolymorphicMapType_55533| SummandMask2@@14) o_2@@114 f_4@@114))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_55533_26140_250803#PolymorphicMapType_55533| ResultMask@@14) o_2@@114 f_4@@114))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_55533_26140_250803#PolymorphicMapType_55533| SummandMask1@@14) o_2@@114 f_4@@114))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_55533_26140_250803#PolymorphicMapType_55533| SummandMask2@@14) o_2@@114 f_4@@114))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_55533) (SummandMask1@@15 T@PolymorphicMapType_55533) (SummandMask2@@15 T@PolymorphicMapType_55533) (o_2@@115 T@Ref) (f_4@@115 T@Field_26140_53) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_55533_26140_53#PolymorphicMapType_55533| ResultMask@@15) o_2@@115 f_4@@115) (+ (select (|PolymorphicMapType_55533_26140_53#PolymorphicMapType_55533| SummandMask1@@15) o_2@@115 f_4@@115) (select (|PolymorphicMapType_55533_26140_53#PolymorphicMapType_55533| SummandMask2@@15) o_2@@115 f_4@@115))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_55533_26140_53#PolymorphicMapType_55533| ResultMask@@15) o_2@@115 f_4@@115))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_55533_26140_53#PolymorphicMapType_55533| SummandMask1@@15) o_2@@115 f_4@@115))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_55533_26140_53#PolymorphicMapType_55533| SummandMask2@@15) o_2@@115 f_4@@115))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_55533) (SummandMask1@@16 T@PolymorphicMapType_55533) (SummandMask2@@16 T@PolymorphicMapType_55533) (o_2@@116 T@Ref) (f_4@@116 T@Field_58995_58996) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_55533_26140_26141#PolymorphicMapType_55533| ResultMask@@16) o_2@@116 f_4@@116) (+ (select (|PolymorphicMapType_55533_26140_26141#PolymorphicMapType_55533| SummandMask1@@16) o_2@@116 f_4@@116) (select (|PolymorphicMapType_55533_26140_26141#PolymorphicMapType_55533| SummandMask2@@16) o_2@@116 f_4@@116))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_55533_26140_26141#PolymorphicMapType_55533| ResultMask@@16) o_2@@116 f_4@@116))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_55533_26140_26141#PolymorphicMapType_55533| SummandMask1@@16) o_2@@116 f_4@@116))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_55533_26140_26141#PolymorphicMapType_55533| SummandMask2@@16) o_2@@116 f_4@@116))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_55533) (SummandMask1@@17 T@PolymorphicMapType_55533) (SummandMask2@@17 T@PolymorphicMapType_55533) (o_2@@117 T@Ref) (f_4@@117 T@Field_26140_26137) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_55533_26140_26137#PolymorphicMapType_55533| ResultMask@@17) o_2@@117 f_4@@117) (+ (select (|PolymorphicMapType_55533_26140_26137#PolymorphicMapType_55533| SummandMask1@@17) o_2@@117 f_4@@117) (select (|PolymorphicMapType_55533_26140_26137#PolymorphicMapType_55533| SummandMask2@@17) o_2@@117 f_4@@117))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_55533_26140_26137#PolymorphicMapType_55533| ResultMask@@17) o_2@@117 f_4@@117))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_55533_26140_26137#PolymorphicMapType_55533| SummandMask1@@17) o_2@@117 f_4@@117))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_55533_26140_26137#PolymorphicMapType_55533| SummandMask2@@17) o_2@@117 f_4@@117))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_55533) (SummandMask1@@18 T@PolymorphicMapType_55533) (SummandMask2@@18 T@PolymorphicMapType_55533) (o_2@@118 T@Ref) (f_4@@118 T@Field_26140_1186) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_55533_26140_1186#PolymorphicMapType_55533| ResultMask@@18) o_2@@118 f_4@@118) (+ (select (|PolymorphicMapType_55533_26140_1186#PolymorphicMapType_55533| SummandMask1@@18) o_2@@118 f_4@@118) (select (|PolymorphicMapType_55533_26140_1186#PolymorphicMapType_55533| SummandMask2@@18) o_2@@118 f_4@@118))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_55533_26140_1186#PolymorphicMapType_55533| ResultMask@@18) o_2@@118 f_4@@118))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_55533_26140_1186#PolymorphicMapType_55533| SummandMask1@@18) o_2@@118 f_4@@118))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_55533_26140_1186#PolymorphicMapType_55533| SummandMask2@@18) o_2@@118 f_4@@118))
)))
(assert (forall ((ResultMask@@19 T@PolymorphicMapType_55533) (SummandMask1@@19 T@PolymorphicMapType_55533) (SummandMask2@@19 T@PolymorphicMapType_55533) (o_2@@119 T@Ref) (f_4@@119 T@Field_26136_59013) ) (!  (=> (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (= (select (|PolymorphicMapType_55533_26134_250392#PolymorphicMapType_55533| ResultMask@@19) o_2@@119 f_4@@119) (+ (select (|PolymorphicMapType_55533_26134_250392#PolymorphicMapType_55533| SummandMask1@@19) o_2@@119 f_4@@119) (select (|PolymorphicMapType_55533_26134_250392#PolymorphicMapType_55533| SummandMask2@@19) o_2@@119 f_4@@119))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_55533_26134_250392#PolymorphicMapType_55533| ResultMask@@19) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_55533_26134_250392#PolymorphicMapType_55533| SummandMask1@@19) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_55533_26134_250392#PolymorphicMapType_55533| SummandMask2@@19) o_2@@119 f_4@@119))
)))
(assert (forall ((ResultMask@@20 T@PolymorphicMapType_55533) (SummandMask1@@20 T@PolymorphicMapType_55533) (SummandMask2@@20 T@PolymorphicMapType_55533) (o_2@@120 T@Ref) (f_4@@120 T@Field_55572_53) ) (!  (=> (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (= (select (|PolymorphicMapType_55533_26134_53#PolymorphicMapType_55533| ResultMask@@20) o_2@@120 f_4@@120) (+ (select (|PolymorphicMapType_55533_26134_53#PolymorphicMapType_55533| SummandMask1@@20) o_2@@120 f_4@@120) (select (|PolymorphicMapType_55533_26134_53#PolymorphicMapType_55533| SummandMask2@@20) o_2@@120 f_4@@120))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_55533_26134_53#PolymorphicMapType_55533| ResultMask@@20) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_55533_26134_53#PolymorphicMapType_55533| SummandMask1@@20) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_55533_26134_53#PolymorphicMapType_55533| SummandMask2@@20) o_2@@120 f_4@@120))
)))
(assert (forall ((ResultMask@@21 T@PolymorphicMapType_55533) (SummandMask1@@21 T@PolymorphicMapType_55533) (SummandMask2@@21 T@PolymorphicMapType_55533) (o_2@@121 T@Ref) (f_4@@121 T@Field_26136_26206) ) (!  (=> (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (= (select (|PolymorphicMapType_55533_26134_26141#PolymorphicMapType_55533| ResultMask@@21) o_2@@121 f_4@@121) (+ (select (|PolymorphicMapType_55533_26134_26141#PolymorphicMapType_55533| SummandMask1@@21) o_2@@121 f_4@@121) (select (|PolymorphicMapType_55533_26134_26141#PolymorphicMapType_55533| SummandMask2@@21) o_2@@121 f_4@@121))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_55533_26134_26141#PolymorphicMapType_55533| ResultMask@@21) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_55533_26134_26141#PolymorphicMapType_55533| SummandMask1@@21) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_55533_26134_26141#PolymorphicMapType_55533| SummandMask2@@21) o_2@@121 f_4@@121))
)))
(assert (forall ((ResultMask@@22 T@PolymorphicMapType_55533) (SummandMask1@@22 T@PolymorphicMapType_55533) (SummandMask2@@22 T@PolymorphicMapType_55533) (o_2@@122 T@Ref) (f_4@@122 T@Field_55585_55586) ) (!  (=> (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (= (select (|PolymorphicMapType_55533_26136_26137#PolymorphicMapType_55533| ResultMask@@22) o_2@@122 f_4@@122) (+ (select (|PolymorphicMapType_55533_26136_26137#PolymorphicMapType_55533| SummandMask1@@22) o_2@@122 f_4@@122) (select (|PolymorphicMapType_55533_26136_26137#PolymorphicMapType_55533| SummandMask2@@22) o_2@@122 f_4@@122))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_55533_26136_26137#PolymorphicMapType_55533| ResultMask@@22) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_55533_26136_26137#PolymorphicMapType_55533| SummandMask1@@22) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_55533_26136_26137#PolymorphicMapType_55533| SummandMask2@@22) o_2@@122 f_4@@122))
)))
(assert (forall ((ResultMask@@23 T@PolymorphicMapType_55533) (SummandMask1@@23 T@PolymorphicMapType_55533) (SummandMask2@@23 T@PolymorphicMapType_55533) (o_2@@123 T@Ref) (f_4@@123 T@Field_58898_1186) ) (!  (=> (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (= (select (|PolymorphicMapType_55533_26134_1186#PolymorphicMapType_55533| ResultMask@@23) o_2@@123 f_4@@123) (+ (select (|PolymorphicMapType_55533_26134_1186#PolymorphicMapType_55533| SummandMask1@@23) o_2@@123 f_4@@123) (select (|PolymorphicMapType_55533_26134_1186#PolymorphicMapType_55533| SummandMask2@@23) o_2@@123 f_4@@123))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_55533_26134_1186#PolymorphicMapType_55533| ResultMask@@23) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_55533_26134_1186#PolymorphicMapType_55533| SummandMask1@@23) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_55533_26134_1186#PolymorphicMapType_55533| SummandMask2@@23) o_2@@123 f_4@@123))
)))
(assert (forall ((r_1@@15 T@Ref) ) (! (= (getPredWandId_26140_26141 (valid r_1@@15)) 0)
 :qid |stdinbpl.202:15|
 :skolemid |24|
 :pattern ( (valid r_1@@15))
)))
(assert (forall ((r_1@@16 T@Ref) ) (! (= (getPredWandId_26165_26166 (deeper r_1@@16)) 1)
 :qid |stdinbpl.273:15|
 :skolemid |30|
 :pattern ( (deeper r_1@@16))
)))
(assert (forall ((r_1@@17 T@Ref) ) (! (= (getPredWandId_26205_26206 (strange r_1@@17)) 2)
 :qid |stdinbpl.490:15|
 :skolemid |40|
 :pattern ( (strange r_1@@17))
)))
(assert (forall ((r_1@@18 T@Ref) ) (! (= (getPredWandId_26245_26246 (deeperfalse r_1@@18)) 3)
 :qid |stdinbpl.749:15|
 :skolemid |50|
 :pattern ( (deeperfalse r_1@@18))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_55512) (o_106 T@Ref) (f_108 T@Field_88397_88402) (v T@PolymorphicMapType_56061) ) (! (succHeap Heap@@41 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@41) (store (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@41) o_106 f_108 v) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@41) (store (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@41) o_106 f_108 v) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@41) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_55512) (o_106@@0 T@Ref) (f_108@@0 T@Field_88384_1186) (v@@0 Int) ) (! (succHeap Heap@@42 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@42) (store (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@42) o_106@@0 f_108@@0 v@@0) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@42) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@42) (store (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@42) o_106@@0 f_108@@0 v@@0) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_55512) (o_106@@1 T@Ref) (f_108@@1 T@Field_88384_88385) (v@@1 T@FrameType) ) (! (succHeap Heap@@43 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@43) (store (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@43) o_106@@1 f_108@@1 v@@1) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@43) (store (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@43) o_106@@1 f_108@@1 v@@1) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@43) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_55512) (o_106@@2 T@Ref) (f_108@@2 T@Field_88384_26137) (v@@2 T@Ref) ) (! (succHeap Heap@@44 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@44) (store (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@44) o_106@@2 f_108@@2 v@@2) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@44) (store (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@44) o_106@@2 f_108@@2 v@@2) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@44) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_55512) (o_106@@3 T@Ref) (f_108@@3 T@Field_88384_53) (v@@3 Bool) ) (! (succHeap Heap@@45 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@45) (store (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@45) o_106@@3 f_108@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@45) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@45) (store (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@45) o_106@@3 f_108@@3 v@@3)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_55512) (o_106@@4 T@Ref) (f_108@@4 T@Field_59008_59013) (v@@4 T@PolymorphicMapType_56061) ) (! (succHeap Heap@@46 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@46) (store (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@46) o_106@@4 f_108@@4 v@@4) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@46) (store (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@46) o_106@@4 f_108@@4 v@@4) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@46) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_55512) (o_106@@5 T@Ref) (f_108@@5 T@Field_26140_1186) (v@@5 Int) ) (! (succHeap Heap@@47 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@47) (store (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@47) o_106@@5 f_108@@5 v@@5) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@47) (store (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@47) o_106@@5 f_108@@5 v@@5) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@47) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_55512) (o_106@@6 T@Ref) (f_108@@6 T@Field_58995_58996) (v@@6 T@FrameType) ) (! (succHeap Heap@@48 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@48) (store (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@48) o_106@@6 f_108@@6 v@@6) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@48) (store (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@48) o_106@@6 f_108@@6 v@@6) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@48) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_55512) (o_106@@7 T@Ref) (f_108@@7 T@Field_26140_26137) (v@@7 T@Ref) ) (! (succHeap Heap@@49 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@49) (store (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@49) o_106@@7 f_108@@7 v@@7) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@49) (store (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@49) o_106@@7 f_108@@7 v@@7) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@49) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_55512) (o_106@@8 T@Ref) (f_108@@8 T@Field_26140_53) (v@@8 Bool) ) (! (succHeap Heap@@50 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@50) (store (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@50) o_106@@8 f_108@@8 v@@8) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@50) (store (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@50) o_106@@8 f_108@@8 v@@8) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@50) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_55512) (o_106@@9 T@Ref) (f_108@@9 T@Field_75535_75540) (v@@9 T@PolymorphicMapType_56061) ) (! (succHeap Heap@@51 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@51) (store (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@51) o_106@@9 f_108@@9 v@@9) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@51) (store (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@51) o_106@@9 f_108@@9 v@@9) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@51) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_55512) (o_106@@10 T@Ref) (f_108@@10 T@Field_26205_1186) (v@@10 Int) ) (! (succHeap Heap@@52 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@52) (store (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@52) o_106@@10 f_108@@10 v@@10) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@52) (store (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@52) o_106@@10 f_108@@10 v@@10) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@52) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_55512) (o_106@@11 T@Ref) (f_108@@11 T@Field_75522_75523) (v@@11 T@FrameType) ) (! (succHeap Heap@@53 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@53) (store (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@53) o_106@@11 f_108@@11 v@@11) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@53) (store (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@53) o_106@@11 f_108@@11 v@@11) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@53) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_55512) (o_106@@12 T@Ref) (f_108@@12 T@Field_26205_26137) (v@@12 T@Ref) ) (! (succHeap Heap@@54 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@54) (store (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@54) o_106@@12 f_108@@12 v@@12) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@54) (store (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@54) o_106@@12 f_108@@12 v@@12) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@54) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_55512) (o_106@@13 T@Ref) (f_108@@13 T@Field_26205_53) (v@@13 Bool) ) (! (succHeap Heap@@55 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@55) (store (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@55) o_106@@13 f_108@@13 v@@13) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@55) (store (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@55) o_106@@13 f_108@@13 v@@13) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@55) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_55512) (o_106@@14 T@Ref) (f_108@@14 T@Field_60512_60517) (v@@14 T@PolymorphicMapType_56061) ) (! (succHeap Heap@@56 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@56) (store (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@56) o_106@@14 f_108@@14 v@@14) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@56) (store (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@56) o_106@@14 f_108@@14 v@@14) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@56) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_55512) (o_106@@15 T@Ref) (f_108@@15 T@Field_60499_1186) (v@@15 Int) ) (! (succHeap Heap@@57 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@57) (store (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@57) o_106@@15 f_108@@15 v@@15) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@57) (store (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@57) o_106@@15 f_108@@15 v@@15) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@57) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_55512) (o_106@@16 T@Ref) (f_108@@16 T@Field_60499_60500) (v@@16 T@FrameType) ) (! (succHeap Heap@@58 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@58) (store (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@58) o_106@@16 f_108@@16 v@@16) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@58) (store (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@58) o_106@@16 f_108@@16 v@@16) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@58) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_55512) (o_106@@17 T@Ref) (f_108@@17 T@Field_60499_26137) (v@@17 T@Ref) ) (! (succHeap Heap@@59 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@59) (store (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@59) o_106@@17 f_108@@17 v@@17) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@59) (store (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@59) o_106@@17 f_108@@17 v@@17) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@59) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_55512) (o_106@@18 T@Ref) (f_108@@18 T@Field_60499_53) (v@@18 Bool) ) (! (succHeap Heap@@60 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@60) (store (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@60) o_106@@18 f_108@@18 v@@18) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@60) (store (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@60) o_106@@18 f_108@@18 v@@18) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@60) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_55512) (o_106@@19 T@Ref) (f_108@@19 T@Field_26136_59013) (v@@19 T@PolymorphicMapType_56061) ) (! (succHeap Heap@@61 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@61) (store (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@61) o_106@@19 f_108@@19 v@@19) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@61) (store (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@61) o_106@@19 f_108@@19 v@@19) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@61) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_55512) (o_106@@20 T@Ref) (f_108@@20 T@Field_58898_1186) (v@@20 Int) ) (! (succHeap Heap@@62 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@62) (store (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@62) o_106@@20 f_108@@20 v@@20) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@62) (store (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@62) o_106@@20 f_108@@20 v@@20) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@62) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_55512) (o_106@@21 T@Ref) (f_108@@21 T@Field_26136_26206) (v@@21 T@FrameType) ) (! (succHeap Heap@@63 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@63) (store (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@63) o_106@@21 f_108@@21 v@@21) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@63) (store (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@63) o_106@@21 f_108@@21 v@@21) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@63) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_55512) (o_106@@22 T@Ref) (f_108@@22 T@Field_55585_55586) (v@@22 T@Ref) ) (! (succHeap Heap@@64 (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@64) (store (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@64) o_106@@22 f_108@@22 v@@22) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@64) (store (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@64) o_106@@22 f_108@@22 v@@22) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@64) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_55512) (o_106@@23 T@Ref) (f_108@@23 T@Field_55572_53) (v@@23 Bool) ) (! (succHeap Heap@@65 (PolymorphicMapType_55512 (store (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@65) o_106@@23 f_108@@23 v@@23) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_55512 (store (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@65) o_106@@23 f_108@@23 v@@23) (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@65) (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@65)))
)))
(assert (forall ((r_1@@19 T@Ref) ) (! (= (PredicateMaskField_26140 (valid r_1@@19)) (|valid#sm| r_1@@19))
 :qid |stdinbpl.194:15|
 :skolemid |22|
 :pattern ( (PredicateMaskField_26140 (valid r_1@@19)))
)))
(assert (forall ((r_1@@20 T@Ref) ) (! (= (PredicateMaskField_26165 (deeper r_1@@20)) (|deeper#sm| r_1@@20))
 :qid |stdinbpl.265:15|
 :skolemid |28|
 :pattern ( (PredicateMaskField_26165 (deeper r_1@@20)))
)))
(assert (forall ((r_1@@21 T@Ref) ) (! (= (PredicateMaskField_26205 (strange r_1@@21)) (|strange#sm| r_1@@21))
 :qid |stdinbpl.482:15|
 :skolemid |38|
 :pattern ( (PredicateMaskField_26205 (strange r_1@@21)))
)))
(assert (forall ((r_1@@22 T@Ref) ) (! (= (PredicateMaskField_26245 (deeperfalse r_1@@22)) (|deeperfalse#sm| r_1@@22))
 :qid |stdinbpl.741:15|
 :skolemid |48|
 :pattern ( (PredicateMaskField_26245 (deeperfalse r_1@@22)))
)))
(assert (forall ((o_106@@24 T@Ref) (f_202 T@Field_55585_55586) (Heap@@66 T@PolymorphicMapType_55512) ) (!  (=> (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@66) o_106@@24 $allocated) (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@66) (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@66) o_106@@24 f_202) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@66) o_106@@24 f_202))
)))
(assert (forall ((p@@5 T@Field_26136_26206) (v_1@@4 T@FrameType) (q T@Field_26136_26206) (w@@4 T@FrameType) (r T@Field_88384_88385) (u T@FrameType) ) (!  (=> (and (InsidePredicate_55572_55572 p@@5 v_1@@4 q w@@4) (InsidePredicate_55572_88384 q w@@4 r u)) (InsidePredicate_55572_88384 p@@5 v_1@@4 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_55572 p@@5 v_1@@4 q w@@4) (InsidePredicate_55572_88384 q w@@4 r u))
)))
(assert (forall ((p@@6 T@Field_26136_26206) (v_1@@5 T@FrameType) (q@@0 T@Field_26136_26206) (w@@5 T@FrameType) (r@@0 T@Field_26136_26206) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_55572 p@@6 v_1@@5 q@@0 w@@5) (InsidePredicate_55572_55572 q@@0 w@@5 r@@0 u@@0)) (InsidePredicate_55572_55572 p@@6 v_1@@5 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_55572 p@@6 v_1@@5 q@@0 w@@5) (InsidePredicate_55572_55572 q@@0 w@@5 r@@0 u@@0))
)))
(assert (forall ((p@@7 T@Field_26136_26206) (v_1@@6 T@FrameType) (q@@1 T@Field_26136_26206) (w@@6 T@FrameType) (r@@1 T@Field_58995_58996) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_55572 p@@7 v_1@@6 q@@1 w@@6) (InsidePredicate_55572_26140 q@@1 w@@6 r@@1 u@@1)) (InsidePredicate_55572_26140 p@@7 v_1@@6 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_55572 p@@7 v_1@@6 q@@1 w@@6) (InsidePredicate_55572_26140 q@@1 w@@6 r@@1 u@@1))
)))
(assert (forall ((p@@8 T@Field_26136_26206) (v_1@@7 T@FrameType) (q@@2 T@Field_26136_26206) (w@@7 T@FrameType) (r@@2 T@Field_75522_75523) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_55572 p@@8 v_1@@7 q@@2 w@@7) (InsidePredicate_55572_26205 q@@2 w@@7 r@@2 u@@2)) (InsidePredicate_55572_26205 p@@8 v_1@@7 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_55572 p@@8 v_1@@7 q@@2 w@@7) (InsidePredicate_55572_26205 q@@2 w@@7 r@@2 u@@2))
)))
(assert (forall ((p@@9 T@Field_26136_26206) (v_1@@8 T@FrameType) (q@@3 T@Field_26136_26206) (w@@8 T@FrameType) (r@@3 T@Field_60499_60500) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_55572 p@@9 v_1@@8 q@@3 w@@8) (InsidePredicate_55572_26165 q@@3 w@@8 r@@3 u@@3)) (InsidePredicate_55572_26165 p@@9 v_1@@8 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_55572 p@@9 v_1@@8 q@@3 w@@8) (InsidePredicate_55572_26165 q@@3 w@@8 r@@3 u@@3))
)))
(assert (forall ((p@@10 T@Field_26136_26206) (v_1@@9 T@FrameType) (q@@4 T@Field_88384_88385) (w@@9 T@FrameType) (r@@4 T@Field_88384_88385) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_88384 p@@10 v_1@@9 q@@4 w@@9) (InsidePredicate_26245_88384 q@@4 w@@9 r@@4 u@@4)) (InsidePredicate_55572_88384 p@@10 v_1@@9 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_88384 p@@10 v_1@@9 q@@4 w@@9) (InsidePredicate_26245_88384 q@@4 w@@9 r@@4 u@@4))
)))
(assert (forall ((p@@11 T@Field_26136_26206) (v_1@@10 T@FrameType) (q@@5 T@Field_88384_88385) (w@@10 T@FrameType) (r@@5 T@Field_26136_26206) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_88384 p@@11 v_1@@10 q@@5 w@@10) (InsidePredicate_26245_55572 q@@5 w@@10 r@@5 u@@5)) (InsidePredicate_55572_55572 p@@11 v_1@@10 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_88384 p@@11 v_1@@10 q@@5 w@@10) (InsidePredicate_26245_55572 q@@5 w@@10 r@@5 u@@5))
)))
(assert (forall ((p@@12 T@Field_26136_26206) (v_1@@11 T@FrameType) (q@@6 T@Field_88384_88385) (w@@11 T@FrameType) (r@@6 T@Field_58995_58996) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_88384 p@@12 v_1@@11 q@@6 w@@11) (InsidePredicate_26245_26140 q@@6 w@@11 r@@6 u@@6)) (InsidePredicate_55572_26140 p@@12 v_1@@11 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_88384 p@@12 v_1@@11 q@@6 w@@11) (InsidePredicate_26245_26140 q@@6 w@@11 r@@6 u@@6))
)))
(assert (forall ((p@@13 T@Field_26136_26206) (v_1@@12 T@FrameType) (q@@7 T@Field_88384_88385) (w@@12 T@FrameType) (r@@7 T@Field_75522_75523) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_88384 p@@13 v_1@@12 q@@7 w@@12) (InsidePredicate_26245_26205 q@@7 w@@12 r@@7 u@@7)) (InsidePredicate_55572_26205 p@@13 v_1@@12 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_88384 p@@13 v_1@@12 q@@7 w@@12) (InsidePredicate_26245_26205 q@@7 w@@12 r@@7 u@@7))
)))
(assert (forall ((p@@14 T@Field_26136_26206) (v_1@@13 T@FrameType) (q@@8 T@Field_88384_88385) (w@@13 T@FrameType) (r@@8 T@Field_60499_60500) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_88384 p@@14 v_1@@13 q@@8 w@@13) (InsidePredicate_26245_26165 q@@8 w@@13 r@@8 u@@8)) (InsidePredicate_55572_26165 p@@14 v_1@@13 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_88384 p@@14 v_1@@13 q@@8 w@@13) (InsidePredicate_26245_26165 q@@8 w@@13 r@@8 u@@8))
)))
(assert (forall ((p@@15 T@Field_26136_26206) (v_1@@14 T@FrameType) (q@@9 T@Field_58995_58996) (w@@14 T@FrameType) (r@@9 T@Field_88384_88385) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_26140 p@@15 v_1@@14 q@@9 w@@14) (InsidePredicate_26140_88384 q@@9 w@@14 r@@9 u@@9)) (InsidePredicate_55572_88384 p@@15 v_1@@14 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_26140 p@@15 v_1@@14 q@@9 w@@14) (InsidePredicate_26140_88384 q@@9 w@@14 r@@9 u@@9))
)))
(assert (forall ((p@@16 T@Field_26136_26206) (v_1@@15 T@FrameType) (q@@10 T@Field_58995_58996) (w@@15 T@FrameType) (r@@10 T@Field_26136_26206) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_26140 p@@16 v_1@@15 q@@10 w@@15) (InsidePredicate_26140_55572 q@@10 w@@15 r@@10 u@@10)) (InsidePredicate_55572_55572 p@@16 v_1@@15 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_26140 p@@16 v_1@@15 q@@10 w@@15) (InsidePredicate_26140_55572 q@@10 w@@15 r@@10 u@@10))
)))
(assert (forall ((p@@17 T@Field_26136_26206) (v_1@@16 T@FrameType) (q@@11 T@Field_58995_58996) (w@@16 T@FrameType) (r@@11 T@Field_58995_58996) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_26140 p@@17 v_1@@16 q@@11 w@@16) (InsidePredicate_26140_26140 q@@11 w@@16 r@@11 u@@11)) (InsidePredicate_55572_26140 p@@17 v_1@@16 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_26140 p@@17 v_1@@16 q@@11 w@@16) (InsidePredicate_26140_26140 q@@11 w@@16 r@@11 u@@11))
)))
(assert (forall ((p@@18 T@Field_26136_26206) (v_1@@17 T@FrameType) (q@@12 T@Field_58995_58996) (w@@17 T@FrameType) (r@@12 T@Field_75522_75523) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_26140 p@@18 v_1@@17 q@@12 w@@17) (InsidePredicate_26140_26205 q@@12 w@@17 r@@12 u@@12)) (InsidePredicate_55572_26205 p@@18 v_1@@17 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_26140 p@@18 v_1@@17 q@@12 w@@17) (InsidePredicate_26140_26205 q@@12 w@@17 r@@12 u@@12))
)))
(assert (forall ((p@@19 T@Field_26136_26206) (v_1@@18 T@FrameType) (q@@13 T@Field_58995_58996) (w@@18 T@FrameType) (r@@13 T@Field_60499_60500) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_26140 p@@19 v_1@@18 q@@13 w@@18) (InsidePredicate_26140_26165 q@@13 w@@18 r@@13 u@@13)) (InsidePredicate_55572_26165 p@@19 v_1@@18 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_26140 p@@19 v_1@@18 q@@13 w@@18) (InsidePredicate_26140_26165 q@@13 w@@18 r@@13 u@@13))
)))
(assert (forall ((p@@20 T@Field_26136_26206) (v_1@@19 T@FrameType) (q@@14 T@Field_75522_75523) (w@@19 T@FrameType) (r@@14 T@Field_88384_88385) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_26205 p@@20 v_1@@19 q@@14 w@@19) (InsidePredicate_26205_88384 q@@14 w@@19 r@@14 u@@14)) (InsidePredicate_55572_88384 p@@20 v_1@@19 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_26205 p@@20 v_1@@19 q@@14 w@@19) (InsidePredicate_26205_88384 q@@14 w@@19 r@@14 u@@14))
)))
(assert (forall ((p@@21 T@Field_26136_26206) (v_1@@20 T@FrameType) (q@@15 T@Field_75522_75523) (w@@20 T@FrameType) (r@@15 T@Field_26136_26206) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_26205 p@@21 v_1@@20 q@@15 w@@20) (InsidePredicate_26205_55572 q@@15 w@@20 r@@15 u@@15)) (InsidePredicate_55572_55572 p@@21 v_1@@20 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_26205 p@@21 v_1@@20 q@@15 w@@20) (InsidePredicate_26205_55572 q@@15 w@@20 r@@15 u@@15))
)))
(assert (forall ((p@@22 T@Field_26136_26206) (v_1@@21 T@FrameType) (q@@16 T@Field_75522_75523) (w@@21 T@FrameType) (r@@16 T@Field_58995_58996) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_26205 p@@22 v_1@@21 q@@16 w@@21) (InsidePredicate_26205_26140 q@@16 w@@21 r@@16 u@@16)) (InsidePredicate_55572_26140 p@@22 v_1@@21 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_26205 p@@22 v_1@@21 q@@16 w@@21) (InsidePredicate_26205_26140 q@@16 w@@21 r@@16 u@@16))
)))
(assert (forall ((p@@23 T@Field_26136_26206) (v_1@@22 T@FrameType) (q@@17 T@Field_75522_75523) (w@@22 T@FrameType) (r@@17 T@Field_75522_75523) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_26205 p@@23 v_1@@22 q@@17 w@@22) (InsidePredicate_26205_26205 q@@17 w@@22 r@@17 u@@17)) (InsidePredicate_55572_26205 p@@23 v_1@@22 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_26205 p@@23 v_1@@22 q@@17 w@@22) (InsidePredicate_26205_26205 q@@17 w@@22 r@@17 u@@17))
)))
(assert (forall ((p@@24 T@Field_26136_26206) (v_1@@23 T@FrameType) (q@@18 T@Field_75522_75523) (w@@23 T@FrameType) (r@@18 T@Field_60499_60500) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_26205 p@@24 v_1@@23 q@@18 w@@23) (InsidePredicate_26205_26165 q@@18 w@@23 r@@18 u@@18)) (InsidePredicate_55572_26165 p@@24 v_1@@23 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_26205 p@@24 v_1@@23 q@@18 w@@23) (InsidePredicate_26205_26165 q@@18 w@@23 r@@18 u@@18))
)))
(assert (forall ((p@@25 T@Field_26136_26206) (v_1@@24 T@FrameType) (q@@19 T@Field_60499_60500) (w@@24 T@FrameType) (r@@19 T@Field_88384_88385) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_26165 p@@25 v_1@@24 q@@19 w@@24) (InsidePredicate_26165_88384 q@@19 w@@24 r@@19 u@@19)) (InsidePredicate_55572_88384 p@@25 v_1@@24 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_26165 p@@25 v_1@@24 q@@19 w@@24) (InsidePredicate_26165_88384 q@@19 w@@24 r@@19 u@@19))
)))
(assert (forall ((p@@26 T@Field_26136_26206) (v_1@@25 T@FrameType) (q@@20 T@Field_60499_60500) (w@@25 T@FrameType) (r@@20 T@Field_26136_26206) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_26165 p@@26 v_1@@25 q@@20 w@@25) (InsidePredicate_26165_55572 q@@20 w@@25 r@@20 u@@20)) (InsidePredicate_55572_55572 p@@26 v_1@@25 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_26165 p@@26 v_1@@25 q@@20 w@@25) (InsidePredicate_26165_55572 q@@20 w@@25 r@@20 u@@20))
)))
(assert (forall ((p@@27 T@Field_26136_26206) (v_1@@26 T@FrameType) (q@@21 T@Field_60499_60500) (w@@26 T@FrameType) (r@@21 T@Field_58995_58996) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_26165 p@@27 v_1@@26 q@@21 w@@26) (InsidePredicate_26165_26140 q@@21 w@@26 r@@21 u@@21)) (InsidePredicate_55572_26140 p@@27 v_1@@26 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_26165 p@@27 v_1@@26 q@@21 w@@26) (InsidePredicate_26165_26140 q@@21 w@@26 r@@21 u@@21))
)))
(assert (forall ((p@@28 T@Field_26136_26206) (v_1@@27 T@FrameType) (q@@22 T@Field_60499_60500) (w@@27 T@FrameType) (r@@22 T@Field_75522_75523) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_26165 p@@28 v_1@@27 q@@22 w@@27) (InsidePredicate_26165_26205 q@@22 w@@27 r@@22 u@@22)) (InsidePredicate_55572_26205 p@@28 v_1@@27 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_26165 p@@28 v_1@@27 q@@22 w@@27) (InsidePredicate_26165_26205 q@@22 w@@27 r@@22 u@@22))
)))
(assert (forall ((p@@29 T@Field_26136_26206) (v_1@@28 T@FrameType) (q@@23 T@Field_60499_60500) (w@@28 T@FrameType) (r@@23 T@Field_60499_60500) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_55572_26165 p@@29 v_1@@28 q@@23 w@@28) (InsidePredicate_26165_26165 q@@23 w@@28 r@@23 u@@23)) (InsidePredicate_55572_26165 p@@29 v_1@@28 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55572_26165 p@@29 v_1@@28 q@@23 w@@28) (InsidePredicate_26165_26165 q@@23 w@@28 r@@23 u@@23))
)))
(assert (forall ((p@@30 T@Field_88384_88385) (v_1@@29 T@FrameType) (q@@24 T@Field_26136_26206) (w@@29 T@FrameType) (r@@24 T@Field_88384_88385) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_55572 p@@30 v_1@@29 q@@24 w@@29) (InsidePredicate_55572_88384 q@@24 w@@29 r@@24 u@@24)) (InsidePredicate_26245_88384 p@@30 v_1@@29 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_55572 p@@30 v_1@@29 q@@24 w@@29) (InsidePredicate_55572_88384 q@@24 w@@29 r@@24 u@@24))
)))
(assert (forall ((p@@31 T@Field_88384_88385) (v_1@@30 T@FrameType) (q@@25 T@Field_26136_26206) (w@@30 T@FrameType) (r@@25 T@Field_26136_26206) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_55572 p@@31 v_1@@30 q@@25 w@@30) (InsidePredicate_55572_55572 q@@25 w@@30 r@@25 u@@25)) (InsidePredicate_26245_55572 p@@31 v_1@@30 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_55572 p@@31 v_1@@30 q@@25 w@@30) (InsidePredicate_55572_55572 q@@25 w@@30 r@@25 u@@25))
)))
(assert (forall ((p@@32 T@Field_88384_88385) (v_1@@31 T@FrameType) (q@@26 T@Field_26136_26206) (w@@31 T@FrameType) (r@@26 T@Field_58995_58996) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_55572 p@@32 v_1@@31 q@@26 w@@31) (InsidePredicate_55572_26140 q@@26 w@@31 r@@26 u@@26)) (InsidePredicate_26245_26140 p@@32 v_1@@31 r@@26 u@@26))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_55572 p@@32 v_1@@31 q@@26 w@@31) (InsidePredicate_55572_26140 q@@26 w@@31 r@@26 u@@26))
)))
(assert (forall ((p@@33 T@Field_88384_88385) (v_1@@32 T@FrameType) (q@@27 T@Field_26136_26206) (w@@32 T@FrameType) (r@@27 T@Field_75522_75523) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_55572 p@@33 v_1@@32 q@@27 w@@32) (InsidePredicate_55572_26205 q@@27 w@@32 r@@27 u@@27)) (InsidePredicate_26245_26205 p@@33 v_1@@32 r@@27 u@@27))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_55572 p@@33 v_1@@32 q@@27 w@@32) (InsidePredicate_55572_26205 q@@27 w@@32 r@@27 u@@27))
)))
(assert (forall ((p@@34 T@Field_88384_88385) (v_1@@33 T@FrameType) (q@@28 T@Field_26136_26206) (w@@33 T@FrameType) (r@@28 T@Field_60499_60500) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_55572 p@@34 v_1@@33 q@@28 w@@33) (InsidePredicate_55572_26165 q@@28 w@@33 r@@28 u@@28)) (InsidePredicate_26245_26165 p@@34 v_1@@33 r@@28 u@@28))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_55572 p@@34 v_1@@33 q@@28 w@@33) (InsidePredicate_55572_26165 q@@28 w@@33 r@@28 u@@28))
)))
(assert (forall ((p@@35 T@Field_88384_88385) (v_1@@34 T@FrameType) (q@@29 T@Field_88384_88385) (w@@34 T@FrameType) (r@@29 T@Field_88384_88385) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_88384 p@@35 v_1@@34 q@@29 w@@34) (InsidePredicate_26245_88384 q@@29 w@@34 r@@29 u@@29)) (InsidePredicate_26245_88384 p@@35 v_1@@34 r@@29 u@@29))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_88384 p@@35 v_1@@34 q@@29 w@@34) (InsidePredicate_26245_88384 q@@29 w@@34 r@@29 u@@29))
)))
(assert (forall ((p@@36 T@Field_88384_88385) (v_1@@35 T@FrameType) (q@@30 T@Field_88384_88385) (w@@35 T@FrameType) (r@@30 T@Field_26136_26206) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_88384 p@@36 v_1@@35 q@@30 w@@35) (InsidePredicate_26245_55572 q@@30 w@@35 r@@30 u@@30)) (InsidePredicate_26245_55572 p@@36 v_1@@35 r@@30 u@@30))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_88384 p@@36 v_1@@35 q@@30 w@@35) (InsidePredicate_26245_55572 q@@30 w@@35 r@@30 u@@30))
)))
(assert (forall ((p@@37 T@Field_88384_88385) (v_1@@36 T@FrameType) (q@@31 T@Field_88384_88385) (w@@36 T@FrameType) (r@@31 T@Field_58995_58996) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_88384 p@@37 v_1@@36 q@@31 w@@36) (InsidePredicate_26245_26140 q@@31 w@@36 r@@31 u@@31)) (InsidePredicate_26245_26140 p@@37 v_1@@36 r@@31 u@@31))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_88384 p@@37 v_1@@36 q@@31 w@@36) (InsidePredicate_26245_26140 q@@31 w@@36 r@@31 u@@31))
)))
(assert (forall ((p@@38 T@Field_88384_88385) (v_1@@37 T@FrameType) (q@@32 T@Field_88384_88385) (w@@37 T@FrameType) (r@@32 T@Field_75522_75523) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_88384 p@@38 v_1@@37 q@@32 w@@37) (InsidePredicate_26245_26205 q@@32 w@@37 r@@32 u@@32)) (InsidePredicate_26245_26205 p@@38 v_1@@37 r@@32 u@@32))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_88384 p@@38 v_1@@37 q@@32 w@@37) (InsidePredicate_26245_26205 q@@32 w@@37 r@@32 u@@32))
)))
(assert (forall ((p@@39 T@Field_88384_88385) (v_1@@38 T@FrameType) (q@@33 T@Field_88384_88385) (w@@38 T@FrameType) (r@@33 T@Field_60499_60500) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_88384 p@@39 v_1@@38 q@@33 w@@38) (InsidePredicate_26245_26165 q@@33 w@@38 r@@33 u@@33)) (InsidePredicate_26245_26165 p@@39 v_1@@38 r@@33 u@@33))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_88384 p@@39 v_1@@38 q@@33 w@@38) (InsidePredicate_26245_26165 q@@33 w@@38 r@@33 u@@33))
)))
(assert (forall ((p@@40 T@Field_88384_88385) (v_1@@39 T@FrameType) (q@@34 T@Field_58995_58996) (w@@39 T@FrameType) (r@@34 T@Field_88384_88385) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_26140 p@@40 v_1@@39 q@@34 w@@39) (InsidePredicate_26140_88384 q@@34 w@@39 r@@34 u@@34)) (InsidePredicate_26245_88384 p@@40 v_1@@39 r@@34 u@@34))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_26140 p@@40 v_1@@39 q@@34 w@@39) (InsidePredicate_26140_88384 q@@34 w@@39 r@@34 u@@34))
)))
(assert (forall ((p@@41 T@Field_88384_88385) (v_1@@40 T@FrameType) (q@@35 T@Field_58995_58996) (w@@40 T@FrameType) (r@@35 T@Field_26136_26206) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_26140 p@@41 v_1@@40 q@@35 w@@40) (InsidePredicate_26140_55572 q@@35 w@@40 r@@35 u@@35)) (InsidePredicate_26245_55572 p@@41 v_1@@40 r@@35 u@@35))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_26140 p@@41 v_1@@40 q@@35 w@@40) (InsidePredicate_26140_55572 q@@35 w@@40 r@@35 u@@35))
)))
(assert (forall ((p@@42 T@Field_88384_88385) (v_1@@41 T@FrameType) (q@@36 T@Field_58995_58996) (w@@41 T@FrameType) (r@@36 T@Field_58995_58996) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_26140 p@@42 v_1@@41 q@@36 w@@41) (InsidePredicate_26140_26140 q@@36 w@@41 r@@36 u@@36)) (InsidePredicate_26245_26140 p@@42 v_1@@41 r@@36 u@@36))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_26140 p@@42 v_1@@41 q@@36 w@@41) (InsidePredicate_26140_26140 q@@36 w@@41 r@@36 u@@36))
)))
(assert (forall ((p@@43 T@Field_88384_88385) (v_1@@42 T@FrameType) (q@@37 T@Field_58995_58996) (w@@42 T@FrameType) (r@@37 T@Field_75522_75523) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_26140 p@@43 v_1@@42 q@@37 w@@42) (InsidePredicate_26140_26205 q@@37 w@@42 r@@37 u@@37)) (InsidePredicate_26245_26205 p@@43 v_1@@42 r@@37 u@@37))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_26140 p@@43 v_1@@42 q@@37 w@@42) (InsidePredicate_26140_26205 q@@37 w@@42 r@@37 u@@37))
)))
(assert (forall ((p@@44 T@Field_88384_88385) (v_1@@43 T@FrameType) (q@@38 T@Field_58995_58996) (w@@43 T@FrameType) (r@@38 T@Field_60499_60500) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_26140 p@@44 v_1@@43 q@@38 w@@43) (InsidePredicate_26140_26165 q@@38 w@@43 r@@38 u@@38)) (InsidePredicate_26245_26165 p@@44 v_1@@43 r@@38 u@@38))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_26140 p@@44 v_1@@43 q@@38 w@@43) (InsidePredicate_26140_26165 q@@38 w@@43 r@@38 u@@38))
)))
(assert (forall ((p@@45 T@Field_88384_88385) (v_1@@44 T@FrameType) (q@@39 T@Field_75522_75523) (w@@44 T@FrameType) (r@@39 T@Field_88384_88385) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_26205 p@@45 v_1@@44 q@@39 w@@44) (InsidePredicate_26205_88384 q@@39 w@@44 r@@39 u@@39)) (InsidePredicate_26245_88384 p@@45 v_1@@44 r@@39 u@@39))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_26205 p@@45 v_1@@44 q@@39 w@@44) (InsidePredicate_26205_88384 q@@39 w@@44 r@@39 u@@39))
)))
(assert (forall ((p@@46 T@Field_88384_88385) (v_1@@45 T@FrameType) (q@@40 T@Field_75522_75523) (w@@45 T@FrameType) (r@@40 T@Field_26136_26206) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_26205 p@@46 v_1@@45 q@@40 w@@45) (InsidePredicate_26205_55572 q@@40 w@@45 r@@40 u@@40)) (InsidePredicate_26245_55572 p@@46 v_1@@45 r@@40 u@@40))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_26205 p@@46 v_1@@45 q@@40 w@@45) (InsidePredicate_26205_55572 q@@40 w@@45 r@@40 u@@40))
)))
(assert (forall ((p@@47 T@Field_88384_88385) (v_1@@46 T@FrameType) (q@@41 T@Field_75522_75523) (w@@46 T@FrameType) (r@@41 T@Field_58995_58996) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_26205 p@@47 v_1@@46 q@@41 w@@46) (InsidePredicate_26205_26140 q@@41 w@@46 r@@41 u@@41)) (InsidePredicate_26245_26140 p@@47 v_1@@46 r@@41 u@@41))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_26205 p@@47 v_1@@46 q@@41 w@@46) (InsidePredicate_26205_26140 q@@41 w@@46 r@@41 u@@41))
)))
(assert (forall ((p@@48 T@Field_88384_88385) (v_1@@47 T@FrameType) (q@@42 T@Field_75522_75523) (w@@47 T@FrameType) (r@@42 T@Field_75522_75523) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_26205 p@@48 v_1@@47 q@@42 w@@47) (InsidePredicate_26205_26205 q@@42 w@@47 r@@42 u@@42)) (InsidePredicate_26245_26205 p@@48 v_1@@47 r@@42 u@@42))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_26205 p@@48 v_1@@47 q@@42 w@@47) (InsidePredicate_26205_26205 q@@42 w@@47 r@@42 u@@42))
)))
(assert (forall ((p@@49 T@Field_88384_88385) (v_1@@48 T@FrameType) (q@@43 T@Field_75522_75523) (w@@48 T@FrameType) (r@@43 T@Field_60499_60500) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_26205 p@@49 v_1@@48 q@@43 w@@48) (InsidePredicate_26205_26165 q@@43 w@@48 r@@43 u@@43)) (InsidePredicate_26245_26165 p@@49 v_1@@48 r@@43 u@@43))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_26205 p@@49 v_1@@48 q@@43 w@@48) (InsidePredicate_26205_26165 q@@43 w@@48 r@@43 u@@43))
)))
(assert (forall ((p@@50 T@Field_88384_88385) (v_1@@49 T@FrameType) (q@@44 T@Field_60499_60500) (w@@49 T@FrameType) (r@@44 T@Field_88384_88385) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_26165 p@@50 v_1@@49 q@@44 w@@49) (InsidePredicate_26165_88384 q@@44 w@@49 r@@44 u@@44)) (InsidePredicate_26245_88384 p@@50 v_1@@49 r@@44 u@@44))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_26165 p@@50 v_1@@49 q@@44 w@@49) (InsidePredicate_26165_88384 q@@44 w@@49 r@@44 u@@44))
)))
(assert (forall ((p@@51 T@Field_88384_88385) (v_1@@50 T@FrameType) (q@@45 T@Field_60499_60500) (w@@50 T@FrameType) (r@@45 T@Field_26136_26206) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_26165 p@@51 v_1@@50 q@@45 w@@50) (InsidePredicate_26165_55572 q@@45 w@@50 r@@45 u@@45)) (InsidePredicate_26245_55572 p@@51 v_1@@50 r@@45 u@@45))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_26165 p@@51 v_1@@50 q@@45 w@@50) (InsidePredicate_26165_55572 q@@45 w@@50 r@@45 u@@45))
)))
(assert (forall ((p@@52 T@Field_88384_88385) (v_1@@51 T@FrameType) (q@@46 T@Field_60499_60500) (w@@51 T@FrameType) (r@@46 T@Field_58995_58996) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_26165 p@@52 v_1@@51 q@@46 w@@51) (InsidePredicate_26165_26140 q@@46 w@@51 r@@46 u@@46)) (InsidePredicate_26245_26140 p@@52 v_1@@51 r@@46 u@@46))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_26165 p@@52 v_1@@51 q@@46 w@@51) (InsidePredicate_26165_26140 q@@46 w@@51 r@@46 u@@46))
)))
(assert (forall ((p@@53 T@Field_88384_88385) (v_1@@52 T@FrameType) (q@@47 T@Field_60499_60500) (w@@52 T@FrameType) (r@@47 T@Field_75522_75523) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_26165 p@@53 v_1@@52 q@@47 w@@52) (InsidePredicate_26165_26205 q@@47 w@@52 r@@47 u@@47)) (InsidePredicate_26245_26205 p@@53 v_1@@52 r@@47 u@@47))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_26165 p@@53 v_1@@52 q@@47 w@@52) (InsidePredicate_26165_26205 q@@47 w@@52 r@@47 u@@47))
)))
(assert (forall ((p@@54 T@Field_88384_88385) (v_1@@53 T@FrameType) (q@@48 T@Field_60499_60500) (w@@53 T@FrameType) (r@@48 T@Field_60499_60500) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_26245_26165 p@@54 v_1@@53 q@@48 w@@53) (InsidePredicate_26165_26165 q@@48 w@@53 r@@48 u@@48)) (InsidePredicate_26245_26165 p@@54 v_1@@53 r@@48 u@@48))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26245_26165 p@@54 v_1@@53 q@@48 w@@53) (InsidePredicate_26165_26165 q@@48 w@@53 r@@48 u@@48))
)))
(assert (forall ((p@@55 T@Field_58995_58996) (v_1@@54 T@FrameType) (q@@49 T@Field_26136_26206) (w@@54 T@FrameType) (r@@49 T@Field_88384_88385) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_55572 p@@55 v_1@@54 q@@49 w@@54) (InsidePredicate_55572_88384 q@@49 w@@54 r@@49 u@@49)) (InsidePredicate_26140_88384 p@@55 v_1@@54 r@@49 u@@49))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_55572 p@@55 v_1@@54 q@@49 w@@54) (InsidePredicate_55572_88384 q@@49 w@@54 r@@49 u@@49))
)))
(assert (forall ((p@@56 T@Field_58995_58996) (v_1@@55 T@FrameType) (q@@50 T@Field_26136_26206) (w@@55 T@FrameType) (r@@50 T@Field_26136_26206) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_55572 p@@56 v_1@@55 q@@50 w@@55) (InsidePredicate_55572_55572 q@@50 w@@55 r@@50 u@@50)) (InsidePredicate_26140_55572 p@@56 v_1@@55 r@@50 u@@50))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_55572 p@@56 v_1@@55 q@@50 w@@55) (InsidePredicate_55572_55572 q@@50 w@@55 r@@50 u@@50))
)))
(assert (forall ((p@@57 T@Field_58995_58996) (v_1@@56 T@FrameType) (q@@51 T@Field_26136_26206) (w@@56 T@FrameType) (r@@51 T@Field_58995_58996) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_55572 p@@57 v_1@@56 q@@51 w@@56) (InsidePredicate_55572_26140 q@@51 w@@56 r@@51 u@@51)) (InsidePredicate_26140_26140 p@@57 v_1@@56 r@@51 u@@51))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_55572 p@@57 v_1@@56 q@@51 w@@56) (InsidePredicate_55572_26140 q@@51 w@@56 r@@51 u@@51))
)))
(assert (forall ((p@@58 T@Field_58995_58996) (v_1@@57 T@FrameType) (q@@52 T@Field_26136_26206) (w@@57 T@FrameType) (r@@52 T@Field_75522_75523) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_55572 p@@58 v_1@@57 q@@52 w@@57) (InsidePredicate_55572_26205 q@@52 w@@57 r@@52 u@@52)) (InsidePredicate_26140_26205 p@@58 v_1@@57 r@@52 u@@52))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_55572 p@@58 v_1@@57 q@@52 w@@57) (InsidePredicate_55572_26205 q@@52 w@@57 r@@52 u@@52))
)))
(assert (forall ((p@@59 T@Field_58995_58996) (v_1@@58 T@FrameType) (q@@53 T@Field_26136_26206) (w@@58 T@FrameType) (r@@53 T@Field_60499_60500) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_55572 p@@59 v_1@@58 q@@53 w@@58) (InsidePredicate_55572_26165 q@@53 w@@58 r@@53 u@@53)) (InsidePredicate_26140_26165 p@@59 v_1@@58 r@@53 u@@53))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_55572 p@@59 v_1@@58 q@@53 w@@58) (InsidePredicate_55572_26165 q@@53 w@@58 r@@53 u@@53))
)))
(assert (forall ((p@@60 T@Field_58995_58996) (v_1@@59 T@FrameType) (q@@54 T@Field_88384_88385) (w@@59 T@FrameType) (r@@54 T@Field_88384_88385) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_88384 p@@60 v_1@@59 q@@54 w@@59) (InsidePredicate_26245_88384 q@@54 w@@59 r@@54 u@@54)) (InsidePredicate_26140_88384 p@@60 v_1@@59 r@@54 u@@54))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_88384 p@@60 v_1@@59 q@@54 w@@59) (InsidePredicate_26245_88384 q@@54 w@@59 r@@54 u@@54))
)))
(assert (forall ((p@@61 T@Field_58995_58996) (v_1@@60 T@FrameType) (q@@55 T@Field_88384_88385) (w@@60 T@FrameType) (r@@55 T@Field_26136_26206) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_88384 p@@61 v_1@@60 q@@55 w@@60) (InsidePredicate_26245_55572 q@@55 w@@60 r@@55 u@@55)) (InsidePredicate_26140_55572 p@@61 v_1@@60 r@@55 u@@55))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_88384 p@@61 v_1@@60 q@@55 w@@60) (InsidePredicate_26245_55572 q@@55 w@@60 r@@55 u@@55))
)))
(assert (forall ((p@@62 T@Field_58995_58996) (v_1@@61 T@FrameType) (q@@56 T@Field_88384_88385) (w@@61 T@FrameType) (r@@56 T@Field_58995_58996) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_88384 p@@62 v_1@@61 q@@56 w@@61) (InsidePredicate_26245_26140 q@@56 w@@61 r@@56 u@@56)) (InsidePredicate_26140_26140 p@@62 v_1@@61 r@@56 u@@56))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_88384 p@@62 v_1@@61 q@@56 w@@61) (InsidePredicate_26245_26140 q@@56 w@@61 r@@56 u@@56))
)))
(assert (forall ((p@@63 T@Field_58995_58996) (v_1@@62 T@FrameType) (q@@57 T@Field_88384_88385) (w@@62 T@FrameType) (r@@57 T@Field_75522_75523) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_88384 p@@63 v_1@@62 q@@57 w@@62) (InsidePredicate_26245_26205 q@@57 w@@62 r@@57 u@@57)) (InsidePredicate_26140_26205 p@@63 v_1@@62 r@@57 u@@57))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_88384 p@@63 v_1@@62 q@@57 w@@62) (InsidePredicate_26245_26205 q@@57 w@@62 r@@57 u@@57))
)))
(assert (forall ((p@@64 T@Field_58995_58996) (v_1@@63 T@FrameType) (q@@58 T@Field_88384_88385) (w@@63 T@FrameType) (r@@58 T@Field_60499_60500) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_88384 p@@64 v_1@@63 q@@58 w@@63) (InsidePredicate_26245_26165 q@@58 w@@63 r@@58 u@@58)) (InsidePredicate_26140_26165 p@@64 v_1@@63 r@@58 u@@58))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_88384 p@@64 v_1@@63 q@@58 w@@63) (InsidePredicate_26245_26165 q@@58 w@@63 r@@58 u@@58))
)))
(assert (forall ((p@@65 T@Field_58995_58996) (v_1@@64 T@FrameType) (q@@59 T@Field_58995_58996) (w@@64 T@FrameType) (r@@59 T@Field_88384_88385) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_26140 p@@65 v_1@@64 q@@59 w@@64) (InsidePredicate_26140_88384 q@@59 w@@64 r@@59 u@@59)) (InsidePredicate_26140_88384 p@@65 v_1@@64 r@@59 u@@59))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_26140 p@@65 v_1@@64 q@@59 w@@64) (InsidePredicate_26140_88384 q@@59 w@@64 r@@59 u@@59))
)))
(assert (forall ((p@@66 T@Field_58995_58996) (v_1@@65 T@FrameType) (q@@60 T@Field_58995_58996) (w@@65 T@FrameType) (r@@60 T@Field_26136_26206) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_26140 p@@66 v_1@@65 q@@60 w@@65) (InsidePredicate_26140_55572 q@@60 w@@65 r@@60 u@@60)) (InsidePredicate_26140_55572 p@@66 v_1@@65 r@@60 u@@60))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_26140 p@@66 v_1@@65 q@@60 w@@65) (InsidePredicate_26140_55572 q@@60 w@@65 r@@60 u@@60))
)))
(assert (forall ((p@@67 T@Field_58995_58996) (v_1@@66 T@FrameType) (q@@61 T@Field_58995_58996) (w@@66 T@FrameType) (r@@61 T@Field_58995_58996) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_26140 p@@67 v_1@@66 q@@61 w@@66) (InsidePredicate_26140_26140 q@@61 w@@66 r@@61 u@@61)) (InsidePredicate_26140_26140 p@@67 v_1@@66 r@@61 u@@61))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_26140 p@@67 v_1@@66 q@@61 w@@66) (InsidePredicate_26140_26140 q@@61 w@@66 r@@61 u@@61))
)))
(assert (forall ((p@@68 T@Field_58995_58996) (v_1@@67 T@FrameType) (q@@62 T@Field_58995_58996) (w@@67 T@FrameType) (r@@62 T@Field_75522_75523) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_26140 p@@68 v_1@@67 q@@62 w@@67) (InsidePredicate_26140_26205 q@@62 w@@67 r@@62 u@@62)) (InsidePredicate_26140_26205 p@@68 v_1@@67 r@@62 u@@62))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_26140 p@@68 v_1@@67 q@@62 w@@67) (InsidePredicate_26140_26205 q@@62 w@@67 r@@62 u@@62))
)))
(assert (forall ((p@@69 T@Field_58995_58996) (v_1@@68 T@FrameType) (q@@63 T@Field_58995_58996) (w@@68 T@FrameType) (r@@63 T@Field_60499_60500) (u@@63 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_26140 p@@69 v_1@@68 q@@63 w@@68) (InsidePredicate_26140_26165 q@@63 w@@68 r@@63 u@@63)) (InsidePredicate_26140_26165 p@@69 v_1@@68 r@@63 u@@63))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_26140 p@@69 v_1@@68 q@@63 w@@68) (InsidePredicate_26140_26165 q@@63 w@@68 r@@63 u@@63))
)))
(assert (forall ((p@@70 T@Field_58995_58996) (v_1@@69 T@FrameType) (q@@64 T@Field_75522_75523) (w@@69 T@FrameType) (r@@64 T@Field_88384_88385) (u@@64 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_26205 p@@70 v_1@@69 q@@64 w@@69) (InsidePredicate_26205_88384 q@@64 w@@69 r@@64 u@@64)) (InsidePredicate_26140_88384 p@@70 v_1@@69 r@@64 u@@64))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_26205 p@@70 v_1@@69 q@@64 w@@69) (InsidePredicate_26205_88384 q@@64 w@@69 r@@64 u@@64))
)))
(assert (forall ((p@@71 T@Field_58995_58996) (v_1@@70 T@FrameType) (q@@65 T@Field_75522_75523) (w@@70 T@FrameType) (r@@65 T@Field_26136_26206) (u@@65 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_26205 p@@71 v_1@@70 q@@65 w@@70) (InsidePredicate_26205_55572 q@@65 w@@70 r@@65 u@@65)) (InsidePredicate_26140_55572 p@@71 v_1@@70 r@@65 u@@65))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_26205 p@@71 v_1@@70 q@@65 w@@70) (InsidePredicate_26205_55572 q@@65 w@@70 r@@65 u@@65))
)))
(assert (forall ((p@@72 T@Field_58995_58996) (v_1@@71 T@FrameType) (q@@66 T@Field_75522_75523) (w@@71 T@FrameType) (r@@66 T@Field_58995_58996) (u@@66 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_26205 p@@72 v_1@@71 q@@66 w@@71) (InsidePredicate_26205_26140 q@@66 w@@71 r@@66 u@@66)) (InsidePredicate_26140_26140 p@@72 v_1@@71 r@@66 u@@66))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_26205 p@@72 v_1@@71 q@@66 w@@71) (InsidePredicate_26205_26140 q@@66 w@@71 r@@66 u@@66))
)))
(assert (forall ((p@@73 T@Field_58995_58996) (v_1@@72 T@FrameType) (q@@67 T@Field_75522_75523) (w@@72 T@FrameType) (r@@67 T@Field_75522_75523) (u@@67 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_26205 p@@73 v_1@@72 q@@67 w@@72) (InsidePredicate_26205_26205 q@@67 w@@72 r@@67 u@@67)) (InsidePredicate_26140_26205 p@@73 v_1@@72 r@@67 u@@67))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_26205 p@@73 v_1@@72 q@@67 w@@72) (InsidePredicate_26205_26205 q@@67 w@@72 r@@67 u@@67))
)))
(assert (forall ((p@@74 T@Field_58995_58996) (v_1@@73 T@FrameType) (q@@68 T@Field_75522_75523) (w@@73 T@FrameType) (r@@68 T@Field_60499_60500) (u@@68 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_26205 p@@74 v_1@@73 q@@68 w@@73) (InsidePredicate_26205_26165 q@@68 w@@73 r@@68 u@@68)) (InsidePredicate_26140_26165 p@@74 v_1@@73 r@@68 u@@68))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_26205 p@@74 v_1@@73 q@@68 w@@73) (InsidePredicate_26205_26165 q@@68 w@@73 r@@68 u@@68))
)))
(assert (forall ((p@@75 T@Field_58995_58996) (v_1@@74 T@FrameType) (q@@69 T@Field_60499_60500) (w@@74 T@FrameType) (r@@69 T@Field_88384_88385) (u@@69 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_26165 p@@75 v_1@@74 q@@69 w@@74) (InsidePredicate_26165_88384 q@@69 w@@74 r@@69 u@@69)) (InsidePredicate_26140_88384 p@@75 v_1@@74 r@@69 u@@69))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_26165 p@@75 v_1@@74 q@@69 w@@74) (InsidePredicate_26165_88384 q@@69 w@@74 r@@69 u@@69))
)))
(assert (forall ((p@@76 T@Field_58995_58996) (v_1@@75 T@FrameType) (q@@70 T@Field_60499_60500) (w@@75 T@FrameType) (r@@70 T@Field_26136_26206) (u@@70 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_26165 p@@76 v_1@@75 q@@70 w@@75) (InsidePredicate_26165_55572 q@@70 w@@75 r@@70 u@@70)) (InsidePredicate_26140_55572 p@@76 v_1@@75 r@@70 u@@70))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_26165 p@@76 v_1@@75 q@@70 w@@75) (InsidePredicate_26165_55572 q@@70 w@@75 r@@70 u@@70))
)))
(assert (forall ((p@@77 T@Field_58995_58996) (v_1@@76 T@FrameType) (q@@71 T@Field_60499_60500) (w@@76 T@FrameType) (r@@71 T@Field_58995_58996) (u@@71 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_26165 p@@77 v_1@@76 q@@71 w@@76) (InsidePredicate_26165_26140 q@@71 w@@76 r@@71 u@@71)) (InsidePredicate_26140_26140 p@@77 v_1@@76 r@@71 u@@71))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_26165 p@@77 v_1@@76 q@@71 w@@76) (InsidePredicate_26165_26140 q@@71 w@@76 r@@71 u@@71))
)))
(assert (forall ((p@@78 T@Field_58995_58996) (v_1@@77 T@FrameType) (q@@72 T@Field_60499_60500) (w@@77 T@FrameType) (r@@72 T@Field_75522_75523) (u@@72 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_26165 p@@78 v_1@@77 q@@72 w@@77) (InsidePredicate_26165_26205 q@@72 w@@77 r@@72 u@@72)) (InsidePredicate_26140_26205 p@@78 v_1@@77 r@@72 u@@72))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_26165 p@@78 v_1@@77 q@@72 w@@77) (InsidePredicate_26165_26205 q@@72 w@@77 r@@72 u@@72))
)))
(assert (forall ((p@@79 T@Field_58995_58996) (v_1@@78 T@FrameType) (q@@73 T@Field_60499_60500) (w@@78 T@FrameType) (r@@73 T@Field_60499_60500) (u@@73 T@FrameType) ) (!  (=> (and (InsidePredicate_26140_26165 p@@79 v_1@@78 q@@73 w@@78) (InsidePredicate_26165_26165 q@@73 w@@78 r@@73 u@@73)) (InsidePredicate_26140_26165 p@@79 v_1@@78 r@@73 u@@73))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26140_26165 p@@79 v_1@@78 q@@73 w@@78) (InsidePredicate_26165_26165 q@@73 w@@78 r@@73 u@@73))
)))
(assert (forall ((p@@80 T@Field_75522_75523) (v_1@@79 T@FrameType) (q@@74 T@Field_26136_26206) (w@@79 T@FrameType) (r@@74 T@Field_88384_88385) (u@@74 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_55572 p@@80 v_1@@79 q@@74 w@@79) (InsidePredicate_55572_88384 q@@74 w@@79 r@@74 u@@74)) (InsidePredicate_26205_88384 p@@80 v_1@@79 r@@74 u@@74))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_55572 p@@80 v_1@@79 q@@74 w@@79) (InsidePredicate_55572_88384 q@@74 w@@79 r@@74 u@@74))
)))
(assert (forall ((p@@81 T@Field_75522_75523) (v_1@@80 T@FrameType) (q@@75 T@Field_26136_26206) (w@@80 T@FrameType) (r@@75 T@Field_26136_26206) (u@@75 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_55572 p@@81 v_1@@80 q@@75 w@@80) (InsidePredicate_55572_55572 q@@75 w@@80 r@@75 u@@75)) (InsidePredicate_26205_55572 p@@81 v_1@@80 r@@75 u@@75))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_55572 p@@81 v_1@@80 q@@75 w@@80) (InsidePredicate_55572_55572 q@@75 w@@80 r@@75 u@@75))
)))
(assert (forall ((p@@82 T@Field_75522_75523) (v_1@@81 T@FrameType) (q@@76 T@Field_26136_26206) (w@@81 T@FrameType) (r@@76 T@Field_58995_58996) (u@@76 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_55572 p@@82 v_1@@81 q@@76 w@@81) (InsidePredicate_55572_26140 q@@76 w@@81 r@@76 u@@76)) (InsidePredicate_26205_26140 p@@82 v_1@@81 r@@76 u@@76))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_55572 p@@82 v_1@@81 q@@76 w@@81) (InsidePredicate_55572_26140 q@@76 w@@81 r@@76 u@@76))
)))
(assert (forall ((p@@83 T@Field_75522_75523) (v_1@@82 T@FrameType) (q@@77 T@Field_26136_26206) (w@@82 T@FrameType) (r@@77 T@Field_75522_75523) (u@@77 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_55572 p@@83 v_1@@82 q@@77 w@@82) (InsidePredicate_55572_26205 q@@77 w@@82 r@@77 u@@77)) (InsidePredicate_26205_26205 p@@83 v_1@@82 r@@77 u@@77))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_55572 p@@83 v_1@@82 q@@77 w@@82) (InsidePredicate_55572_26205 q@@77 w@@82 r@@77 u@@77))
)))
(assert (forall ((p@@84 T@Field_75522_75523) (v_1@@83 T@FrameType) (q@@78 T@Field_26136_26206) (w@@83 T@FrameType) (r@@78 T@Field_60499_60500) (u@@78 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_55572 p@@84 v_1@@83 q@@78 w@@83) (InsidePredicate_55572_26165 q@@78 w@@83 r@@78 u@@78)) (InsidePredicate_26205_26165 p@@84 v_1@@83 r@@78 u@@78))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_55572 p@@84 v_1@@83 q@@78 w@@83) (InsidePredicate_55572_26165 q@@78 w@@83 r@@78 u@@78))
)))
(assert (forall ((p@@85 T@Field_75522_75523) (v_1@@84 T@FrameType) (q@@79 T@Field_88384_88385) (w@@84 T@FrameType) (r@@79 T@Field_88384_88385) (u@@79 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_88384 p@@85 v_1@@84 q@@79 w@@84) (InsidePredicate_26245_88384 q@@79 w@@84 r@@79 u@@79)) (InsidePredicate_26205_88384 p@@85 v_1@@84 r@@79 u@@79))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_88384 p@@85 v_1@@84 q@@79 w@@84) (InsidePredicate_26245_88384 q@@79 w@@84 r@@79 u@@79))
)))
(assert (forall ((p@@86 T@Field_75522_75523) (v_1@@85 T@FrameType) (q@@80 T@Field_88384_88385) (w@@85 T@FrameType) (r@@80 T@Field_26136_26206) (u@@80 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_88384 p@@86 v_1@@85 q@@80 w@@85) (InsidePredicate_26245_55572 q@@80 w@@85 r@@80 u@@80)) (InsidePredicate_26205_55572 p@@86 v_1@@85 r@@80 u@@80))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_88384 p@@86 v_1@@85 q@@80 w@@85) (InsidePredicate_26245_55572 q@@80 w@@85 r@@80 u@@80))
)))
(assert (forall ((p@@87 T@Field_75522_75523) (v_1@@86 T@FrameType) (q@@81 T@Field_88384_88385) (w@@86 T@FrameType) (r@@81 T@Field_58995_58996) (u@@81 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_88384 p@@87 v_1@@86 q@@81 w@@86) (InsidePredicate_26245_26140 q@@81 w@@86 r@@81 u@@81)) (InsidePredicate_26205_26140 p@@87 v_1@@86 r@@81 u@@81))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_88384 p@@87 v_1@@86 q@@81 w@@86) (InsidePredicate_26245_26140 q@@81 w@@86 r@@81 u@@81))
)))
(assert (forall ((p@@88 T@Field_75522_75523) (v_1@@87 T@FrameType) (q@@82 T@Field_88384_88385) (w@@87 T@FrameType) (r@@82 T@Field_75522_75523) (u@@82 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_88384 p@@88 v_1@@87 q@@82 w@@87) (InsidePredicate_26245_26205 q@@82 w@@87 r@@82 u@@82)) (InsidePredicate_26205_26205 p@@88 v_1@@87 r@@82 u@@82))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_88384 p@@88 v_1@@87 q@@82 w@@87) (InsidePredicate_26245_26205 q@@82 w@@87 r@@82 u@@82))
)))
(assert (forall ((p@@89 T@Field_75522_75523) (v_1@@88 T@FrameType) (q@@83 T@Field_88384_88385) (w@@88 T@FrameType) (r@@83 T@Field_60499_60500) (u@@83 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_88384 p@@89 v_1@@88 q@@83 w@@88) (InsidePredicate_26245_26165 q@@83 w@@88 r@@83 u@@83)) (InsidePredicate_26205_26165 p@@89 v_1@@88 r@@83 u@@83))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_88384 p@@89 v_1@@88 q@@83 w@@88) (InsidePredicate_26245_26165 q@@83 w@@88 r@@83 u@@83))
)))
(assert (forall ((p@@90 T@Field_75522_75523) (v_1@@89 T@FrameType) (q@@84 T@Field_58995_58996) (w@@89 T@FrameType) (r@@84 T@Field_88384_88385) (u@@84 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_26140 p@@90 v_1@@89 q@@84 w@@89) (InsidePredicate_26140_88384 q@@84 w@@89 r@@84 u@@84)) (InsidePredicate_26205_88384 p@@90 v_1@@89 r@@84 u@@84))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_26140 p@@90 v_1@@89 q@@84 w@@89) (InsidePredicate_26140_88384 q@@84 w@@89 r@@84 u@@84))
)))
(assert (forall ((p@@91 T@Field_75522_75523) (v_1@@90 T@FrameType) (q@@85 T@Field_58995_58996) (w@@90 T@FrameType) (r@@85 T@Field_26136_26206) (u@@85 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_26140 p@@91 v_1@@90 q@@85 w@@90) (InsidePredicate_26140_55572 q@@85 w@@90 r@@85 u@@85)) (InsidePredicate_26205_55572 p@@91 v_1@@90 r@@85 u@@85))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_26140 p@@91 v_1@@90 q@@85 w@@90) (InsidePredicate_26140_55572 q@@85 w@@90 r@@85 u@@85))
)))
(assert (forall ((p@@92 T@Field_75522_75523) (v_1@@91 T@FrameType) (q@@86 T@Field_58995_58996) (w@@91 T@FrameType) (r@@86 T@Field_58995_58996) (u@@86 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_26140 p@@92 v_1@@91 q@@86 w@@91) (InsidePredicate_26140_26140 q@@86 w@@91 r@@86 u@@86)) (InsidePredicate_26205_26140 p@@92 v_1@@91 r@@86 u@@86))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_26140 p@@92 v_1@@91 q@@86 w@@91) (InsidePredicate_26140_26140 q@@86 w@@91 r@@86 u@@86))
)))
(assert (forall ((p@@93 T@Field_75522_75523) (v_1@@92 T@FrameType) (q@@87 T@Field_58995_58996) (w@@92 T@FrameType) (r@@87 T@Field_75522_75523) (u@@87 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_26140 p@@93 v_1@@92 q@@87 w@@92) (InsidePredicate_26140_26205 q@@87 w@@92 r@@87 u@@87)) (InsidePredicate_26205_26205 p@@93 v_1@@92 r@@87 u@@87))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_26140 p@@93 v_1@@92 q@@87 w@@92) (InsidePredicate_26140_26205 q@@87 w@@92 r@@87 u@@87))
)))
(assert (forall ((p@@94 T@Field_75522_75523) (v_1@@93 T@FrameType) (q@@88 T@Field_58995_58996) (w@@93 T@FrameType) (r@@88 T@Field_60499_60500) (u@@88 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_26140 p@@94 v_1@@93 q@@88 w@@93) (InsidePredicate_26140_26165 q@@88 w@@93 r@@88 u@@88)) (InsidePredicate_26205_26165 p@@94 v_1@@93 r@@88 u@@88))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_26140 p@@94 v_1@@93 q@@88 w@@93) (InsidePredicate_26140_26165 q@@88 w@@93 r@@88 u@@88))
)))
(assert (forall ((p@@95 T@Field_75522_75523) (v_1@@94 T@FrameType) (q@@89 T@Field_75522_75523) (w@@94 T@FrameType) (r@@89 T@Field_88384_88385) (u@@89 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_26205 p@@95 v_1@@94 q@@89 w@@94) (InsidePredicate_26205_88384 q@@89 w@@94 r@@89 u@@89)) (InsidePredicate_26205_88384 p@@95 v_1@@94 r@@89 u@@89))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_26205 p@@95 v_1@@94 q@@89 w@@94) (InsidePredicate_26205_88384 q@@89 w@@94 r@@89 u@@89))
)))
(assert (forall ((p@@96 T@Field_75522_75523) (v_1@@95 T@FrameType) (q@@90 T@Field_75522_75523) (w@@95 T@FrameType) (r@@90 T@Field_26136_26206) (u@@90 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_26205 p@@96 v_1@@95 q@@90 w@@95) (InsidePredicate_26205_55572 q@@90 w@@95 r@@90 u@@90)) (InsidePredicate_26205_55572 p@@96 v_1@@95 r@@90 u@@90))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_26205 p@@96 v_1@@95 q@@90 w@@95) (InsidePredicate_26205_55572 q@@90 w@@95 r@@90 u@@90))
)))
(assert (forall ((p@@97 T@Field_75522_75523) (v_1@@96 T@FrameType) (q@@91 T@Field_75522_75523) (w@@96 T@FrameType) (r@@91 T@Field_58995_58996) (u@@91 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_26205 p@@97 v_1@@96 q@@91 w@@96) (InsidePredicate_26205_26140 q@@91 w@@96 r@@91 u@@91)) (InsidePredicate_26205_26140 p@@97 v_1@@96 r@@91 u@@91))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_26205 p@@97 v_1@@96 q@@91 w@@96) (InsidePredicate_26205_26140 q@@91 w@@96 r@@91 u@@91))
)))
(assert (forall ((p@@98 T@Field_75522_75523) (v_1@@97 T@FrameType) (q@@92 T@Field_75522_75523) (w@@97 T@FrameType) (r@@92 T@Field_75522_75523) (u@@92 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_26205 p@@98 v_1@@97 q@@92 w@@97) (InsidePredicate_26205_26205 q@@92 w@@97 r@@92 u@@92)) (InsidePredicate_26205_26205 p@@98 v_1@@97 r@@92 u@@92))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_26205 p@@98 v_1@@97 q@@92 w@@97) (InsidePredicate_26205_26205 q@@92 w@@97 r@@92 u@@92))
)))
(assert (forall ((p@@99 T@Field_75522_75523) (v_1@@98 T@FrameType) (q@@93 T@Field_75522_75523) (w@@98 T@FrameType) (r@@93 T@Field_60499_60500) (u@@93 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_26205 p@@99 v_1@@98 q@@93 w@@98) (InsidePredicate_26205_26165 q@@93 w@@98 r@@93 u@@93)) (InsidePredicate_26205_26165 p@@99 v_1@@98 r@@93 u@@93))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_26205 p@@99 v_1@@98 q@@93 w@@98) (InsidePredicate_26205_26165 q@@93 w@@98 r@@93 u@@93))
)))
(assert (forall ((p@@100 T@Field_75522_75523) (v_1@@99 T@FrameType) (q@@94 T@Field_60499_60500) (w@@99 T@FrameType) (r@@94 T@Field_88384_88385) (u@@94 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_26165 p@@100 v_1@@99 q@@94 w@@99) (InsidePredicate_26165_88384 q@@94 w@@99 r@@94 u@@94)) (InsidePredicate_26205_88384 p@@100 v_1@@99 r@@94 u@@94))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_26165 p@@100 v_1@@99 q@@94 w@@99) (InsidePredicate_26165_88384 q@@94 w@@99 r@@94 u@@94))
)))
(assert (forall ((p@@101 T@Field_75522_75523) (v_1@@100 T@FrameType) (q@@95 T@Field_60499_60500) (w@@100 T@FrameType) (r@@95 T@Field_26136_26206) (u@@95 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_26165 p@@101 v_1@@100 q@@95 w@@100) (InsidePredicate_26165_55572 q@@95 w@@100 r@@95 u@@95)) (InsidePredicate_26205_55572 p@@101 v_1@@100 r@@95 u@@95))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_26165 p@@101 v_1@@100 q@@95 w@@100) (InsidePredicate_26165_55572 q@@95 w@@100 r@@95 u@@95))
)))
(assert (forall ((p@@102 T@Field_75522_75523) (v_1@@101 T@FrameType) (q@@96 T@Field_60499_60500) (w@@101 T@FrameType) (r@@96 T@Field_58995_58996) (u@@96 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_26165 p@@102 v_1@@101 q@@96 w@@101) (InsidePredicate_26165_26140 q@@96 w@@101 r@@96 u@@96)) (InsidePredicate_26205_26140 p@@102 v_1@@101 r@@96 u@@96))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_26165 p@@102 v_1@@101 q@@96 w@@101) (InsidePredicate_26165_26140 q@@96 w@@101 r@@96 u@@96))
)))
(assert (forall ((p@@103 T@Field_75522_75523) (v_1@@102 T@FrameType) (q@@97 T@Field_60499_60500) (w@@102 T@FrameType) (r@@97 T@Field_75522_75523) (u@@97 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_26165 p@@103 v_1@@102 q@@97 w@@102) (InsidePredicate_26165_26205 q@@97 w@@102 r@@97 u@@97)) (InsidePredicate_26205_26205 p@@103 v_1@@102 r@@97 u@@97))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_26165 p@@103 v_1@@102 q@@97 w@@102) (InsidePredicate_26165_26205 q@@97 w@@102 r@@97 u@@97))
)))
(assert (forall ((p@@104 T@Field_75522_75523) (v_1@@103 T@FrameType) (q@@98 T@Field_60499_60500) (w@@103 T@FrameType) (r@@98 T@Field_60499_60500) (u@@98 T@FrameType) ) (!  (=> (and (InsidePredicate_26205_26165 p@@104 v_1@@103 q@@98 w@@103) (InsidePredicate_26165_26165 q@@98 w@@103 r@@98 u@@98)) (InsidePredicate_26205_26165 p@@104 v_1@@103 r@@98 u@@98))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26205_26165 p@@104 v_1@@103 q@@98 w@@103) (InsidePredicate_26165_26165 q@@98 w@@103 r@@98 u@@98))
)))
(assert (forall ((p@@105 T@Field_60499_60500) (v_1@@104 T@FrameType) (q@@99 T@Field_26136_26206) (w@@104 T@FrameType) (r@@99 T@Field_88384_88385) (u@@99 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_55572 p@@105 v_1@@104 q@@99 w@@104) (InsidePredicate_55572_88384 q@@99 w@@104 r@@99 u@@99)) (InsidePredicate_26165_88384 p@@105 v_1@@104 r@@99 u@@99))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_55572 p@@105 v_1@@104 q@@99 w@@104) (InsidePredicate_55572_88384 q@@99 w@@104 r@@99 u@@99))
)))
(assert (forall ((p@@106 T@Field_60499_60500) (v_1@@105 T@FrameType) (q@@100 T@Field_26136_26206) (w@@105 T@FrameType) (r@@100 T@Field_26136_26206) (u@@100 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_55572 p@@106 v_1@@105 q@@100 w@@105) (InsidePredicate_55572_55572 q@@100 w@@105 r@@100 u@@100)) (InsidePredicate_26165_55572 p@@106 v_1@@105 r@@100 u@@100))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_55572 p@@106 v_1@@105 q@@100 w@@105) (InsidePredicate_55572_55572 q@@100 w@@105 r@@100 u@@100))
)))
(assert (forall ((p@@107 T@Field_60499_60500) (v_1@@106 T@FrameType) (q@@101 T@Field_26136_26206) (w@@106 T@FrameType) (r@@101 T@Field_58995_58996) (u@@101 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_55572 p@@107 v_1@@106 q@@101 w@@106) (InsidePredicate_55572_26140 q@@101 w@@106 r@@101 u@@101)) (InsidePredicate_26165_26140 p@@107 v_1@@106 r@@101 u@@101))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_55572 p@@107 v_1@@106 q@@101 w@@106) (InsidePredicate_55572_26140 q@@101 w@@106 r@@101 u@@101))
)))
(assert (forall ((p@@108 T@Field_60499_60500) (v_1@@107 T@FrameType) (q@@102 T@Field_26136_26206) (w@@107 T@FrameType) (r@@102 T@Field_75522_75523) (u@@102 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_55572 p@@108 v_1@@107 q@@102 w@@107) (InsidePredicate_55572_26205 q@@102 w@@107 r@@102 u@@102)) (InsidePredicate_26165_26205 p@@108 v_1@@107 r@@102 u@@102))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_55572 p@@108 v_1@@107 q@@102 w@@107) (InsidePredicate_55572_26205 q@@102 w@@107 r@@102 u@@102))
)))
(assert (forall ((p@@109 T@Field_60499_60500) (v_1@@108 T@FrameType) (q@@103 T@Field_26136_26206) (w@@108 T@FrameType) (r@@103 T@Field_60499_60500) (u@@103 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_55572 p@@109 v_1@@108 q@@103 w@@108) (InsidePredicate_55572_26165 q@@103 w@@108 r@@103 u@@103)) (InsidePredicate_26165_26165 p@@109 v_1@@108 r@@103 u@@103))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_55572 p@@109 v_1@@108 q@@103 w@@108) (InsidePredicate_55572_26165 q@@103 w@@108 r@@103 u@@103))
)))
(assert (forall ((p@@110 T@Field_60499_60500) (v_1@@109 T@FrameType) (q@@104 T@Field_88384_88385) (w@@109 T@FrameType) (r@@104 T@Field_88384_88385) (u@@104 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_88384 p@@110 v_1@@109 q@@104 w@@109) (InsidePredicate_26245_88384 q@@104 w@@109 r@@104 u@@104)) (InsidePredicate_26165_88384 p@@110 v_1@@109 r@@104 u@@104))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_88384 p@@110 v_1@@109 q@@104 w@@109) (InsidePredicate_26245_88384 q@@104 w@@109 r@@104 u@@104))
)))
(assert (forall ((p@@111 T@Field_60499_60500) (v_1@@110 T@FrameType) (q@@105 T@Field_88384_88385) (w@@110 T@FrameType) (r@@105 T@Field_26136_26206) (u@@105 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_88384 p@@111 v_1@@110 q@@105 w@@110) (InsidePredicate_26245_55572 q@@105 w@@110 r@@105 u@@105)) (InsidePredicate_26165_55572 p@@111 v_1@@110 r@@105 u@@105))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_88384 p@@111 v_1@@110 q@@105 w@@110) (InsidePredicate_26245_55572 q@@105 w@@110 r@@105 u@@105))
)))
(assert (forall ((p@@112 T@Field_60499_60500) (v_1@@111 T@FrameType) (q@@106 T@Field_88384_88385) (w@@111 T@FrameType) (r@@106 T@Field_58995_58996) (u@@106 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_88384 p@@112 v_1@@111 q@@106 w@@111) (InsidePredicate_26245_26140 q@@106 w@@111 r@@106 u@@106)) (InsidePredicate_26165_26140 p@@112 v_1@@111 r@@106 u@@106))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_88384 p@@112 v_1@@111 q@@106 w@@111) (InsidePredicate_26245_26140 q@@106 w@@111 r@@106 u@@106))
)))
(assert (forall ((p@@113 T@Field_60499_60500) (v_1@@112 T@FrameType) (q@@107 T@Field_88384_88385) (w@@112 T@FrameType) (r@@107 T@Field_75522_75523) (u@@107 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_88384 p@@113 v_1@@112 q@@107 w@@112) (InsidePredicate_26245_26205 q@@107 w@@112 r@@107 u@@107)) (InsidePredicate_26165_26205 p@@113 v_1@@112 r@@107 u@@107))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_88384 p@@113 v_1@@112 q@@107 w@@112) (InsidePredicate_26245_26205 q@@107 w@@112 r@@107 u@@107))
)))
(assert (forall ((p@@114 T@Field_60499_60500) (v_1@@113 T@FrameType) (q@@108 T@Field_88384_88385) (w@@113 T@FrameType) (r@@108 T@Field_60499_60500) (u@@108 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_88384 p@@114 v_1@@113 q@@108 w@@113) (InsidePredicate_26245_26165 q@@108 w@@113 r@@108 u@@108)) (InsidePredicate_26165_26165 p@@114 v_1@@113 r@@108 u@@108))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_88384 p@@114 v_1@@113 q@@108 w@@113) (InsidePredicate_26245_26165 q@@108 w@@113 r@@108 u@@108))
)))
(assert (forall ((p@@115 T@Field_60499_60500) (v_1@@114 T@FrameType) (q@@109 T@Field_58995_58996) (w@@114 T@FrameType) (r@@109 T@Field_88384_88385) (u@@109 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_26140 p@@115 v_1@@114 q@@109 w@@114) (InsidePredicate_26140_88384 q@@109 w@@114 r@@109 u@@109)) (InsidePredicate_26165_88384 p@@115 v_1@@114 r@@109 u@@109))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_26140 p@@115 v_1@@114 q@@109 w@@114) (InsidePredicate_26140_88384 q@@109 w@@114 r@@109 u@@109))
)))
(assert (forall ((p@@116 T@Field_60499_60500) (v_1@@115 T@FrameType) (q@@110 T@Field_58995_58996) (w@@115 T@FrameType) (r@@110 T@Field_26136_26206) (u@@110 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_26140 p@@116 v_1@@115 q@@110 w@@115) (InsidePredicate_26140_55572 q@@110 w@@115 r@@110 u@@110)) (InsidePredicate_26165_55572 p@@116 v_1@@115 r@@110 u@@110))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_26140 p@@116 v_1@@115 q@@110 w@@115) (InsidePredicate_26140_55572 q@@110 w@@115 r@@110 u@@110))
)))
(assert (forall ((p@@117 T@Field_60499_60500) (v_1@@116 T@FrameType) (q@@111 T@Field_58995_58996) (w@@116 T@FrameType) (r@@111 T@Field_58995_58996) (u@@111 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_26140 p@@117 v_1@@116 q@@111 w@@116) (InsidePredicate_26140_26140 q@@111 w@@116 r@@111 u@@111)) (InsidePredicate_26165_26140 p@@117 v_1@@116 r@@111 u@@111))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_26140 p@@117 v_1@@116 q@@111 w@@116) (InsidePredicate_26140_26140 q@@111 w@@116 r@@111 u@@111))
)))
(assert (forall ((p@@118 T@Field_60499_60500) (v_1@@117 T@FrameType) (q@@112 T@Field_58995_58996) (w@@117 T@FrameType) (r@@112 T@Field_75522_75523) (u@@112 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_26140 p@@118 v_1@@117 q@@112 w@@117) (InsidePredicate_26140_26205 q@@112 w@@117 r@@112 u@@112)) (InsidePredicate_26165_26205 p@@118 v_1@@117 r@@112 u@@112))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_26140 p@@118 v_1@@117 q@@112 w@@117) (InsidePredicate_26140_26205 q@@112 w@@117 r@@112 u@@112))
)))
(assert (forall ((p@@119 T@Field_60499_60500) (v_1@@118 T@FrameType) (q@@113 T@Field_58995_58996) (w@@118 T@FrameType) (r@@113 T@Field_60499_60500) (u@@113 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_26140 p@@119 v_1@@118 q@@113 w@@118) (InsidePredicate_26140_26165 q@@113 w@@118 r@@113 u@@113)) (InsidePredicate_26165_26165 p@@119 v_1@@118 r@@113 u@@113))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_26140 p@@119 v_1@@118 q@@113 w@@118) (InsidePredicate_26140_26165 q@@113 w@@118 r@@113 u@@113))
)))
(assert (forall ((p@@120 T@Field_60499_60500) (v_1@@119 T@FrameType) (q@@114 T@Field_75522_75523) (w@@119 T@FrameType) (r@@114 T@Field_88384_88385) (u@@114 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_26205 p@@120 v_1@@119 q@@114 w@@119) (InsidePredicate_26205_88384 q@@114 w@@119 r@@114 u@@114)) (InsidePredicate_26165_88384 p@@120 v_1@@119 r@@114 u@@114))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_26205 p@@120 v_1@@119 q@@114 w@@119) (InsidePredicate_26205_88384 q@@114 w@@119 r@@114 u@@114))
)))
(assert (forall ((p@@121 T@Field_60499_60500) (v_1@@120 T@FrameType) (q@@115 T@Field_75522_75523) (w@@120 T@FrameType) (r@@115 T@Field_26136_26206) (u@@115 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_26205 p@@121 v_1@@120 q@@115 w@@120) (InsidePredicate_26205_55572 q@@115 w@@120 r@@115 u@@115)) (InsidePredicate_26165_55572 p@@121 v_1@@120 r@@115 u@@115))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_26205 p@@121 v_1@@120 q@@115 w@@120) (InsidePredicate_26205_55572 q@@115 w@@120 r@@115 u@@115))
)))
(assert (forall ((p@@122 T@Field_60499_60500) (v_1@@121 T@FrameType) (q@@116 T@Field_75522_75523) (w@@121 T@FrameType) (r@@116 T@Field_58995_58996) (u@@116 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_26205 p@@122 v_1@@121 q@@116 w@@121) (InsidePredicate_26205_26140 q@@116 w@@121 r@@116 u@@116)) (InsidePredicate_26165_26140 p@@122 v_1@@121 r@@116 u@@116))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_26205 p@@122 v_1@@121 q@@116 w@@121) (InsidePredicate_26205_26140 q@@116 w@@121 r@@116 u@@116))
)))
(assert (forall ((p@@123 T@Field_60499_60500) (v_1@@122 T@FrameType) (q@@117 T@Field_75522_75523) (w@@122 T@FrameType) (r@@117 T@Field_75522_75523) (u@@117 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_26205 p@@123 v_1@@122 q@@117 w@@122) (InsidePredicate_26205_26205 q@@117 w@@122 r@@117 u@@117)) (InsidePredicate_26165_26205 p@@123 v_1@@122 r@@117 u@@117))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_26205 p@@123 v_1@@122 q@@117 w@@122) (InsidePredicate_26205_26205 q@@117 w@@122 r@@117 u@@117))
)))
(assert (forall ((p@@124 T@Field_60499_60500) (v_1@@123 T@FrameType) (q@@118 T@Field_75522_75523) (w@@123 T@FrameType) (r@@118 T@Field_60499_60500) (u@@118 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_26205 p@@124 v_1@@123 q@@118 w@@123) (InsidePredicate_26205_26165 q@@118 w@@123 r@@118 u@@118)) (InsidePredicate_26165_26165 p@@124 v_1@@123 r@@118 u@@118))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_26205 p@@124 v_1@@123 q@@118 w@@123) (InsidePredicate_26205_26165 q@@118 w@@123 r@@118 u@@118))
)))
(assert (forall ((p@@125 T@Field_60499_60500) (v_1@@124 T@FrameType) (q@@119 T@Field_60499_60500) (w@@124 T@FrameType) (r@@119 T@Field_88384_88385) (u@@119 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_26165 p@@125 v_1@@124 q@@119 w@@124) (InsidePredicate_26165_88384 q@@119 w@@124 r@@119 u@@119)) (InsidePredicate_26165_88384 p@@125 v_1@@124 r@@119 u@@119))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_26165 p@@125 v_1@@124 q@@119 w@@124) (InsidePredicate_26165_88384 q@@119 w@@124 r@@119 u@@119))
)))
(assert (forall ((p@@126 T@Field_60499_60500) (v_1@@125 T@FrameType) (q@@120 T@Field_60499_60500) (w@@125 T@FrameType) (r@@120 T@Field_26136_26206) (u@@120 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_26165 p@@126 v_1@@125 q@@120 w@@125) (InsidePredicate_26165_55572 q@@120 w@@125 r@@120 u@@120)) (InsidePredicate_26165_55572 p@@126 v_1@@125 r@@120 u@@120))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_26165 p@@126 v_1@@125 q@@120 w@@125) (InsidePredicate_26165_55572 q@@120 w@@125 r@@120 u@@120))
)))
(assert (forall ((p@@127 T@Field_60499_60500) (v_1@@126 T@FrameType) (q@@121 T@Field_60499_60500) (w@@126 T@FrameType) (r@@121 T@Field_58995_58996) (u@@121 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_26165 p@@127 v_1@@126 q@@121 w@@126) (InsidePredicate_26165_26140 q@@121 w@@126 r@@121 u@@121)) (InsidePredicate_26165_26140 p@@127 v_1@@126 r@@121 u@@121))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_26165 p@@127 v_1@@126 q@@121 w@@126) (InsidePredicate_26165_26140 q@@121 w@@126 r@@121 u@@121))
)))
(assert (forall ((p@@128 T@Field_60499_60500) (v_1@@127 T@FrameType) (q@@122 T@Field_60499_60500) (w@@127 T@FrameType) (r@@122 T@Field_75522_75523) (u@@122 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_26165 p@@128 v_1@@127 q@@122 w@@127) (InsidePredicate_26165_26205 q@@122 w@@127 r@@122 u@@122)) (InsidePredicate_26165_26205 p@@128 v_1@@127 r@@122 u@@122))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_26165 p@@128 v_1@@127 q@@122 w@@127) (InsidePredicate_26165_26205 q@@122 w@@127 r@@122 u@@122))
)))
(assert (forall ((p@@129 T@Field_60499_60500) (v_1@@128 T@FrameType) (q@@123 T@Field_60499_60500) (w@@128 T@FrameType) (r@@123 T@Field_60499_60500) (u@@123 T@FrameType) ) (!  (=> (and (InsidePredicate_26165_26165 p@@129 v_1@@128 q@@123 w@@128) (InsidePredicate_26165_26165 q@@123 w@@128 r@@123 u@@123)) (InsidePredicate_26165_26165 p@@129 v_1@@128 r@@123 u@@123))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26165_26165 p@@129 v_1@@128 q@@123 w@@128) (InsidePredicate_26165_26165 q@@123 w@@128 r@@123 u@@123))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_55512) (ExhaleHeap@@36 T@PolymorphicMapType_55512) (Mask@@87 T@PolymorphicMapType_55533) (pm_f_55@@9 T@Field_88384_88385) ) (!  (=> (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@36 Mask@@87) (=> (and (HasDirectPerm_88384_26206 Mask@@87 null pm_f_55@@9) (IsPredicateField_26245_26246 pm_f_55@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_55 T@Ref) (f_203@@24 T@Field_58898_1186) ) (!  (=> (select (|PolymorphicMapType_56061_26134_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55 f_203@@24) (= (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@67) o2_55 f_203@@24) (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55 f_203@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55 f_203@@24))
)) (forall ((o2_55@@0 T@Ref) (f_203@@25 T@Field_55585_55586) ) (!  (=> (select (|PolymorphicMapType_56061_26136_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@0 f_203@@25) (= (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@67) o2_55@@0 f_203@@25) (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@0 f_203@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@0 f_203@@25))
))) (forall ((o2_55@@1 T@Ref) (f_203@@26 T@Field_55572_53) ) (!  (=> (select (|PolymorphicMapType_56061_26134_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@1 f_203@@26) (= (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@67) o2_55@@1 f_203@@26) (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@1 f_203@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@1 f_203@@26))
))) (forall ((o2_55@@2 T@Ref) (f_203@@27 T@Field_26136_26206) ) (!  (=> (select (|PolymorphicMapType_56061_26134_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@2 f_203@@27) (= (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@67) o2_55@@2 f_203@@27) (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@2 f_203@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@2 f_203@@27))
))) (forall ((o2_55@@3 T@Ref) (f_203@@28 T@Field_26136_59013) ) (!  (=> (select (|PolymorphicMapType_56061_26134_233471#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@3 f_203@@28) (= (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@67) o2_55@@3 f_203@@28) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@3 f_203@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@3 f_203@@28))
))) (forall ((o2_55@@4 T@Ref) (f_203@@29 T@Field_26140_1186) ) (!  (=> (select (|PolymorphicMapType_56061_58995_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@4 f_203@@29) (= (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@67) o2_55@@4 f_203@@29) (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@4 f_203@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@4 f_203@@29))
))) (forall ((o2_55@@5 T@Ref) (f_203@@30 T@Field_26140_26137) ) (!  (=> (select (|PolymorphicMapType_56061_58995_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@5 f_203@@30) (= (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@67) o2_55@@5 f_203@@30) (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@5 f_203@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@5 f_203@@30))
))) (forall ((o2_55@@6 T@Ref) (f_203@@31 T@Field_26140_53) ) (!  (=> (select (|PolymorphicMapType_56061_58995_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@6 f_203@@31) (= (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@67) o2_55@@6 f_203@@31) (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@6 f_203@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@6 f_203@@31))
))) (forall ((o2_55@@7 T@Ref) (f_203@@32 T@Field_58995_58996) ) (!  (=> (select (|PolymorphicMapType_56061_58995_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@7 f_203@@32) (= (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@67) o2_55@@7 f_203@@32) (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@7 f_203@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@7 f_203@@32))
))) (forall ((o2_55@@8 T@Ref) (f_203@@33 T@Field_59008_59013) ) (!  (=> (select (|PolymorphicMapType_56061_58995_234519#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@8 f_203@@33) (= (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@67) o2_55@@8 f_203@@33) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@8 f_203@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@8 f_203@@33))
))) (forall ((o2_55@@9 T@Ref) (f_203@@34 T@Field_60499_1186) ) (!  (=> (select (|PolymorphicMapType_56061_60499_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@9 f_203@@34) (= (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@67) o2_55@@9 f_203@@34) (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@9 f_203@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@9 f_203@@34))
))) (forall ((o2_55@@10 T@Ref) (f_203@@35 T@Field_60499_26137) ) (!  (=> (select (|PolymorphicMapType_56061_60499_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@10 f_203@@35) (= (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@67) o2_55@@10 f_203@@35) (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@10 f_203@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@10 f_203@@35))
))) (forall ((o2_55@@11 T@Ref) (f_203@@36 T@Field_60499_53) ) (!  (=> (select (|PolymorphicMapType_56061_60499_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@11 f_203@@36) (= (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@67) o2_55@@11 f_203@@36) (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@11 f_203@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@11 f_203@@36))
))) (forall ((o2_55@@12 T@Ref) (f_203@@37 T@Field_60499_60500) ) (!  (=> (select (|PolymorphicMapType_56061_60499_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@12 f_203@@37) (= (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@67) o2_55@@12 f_203@@37) (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@12 f_203@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@12 f_203@@37))
))) (forall ((o2_55@@13 T@Ref) (f_203@@38 T@Field_60512_60517) ) (!  (=> (select (|PolymorphicMapType_56061_60499_235567#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@13 f_203@@38) (= (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@67) o2_55@@13 f_203@@38) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@13 f_203@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@13 f_203@@38))
))) (forall ((o2_55@@14 T@Ref) (f_203@@39 T@Field_26205_1186) ) (!  (=> (select (|PolymorphicMapType_56061_75522_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@14 f_203@@39) (= (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@67) o2_55@@14 f_203@@39) (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@14 f_203@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@14 f_203@@39))
))) (forall ((o2_55@@15 T@Ref) (f_203@@40 T@Field_26205_26137) ) (!  (=> (select (|PolymorphicMapType_56061_75522_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@15 f_203@@40) (= (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@67) o2_55@@15 f_203@@40) (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@15 f_203@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@15 f_203@@40))
))) (forall ((o2_55@@16 T@Ref) (f_203@@41 T@Field_26205_53) ) (!  (=> (select (|PolymorphicMapType_56061_75522_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@16 f_203@@41) (= (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@67) o2_55@@16 f_203@@41) (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@16 f_203@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@16 f_203@@41))
))) (forall ((o2_55@@17 T@Ref) (f_203@@42 T@Field_75522_75523) ) (!  (=> (select (|PolymorphicMapType_56061_75522_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@17 f_203@@42) (= (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@67) o2_55@@17 f_203@@42) (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@17 f_203@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@17 f_203@@42))
))) (forall ((o2_55@@18 T@Ref) (f_203@@43 T@Field_75535_75540) ) (!  (=> (select (|PolymorphicMapType_56061_75522_236615#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@18 f_203@@43) (= (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@67) o2_55@@18 f_203@@43) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@18 f_203@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@18 f_203@@43))
))) (forall ((o2_55@@19 T@Ref) (f_203@@44 T@Field_88384_1186) ) (!  (=> (select (|PolymorphicMapType_56061_88384_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@19 f_203@@44) (= (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@67) o2_55@@19 f_203@@44) (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@19 f_203@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@19 f_203@@44))
))) (forall ((o2_55@@20 T@Ref) (f_203@@45 T@Field_88384_26137) ) (!  (=> (select (|PolymorphicMapType_56061_88384_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@20 f_203@@45) (= (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@67) o2_55@@20 f_203@@45) (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@20 f_203@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@20 f_203@@45))
))) (forall ((o2_55@@21 T@Ref) (f_203@@46 T@Field_88384_53) ) (!  (=> (select (|PolymorphicMapType_56061_88384_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@21 f_203@@46) (= (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@67) o2_55@@21 f_203@@46) (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@21 f_203@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@21 f_203@@46))
))) (forall ((o2_55@@22 T@Ref) (f_203@@47 T@Field_88384_88385) ) (!  (=> (select (|PolymorphicMapType_56061_88384_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@22 f_203@@47) (= (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@67) o2_55@@22 f_203@@47) (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@22 f_203@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@22 f_203@@47))
))) (forall ((o2_55@@23 T@Ref) (f_203@@48 T@Field_88397_88402) ) (!  (=> (select (|PolymorphicMapType_56061_88384_237663#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) null (PredicateMaskField_26245 pm_f_55@@9))) o2_55@@23 f_203@@48) (= (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@67) o2_55@@23 f_203@@48) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@23 f_203@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@36) o2_55@@23 f_203@@48))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@36 Mask@@87) (IsPredicateField_26245_26246 pm_f_55@@9))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_55512) (ExhaleHeap@@37 T@PolymorphicMapType_55512) (Mask@@88 T@PolymorphicMapType_55533) (pm_f_55@@10 T@Field_60499_60500) ) (!  (=> (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@37 Mask@@88) (=> (and (HasDirectPerm_60499_26206 Mask@@88 null pm_f_55@@10) (IsPredicateField_26165_26166 pm_f_55@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_55@@24 T@Ref) (f_203@@49 T@Field_58898_1186) ) (!  (=> (select (|PolymorphicMapType_56061_26134_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@24 f_203@@49) (= (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@68) o2_55@@24 f_203@@49) (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@24 f_203@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@24 f_203@@49))
)) (forall ((o2_55@@25 T@Ref) (f_203@@50 T@Field_55585_55586) ) (!  (=> (select (|PolymorphicMapType_56061_26136_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@25 f_203@@50) (= (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@68) o2_55@@25 f_203@@50) (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@25 f_203@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@25 f_203@@50))
))) (forall ((o2_55@@26 T@Ref) (f_203@@51 T@Field_55572_53) ) (!  (=> (select (|PolymorphicMapType_56061_26134_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@26 f_203@@51) (= (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@68) o2_55@@26 f_203@@51) (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@26 f_203@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@26 f_203@@51))
))) (forall ((o2_55@@27 T@Ref) (f_203@@52 T@Field_26136_26206) ) (!  (=> (select (|PolymorphicMapType_56061_26134_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@27 f_203@@52) (= (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@68) o2_55@@27 f_203@@52) (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@27 f_203@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@27 f_203@@52))
))) (forall ((o2_55@@28 T@Ref) (f_203@@53 T@Field_26136_59013) ) (!  (=> (select (|PolymorphicMapType_56061_26134_233471#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@28 f_203@@53) (= (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@68) o2_55@@28 f_203@@53) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@28 f_203@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@28 f_203@@53))
))) (forall ((o2_55@@29 T@Ref) (f_203@@54 T@Field_26140_1186) ) (!  (=> (select (|PolymorphicMapType_56061_58995_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@29 f_203@@54) (= (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@68) o2_55@@29 f_203@@54) (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@29 f_203@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@29 f_203@@54))
))) (forall ((o2_55@@30 T@Ref) (f_203@@55 T@Field_26140_26137) ) (!  (=> (select (|PolymorphicMapType_56061_58995_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@30 f_203@@55) (= (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@68) o2_55@@30 f_203@@55) (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@30 f_203@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@30 f_203@@55))
))) (forall ((o2_55@@31 T@Ref) (f_203@@56 T@Field_26140_53) ) (!  (=> (select (|PolymorphicMapType_56061_58995_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@31 f_203@@56) (= (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@68) o2_55@@31 f_203@@56) (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@31 f_203@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@31 f_203@@56))
))) (forall ((o2_55@@32 T@Ref) (f_203@@57 T@Field_58995_58996) ) (!  (=> (select (|PolymorphicMapType_56061_58995_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@32 f_203@@57) (= (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@68) o2_55@@32 f_203@@57) (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@32 f_203@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@32 f_203@@57))
))) (forall ((o2_55@@33 T@Ref) (f_203@@58 T@Field_59008_59013) ) (!  (=> (select (|PolymorphicMapType_56061_58995_234519#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@33 f_203@@58) (= (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@68) o2_55@@33 f_203@@58) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@33 f_203@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@33 f_203@@58))
))) (forall ((o2_55@@34 T@Ref) (f_203@@59 T@Field_60499_1186) ) (!  (=> (select (|PolymorphicMapType_56061_60499_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@34 f_203@@59) (= (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@68) o2_55@@34 f_203@@59) (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@34 f_203@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@34 f_203@@59))
))) (forall ((o2_55@@35 T@Ref) (f_203@@60 T@Field_60499_26137) ) (!  (=> (select (|PolymorphicMapType_56061_60499_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@35 f_203@@60) (= (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@68) o2_55@@35 f_203@@60) (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@35 f_203@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@35 f_203@@60))
))) (forall ((o2_55@@36 T@Ref) (f_203@@61 T@Field_60499_53) ) (!  (=> (select (|PolymorphicMapType_56061_60499_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@36 f_203@@61) (= (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@68) o2_55@@36 f_203@@61) (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@36 f_203@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@36 f_203@@61))
))) (forall ((o2_55@@37 T@Ref) (f_203@@62 T@Field_60499_60500) ) (!  (=> (select (|PolymorphicMapType_56061_60499_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@37 f_203@@62) (= (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@68) o2_55@@37 f_203@@62) (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@37 f_203@@62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@37 f_203@@62))
))) (forall ((o2_55@@38 T@Ref) (f_203@@63 T@Field_60512_60517) ) (!  (=> (select (|PolymorphicMapType_56061_60499_235567#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@38 f_203@@63) (= (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) o2_55@@38 f_203@@63) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@38 f_203@@63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@38 f_203@@63))
))) (forall ((o2_55@@39 T@Ref) (f_203@@64 T@Field_26205_1186) ) (!  (=> (select (|PolymorphicMapType_56061_75522_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@39 f_203@@64) (= (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@68) o2_55@@39 f_203@@64) (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@39 f_203@@64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@39 f_203@@64))
))) (forall ((o2_55@@40 T@Ref) (f_203@@65 T@Field_26205_26137) ) (!  (=> (select (|PolymorphicMapType_56061_75522_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@40 f_203@@65) (= (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@68) o2_55@@40 f_203@@65) (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@40 f_203@@65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@40 f_203@@65))
))) (forall ((o2_55@@41 T@Ref) (f_203@@66 T@Field_26205_53) ) (!  (=> (select (|PolymorphicMapType_56061_75522_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@41 f_203@@66) (= (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@68) o2_55@@41 f_203@@66) (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@41 f_203@@66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@41 f_203@@66))
))) (forall ((o2_55@@42 T@Ref) (f_203@@67 T@Field_75522_75523) ) (!  (=> (select (|PolymorphicMapType_56061_75522_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@42 f_203@@67) (= (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@68) o2_55@@42 f_203@@67) (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@42 f_203@@67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@42 f_203@@67))
))) (forall ((o2_55@@43 T@Ref) (f_203@@68 T@Field_75535_75540) ) (!  (=> (select (|PolymorphicMapType_56061_75522_236615#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@43 f_203@@68) (= (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@68) o2_55@@43 f_203@@68) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@43 f_203@@68)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@43 f_203@@68))
))) (forall ((o2_55@@44 T@Ref) (f_203@@69 T@Field_88384_1186) ) (!  (=> (select (|PolymorphicMapType_56061_88384_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@44 f_203@@69) (= (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@68) o2_55@@44 f_203@@69) (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@44 f_203@@69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@44 f_203@@69))
))) (forall ((o2_55@@45 T@Ref) (f_203@@70 T@Field_88384_26137) ) (!  (=> (select (|PolymorphicMapType_56061_88384_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@45 f_203@@70) (= (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@68) o2_55@@45 f_203@@70) (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@45 f_203@@70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@45 f_203@@70))
))) (forall ((o2_55@@46 T@Ref) (f_203@@71 T@Field_88384_53) ) (!  (=> (select (|PolymorphicMapType_56061_88384_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@46 f_203@@71) (= (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@68) o2_55@@46 f_203@@71) (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@46 f_203@@71)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@46 f_203@@71))
))) (forall ((o2_55@@47 T@Ref) (f_203@@72 T@Field_88384_88385) ) (!  (=> (select (|PolymorphicMapType_56061_88384_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@47 f_203@@72) (= (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@68) o2_55@@47 f_203@@72) (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@47 f_203@@72)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@47 f_203@@72))
))) (forall ((o2_55@@48 T@Ref) (f_203@@73 T@Field_88397_88402) ) (!  (=> (select (|PolymorphicMapType_56061_88384_237663#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@68) null (PredicateMaskField_26165 pm_f_55@@10))) o2_55@@48 f_203@@73) (= (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@68) o2_55@@48 f_203@@73) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@48 f_203@@73)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@37) o2_55@@48 f_203@@73))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@37 Mask@@88) (IsPredicateField_26165_26166 pm_f_55@@10))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_55512) (ExhaleHeap@@38 T@PolymorphicMapType_55512) (Mask@@89 T@PolymorphicMapType_55533) (pm_f_55@@11 T@Field_58995_58996) ) (!  (=> (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@38 Mask@@89) (=> (and (HasDirectPerm_26140_26141 Mask@@89 null pm_f_55@@11) (IsPredicateField_26140_26141 pm_f_55@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_55@@49 T@Ref) (f_203@@74 T@Field_58898_1186) ) (!  (=> (select (|PolymorphicMapType_56061_26134_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@49 f_203@@74) (= (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@69) o2_55@@49 f_203@@74) (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@49 f_203@@74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@49 f_203@@74))
)) (forall ((o2_55@@50 T@Ref) (f_203@@75 T@Field_55585_55586) ) (!  (=> (select (|PolymorphicMapType_56061_26136_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@50 f_203@@75) (= (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@69) o2_55@@50 f_203@@75) (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@50 f_203@@75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@50 f_203@@75))
))) (forall ((o2_55@@51 T@Ref) (f_203@@76 T@Field_55572_53) ) (!  (=> (select (|PolymorphicMapType_56061_26134_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@51 f_203@@76) (= (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@69) o2_55@@51 f_203@@76) (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@51 f_203@@76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@51 f_203@@76))
))) (forall ((o2_55@@52 T@Ref) (f_203@@77 T@Field_26136_26206) ) (!  (=> (select (|PolymorphicMapType_56061_26134_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@52 f_203@@77) (= (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@69) o2_55@@52 f_203@@77) (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@52 f_203@@77)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@52 f_203@@77))
))) (forall ((o2_55@@53 T@Ref) (f_203@@78 T@Field_26136_59013) ) (!  (=> (select (|PolymorphicMapType_56061_26134_233471#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@53 f_203@@78) (= (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@69) o2_55@@53 f_203@@78) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@53 f_203@@78)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@53 f_203@@78))
))) (forall ((o2_55@@54 T@Ref) (f_203@@79 T@Field_26140_1186) ) (!  (=> (select (|PolymorphicMapType_56061_58995_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@54 f_203@@79) (= (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@69) o2_55@@54 f_203@@79) (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@54 f_203@@79)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@54 f_203@@79))
))) (forall ((o2_55@@55 T@Ref) (f_203@@80 T@Field_26140_26137) ) (!  (=> (select (|PolymorphicMapType_56061_58995_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@55 f_203@@80) (= (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@69) o2_55@@55 f_203@@80) (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@55 f_203@@80)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@55 f_203@@80))
))) (forall ((o2_55@@56 T@Ref) (f_203@@81 T@Field_26140_53) ) (!  (=> (select (|PolymorphicMapType_56061_58995_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@56 f_203@@81) (= (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@69) o2_55@@56 f_203@@81) (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@56 f_203@@81)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@56 f_203@@81))
))) (forall ((o2_55@@57 T@Ref) (f_203@@82 T@Field_58995_58996) ) (!  (=> (select (|PolymorphicMapType_56061_58995_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@57 f_203@@82) (= (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@69) o2_55@@57 f_203@@82) (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@57 f_203@@82)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@57 f_203@@82))
))) (forall ((o2_55@@58 T@Ref) (f_203@@83 T@Field_59008_59013) ) (!  (=> (select (|PolymorphicMapType_56061_58995_234519#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@58 f_203@@83) (= (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) o2_55@@58 f_203@@83) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@58 f_203@@83)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@58 f_203@@83))
))) (forall ((o2_55@@59 T@Ref) (f_203@@84 T@Field_60499_1186) ) (!  (=> (select (|PolymorphicMapType_56061_60499_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@59 f_203@@84) (= (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@69) o2_55@@59 f_203@@84) (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@59 f_203@@84)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@59 f_203@@84))
))) (forall ((o2_55@@60 T@Ref) (f_203@@85 T@Field_60499_26137) ) (!  (=> (select (|PolymorphicMapType_56061_60499_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@60 f_203@@85) (= (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@69) o2_55@@60 f_203@@85) (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@60 f_203@@85)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@60 f_203@@85))
))) (forall ((o2_55@@61 T@Ref) (f_203@@86 T@Field_60499_53) ) (!  (=> (select (|PolymorphicMapType_56061_60499_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@61 f_203@@86) (= (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@69) o2_55@@61 f_203@@86) (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@61 f_203@@86)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@61 f_203@@86))
))) (forall ((o2_55@@62 T@Ref) (f_203@@87 T@Field_60499_60500) ) (!  (=> (select (|PolymorphicMapType_56061_60499_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@62 f_203@@87) (= (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@69) o2_55@@62 f_203@@87) (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@62 f_203@@87)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@62 f_203@@87))
))) (forall ((o2_55@@63 T@Ref) (f_203@@88 T@Field_60512_60517) ) (!  (=> (select (|PolymorphicMapType_56061_60499_235567#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@63 f_203@@88) (= (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@69) o2_55@@63 f_203@@88) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@63 f_203@@88)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@63 f_203@@88))
))) (forall ((o2_55@@64 T@Ref) (f_203@@89 T@Field_26205_1186) ) (!  (=> (select (|PolymorphicMapType_56061_75522_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@64 f_203@@89) (= (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@69) o2_55@@64 f_203@@89) (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@64 f_203@@89)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@64 f_203@@89))
))) (forall ((o2_55@@65 T@Ref) (f_203@@90 T@Field_26205_26137) ) (!  (=> (select (|PolymorphicMapType_56061_75522_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@65 f_203@@90) (= (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@69) o2_55@@65 f_203@@90) (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@65 f_203@@90)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@65 f_203@@90))
))) (forall ((o2_55@@66 T@Ref) (f_203@@91 T@Field_26205_53) ) (!  (=> (select (|PolymorphicMapType_56061_75522_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@66 f_203@@91) (= (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@69) o2_55@@66 f_203@@91) (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@66 f_203@@91)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@66 f_203@@91))
))) (forall ((o2_55@@67 T@Ref) (f_203@@92 T@Field_75522_75523) ) (!  (=> (select (|PolymorphicMapType_56061_75522_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@67 f_203@@92) (= (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@69) o2_55@@67 f_203@@92) (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@67 f_203@@92)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@67 f_203@@92))
))) (forall ((o2_55@@68 T@Ref) (f_203@@93 T@Field_75535_75540) ) (!  (=> (select (|PolymorphicMapType_56061_75522_236615#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@68 f_203@@93) (= (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@69) o2_55@@68 f_203@@93) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@68 f_203@@93)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@68 f_203@@93))
))) (forall ((o2_55@@69 T@Ref) (f_203@@94 T@Field_88384_1186) ) (!  (=> (select (|PolymorphicMapType_56061_88384_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@69 f_203@@94) (= (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@69) o2_55@@69 f_203@@94) (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@69 f_203@@94)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@69 f_203@@94))
))) (forall ((o2_55@@70 T@Ref) (f_203@@95 T@Field_88384_26137) ) (!  (=> (select (|PolymorphicMapType_56061_88384_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@70 f_203@@95) (= (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@69) o2_55@@70 f_203@@95) (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@70 f_203@@95)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@70 f_203@@95))
))) (forall ((o2_55@@71 T@Ref) (f_203@@96 T@Field_88384_53) ) (!  (=> (select (|PolymorphicMapType_56061_88384_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@71 f_203@@96) (= (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@69) o2_55@@71 f_203@@96) (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@71 f_203@@96)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@71 f_203@@96))
))) (forall ((o2_55@@72 T@Ref) (f_203@@97 T@Field_88384_88385) ) (!  (=> (select (|PolymorphicMapType_56061_88384_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@72 f_203@@97) (= (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@69) o2_55@@72 f_203@@97) (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@72 f_203@@97)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@72 f_203@@97))
))) (forall ((o2_55@@73 T@Ref) (f_203@@98 T@Field_88397_88402) ) (!  (=> (select (|PolymorphicMapType_56061_88384_237663#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@69) null (PredicateMaskField_26140 pm_f_55@@11))) o2_55@@73 f_203@@98) (= (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@69) o2_55@@73 f_203@@98) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@73 f_203@@98)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@38) o2_55@@73 f_203@@98))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@38 Mask@@89) (IsPredicateField_26140_26141 pm_f_55@@11))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_55512) (ExhaleHeap@@39 T@PolymorphicMapType_55512) (Mask@@90 T@PolymorphicMapType_55533) (pm_f_55@@12 T@Field_75522_75523) ) (!  (=> (IdenticalOnKnownLocations Heap@@70 ExhaleHeap@@39 Mask@@90) (=> (and (HasDirectPerm_26205_26206 Mask@@90 null pm_f_55@@12) (IsPredicateField_26205_26206 pm_f_55@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_55@@74 T@Ref) (f_203@@99 T@Field_58898_1186) ) (!  (=> (select (|PolymorphicMapType_56061_26134_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@74 f_203@@99) (= (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@70) o2_55@@74 f_203@@99) (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@74 f_203@@99)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@74 f_203@@99))
)) (forall ((o2_55@@75 T@Ref) (f_203@@100 T@Field_55585_55586) ) (!  (=> (select (|PolymorphicMapType_56061_26136_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@75 f_203@@100) (= (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@70) o2_55@@75 f_203@@100) (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@75 f_203@@100)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@75 f_203@@100))
))) (forall ((o2_55@@76 T@Ref) (f_203@@101 T@Field_55572_53) ) (!  (=> (select (|PolymorphicMapType_56061_26134_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@76 f_203@@101) (= (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@70) o2_55@@76 f_203@@101) (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@76 f_203@@101)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@76 f_203@@101))
))) (forall ((o2_55@@77 T@Ref) (f_203@@102 T@Field_26136_26206) ) (!  (=> (select (|PolymorphicMapType_56061_26134_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@77 f_203@@102) (= (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@70) o2_55@@77 f_203@@102) (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@77 f_203@@102)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@77 f_203@@102))
))) (forall ((o2_55@@78 T@Ref) (f_203@@103 T@Field_26136_59013) ) (!  (=> (select (|PolymorphicMapType_56061_26134_233471#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@78 f_203@@103) (= (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@70) o2_55@@78 f_203@@103) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@78 f_203@@103)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@78 f_203@@103))
))) (forall ((o2_55@@79 T@Ref) (f_203@@104 T@Field_26140_1186) ) (!  (=> (select (|PolymorphicMapType_56061_58995_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@79 f_203@@104) (= (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@70) o2_55@@79 f_203@@104) (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@79 f_203@@104)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@79 f_203@@104))
))) (forall ((o2_55@@80 T@Ref) (f_203@@105 T@Field_26140_26137) ) (!  (=> (select (|PolymorphicMapType_56061_58995_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@80 f_203@@105) (= (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@70) o2_55@@80 f_203@@105) (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@80 f_203@@105)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@80 f_203@@105))
))) (forall ((o2_55@@81 T@Ref) (f_203@@106 T@Field_26140_53) ) (!  (=> (select (|PolymorphicMapType_56061_58995_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@81 f_203@@106) (= (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@70) o2_55@@81 f_203@@106) (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@81 f_203@@106)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@81 f_203@@106))
))) (forall ((o2_55@@82 T@Ref) (f_203@@107 T@Field_58995_58996) ) (!  (=> (select (|PolymorphicMapType_56061_58995_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@82 f_203@@107) (= (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@70) o2_55@@82 f_203@@107) (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@82 f_203@@107)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@82 f_203@@107))
))) (forall ((o2_55@@83 T@Ref) (f_203@@108 T@Field_59008_59013) ) (!  (=> (select (|PolymorphicMapType_56061_58995_234519#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@83 f_203@@108) (= (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@70) o2_55@@83 f_203@@108) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@83 f_203@@108)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@83 f_203@@108))
))) (forall ((o2_55@@84 T@Ref) (f_203@@109 T@Field_60499_1186) ) (!  (=> (select (|PolymorphicMapType_56061_60499_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@84 f_203@@109) (= (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@70) o2_55@@84 f_203@@109) (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@84 f_203@@109)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@84 f_203@@109))
))) (forall ((o2_55@@85 T@Ref) (f_203@@110 T@Field_60499_26137) ) (!  (=> (select (|PolymorphicMapType_56061_60499_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@85 f_203@@110) (= (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@70) o2_55@@85 f_203@@110) (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@85 f_203@@110)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@85 f_203@@110))
))) (forall ((o2_55@@86 T@Ref) (f_203@@111 T@Field_60499_53) ) (!  (=> (select (|PolymorphicMapType_56061_60499_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@86 f_203@@111) (= (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@70) o2_55@@86 f_203@@111) (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@86 f_203@@111)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@86 f_203@@111))
))) (forall ((o2_55@@87 T@Ref) (f_203@@112 T@Field_60499_60500) ) (!  (=> (select (|PolymorphicMapType_56061_60499_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@87 f_203@@112) (= (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@70) o2_55@@87 f_203@@112) (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@87 f_203@@112)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@87 f_203@@112))
))) (forall ((o2_55@@88 T@Ref) (f_203@@113 T@Field_60512_60517) ) (!  (=> (select (|PolymorphicMapType_56061_60499_235567#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@88 f_203@@113) (= (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@70) o2_55@@88 f_203@@113) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@88 f_203@@113)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@88 f_203@@113))
))) (forall ((o2_55@@89 T@Ref) (f_203@@114 T@Field_26205_1186) ) (!  (=> (select (|PolymorphicMapType_56061_75522_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@89 f_203@@114) (= (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@70) o2_55@@89 f_203@@114) (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@89 f_203@@114)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@89 f_203@@114))
))) (forall ((o2_55@@90 T@Ref) (f_203@@115 T@Field_26205_26137) ) (!  (=> (select (|PolymorphicMapType_56061_75522_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@90 f_203@@115) (= (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@70) o2_55@@90 f_203@@115) (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@90 f_203@@115)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@90 f_203@@115))
))) (forall ((o2_55@@91 T@Ref) (f_203@@116 T@Field_26205_53) ) (!  (=> (select (|PolymorphicMapType_56061_75522_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@91 f_203@@116) (= (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@70) o2_55@@91 f_203@@116) (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@91 f_203@@116)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@91 f_203@@116))
))) (forall ((o2_55@@92 T@Ref) (f_203@@117 T@Field_75522_75523) ) (!  (=> (select (|PolymorphicMapType_56061_75522_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@92 f_203@@117) (= (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@70) o2_55@@92 f_203@@117) (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@92 f_203@@117)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@92 f_203@@117))
))) (forall ((o2_55@@93 T@Ref) (f_203@@118 T@Field_75535_75540) ) (!  (=> (select (|PolymorphicMapType_56061_75522_236615#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@93 f_203@@118) (= (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) o2_55@@93 f_203@@118) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@93 f_203@@118)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@93 f_203@@118))
))) (forall ((o2_55@@94 T@Ref) (f_203@@119 T@Field_88384_1186) ) (!  (=> (select (|PolymorphicMapType_56061_88384_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@94 f_203@@119) (= (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@70) o2_55@@94 f_203@@119) (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@94 f_203@@119)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@94 f_203@@119))
))) (forall ((o2_55@@95 T@Ref) (f_203@@120 T@Field_88384_26137) ) (!  (=> (select (|PolymorphicMapType_56061_88384_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@95 f_203@@120) (= (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@70) o2_55@@95 f_203@@120) (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@95 f_203@@120)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@95 f_203@@120))
))) (forall ((o2_55@@96 T@Ref) (f_203@@121 T@Field_88384_53) ) (!  (=> (select (|PolymorphicMapType_56061_88384_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@96 f_203@@121) (= (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@70) o2_55@@96 f_203@@121) (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@96 f_203@@121)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@96 f_203@@121))
))) (forall ((o2_55@@97 T@Ref) (f_203@@122 T@Field_88384_88385) ) (!  (=> (select (|PolymorphicMapType_56061_88384_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@97 f_203@@122) (= (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@70) o2_55@@97 f_203@@122) (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@97 f_203@@122)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@97 f_203@@122))
))) (forall ((o2_55@@98 T@Ref) (f_203@@123 T@Field_88397_88402) ) (!  (=> (select (|PolymorphicMapType_56061_88384_237663#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@70) null (PredicateMaskField_26205 pm_f_55@@12))) o2_55@@98 f_203@@123) (= (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@70) o2_55@@98 f_203@@123) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@98 f_203@@123)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@39) o2_55@@98 f_203@@123))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@70 ExhaleHeap@@39 Mask@@90) (IsPredicateField_26205_26206 pm_f_55@@12))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_55512) (ExhaleHeap@@40 T@PolymorphicMapType_55512) (Mask@@91 T@PolymorphicMapType_55533) (pm_f_55@@13 T@Field_26136_26206) ) (!  (=> (IdenticalOnKnownLocations Heap@@71 ExhaleHeap@@40 Mask@@91) (=> (and (HasDirectPerm_26136_26206 Mask@@91 null pm_f_55@@13) (IsPredicateField_26136_231039 pm_f_55@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_55@@99 T@Ref) (f_203@@124 T@Field_58898_1186) ) (!  (=> (select (|PolymorphicMapType_56061_26134_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@99 f_203@@124) (= (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@71) o2_55@@99 f_203@@124) (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@99 f_203@@124)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@99 f_203@@124))
)) (forall ((o2_55@@100 T@Ref) (f_203@@125 T@Field_55585_55586) ) (!  (=> (select (|PolymorphicMapType_56061_26136_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@100 f_203@@125) (= (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@71) o2_55@@100 f_203@@125) (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@100 f_203@@125)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@100 f_203@@125))
))) (forall ((o2_55@@101 T@Ref) (f_203@@126 T@Field_55572_53) ) (!  (=> (select (|PolymorphicMapType_56061_26134_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@101 f_203@@126) (= (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@71) o2_55@@101 f_203@@126) (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@101 f_203@@126)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@101 f_203@@126))
))) (forall ((o2_55@@102 T@Ref) (f_203@@127 T@Field_26136_26206) ) (!  (=> (select (|PolymorphicMapType_56061_26134_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@102 f_203@@127) (= (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@71) o2_55@@102 f_203@@127) (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@102 f_203@@127)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@102 f_203@@127))
))) (forall ((o2_55@@103 T@Ref) (f_203@@128 T@Field_26136_59013) ) (!  (=> (select (|PolymorphicMapType_56061_26134_233471#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@103 f_203@@128) (= (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) o2_55@@103 f_203@@128) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@103 f_203@@128)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@103 f_203@@128))
))) (forall ((o2_55@@104 T@Ref) (f_203@@129 T@Field_26140_1186) ) (!  (=> (select (|PolymorphicMapType_56061_58995_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@104 f_203@@129) (= (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@71) o2_55@@104 f_203@@129) (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@104 f_203@@129)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@104 f_203@@129))
))) (forall ((o2_55@@105 T@Ref) (f_203@@130 T@Field_26140_26137) ) (!  (=> (select (|PolymorphicMapType_56061_58995_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@105 f_203@@130) (= (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@71) o2_55@@105 f_203@@130) (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@105 f_203@@130)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@105 f_203@@130))
))) (forall ((o2_55@@106 T@Ref) (f_203@@131 T@Field_26140_53) ) (!  (=> (select (|PolymorphicMapType_56061_58995_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@106 f_203@@131) (= (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@71) o2_55@@106 f_203@@131) (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@106 f_203@@131)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@106 f_203@@131))
))) (forall ((o2_55@@107 T@Ref) (f_203@@132 T@Field_58995_58996) ) (!  (=> (select (|PolymorphicMapType_56061_58995_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@107 f_203@@132) (= (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@71) o2_55@@107 f_203@@132) (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@107 f_203@@132)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@107 f_203@@132))
))) (forall ((o2_55@@108 T@Ref) (f_203@@133 T@Field_59008_59013) ) (!  (=> (select (|PolymorphicMapType_56061_58995_234519#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@108 f_203@@133) (= (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@71) o2_55@@108 f_203@@133) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@108 f_203@@133)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@108 f_203@@133))
))) (forall ((o2_55@@109 T@Ref) (f_203@@134 T@Field_60499_1186) ) (!  (=> (select (|PolymorphicMapType_56061_60499_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@109 f_203@@134) (= (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@71) o2_55@@109 f_203@@134) (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@109 f_203@@134)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@109 f_203@@134))
))) (forall ((o2_55@@110 T@Ref) (f_203@@135 T@Field_60499_26137) ) (!  (=> (select (|PolymorphicMapType_56061_60499_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@110 f_203@@135) (= (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@71) o2_55@@110 f_203@@135) (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@110 f_203@@135)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@110 f_203@@135))
))) (forall ((o2_55@@111 T@Ref) (f_203@@136 T@Field_60499_53) ) (!  (=> (select (|PolymorphicMapType_56061_60499_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@111 f_203@@136) (= (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@71) o2_55@@111 f_203@@136) (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@111 f_203@@136)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@111 f_203@@136))
))) (forall ((o2_55@@112 T@Ref) (f_203@@137 T@Field_60499_60500) ) (!  (=> (select (|PolymorphicMapType_56061_60499_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@112 f_203@@137) (= (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@71) o2_55@@112 f_203@@137) (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@112 f_203@@137)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@112 f_203@@137))
))) (forall ((o2_55@@113 T@Ref) (f_203@@138 T@Field_60512_60517) ) (!  (=> (select (|PolymorphicMapType_56061_60499_235567#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@113 f_203@@138) (= (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@71) o2_55@@113 f_203@@138) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@113 f_203@@138)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@113 f_203@@138))
))) (forall ((o2_55@@114 T@Ref) (f_203@@139 T@Field_26205_1186) ) (!  (=> (select (|PolymorphicMapType_56061_75522_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@114 f_203@@139) (= (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@71) o2_55@@114 f_203@@139) (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@114 f_203@@139)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@114 f_203@@139))
))) (forall ((o2_55@@115 T@Ref) (f_203@@140 T@Field_26205_26137) ) (!  (=> (select (|PolymorphicMapType_56061_75522_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@115 f_203@@140) (= (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@71) o2_55@@115 f_203@@140) (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@115 f_203@@140)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@115 f_203@@140))
))) (forall ((o2_55@@116 T@Ref) (f_203@@141 T@Field_26205_53) ) (!  (=> (select (|PolymorphicMapType_56061_75522_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@116 f_203@@141) (= (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@71) o2_55@@116 f_203@@141) (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@116 f_203@@141)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@116 f_203@@141))
))) (forall ((o2_55@@117 T@Ref) (f_203@@142 T@Field_75522_75523) ) (!  (=> (select (|PolymorphicMapType_56061_75522_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@117 f_203@@142) (= (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@71) o2_55@@117 f_203@@142) (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@117 f_203@@142)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@117 f_203@@142))
))) (forall ((o2_55@@118 T@Ref) (f_203@@143 T@Field_75535_75540) ) (!  (=> (select (|PolymorphicMapType_56061_75522_236615#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@118 f_203@@143) (= (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@71) o2_55@@118 f_203@@143) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@118 f_203@@143)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@118 f_203@@143))
))) (forall ((o2_55@@119 T@Ref) (f_203@@144 T@Field_88384_1186) ) (!  (=> (select (|PolymorphicMapType_56061_88384_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@119 f_203@@144) (= (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@71) o2_55@@119 f_203@@144) (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@119 f_203@@144)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@119 f_203@@144))
))) (forall ((o2_55@@120 T@Ref) (f_203@@145 T@Field_88384_26137) ) (!  (=> (select (|PolymorphicMapType_56061_88384_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@120 f_203@@145) (= (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@71) o2_55@@120 f_203@@145) (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@120 f_203@@145)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@120 f_203@@145))
))) (forall ((o2_55@@121 T@Ref) (f_203@@146 T@Field_88384_53) ) (!  (=> (select (|PolymorphicMapType_56061_88384_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@121 f_203@@146) (= (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@71) o2_55@@121 f_203@@146) (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@121 f_203@@146)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@121 f_203@@146))
))) (forall ((o2_55@@122 T@Ref) (f_203@@147 T@Field_88384_88385) ) (!  (=> (select (|PolymorphicMapType_56061_88384_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@122 f_203@@147) (= (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@71) o2_55@@122 f_203@@147) (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@122 f_203@@147)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@122 f_203@@147))
))) (forall ((o2_55@@123 T@Ref) (f_203@@148 T@Field_88397_88402) ) (!  (=> (select (|PolymorphicMapType_56061_88384_237663#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@71) null (PredicateMaskField_26136 pm_f_55@@13))) o2_55@@123 f_203@@148) (= (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@71) o2_55@@123 f_203@@148) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@123 f_203@@148)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@40) o2_55@@123 f_203@@148))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@71 ExhaleHeap@@40 Mask@@91) (IsPredicateField_26136_231039 pm_f_55@@13))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_55512) (ExhaleHeap@@41 T@PolymorphicMapType_55512) (Mask@@92 T@PolymorphicMapType_55533) (pm_f_55@@14 T@Field_88384_88385) ) (!  (=> (IdenticalOnKnownLocations Heap@@72 ExhaleHeap@@41 Mask@@92) (=> (and (HasDirectPerm_88384_26206 Mask@@92 null pm_f_55@@14) (IsWandField_88384_240742 pm_f_55@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_55@@124 T@Ref) (f_203@@149 T@Field_58898_1186) ) (!  (=> (select (|PolymorphicMapType_56061_26134_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@124 f_203@@149) (= (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@72) o2_55@@124 f_203@@149) (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@124 f_203@@149)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@124 f_203@@149))
)) (forall ((o2_55@@125 T@Ref) (f_203@@150 T@Field_55585_55586) ) (!  (=> (select (|PolymorphicMapType_56061_26136_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@125 f_203@@150) (= (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@72) o2_55@@125 f_203@@150) (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@125 f_203@@150)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@125 f_203@@150))
))) (forall ((o2_55@@126 T@Ref) (f_203@@151 T@Field_55572_53) ) (!  (=> (select (|PolymorphicMapType_56061_26134_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@126 f_203@@151) (= (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@72) o2_55@@126 f_203@@151) (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@126 f_203@@151)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@126 f_203@@151))
))) (forall ((o2_55@@127 T@Ref) (f_203@@152 T@Field_26136_26206) ) (!  (=> (select (|PolymorphicMapType_56061_26134_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@127 f_203@@152) (= (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@72) o2_55@@127 f_203@@152) (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@127 f_203@@152)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@127 f_203@@152))
))) (forall ((o2_55@@128 T@Ref) (f_203@@153 T@Field_26136_59013) ) (!  (=> (select (|PolymorphicMapType_56061_26134_233471#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@128 f_203@@153) (= (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@72) o2_55@@128 f_203@@153) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@128 f_203@@153)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@128 f_203@@153))
))) (forall ((o2_55@@129 T@Ref) (f_203@@154 T@Field_26140_1186) ) (!  (=> (select (|PolymorphicMapType_56061_58995_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@129 f_203@@154) (= (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@72) o2_55@@129 f_203@@154) (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@129 f_203@@154)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@129 f_203@@154))
))) (forall ((o2_55@@130 T@Ref) (f_203@@155 T@Field_26140_26137) ) (!  (=> (select (|PolymorphicMapType_56061_58995_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@130 f_203@@155) (= (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@72) o2_55@@130 f_203@@155) (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@130 f_203@@155)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@130 f_203@@155))
))) (forall ((o2_55@@131 T@Ref) (f_203@@156 T@Field_26140_53) ) (!  (=> (select (|PolymorphicMapType_56061_58995_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@131 f_203@@156) (= (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@72) o2_55@@131 f_203@@156) (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@131 f_203@@156)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@131 f_203@@156))
))) (forall ((o2_55@@132 T@Ref) (f_203@@157 T@Field_58995_58996) ) (!  (=> (select (|PolymorphicMapType_56061_58995_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@132 f_203@@157) (= (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@72) o2_55@@132 f_203@@157) (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@132 f_203@@157)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@132 f_203@@157))
))) (forall ((o2_55@@133 T@Ref) (f_203@@158 T@Field_59008_59013) ) (!  (=> (select (|PolymorphicMapType_56061_58995_234519#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@133 f_203@@158) (= (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@72) o2_55@@133 f_203@@158) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@133 f_203@@158)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@133 f_203@@158))
))) (forall ((o2_55@@134 T@Ref) (f_203@@159 T@Field_60499_1186) ) (!  (=> (select (|PolymorphicMapType_56061_60499_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@134 f_203@@159) (= (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@72) o2_55@@134 f_203@@159) (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@134 f_203@@159)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@134 f_203@@159))
))) (forall ((o2_55@@135 T@Ref) (f_203@@160 T@Field_60499_26137) ) (!  (=> (select (|PolymorphicMapType_56061_60499_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@135 f_203@@160) (= (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@72) o2_55@@135 f_203@@160) (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@135 f_203@@160)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@135 f_203@@160))
))) (forall ((o2_55@@136 T@Ref) (f_203@@161 T@Field_60499_53) ) (!  (=> (select (|PolymorphicMapType_56061_60499_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@136 f_203@@161) (= (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@72) o2_55@@136 f_203@@161) (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@136 f_203@@161)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@136 f_203@@161))
))) (forall ((o2_55@@137 T@Ref) (f_203@@162 T@Field_60499_60500) ) (!  (=> (select (|PolymorphicMapType_56061_60499_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@137 f_203@@162) (= (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@72) o2_55@@137 f_203@@162) (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@137 f_203@@162)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@137 f_203@@162))
))) (forall ((o2_55@@138 T@Ref) (f_203@@163 T@Field_60512_60517) ) (!  (=> (select (|PolymorphicMapType_56061_60499_235567#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@138 f_203@@163) (= (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@72) o2_55@@138 f_203@@163) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@138 f_203@@163)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@138 f_203@@163))
))) (forall ((o2_55@@139 T@Ref) (f_203@@164 T@Field_26205_1186) ) (!  (=> (select (|PolymorphicMapType_56061_75522_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@139 f_203@@164) (= (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@72) o2_55@@139 f_203@@164) (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@139 f_203@@164)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@139 f_203@@164))
))) (forall ((o2_55@@140 T@Ref) (f_203@@165 T@Field_26205_26137) ) (!  (=> (select (|PolymorphicMapType_56061_75522_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@140 f_203@@165) (= (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@72) o2_55@@140 f_203@@165) (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@140 f_203@@165)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@140 f_203@@165))
))) (forall ((o2_55@@141 T@Ref) (f_203@@166 T@Field_26205_53) ) (!  (=> (select (|PolymorphicMapType_56061_75522_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@141 f_203@@166) (= (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@72) o2_55@@141 f_203@@166) (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@141 f_203@@166)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@141 f_203@@166))
))) (forall ((o2_55@@142 T@Ref) (f_203@@167 T@Field_75522_75523) ) (!  (=> (select (|PolymorphicMapType_56061_75522_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@142 f_203@@167) (= (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@72) o2_55@@142 f_203@@167) (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@142 f_203@@167)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@142 f_203@@167))
))) (forall ((o2_55@@143 T@Ref) (f_203@@168 T@Field_75535_75540) ) (!  (=> (select (|PolymorphicMapType_56061_75522_236615#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@143 f_203@@168) (= (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@72) o2_55@@143 f_203@@168) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@143 f_203@@168)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@143 f_203@@168))
))) (forall ((o2_55@@144 T@Ref) (f_203@@169 T@Field_88384_1186) ) (!  (=> (select (|PolymorphicMapType_56061_88384_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@144 f_203@@169) (= (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@72) o2_55@@144 f_203@@169) (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@144 f_203@@169)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@144 f_203@@169))
))) (forall ((o2_55@@145 T@Ref) (f_203@@170 T@Field_88384_26137) ) (!  (=> (select (|PolymorphicMapType_56061_88384_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@145 f_203@@170) (= (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@72) o2_55@@145 f_203@@170) (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@145 f_203@@170)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@145 f_203@@170))
))) (forall ((o2_55@@146 T@Ref) (f_203@@171 T@Field_88384_53) ) (!  (=> (select (|PolymorphicMapType_56061_88384_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@146 f_203@@171) (= (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@72) o2_55@@146 f_203@@171) (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@146 f_203@@171)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@146 f_203@@171))
))) (forall ((o2_55@@147 T@Ref) (f_203@@172 T@Field_88384_88385) ) (!  (=> (select (|PolymorphicMapType_56061_88384_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@147 f_203@@172) (= (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@72) o2_55@@147 f_203@@172) (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@147 f_203@@172)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@147 f_203@@172))
))) (forall ((o2_55@@148 T@Ref) (f_203@@173 T@Field_88397_88402) ) (!  (=> (select (|PolymorphicMapType_56061_88384_237663#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) null (WandMaskField_88384 pm_f_55@@14))) o2_55@@148 f_203@@173) (= (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@72) o2_55@@148 f_203@@173) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@148 f_203@@173)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@41) o2_55@@148 f_203@@173))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@72 ExhaleHeap@@41 Mask@@92) (IsWandField_88384_240742 pm_f_55@@14))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_55512) (ExhaleHeap@@42 T@PolymorphicMapType_55512) (Mask@@93 T@PolymorphicMapType_55533) (pm_f_55@@15 T@Field_60499_60500) ) (!  (=> (IdenticalOnKnownLocations Heap@@73 ExhaleHeap@@42 Mask@@93) (=> (and (HasDirectPerm_60499_26206 Mask@@93 null pm_f_55@@15) (IsWandField_60499_240385 pm_f_55@@15)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_55@@149 T@Ref) (f_203@@174 T@Field_58898_1186) ) (!  (=> (select (|PolymorphicMapType_56061_26134_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@149 f_203@@174) (= (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@73) o2_55@@149 f_203@@174) (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@149 f_203@@174)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@149 f_203@@174))
)) (forall ((o2_55@@150 T@Ref) (f_203@@175 T@Field_55585_55586) ) (!  (=> (select (|PolymorphicMapType_56061_26136_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@150 f_203@@175) (= (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@73) o2_55@@150 f_203@@175) (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@150 f_203@@175)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@150 f_203@@175))
))) (forall ((o2_55@@151 T@Ref) (f_203@@176 T@Field_55572_53) ) (!  (=> (select (|PolymorphicMapType_56061_26134_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@151 f_203@@176) (= (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@73) o2_55@@151 f_203@@176) (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@151 f_203@@176)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@151 f_203@@176))
))) (forall ((o2_55@@152 T@Ref) (f_203@@177 T@Field_26136_26206) ) (!  (=> (select (|PolymorphicMapType_56061_26134_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@152 f_203@@177) (= (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@73) o2_55@@152 f_203@@177) (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@152 f_203@@177)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@152 f_203@@177))
))) (forall ((o2_55@@153 T@Ref) (f_203@@178 T@Field_26136_59013) ) (!  (=> (select (|PolymorphicMapType_56061_26134_233471#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@153 f_203@@178) (= (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@73) o2_55@@153 f_203@@178) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@153 f_203@@178)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@153 f_203@@178))
))) (forall ((o2_55@@154 T@Ref) (f_203@@179 T@Field_26140_1186) ) (!  (=> (select (|PolymorphicMapType_56061_58995_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@154 f_203@@179) (= (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@73) o2_55@@154 f_203@@179) (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@154 f_203@@179)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@154 f_203@@179))
))) (forall ((o2_55@@155 T@Ref) (f_203@@180 T@Field_26140_26137) ) (!  (=> (select (|PolymorphicMapType_56061_58995_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@155 f_203@@180) (= (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@73) o2_55@@155 f_203@@180) (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@155 f_203@@180)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@155 f_203@@180))
))) (forall ((o2_55@@156 T@Ref) (f_203@@181 T@Field_26140_53) ) (!  (=> (select (|PolymorphicMapType_56061_58995_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@156 f_203@@181) (= (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@73) o2_55@@156 f_203@@181) (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@156 f_203@@181)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@156 f_203@@181))
))) (forall ((o2_55@@157 T@Ref) (f_203@@182 T@Field_58995_58996) ) (!  (=> (select (|PolymorphicMapType_56061_58995_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@157 f_203@@182) (= (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@73) o2_55@@157 f_203@@182) (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@157 f_203@@182)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@157 f_203@@182))
))) (forall ((o2_55@@158 T@Ref) (f_203@@183 T@Field_59008_59013) ) (!  (=> (select (|PolymorphicMapType_56061_58995_234519#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@158 f_203@@183) (= (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@73) o2_55@@158 f_203@@183) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@158 f_203@@183)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@158 f_203@@183))
))) (forall ((o2_55@@159 T@Ref) (f_203@@184 T@Field_60499_1186) ) (!  (=> (select (|PolymorphicMapType_56061_60499_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@159 f_203@@184) (= (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@73) o2_55@@159 f_203@@184) (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@159 f_203@@184)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@159 f_203@@184))
))) (forall ((o2_55@@160 T@Ref) (f_203@@185 T@Field_60499_26137) ) (!  (=> (select (|PolymorphicMapType_56061_60499_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@160 f_203@@185) (= (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@73) o2_55@@160 f_203@@185) (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@160 f_203@@185)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@160 f_203@@185))
))) (forall ((o2_55@@161 T@Ref) (f_203@@186 T@Field_60499_53) ) (!  (=> (select (|PolymorphicMapType_56061_60499_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@161 f_203@@186) (= (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@73) o2_55@@161 f_203@@186) (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@161 f_203@@186)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@161 f_203@@186))
))) (forall ((o2_55@@162 T@Ref) (f_203@@187 T@Field_60499_60500) ) (!  (=> (select (|PolymorphicMapType_56061_60499_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@162 f_203@@187) (= (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@73) o2_55@@162 f_203@@187) (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@162 f_203@@187)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@162 f_203@@187))
))) (forall ((o2_55@@163 T@Ref) (f_203@@188 T@Field_60512_60517) ) (!  (=> (select (|PolymorphicMapType_56061_60499_235567#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@163 f_203@@188) (= (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) o2_55@@163 f_203@@188) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@163 f_203@@188)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@163 f_203@@188))
))) (forall ((o2_55@@164 T@Ref) (f_203@@189 T@Field_26205_1186) ) (!  (=> (select (|PolymorphicMapType_56061_75522_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@164 f_203@@189) (= (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@73) o2_55@@164 f_203@@189) (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@164 f_203@@189)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@164 f_203@@189))
))) (forall ((o2_55@@165 T@Ref) (f_203@@190 T@Field_26205_26137) ) (!  (=> (select (|PolymorphicMapType_56061_75522_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@165 f_203@@190) (= (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@73) o2_55@@165 f_203@@190) (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@165 f_203@@190)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@165 f_203@@190))
))) (forall ((o2_55@@166 T@Ref) (f_203@@191 T@Field_26205_53) ) (!  (=> (select (|PolymorphicMapType_56061_75522_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@166 f_203@@191) (= (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@73) o2_55@@166 f_203@@191) (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@166 f_203@@191)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@166 f_203@@191))
))) (forall ((o2_55@@167 T@Ref) (f_203@@192 T@Field_75522_75523) ) (!  (=> (select (|PolymorphicMapType_56061_75522_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@167 f_203@@192) (= (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@73) o2_55@@167 f_203@@192) (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@167 f_203@@192)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@167 f_203@@192))
))) (forall ((o2_55@@168 T@Ref) (f_203@@193 T@Field_75535_75540) ) (!  (=> (select (|PolymorphicMapType_56061_75522_236615#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@168 f_203@@193) (= (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@73) o2_55@@168 f_203@@193) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@168 f_203@@193)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@168 f_203@@193))
))) (forall ((o2_55@@169 T@Ref) (f_203@@194 T@Field_88384_1186) ) (!  (=> (select (|PolymorphicMapType_56061_88384_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@169 f_203@@194) (= (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@73) o2_55@@169 f_203@@194) (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@169 f_203@@194)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@169 f_203@@194))
))) (forall ((o2_55@@170 T@Ref) (f_203@@195 T@Field_88384_26137) ) (!  (=> (select (|PolymorphicMapType_56061_88384_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@170 f_203@@195) (= (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@73) o2_55@@170 f_203@@195) (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@170 f_203@@195)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@170 f_203@@195))
))) (forall ((o2_55@@171 T@Ref) (f_203@@196 T@Field_88384_53) ) (!  (=> (select (|PolymorphicMapType_56061_88384_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@171 f_203@@196) (= (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@73) o2_55@@171 f_203@@196) (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@171 f_203@@196)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@171 f_203@@196))
))) (forall ((o2_55@@172 T@Ref) (f_203@@197 T@Field_88384_88385) ) (!  (=> (select (|PolymorphicMapType_56061_88384_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@172 f_203@@197) (= (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@73) o2_55@@172 f_203@@197) (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@172 f_203@@197)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@172 f_203@@197))
))) (forall ((o2_55@@173 T@Ref) (f_203@@198 T@Field_88397_88402) ) (!  (=> (select (|PolymorphicMapType_56061_88384_237663#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@73) null (WandMaskField_60499 pm_f_55@@15))) o2_55@@173 f_203@@198) (= (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@73) o2_55@@173 f_203@@198) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@173 f_203@@198)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@42) o2_55@@173 f_203@@198))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@73 ExhaleHeap@@42 Mask@@93) (IsWandField_60499_240385 pm_f_55@@15))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_55512) (ExhaleHeap@@43 T@PolymorphicMapType_55512) (Mask@@94 T@PolymorphicMapType_55533) (pm_f_55@@16 T@Field_58995_58996) ) (!  (=> (IdenticalOnKnownLocations Heap@@74 ExhaleHeap@@43 Mask@@94) (=> (and (HasDirectPerm_26140_26141 Mask@@94 null pm_f_55@@16) (IsWandField_26140_240028 pm_f_55@@16)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_55@@174 T@Ref) (f_203@@199 T@Field_58898_1186) ) (!  (=> (select (|PolymorphicMapType_56061_26134_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@174 f_203@@199) (= (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@74) o2_55@@174 f_203@@199) (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@174 f_203@@199)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@174 f_203@@199))
)) (forall ((o2_55@@175 T@Ref) (f_203@@200 T@Field_55585_55586) ) (!  (=> (select (|PolymorphicMapType_56061_26136_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@175 f_203@@200) (= (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@74) o2_55@@175 f_203@@200) (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@175 f_203@@200)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@175 f_203@@200))
))) (forall ((o2_55@@176 T@Ref) (f_203@@201 T@Field_55572_53) ) (!  (=> (select (|PolymorphicMapType_56061_26134_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@176 f_203@@201) (= (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@74) o2_55@@176 f_203@@201) (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@176 f_203@@201)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@176 f_203@@201))
))) (forall ((o2_55@@177 T@Ref) (f_203@@202 T@Field_26136_26206) ) (!  (=> (select (|PolymorphicMapType_56061_26134_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@177 f_203@@202) (= (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@74) o2_55@@177 f_203@@202) (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@177 f_203@@202)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@177 f_203@@202))
))) (forall ((o2_55@@178 T@Ref) (f_203@@203 T@Field_26136_59013) ) (!  (=> (select (|PolymorphicMapType_56061_26134_233471#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@178 f_203@@203) (= (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@74) o2_55@@178 f_203@@203) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@178 f_203@@203)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@178 f_203@@203))
))) (forall ((o2_55@@179 T@Ref) (f_203@@204 T@Field_26140_1186) ) (!  (=> (select (|PolymorphicMapType_56061_58995_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@179 f_203@@204) (= (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@74) o2_55@@179 f_203@@204) (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@179 f_203@@204)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@179 f_203@@204))
))) (forall ((o2_55@@180 T@Ref) (f_203@@205 T@Field_26140_26137) ) (!  (=> (select (|PolymorphicMapType_56061_58995_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@180 f_203@@205) (= (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@74) o2_55@@180 f_203@@205) (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@180 f_203@@205)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@180 f_203@@205))
))) (forall ((o2_55@@181 T@Ref) (f_203@@206 T@Field_26140_53) ) (!  (=> (select (|PolymorphicMapType_56061_58995_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@181 f_203@@206) (= (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@74) o2_55@@181 f_203@@206) (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@181 f_203@@206)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@181 f_203@@206))
))) (forall ((o2_55@@182 T@Ref) (f_203@@207 T@Field_58995_58996) ) (!  (=> (select (|PolymorphicMapType_56061_58995_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@182 f_203@@207) (= (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@74) o2_55@@182 f_203@@207) (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@182 f_203@@207)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@182 f_203@@207))
))) (forall ((o2_55@@183 T@Ref) (f_203@@208 T@Field_59008_59013) ) (!  (=> (select (|PolymorphicMapType_56061_58995_234519#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@183 f_203@@208) (= (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) o2_55@@183 f_203@@208) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@183 f_203@@208)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@183 f_203@@208))
))) (forall ((o2_55@@184 T@Ref) (f_203@@209 T@Field_60499_1186) ) (!  (=> (select (|PolymorphicMapType_56061_60499_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@184 f_203@@209) (= (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@74) o2_55@@184 f_203@@209) (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@184 f_203@@209)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@184 f_203@@209))
))) (forall ((o2_55@@185 T@Ref) (f_203@@210 T@Field_60499_26137) ) (!  (=> (select (|PolymorphicMapType_56061_60499_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@185 f_203@@210) (= (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@74) o2_55@@185 f_203@@210) (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@185 f_203@@210)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@185 f_203@@210))
))) (forall ((o2_55@@186 T@Ref) (f_203@@211 T@Field_60499_53) ) (!  (=> (select (|PolymorphicMapType_56061_60499_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@186 f_203@@211) (= (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@74) o2_55@@186 f_203@@211) (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@186 f_203@@211)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@186 f_203@@211))
))) (forall ((o2_55@@187 T@Ref) (f_203@@212 T@Field_60499_60500) ) (!  (=> (select (|PolymorphicMapType_56061_60499_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@187 f_203@@212) (= (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@74) o2_55@@187 f_203@@212) (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@187 f_203@@212)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@187 f_203@@212))
))) (forall ((o2_55@@188 T@Ref) (f_203@@213 T@Field_60512_60517) ) (!  (=> (select (|PolymorphicMapType_56061_60499_235567#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@188 f_203@@213) (= (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@74) o2_55@@188 f_203@@213) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@188 f_203@@213)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@188 f_203@@213))
))) (forall ((o2_55@@189 T@Ref) (f_203@@214 T@Field_26205_1186) ) (!  (=> (select (|PolymorphicMapType_56061_75522_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@189 f_203@@214) (= (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@74) o2_55@@189 f_203@@214) (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@189 f_203@@214)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@189 f_203@@214))
))) (forall ((o2_55@@190 T@Ref) (f_203@@215 T@Field_26205_26137) ) (!  (=> (select (|PolymorphicMapType_56061_75522_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@190 f_203@@215) (= (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@74) o2_55@@190 f_203@@215) (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@190 f_203@@215)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@190 f_203@@215))
))) (forall ((o2_55@@191 T@Ref) (f_203@@216 T@Field_26205_53) ) (!  (=> (select (|PolymorphicMapType_56061_75522_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@191 f_203@@216) (= (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@74) o2_55@@191 f_203@@216) (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@191 f_203@@216)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@191 f_203@@216))
))) (forall ((o2_55@@192 T@Ref) (f_203@@217 T@Field_75522_75523) ) (!  (=> (select (|PolymorphicMapType_56061_75522_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@192 f_203@@217) (= (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@74) o2_55@@192 f_203@@217) (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@192 f_203@@217)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@192 f_203@@217))
))) (forall ((o2_55@@193 T@Ref) (f_203@@218 T@Field_75535_75540) ) (!  (=> (select (|PolymorphicMapType_56061_75522_236615#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@193 f_203@@218) (= (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@74) o2_55@@193 f_203@@218) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@193 f_203@@218)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@193 f_203@@218))
))) (forall ((o2_55@@194 T@Ref) (f_203@@219 T@Field_88384_1186) ) (!  (=> (select (|PolymorphicMapType_56061_88384_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@194 f_203@@219) (= (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@74) o2_55@@194 f_203@@219) (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@194 f_203@@219)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@194 f_203@@219))
))) (forall ((o2_55@@195 T@Ref) (f_203@@220 T@Field_88384_26137) ) (!  (=> (select (|PolymorphicMapType_56061_88384_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@195 f_203@@220) (= (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@74) o2_55@@195 f_203@@220) (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@195 f_203@@220)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@195 f_203@@220))
))) (forall ((o2_55@@196 T@Ref) (f_203@@221 T@Field_88384_53) ) (!  (=> (select (|PolymorphicMapType_56061_88384_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@196 f_203@@221) (= (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@74) o2_55@@196 f_203@@221) (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@196 f_203@@221)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@196 f_203@@221))
))) (forall ((o2_55@@197 T@Ref) (f_203@@222 T@Field_88384_88385) ) (!  (=> (select (|PolymorphicMapType_56061_88384_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@197 f_203@@222) (= (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@74) o2_55@@197 f_203@@222) (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@197 f_203@@222)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@197 f_203@@222))
))) (forall ((o2_55@@198 T@Ref) (f_203@@223 T@Field_88397_88402) ) (!  (=> (select (|PolymorphicMapType_56061_88384_237663#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@74) null (WandMaskField_26140 pm_f_55@@16))) o2_55@@198 f_203@@223) (= (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@74) o2_55@@198 f_203@@223) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@198 f_203@@223)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@43) o2_55@@198 f_203@@223))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@74 ExhaleHeap@@43 Mask@@94) (IsWandField_26140_240028 pm_f_55@@16))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_55512) (ExhaleHeap@@44 T@PolymorphicMapType_55512) (Mask@@95 T@PolymorphicMapType_55533) (pm_f_55@@17 T@Field_75522_75523) ) (!  (=> (IdenticalOnKnownLocations Heap@@75 ExhaleHeap@@44 Mask@@95) (=> (and (HasDirectPerm_26205_26206 Mask@@95 null pm_f_55@@17) (IsWandField_26205_239671 pm_f_55@@17)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_55@@199 T@Ref) (f_203@@224 T@Field_58898_1186) ) (!  (=> (select (|PolymorphicMapType_56061_26134_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@199 f_203@@224) (= (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@75) o2_55@@199 f_203@@224) (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@199 f_203@@224)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@199 f_203@@224))
)) (forall ((o2_55@@200 T@Ref) (f_203@@225 T@Field_55585_55586) ) (!  (=> (select (|PolymorphicMapType_56061_26136_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@200 f_203@@225) (= (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@75) o2_55@@200 f_203@@225) (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@200 f_203@@225)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@200 f_203@@225))
))) (forall ((o2_55@@201 T@Ref) (f_203@@226 T@Field_55572_53) ) (!  (=> (select (|PolymorphicMapType_56061_26134_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@201 f_203@@226) (= (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@75) o2_55@@201 f_203@@226) (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@201 f_203@@226)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@201 f_203@@226))
))) (forall ((o2_55@@202 T@Ref) (f_203@@227 T@Field_26136_26206) ) (!  (=> (select (|PolymorphicMapType_56061_26134_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@202 f_203@@227) (= (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@75) o2_55@@202 f_203@@227) (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@202 f_203@@227)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@202 f_203@@227))
))) (forall ((o2_55@@203 T@Ref) (f_203@@228 T@Field_26136_59013) ) (!  (=> (select (|PolymorphicMapType_56061_26134_233471#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@203 f_203@@228) (= (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@75) o2_55@@203 f_203@@228) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@203 f_203@@228)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@203 f_203@@228))
))) (forall ((o2_55@@204 T@Ref) (f_203@@229 T@Field_26140_1186) ) (!  (=> (select (|PolymorphicMapType_56061_58995_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@204 f_203@@229) (= (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@75) o2_55@@204 f_203@@229) (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@204 f_203@@229)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@204 f_203@@229))
))) (forall ((o2_55@@205 T@Ref) (f_203@@230 T@Field_26140_26137) ) (!  (=> (select (|PolymorphicMapType_56061_58995_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@205 f_203@@230) (= (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@75) o2_55@@205 f_203@@230) (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@205 f_203@@230)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@205 f_203@@230))
))) (forall ((o2_55@@206 T@Ref) (f_203@@231 T@Field_26140_53) ) (!  (=> (select (|PolymorphicMapType_56061_58995_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@206 f_203@@231) (= (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@75) o2_55@@206 f_203@@231) (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@206 f_203@@231)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@206 f_203@@231))
))) (forall ((o2_55@@207 T@Ref) (f_203@@232 T@Field_58995_58996) ) (!  (=> (select (|PolymorphicMapType_56061_58995_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@207 f_203@@232) (= (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@75) o2_55@@207 f_203@@232) (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@207 f_203@@232)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@207 f_203@@232))
))) (forall ((o2_55@@208 T@Ref) (f_203@@233 T@Field_59008_59013) ) (!  (=> (select (|PolymorphicMapType_56061_58995_234519#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@208 f_203@@233) (= (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@75) o2_55@@208 f_203@@233) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@208 f_203@@233)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@208 f_203@@233))
))) (forall ((o2_55@@209 T@Ref) (f_203@@234 T@Field_60499_1186) ) (!  (=> (select (|PolymorphicMapType_56061_60499_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@209 f_203@@234) (= (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@75) o2_55@@209 f_203@@234) (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@209 f_203@@234)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@209 f_203@@234))
))) (forall ((o2_55@@210 T@Ref) (f_203@@235 T@Field_60499_26137) ) (!  (=> (select (|PolymorphicMapType_56061_60499_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@210 f_203@@235) (= (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@75) o2_55@@210 f_203@@235) (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@210 f_203@@235)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@210 f_203@@235))
))) (forall ((o2_55@@211 T@Ref) (f_203@@236 T@Field_60499_53) ) (!  (=> (select (|PolymorphicMapType_56061_60499_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@211 f_203@@236) (= (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@75) o2_55@@211 f_203@@236) (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@211 f_203@@236)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@211 f_203@@236))
))) (forall ((o2_55@@212 T@Ref) (f_203@@237 T@Field_60499_60500) ) (!  (=> (select (|PolymorphicMapType_56061_60499_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@212 f_203@@237) (= (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@75) o2_55@@212 f_203@@237) (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@212 f_203@@237)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@212 f_203@@237))
))) (forall ((o2_55@@213 T@Ref) (f_203@@238 T@Field_60512_60517) ) (!  (=> (select (|PolymorphicMapType_56061_60499_235567#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@213 f_203@@238) (= (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@75) o2_55@@213 f_203@@238) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@213 f_203@@238)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@213 f_203@@238))
))) (forall ((o2_55@@214 T@Ref) (f_203@@239 T@Field_26205_1186) ) (!  (=> (select (|PolymorphicMapType_56061_75522_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@214 f_203@@239) (= (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@75) o2_55@@214 f_203@@239) (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@214 f_203@@239)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@214 f_203@@239))
))) (forall ((o2_55@@215 T@Ref) (f_203@@240 T@Field_26205_26137) ) (!  (=> (select (|PolymorphicMapType_56061_75522_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@215 f_203@@240) (= (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@75) o2_55@@215 f_203@@240) (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@215 f_203@@240)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@215 f_203@@240))
))) (forall ((o2_55@@216 T@Ref) (f_203@@241 T@Field_26205_53) ) (!  (=> (select (|PolymorphicMapType_56061_75522_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@216 f_203@@241) (= (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@75) o2_55@@216 f_203@@241) (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@216 f_203@@241)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@216 f_203@@241))
))) (forall ((o2_55@@217 T@Ref) (f_203@@242 T@Field_75522_75523) ) (!  (=> (select (|PolymorphicMapType_56061_75522_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@217 f_203@@242) (= (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@75) o2_55@@217 f_203@@242) (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@217 f_203@@242)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@217 f_203@@242))
))) (forall ((o2_55@@218 T@Ref) (f_203@@243 T@Field_75535_75540) ) (!  (=> (select (|PolymorphicMapType_56061_75522_236615#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@218 f_203@@243) (= (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) o2_55@@218 f_203@@243) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@218 f_203@@243)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@218 f_203@@243))
))) (forall ((o2_55@@219 T@Ref) (f_203@@244 T@Field_88384_1186) ) (!  (=> (select (|PolymorphicMapType_56061_88384_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@219 f_203@@244) (= (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@75) o2_55@@219 f_203@@244) (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@219 f_203@@244)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@219 f_203@@244))
))) (forall ((o2_55@@220 T@Ref) (f_203@@245 T@Field_88384_26137) ) (!  (=> (select (|PolymorphicMapType_56061_88384_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@220 f_203@@245) (= (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@75) o2_55@@220 f_203@@245) (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@220 f_203@@245)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@220 f_203@@245))
))) (forall ((o2_55@@221 T@Ref) (f_203@@246 T@Field_88384_53) ) (!  (=> (select (|PolymorphicMapType_56061_88384_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@221 f_203@@246) (= (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@75) o2_55@@221 f_203@@246) (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@221 f_203@@246)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@221 f_203@@246))
))) (forall ((o2_55@@222 T@Ref) (f_203@@247 T@Field_88384_88385) ) (!  (=> (select (|PolymorphicMapType_56061_88384_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@222 f_203@@247) (= (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@75) o2_55@@222 f_203@@247) (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@222 f_203@@247)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@222 f_203@@247))
))) (forall ((o2_55@@223 T@Ref) (f_203@@248 T@Field_88397_88402) ) (!  (=> (select (|PolymorphicMapType_56061_88384_237663#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@75) null (WandMaskField_26205 pm_f_55@@17))) o2_55@@223 f_203@@248) (= (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@75) o2_55@@223 f_203@@248) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@223 f_203@@248)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@44) o2_55@@223 f_203@@248))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@75 ExhaleHeap@@44 Mask@@95) (IsWandField_26205_239671 pm_f_55@@17))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_55512) (ExhaleHeap@@45 T@PolymorphicMapType_55512) (Mask@@96 T@PolymorphicMapType_55533) (pm_f_55@@18 T@Field_26136_26206) ) (!  (=> (IdenticalOnKnownLocations Heap@@76 ExhaleHeap@@45 Mask@@96) (=> (and (HasDirectPerm_26136_26206 Mask@@96 null pm_f_55@@18) (IsWandField_26136_239314 pm_f_55@@18)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_55@@224 T@Ref) (f_203@@249 T@Field_58898_1186) ) (!  (=> (select (|PolymorphicMapType_56061_26134_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@224 f_203@@249) (= (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| Heap@@76) o2_55@@224 f_203@@249) (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@224 f_203@@249)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26134_1186#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@224 f_203@@249))
)) (forall ((o2_55@@225 T@Ref) (f_203@@250 T@Field_55585_55586) ) (!  (=> (select (|PolymorphicMapType_56061_26136_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@225 f_203@@250) (= (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| Heap@@76) o2_55@@225 f_203@@250) (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@225 f_203@@250)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26009_26010#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@225 f_203@@250))
))) (forall ((o2_55@@226 T@Ref) (f_203@@251 T@Field_55572_53) ) (!  (=> (select (|PolymorphicMapType_56061_26134_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@226 f_203@@251) (= (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| Heap@@76) o2_55@@226 f_203@@251) (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@226 f_203@@251)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26006_53#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@226 f_203@@251))
))) (forall ((o2_55@@227 T@Ref) (f_203@@252 T@Field_26136_26206) ) (!  (=> (select (|PolymorphicMapType_56061_26134_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@227 f_203@@252) (= (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| Heap@@76) o2_55@@227 f_203@@252) (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@227 f_203@@252)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26136_26206#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@227 f_203@@252))
))) (forall ((o2_55@@228 T@Ref) (f_203@@253 T@Field_26136_59013) ) (!  (=> (select (|PolymorphicMapType_56061_26134_233471#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@228 f_203@@253) (= (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) o2_55@@228 f_203@@253) (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@228 f_203@@253)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@228 f_203@@253))
))) (forall ((o2_55@@229 T@Ref) (f_203@@254 T@Field_26140_1186) ) (!  (=> (select (|PolymorphicMapType_56061_58995_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@229 f_203@@254) (= (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| Heap@@76) o2_55@@229 f_203@@254) (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@229 f_203@@254)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_1186#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@229 f_203@@254))
))) (forall ((o2_55@@230 T@Ref) (f_203@@255 T@Field_26140_26137) ) (!  (=> (select (|PolymorphicMapType_56061_58995_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@230 f_203@@255) (= (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| Heap@@76) o2_55@@230 f_203@@255) (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@230 f_203@@255)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26137#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@230 f_203@@255))
))) (forall ((o2_55@@231 T@Ref) (f_203@@256 T@Field_26140_53) ) (!  (=> (select (|PolymorphicMapType_56061_58995_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@231 f_203@@256) (= (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| Heap@@76) o2_55@@231 f_203@@256) (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@231 f_203@@256)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_53#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@231 f_203@@256))
))) (forall ((o2_55@@232 T@Ref) (f_203@@257 T@Field_58995_58996) ) (!  (=> (select (|PolymorphicMapType_56061_58995_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@232 f_203@@257) (= (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| Heap@@76) o2_55@@232 f_203@@257) (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@232 f_203@@257)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26140_26141#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@232 f_203@@257))
))) (forall ((o2_55@@233 T@Ref) (f_203@@258 T@Field_59008_59013) ) (!  (=> (select (|PolymorphicMapType_56061_58995_234519#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@233 f_203@@258) (= (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| Heap@@76) o2_55@@233 f_203@@258) (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@233 f_203@@258)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26144_92008#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@233 f_203@@258))
))) (forall ((o2_55@@234 T@Ref) (f_203@@259 T@Field_60499_1186) ) (!  (=> (select (|PolymorphicMapType_56061_60499_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@234 f_203@@259) (= (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| Heap@@76) o2_55@@234 f_203@@259) (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@234 f_203@@259)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_60499_1186#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@234 f_203@@259))
))) (forall ((o2_55@@235 T@Ref) (f_203@@260 T@Field_60499_26137) ) (!  (=> (select (|PolymorphicMapType_56061_60499_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@235 f_203@@260) (= (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| Heap@@76) o2_55@@235 f_203@@260) (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@235 f_203@@260)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_60499_26137#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@235 f_203@@260))
))) (forall ((o2_55@@236 T@Ref) (f_203@@261 T@Field_60499_53) ) (!  (=> (select (|PolymorphicMapType_56061_60499_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@236 f_203@@261) (= (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| Heap@@76) o2_55@@236 f_203@@261) (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@236 f_203@@261)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_60499_53#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@236 f_203@@261))
))) (forall ((o2_55@@237 T@Ref) (f_203@@262 T@Field_60499_60500) ) (!  (=> (select (|PolymorphicMapType_56061_60499_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@237 f_203@@262) (= (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| Heap@@76) o2_55@@237 f_203@@262) (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@237 f_203@@262)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26165_26166#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@237 f_203@@262))
))) (forall ((o2_55@@238 T@Ref) (f_203@@263 T@Field_60512_60517) ) (!  (=> (select (|PolymorphicMapType_56061_60499_235567#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@238 f_203@@263) (= (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| Heap@@76) o2_55@@238 f_203@@263) (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@238 f_203@@263)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26169_66966#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@238 f_203@@263))
))) (forall ((o2_55@@239 T@Ref) (f_203@@264 T@Field_26205_1186) ) (!  (=> (select (|PolymorphicMapType_56061_75522_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@239 f_203@@264) (= (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| Heap@@76) o2_55@@239 f_203@@264) (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@239 f_203@@264)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_1186#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@239 f_203@@264))
))) (forall ((o2_55@@240 T@Ref) (f_203@@265 T@Field_26205_26137) ) (!  (=> (select (|PolymorphicMapType_56061_75522_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@240 f_203@@265) (= (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| Heap@@76) o2_55@@240 f_203@@265) (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@240 f_203@@265)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26137#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@240 f_203@@265))
))) (forall ((o2_55@@241 T@Ref) (f_203@@266 T@Field_26205_53) ) (!  (=> (select (|PolymorphicMapType_56061_75522_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@241 f_203@@266) (= (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| Heap@@76) o2_55@@241 f_203@@266) (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@241 f_203@@266)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_53#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@241 f_203@@266))
))) (forall ((o2_55@@242 T@Ref) (f_203@@267 T@Field_75522_75523) ) (!  (=> (select (|PolymorphicMapType_56061_75522_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@242 f_203@@267) (= (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| Heap@@76) o2_55@@242 f_203@@267) (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@242 f_203@@267)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26205_26206#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@242 f_203@@267))
))) (forall ((o2_55@@243 T@Ref) (f_203@@268 T@Field_75535_75540) ) (!  (=> (select (|PolymorphicMapType_56061_75522_236615#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@243 f_203@@268) (= (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| Heap@@76) o2_55@@243 f_203@@268) (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@243 f_203@@268)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26209_81191#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@243 f_203@@268))
))) (forall ((o2_55@@244 T@Ref) (f_203@@269 T@Field_88384_1186) ) (!  (=> (select (|PolymorphicMapType_56061_88384_1186#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@244 f_203@@269) (= (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| Heap@@76) o2_55@@244 f_203@@269) (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@244 f_203@@269)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_88384_1186#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@244 f_203@@269))
))) (forall ((o2_55@@245 T@Ref) (f_203@@270 T@Field_88384_26137) ) (!  (=> (select (|PolymorphicMapType_56061_88384_26137#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@245 f_203@@270) (= (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| Heap@@76) o2_55@@245 f_203@@270) (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@245 f_203@@270)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_88384_26137#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@245 f_203@@270))
))) (forall ((o2_55@@246 T@Ref) (f_203@@271 T@Field_88384_53) ) (!  (=> (select (|PolymorphicMapType_56061_88384_53#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@246 f_203@@271) (= (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| Heap@@76) o2_55@@246 f_203@@271) (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@246 f_203@@271)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_88384_53#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@246 f_203@@271))
))) (forall ((o2_55@@247 T@Ref) (f_203@@272 T@Field_88384_88385) ) (!  (=> (select (|PolymorphicMapType_56061_88384_58996#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@247 f_203@@272) (= (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| Heap@@76) o2_55@@247 f_203@@272) (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@247 f_203@@272)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26245_26246#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@247 f_203@@272))
))) (forall ((o2_55@@248 T@Ref) (f_203@@273 T@Field_88397_88402) ) (!  (=> (select (|PolymorphicMapType_56061_88384_237663#PolymorphicMapType_56061| (select (|PolymorphicMapType_55512_26136_226361#PolymorphicMapType_55512| Heap@@76) null (WandMaskField_26136 pm_f_55@@18))) o2_55@@248 f_203@@273) (= (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| Heap@@76) o2_55@@248 f_203@@273) (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@248 f_203@@273)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_55512_26249_212950#PolymorphicMapType_55512| ExhaleHeap@@45) o2_55@@248 f_203@@273))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@76 ExhaleHeap@@45 Mask@@96) (IsWandField_26136_239314 pm_f_55@@18))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

