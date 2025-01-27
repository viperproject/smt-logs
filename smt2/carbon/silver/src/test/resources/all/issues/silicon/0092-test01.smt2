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
(declare-sort T@Field_30093_53 0)
(declare-sort T@Field_30106_30107 0)
(declare-sort T@Field_34511_34512 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_33419_1186 0)
(declare-sort T@Field_35892_35897 0)
(declare-sort T@Field_38039_38040 0)
(declare-sort T@Field_38052_38057 0)
(declare-sort T@Field_55007_55008 0)
(declare-sort T@Field_53810_53811 0)
(declare-sort T@Field_60385_60390 0)
(declare-sort T@Field_53823_53828 0)
(declare-sort T@Field_33516_33517 0)
(declare-sort T@Field_33529_33534 0)
(declare-sort T@Field_13755_13814 0)
(declare-sort T@Field_13755_33534 0)
(declare-sort T@Field_13813_13756 0)
(declare-sort T@Field_13813_1186 0)
(declare-sort T@Field_13813_53 0)
(declare-sort T@Field_13853_13756 0)
(declare-sort T@Field_13853_1186 0)
(declare-sort T@Field_13853_53 0)
(declare-sort T@Field_13893_13756 0)
(declare-sort T@Field_13893_1186 0)
(declare-sort T@Field_13893_53 0)
(declare-sort T@Field_33516_13756 0)
(declare-sort T@Field_33516_1186 0)
(declare-sort T@Field_33516_53 0)
(declare-sort T@Field_34511_13756 0)
(declare-sort T@Field_34511_1186 0)
(declare-sort T@Field_34511_53 0)
(declare-datatypes ((T@PolymorphicMapType_30054 0)) (((PolymorphicMapType_30054 (|PolymorphicMapType_30054_13755_13756#PolymorphicMapType_30054| (Array T@Ref T@Field_30106_30107 Real)) (|PolymorphicMapType_30054_13788_13789#PolymorphicMapType_30054| (Array T@Ref T@Field_34511_34512 Real)) (|PolymorphicMapType_30054_13753_1186#PolymorphicMapType_30054| (Array T@Ref T@Field_33419_1186 Real)) (|PolymorphicMapType_30054_13813_13814#PolymorphicMapType_30054| (Array T@Ref T@Field_38039_38040 Real)) (|PolymorphicMapType_30054_13893_13894#PolymorphicMapType_30054| (Array T@Ref T@Field_55007_55008 Real)) (|PolymorphicMapType_30054_13853_13854#PolymorphicMapType_30054| (Array T@Ref T@Field_53810_53811 Real)) (|PolymorphicMapType_30054_13759_13760#PolymorphicMapType_30054| (Array T@Ref T@Field_33516_33517 Real)) (|PolymorphicMapType_30054_13755_13789#PolymorphicMapType_30054| (Array T@Ref T@Field_13755_13814 Real)) (|PolymorphicMapType_30054_13755_53#PolymorphicMapType_30054| (Array T@Ref T@Field_30093_53 Real)) (|PolymorphicMapType_30054_13755_155203#PolymorphicMapType_30054| (Array T@Ref T@Field_13755_33534 Real)) (|PolymorphicMapType_30054_13788_13756#PolymorphicMapType_30054| (Array T@Ref T@Field_34511_13756 Real)) (|PolymorphicMapType_30054_13788_1186#PolymorphicMapType_30054| (Array T@Ref T@Field_34511_1186 Real)) (|PolymorphicMapType_30054_13788_53#PolymorphicMapType_30054| (Array T@Ref T@Field_34511_53 Real)) (|PolymorphicMapType_30054_13788_155614#PolymorphicMapType_30054| (Array T@Ref T@Field_35892_35897 Real)) (|PolymorphicMapType_30054_13813_13756#PolymorphicMapType_30054| (Array T@Ref T@Field_13813_13756 Real)) (|PolymorphicMapType_30054_13813_1186#PolymorphicMapType_30054| (Array T@Ref T@Field_13813_1186 Real)) (|PolymorphicMapType_30054_13813_53#PolymorphicMapType_30054| (Array T@Ref T@Field_13813_53 Real)) (|PolymorphicMapType_30054_13813_156025#PolymorphicMapType_30054| (Array T@Ref T@Field_38052_38057 Real)) (|PolymorphicMapType_30054_13893_13756#PolymorphicMapType_30054| (Array T@Ref T@Field_13893_13756 Real)) (|PolymorphicMapType_30054_13893_1186#PolymorphicMapType_30054| (Array T@Ref T@Field_13893_1186 Real)) (|PolymorphicMapType_30054_13893_53#PolymorphicMapType_30054| (Array T@Ref T@Field_13893_53 Real)) (|PolymorphicMapType_30054_13893_156436#PolymorphicMapType_30054| (Array T@Ref T@Field_60385_60390 Real)) (|PolymorphicMapType_30054_13853_13756#PolymorphicMapType_30054| (Array T@Ref T@Field_13853_13756 Real)) (|PolymorphicMapType_30054_13853_1186#PolymorphicMapType_30054| (Array T@Ref T@Field_13853_1186 Real)) (|PolymorphicMapType_30054_13853_53#PolymorphicMapType_30054| (Array T@Ref T@Field_13853_53 Real)) (|PolymorphicMapType_30054_13853_156847#PolymorphicMapType_30054| (Array T@Ref T@Field_53823_53828 Real)) (|PolymorphicMapType_30054_13759_13756#PolymorphicMapType_30054| (Array T@Ref T@Field_33516_13756 Real)) (|PolymorphicMapType_30054_13759_1186#PolymorphicMapType_30054| (Array T@Ref T@Field_33516_1186 Real)) (|PolymorphicMapType_30054_13759_53#PolymorphicMapType_30054| (Array T@Ref T@Field_33516_53 Real)) (|PolymorphicMapType_30054_13759_157258#PolymorphicMapType_30054| (Array T@Ref T@Field_33529_33534 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_30582 0)) (((PolymorphicMapType_30582 (|PolymorphicMapType_30582_13753_1186#PolymorphicMapType_30582| (Array T@Ref T@Field_33419_1186 Bool)) (|PolymorphicMapType_30582_13755_13756#PolymorphicMapType_30582| (Array T@Ref T@Field_30106_30107 Bool)) (|PolymorphicMapType_30582_13753_53#PolymorphicMapType_30582| (Array T@Ref T@Field_30093_53 Bool)) (|PolymorphicMapType_30582_13753_33517#PolymorphicMapType_30582| (Array T@Ref T@Field_13755_13814 Bool)) (|PolymorphicMapType_30582_13753_134784#PolymorphicMapType_30582| (Array T@Ref T@Field_13755_33534 Bool)) (|PolymorphicMapType_30582_33516_1186#PolymorphicMapType_30582| (Array T@Ref T@Field_33516_1186 Bool)) (|PolymorphicMapType_30582_33516_13756#PolymorphicMapType_30582| (Array T@Ref T@Field_33516_13756 Bool)) (|PolymorphicMapType_30582_33516_53#PolymorphicMapType_30582| (Array T@Ref T@Field_33516_53 Bool)) (|PolymorphicMapType_30582_33516_33517#PolymorphicMapType_30582| (Array T@Ref T@Field_33516_33517 Bool)) (|PolymorphicMapType_30582_33516_135832#PolymorphicMapType_30582| (Array T@Ref T@Field_33529_33534 Bool)) (|PolymorphicMapType_30582_34511_1186#PolymorphicMapType_30582| (Array T@Ref T@Field_34511_1186 Bool)) (|PolymorphicMapType_30582_34511_13756#PolymorphicMapType_30582| (Array T@Ref T@Field_34511_13756 Bool)) (|PolymorphicMapType_30582_34511_53#PolymorphicMapType_30582| (Array T@Ref T@Field_34511_53 Bool)) (|PolymorphicMapType_30582_34511_33517#PolymorphicMapType_30582| (Array T@Ref T@Field_34511_34512 Bool)) (|PolymorphicMapType_30582_34511_136880#PolymorphicMapType_30582| (Array T@Ref T@Field_35892_35897 Bool)) (|PolymorphicMapType_30582_38039_1186#PolymorphicMapType_30582| (Array T@Ref T@Field_13813_1186 Bool)) (|PolymorphicMapType_30582_38039_13756#PolymorphicMapType_30582| (Array T@Ref T@Field_13813_13756 Bool)) (|PolymorphicMapType_30582_38039_53#PolymorphicMapType_30582| (Array T@Ref T@Field_13813_53 Bool)) (|PolymorphicMapType_30582_38039_33517#PolymorphicMapType_30582| (Array T@Ref T@Field_38039_38040 Bool)) (|PolymorphicMapType_30582_38039_137928#PolymorphicMapType_30582| (Array T@Ref T@Field_38052_38057 Bool)) (|PolymorphicMapType_30582_53810_1186#PolymorphicMapType_30582| (Array T@Ref T@Field_13853_1186 Bool)) (|PolymorphicMapType_30582_53810_13756#PolymorphicMapType_30582| (Array T@Ref T@Field_13853_13756 Bool)) (|PolymorphicMapType_30582_53810_53#PolymorphicMapType_30582| (Array T@Ref T@Field_13853_53 Bool)) (|PolymorphicMapType_30582_53810_33517#PolymorphicMapType_30582| (Array T@Ref T@Field_53810_53811 Bool)) (|PolymorphicMapType_30582_53810_138976#PolymorphicMapType_30582| (Array T@Ref T@Field_53823_53828 Bool)) (|PolymorphicMapType_30582_55007_1186#PolymorphicMapType_30582| (Array T@Ref T@Field_13893_1186 Bool)) (|PolymorphicMapType_30582_55007_13756#PolymorphicMapType_30582| (Array T@Ref T@Field_13893_13756 Bool)) (|PolymorphicMapType_30582_55007_53#PolymorphicMapType_30582| (Array T@Ref T@Field_13893_53 Bool)) (|PolymorphicMapType_30582_55007_33517#PolymorphicMapType_30582| (Array T@Ref T@Field_55007_55008 Bool)) (|PolymorphicMapType_30582_55007_140024#PolymorphicMapType_30582| (Array T@Ref T@Field_60385_60390 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_30033 0)) (((PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| (Array T@Ref T@Field_30093_53 Bool)) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| (Array T@Ref T@Field_30106_30107 T@Ref)) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| (Array T@Ref T@Field_34511_34512 T@FrameType)) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| (Array T@Ref T@Field_33419_1186 Int)) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| (Array T@Ref T@Field_35892_35897 T@PolymorphicMapType_30582)) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| (Array T@Ref T@Field_38039_38040 T@FrameType)) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| (Array T@Ref T@Field_38052_38057 T@PolymorphicMapType_30582)) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| (Array T@Ref T@Field_55007_55008 T@FrameType)) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| (Array T@Ref T@Field_53810_53811 T@FrameType)) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| (Array T@Ref T@Field_60385_60390 T@PolymorphicMapType_30582)) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| (Array T@Ref T@Field_53823_53828 T@PolymorphicMapType_30582)) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| (Array T@Ref T@Field_33516_33517 T@FrameType)) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| (Array T@Ref T@Field_33529_33534 T@PolymorphicMapType_30582)) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| (Array T@Ref T@Field_13755_13814 T@FrameType)) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| (Array T@Ref T@Field_13755_33534 T@PolymorphicMapType_30582)) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| (Array T@Ref T@Field_13813_13756 T@Ref)) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| (Array T@Ref T@Field_13813_1186 Int)) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| (Array T@Ref T@Field_13813_53 Bool)) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| (Array T@Ref T@Field_13853_13756 T@Ref)) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| (Array T@Ref T@Field_13853_1186 Int)) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| (Array T@Ref T@Field_13853_53 Bool)) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| (Array T@Ref T@Field_13893_13756 T@Ref)) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| (Array T@Ref T@Field_13893_1186 Int)) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| (Array T@Ref T@Field_13893_53 Bool)) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| (Array T@Ref T@Field_33516_13756 T@Ref)) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| (Array T@Ref T@Field_33516_1186 Int)) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| (Array T@Ref T@Field_33516_53 Bool)) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| (Array T@Ref T@Field_34511_13756 T@Ref)) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| (Array T@Ref T@Field_34511_1186 Int)) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| (Array T@Ref T@Field_34511_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_30093_53)
(declare-fun f_7 () T@Field_33419_1186)
(declare-fun g () T@Field_30106_30107)
(declare-fun succHeap (T@PolymorphicMapType_30033 T@PolymorphicMapType_30033) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_30033 T@PolymorphicMapType_30033) Bool)
(declare-fun state (T@PolymorphicMapType_30033 T@PolymorphicMapType_30054) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_30054) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_30582)
(declare-fun P (T@Ref) T@Field_33516_33517)
(declare-fun IsPredicateField_13759_13760 (T@Field_33516_33517) Bool)
(declare-fun Q (T@Ref) T@Field_34511_34512)
(declare-fun IsPredicateField_13788_13789 (T@Field_34511_34512) Bool)
(declare-fun Rec (T@Ref) T@Field_38039_38040)
(declare-fun IsPredicateField_13813_13814 (T@Field_38039_38040) Bool)
(declare-fun MRecA (T@Ref) T@Field_53810_53811)
(declare-fun IsPredicateField_13853_13854 (T@Field_53810_53811) Bool)
(declare-fun MRecB (T@Ref) T@Field_55007_55008)
(declare-fun IsPredicateField_13893_13894 (T@Field_55007_55008) Bool)
(declare-fun |P#trigger_13759| (T@PolymorphicMapType_30033 T@Field_33516_33517) Bool)
(declare-fun |P#everUsed_13759| (T@Field_33516_33517) Bool)
(declare-fun |Q#trigger_13788| (T@PolymorphicMapType_30033 T@Field_34511_34512) Bool)
(declare-fun |Q#everUsed_13788| (T@Field_34511_34512) Bool)
(declare-fun |Rec#trigger_13813| (T@PolymorphicMapType_30033 T@Field_38039_38040) Bool)
(declare-fun |Rec#everUsed_13813| (T@Field_38039_38040) Bool)
(declare-fun |MRecA#trigger_13853| (T@PolymorphicMapType_30033 T@Field_53810_53811) Bool)
(declare-fun |MRecA#everUsed_13853| (T@Field_53810_53811) Bool)
(declare-fun |MRecB#trigger_13893| (T@PolymorphicMapType_30033 T@Field_55007_55008) Bool)
(declare-fun |MRecB#everUsed_13893| (T@Field_55007_55008) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_30033 T@PolymorphicMapType_30033 T@PolymorphicMapType_30054) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_13788 (T@Field_34511_34512) T@Field_35892_35897)
(declare-fun HasDirectPerm_34511_13814 (T@PolymorphicMapType_30054 T@Ref T@Field_34511_34512) Bool)
(declare-fun PredicateMaskField_13759 (T@Field_33516_33517) T@Field_33529_33534)
(declare-fun HasDirectPerm_33516_13814 (T@PolymorphicMapType_30054 T@Ref T@Field_33516_33517) Bool)
(declare-fun PredicateMaskField_13893 (T@Field_55007_55008) T@Field_60385_60390)
(declare-fun HasDirectPerm_13893_13894 (T@PolymorphicMapType_30054 T@Ref T@Field_55007_55008) Bool)
(declare-fun PredicateMaskField_13853 (T@Field_53810_53811) T@Field_53823_53828)
(declare-fun HasDirectPerm_13853_13854 (T@PolymorphicMapType_30054 T@Ref T@Field_53810_53811) Bool)
(declare-fun PredicateMaskField_13813 (T@Field_38039_38040) T@Field_38052_38057)
(declare-fun HasDirectPerm_13813_13814 (T@PolymorphicMapType_30054 T@Ref T@Field_38039_38040) Bool)
(declare-fun IsPredicateField_13755_132027 (T@Field_13755_13814) Bool)
(declare-fun PredicateMaskField_13755 (T@Field_13755_13814) T@Field_13755_33534)
(declare-fun HasDirectPerm_13755_13814 (T@PolymorphicMapType_30054 T@Ref T@Field_13755_13814) Bool)
(declare-fun IsWandField_34511_143741 (T@Field_34511_34512) Bool)
(declare-fun WandMaskField_34511 (T@Field_34511_34512) T@Field_35892_35897)
(declare-fun IsWandField_33516_143384 (T@Field_33516_33517) Bool)
(declare-fun WandMaskField_33516 (T@Field_33516_33517) T@Field_33529_33534)
(declare-fun IsWandField_13893_143027 (T@Field_55007_55008) Bool)
(declare-fun WandMaskField_13893 (T@Field_55007_55008) T@Field_60385_60390)
(declare-fun IsWandField_13853_142670 (T@Field_53810_53811) Bool)
(declare-fun WandMaskField_13853 (T@Field_53810_53811) T@Field_53823_53828)
(declare-fun IsWandField_13813_142313 (T@Field_38039_38040) Bool)
(declare-fun WandMaskField_13813 (T@Field_38039_38040) T@Field_38052_38057)
(declare-fun IsWandField_13755_141956 (T@Field_13755_13814) Bool)
(declare-fun WandMaskField_13755 (T@Field_13755_13814) T@Field_13755_33534)
(declare-fun |P#sm| (T@Ref) T@Field_33529_33534)
(declare-fun |Q#sm| (T@Ref) T@Field_35892_35897)
(declare-fun |Rec#sm| (T@Ref) T@Field_38052_38057)
(declare-fun |MRecA#sm| (T@Ref) T@Field_53823_53828)
(declare-fun |MRecB#sm| (T@Ref) T@Field_60385_60390)
(declare-fun dummyHeap () T@PolymorphicMapType_30033)
(declare-fun ZeroMask () T@PolymorphicMapType_30054)
(declare-fun InsidePredicate_30093_30093 (T@Field_13755_13814 T@FrameType T@Field_13755_13814 T@FrameType) Bool)
(declare-fun InsidePredicate_13788_13788 (T@Field_34511_34512 T@FrameType T@Field_34511_34512 T@FrameType) Bool)
(declare-fun InsidePredicate_13759_33516 (T@Field_33516_33517 T@FrameType T@Field_33516_33517 T@FrameType) Bool)
(declare-fun InsidePredicate_13853_13853 (T@Field_53810_53811 T@FrameType T@Field_53810_53811 T@FrameType) Bool)
(declare-fun InsidePredicate_13893_13893 (T@Field_55007_55008 T@FrameType T@Field_55007_55008 T@FrameType) Bool)
(declare-fun InsidePredicate_13813_13813 (T@Field_38039_38040 T@FrameType T@Field_38039_38040 T@FrameType) Bool)
(declare-fun IsPredicateField_13753_1186 (T@Field_33419_1186) Bool)
(declare-fun IsWandField_13753_1186 (T@Field_33419_1186) Bool)
(declare-fun IsPredicateField_13755_13756 (T@Field_30106_30107) Bool)
(declare-fun IsWandField_13755_13756 (T@Field_30106_30107) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_13759_164188 (T@Field_33529_33534) Bool)
(declare-fun IsWandField_13759_164204 (T@Field_33529_33534) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_13759_53 (T@Field_33516_53) Bool)
(declare-fun IsWandField_13759_53 (T@Field_33516_53) Bool)
(declare-fun IsPredicateField_13759_1186 (T@Field_33516_1186) Bool)
(declare-fun IsWandField_13759_1186 (T@Field_33516_1186) Bool)
(declare-fun IsPredicateField_13759_13756 (T@Field_33516_13756) Bool)
(declare-fun IsWandField_13759_13756 (T@Field_33516_13756) Bool)
(declare-fun IsPredicateField_13853_163357 (T@Field_53823_53828) Bool)
(declare-fun IsWandField_13853_163373 (T@Field_53823_53828) Bool)
(declare-fun IsPredicateField_13853_53 (T@Field_13853_53) Bool)
(declare-fun IsWandField_13853_53 (T@Field_13853_53) Bool)
(declare-fun IsPredicateField_13853_1186 (T@Field_13853_1186) Bool)
(declare-fun IsWandField_13853_1186 (T@Field_13853_1186) Bool)
(declare-fun IsPredicateField_13853_13756 (T@Field_13853_13756) Bool)
(declare-fun IsWandField_13853_13756 (T@Field_13853_13756) Bool)
(declare-fun IsPredicateField_13893_162526 (T@Field_60385_60390) Bool)
(declare-fun IsWandField_13893_162542 (T@Field_60385_60390) Bool)
(declare-fun IsPredicateField_13893_53 (T@Field_13893_53) Bool)
(declare-fun IsWandField_13893_53 (T@Field_13893_53) Bool)
(declare-fun IsPredicateField_13893_1186 (T@Field_13893_1186) Bool)
(declare-fun IsWandField_13893_1186 (T@Field_13893_1186) Bool)
(declare-fun IsPredicateField_13893_13756 (T@Field_13893_13756) Bool)
(declare-fun IsWandField_13893_13756 (T@Field_13893_13756) Bool)
(declare-fun IsPredicateField_13813_161695 (T@Field_38052_38057) Bool)
(declare-fun IsWandField_13813_161711 (T@Field_38052_38057) Bool)
(declare-fun IsPredicateField_13813_53 (T@Field_13813_53) Bool)
(declare-fun IsWandField_13813_53 (T@Field_13813_53) Bool)
(declare-fun IsPredicateField_13813_1186 (T@Field_13813_1186) Bool)
(declare-fun IsWandField_13813_1186 (T@Field_13813_1186) Bool)
(declare-fun IsPredicateField_13813_13756 (T@Field_13813_13756) Bool)
(declare-fun IsWandField_13813_13756 (T@Field_13813_13756) Bool)
(declare-fun IsPredicateField_13788_160864 (T@Field_35892_35897) Bool)
(declare-fun IsWandField_13788_160880 (T@Field_35892_35897) Bool)
(declare-fun IsPredicateField_13788_53 (T@Field_34511_53) Bool)
(declare-fun IsWandField_13788_53 (T@Field_34511_53) Bool)
(declare-fun IsPredicateField_13788_1186 (T@Field_34511_1186) Bool)
(declare-fun IsWandField_13788_1186 (T@Field_34511_1186) Bool)
(declare-fun IsPredicateField_13788_13756 (T@Field_34511_13756) Bool)
(declare-fun IsWandField_13788_13756 (T@Field_34511_13756) Bool)
(declare-fun IsPredicateField_13755_160033 (T@Field_13755_33534) Bool)
(declare-fun IsWandField_13755_160049 (T@Field_13755_33534) Bool)
(declare-fun IsPredicateField_13755_53 (T@Field_30093_53) Bool)
(declare-fun IsWandField_13755_53 (T@Field_30093_53) Bool)
(declare-fun HasDirectPerm_34511_131782 (T@PolymorphicMapType_30054 T@Ref T@Field_35892_35897) Bool)
(declare-fun HasDirectPerm_34511_53 (T@PolymorphicMapType_30054 T@Ref T@Field_34511_53) Bool)
(declare-fun HasDirectPerm_34511_1186 (T@PolymorphicMapType_30054 T@Ref T@Field_34511_1186) Bool)
(declare-fun HasDirectPerm_34511_13756 (T@PolymorphicMapType_30054 T@Ref T@Field_34511_13756) Bool)
(declare-fun HasDirectPerm_33516_130664 (T@PolymorphicMapType_30054 T@Ref T@Field_33529_33534) Bool)
(declare-fun HasDirectPerm_33516_53 (T@PolymorphicMapType_30054 T@Ref T@Field_33516_53) Bool)
(declare-fun HasDirectPerm_33516_1186 (T@PolymorphicMapType_30054 T@Ref T@Field_33516_1186) Bool)
(declare-fun HasDirectPerm_33516_13756 (T@PolymorphicMapType_30054 T@Ref T@Field_33516_13756) Bool)
(declare-fun HasDirectPerm_13893_129546 (T@PolymorphicMapType_30054 T@Ref T@Field_60385_60390) Bool)
(declare-fun HasDirectPerm_13893_53 (T@PolymorphicMapType_30054 T@Ref T@Field_13893_53) Bool)
(declare-fun HasDirectPerm_13893_1186 (T@PolymorphicMapType_30054 T@Ref T@Field_13893_1186) Bool)
(declare-fun HasDirectPerm_13893_13756 (T@PolymorphicMapType_30054 T@Ref T@Field_13893_13756) Bool)
(declare-fun HasDirectPerm_13853_128448 (T@PolymorphicMapType_30054 T@Ref T@Field_53823_53828) Bool)
(declare-fun HasDirectPerm_13853_53 (T@PolymorphicMapType_30054 T@Ref T@Field_13853_53) Bool)
(declare-fun HasDirectPerm_13853_1186 (T@PolymorphicMapType_30054 T@Ref T@Field_13853_1186) Bool)
(declare-fun HasDirectPerm_13853_13756 (T@PolymorphicMapType_30054 T@Ref T@Field_13853_13756) Bool)
(declare-fun HasDirectPerm_13813_127350 (T@PolymorphicMapType_30054 T@Ref T@Field_38052_38057) Bool)
(declare-fun HasDirectPerm_13813_53 (T@PolymorphicMapType_30054 T@Ref T@Field_13813_53) Bool)
(declare-fun HasDirectPerm_13813_1186 (T@PolymorphicMapType_30054 T@Ref T@Field_13813_1186) Bool)
(declare-fun HasDirectPerm_13813_13756 (T@PolymorphicMapType_30054 T@Ref T@Field_13813_13756) Bool)
(declare-fun HasDirectPerm_13755_126209 (T@PolymorphicMapType_30054 T@Ref T@Field_13755_33534) Bool)
(declare-fun HasDirectPerm_13755_53 (T@PolymorphicMapType_30054 T@Ref T@Field_30093_53) Bool)
(declare-fun HasDirectPerm_13753_1186 (T@PolymorphicMapType_30054 T@Ref T@Field_33419_1186) Bool)
(declare-fun HasDirectPerm_13755_13756 (T@PolymorphicMapType_30054 T@Ref T@Field_30106_30107) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_30054 T@PolymorphicMapType_30054 T@PolymorphicMapType_30054) Bool)
(declare-fun getPredWandId_13759_13760 (T@Field_33516_33517) Int)
(declare-fun getPredWandId_13788_13789 (T@Field_34511_34512) Int)
(declare-fun getPredWandId_13813_13814 (T@Field_38039_38040) Int)
(declare-fun getPredWandId_13853_13854 (T@Field_53810_53811) Int)
(declare-fun getPredWandId_13893_13894 (T@Field_55007_55008) Int)
(declare-fun InsidePredicate_13788_30093 (T@Field_34511_34512 T@FrameType T@Field_13755_13814 T@FrameType) Bool)
(declare-fun InsidePredicate_30093_33516 (T@Field_13755_13814 T@FrameType T@Field_33516_33517 T@FrameType) Bool)
(declare-fun InsidePredicate_13788_33516 (T@Field_34511_34512 T@FrameType T@Field_33516_33517 T@FrameType) Bool)
(declare-fun InsidePredicate_30093_13788 (T@Field_13755_13814 T@FrameType T@Field_34511_34512 T@FrameType) Bool)
(declare-fun InsidePredicate_30093_13893 (T@Field_13755_13814 T@FrameType T@Field_55007_55008 T@FrameType) Bool)
(declare-fun InsidePredicate_13788_13893 (T@Field_34511_34512 T@FrameType T@Field_55007_55008 T@FrameType) Bool)
(declare-fun InsidePredicate_30093_13853 (T@Field_13755_13814 T@FrameType T@Field_53810_53811 T@FrameType) Bool)
(declare-fun InsidePredicate_13788_13853 (T@Field_34511_34512 T@FrameType T@Field_53810_53811 T@FrameType) Bool)
(declare-fun InsidePredicate_30093_13813 (T@Field_13755_13814 T@FrameType T@Field_38039_38040 T@FrameType) Bool)
(declare-fun InsidePredicate_13788_13813 (T@Field_34511_34512 T@FrameType T@Field_38039_38040 T@FrameType) Bool)
(declare-fun InsidePredicate_13759_30093 (T@Field_33516_33517 T@FrameType T@Field_13755_13814 T@FrameType) Bool)
(declare-fun InsidePredicate_13759_13788 (T@Field_33516_33517 T@FrameType T@Field_34511_34512 T@FrameType) Bool)
(declare-fun InsidePredicate_13759_13893 (T@Field_33516_33517 T@FrameType T@Field_55007_55008 T@FrameType) Bool)
(declare-fun InsidePredicate_13759_13853 (T@Field_33516_33517 T@FrameType T@Field_53810_53811 T@FrameType) Bool)
(declare-fun InsidePredicate_13759_13813 (T@Field_33516_33517 T@FrameType T@Field_38039_38040 T@FrameType) Bool)
(declare-fun InsidePredicate_13893_33516 (T@Field_55007_55008 T@FrameType T@Field_33516_33517 T@FrameType) Bool)
(declare-fun InsidePredicate_13893_30093 (T@Field_55007_55008 T@FrameType T@Field_13755_13814 T@FrameType) Bool)
(declare-fun InsidePredicate_13893_13788 (T@Field_55007_55008 T@FrameType T@Field_34511_34512 T@FrameType) Bool)
(declare-fun InsidePredicate_13893_13853 (T@Field_55007_55008 T@FrameType T@Field_53810_53811 T@FrameType) Bool)
(declare-fun InsidePredicate_13893_13813 (T@Field_55007_55008 T@FrameType T@Field_38039_38040 T@FrameType) Bool)
(declare-fun InsidePredicate_13853_33516 (T@Field_53810_53811 T@FrameType T@Field_33516_33517 T@FrameType) Bool)
(declare-fun InsidePredicate_13853_30093 (T@Field_53810_53811 T@FrameType T@Field_13755_13814 T@FrameType) Bool)
(declare-fun InsidePredicate_13853_13788 (T@Field_53810_53811 T@FrameType T@Field_34511_34512 T@FrameType) Bool)
(declare-fun InsidePredicate_13853_13893 (T@Field_53810_53811 T@FrameType T@Field_55007_55008 T@FrameType) Bool)
(declare-fun InsidePredicate_13853_13813 (T@Field_53810_53811 T@FrameType T@Field_38039_38040 T@FrameType) Bool)
(declare-fun InsidePredicate_13813_33516 (T@Field_38039_38040 T@FrameType T@Field_33516_33517 T@FrameType) Bool)
(declare-fun InsidePredicate_13813_30093 (T@Field_38039_38040 T@FrameType T@Field_13755_13814 T@FrameType) Bool)
(declare-fun InsidePredicate_13813_13788 (T@Field_38039_38040 T@FrameType T@Field_34511_34512 T@FrameType) Bool)
(declare-fun InsidePredicate_13813_13893 (T@Field_38039_38040 T@FrameType T@Field_55007_55008 T@FrameType) Bool)
(declare-fun InsidePredicate_13813_13853 (T@Field_38039_38040 T@FrameType T@Field_53810_53811 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_30033) (Heap1 T@PolymorphicMapType_30033) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_30033) (Mask T@PolymorphicMapType_30054) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_30033) (Heap1@@0 T@PolymorphicMapType_30033) (Heap2 T@PolymorphicMapType_30033) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_60385_60390) ) (!  (not (select (|PolymorphicMapType_30582_55007_140024#PolymorphicMapType_30582| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30582_55007_140024#PolymorphicMapType_30582| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_55007_55008) ) (!  (not (select (|PolymorphicMapType_30582_55007_33517#PolymorphicMapType_30582| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30582_55007_33517#PolymorphicMapType_30582| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_13893_53) ) (!  (not (select (|PolymorphicMapType_30582_55007_53#PolymorphicMapType_30582| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30582_55007_53#PolymorphicMapType_30582| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_13893_13756) ) (!  (not (select (|PolymorphicMapType_30582_55007_13756#PolymorphicMapType_30582| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30582_55007_13756#PolymorphicMapType_30582| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_13893_1186) ) (!  (not (select (|PolymorphicMapType_30582_55007_1186#PolymorphicMapType_30582| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30582_55007_1186#PolymorphicMapType_30582| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_53823_53828) ) (!  (not (select (|PolymorphicMapType_30582_53810_138976#PolymorphicMapType_30582| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30582_53810_138976#PolymorphicMapType_30582| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_53810_53811) ) (!  (not (select (|PolymorphicMapType_30582_53810_33517#PolymorphicMapType_30582| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30582_53810_33517#PolymorphicMapType_30582| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_13853_53) ) (!  (not (select (|PolymorphicMapType_30582_53810_53#PolymorphicMapType_30582| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30582_53810_53#PolymorphicMapType_30582| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_13853_13756) ) (!  (not (select (|PolymorphicMapType_30582_53810_13756#PolymorphicMapType_30582| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30582_53810_13756#PolymorphicMapType_30582| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_13853_1186) ) (!  (not (select (|PolymorphicMapType_30582_53810_1186#PolymorphicMapType_30582| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30582_53810_1186#PolymorphicMapType_30582| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_38052_38057) ) (!  (not (select (|PolymorphicMapType_30582_38039_137928#PolymorphicMapType_30582| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30582_38039_137928#PolymorphicMapType_30582| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_38039_38040) ) (!  (not (select (|PolymorphicMapType_30582_38039_33517#PolymorphicMapType_30582| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30582_38039_33517#PolymorphicMapType_30582| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_13813_53) ) (!  (not (select (|PolymorphicMapType_30582_38039_53#PolymorphicMapType_30582| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30582_38039_53#PolymorphicMapType_30582| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_13813_13756) ) (!  (not (select (|PolymorphicMapType_30582_38039_13756#PolymorphicMapType_30582| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30582_38039_13756#PolymorphicMapType_30582| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_13813_1186) ) (!  (not (select (|PolymorphicMapType_30582_38039_1186#PolymorphicMapType_30582| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30582_38039_1186#PolymorphicMapType_30582| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_35892_35897) ) (!  (not (select (|PolymorphicMapType_30582_34511_136880#PolymorphicMapType_30582| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30582_34511_136880#PolymorphicMapType_30582| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_34511_34512) ) (!  (not (select (|PolymorphicMapType_30582_34511_33517#PolymorphicMapType_30582| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30582_34511_33517#PolymorphicMapType_30582| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_34511_53) ) (!  (not (select (|PolymorphicMapType_30582_34511_53#PolymorphicMapType_30582| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30582_34511_53#PolymorphicMapType_30582| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_34511_13756) ) (!  (not (select (|PolymorphicMapType_30582_34511_13756#PolymorphicMapType_30582| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30582_34511_13756#PolymorphicMapType_30582| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_34511_1186) ) (!  (not (select (|PolymorphicMapType_30582_34511_1186#PolymorphicMapType_30582| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30582_34511_1186#PolymorphicMapType_30582| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_33529_33534) ) (!  (not (select (|PolymorphicMapType_30582_33516_135832#PolymorphicMapType_30582| ZeroPMask) o_2@@19 f_4@@19))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30582_33516_135832#PolymorphicMapType_30582| ZeroPMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_33516_33517) ) (!  (not (select (|PolymorphicMapType_30582_33516_33517#PolymorphicMapType_30582| ZeroPMask) o_2@@20 f_4@@20))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30582_33516_33517#PolymorphicMapType_30582| ZeroPMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_33516_53) ) (!  (not (select (|PolymorphicMapType_30582_33516_53#PolymorphicMapType_30582| ZeroPMask) o_2@@21 f_4@@21))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30582_33516_53#PolymorphicMapType_30582| ZeroPMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_33516_13756) ) (!  (not (select (|PolymorphicMapType_30582_33516_13756#PolymorphicMapType_30582| ZeroPMask) o_2@@22 f_4@@22))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30582_33516_13756#PolymorphicMapType_30582| ZeroPMask) o_2@@22 f_4@@22))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_33516_1186) ) (!  (not (select (|PolymorphicMapType_30582_33516_1186#PolymorphicMapType_30582| ZeroPMask) o_2@@23 f_4@@23))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30582_33516_1186#PolymorphicMapType_30582| ZeroPMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_13755_33534) ) (!  (not (select (|PolymorphicMapType_30582_13753_134784#PolymorphicMapType_30582| ZeroPMask) o_2@@24 f_4@@24))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30582_13753_134784#PolymorphicMapType_30582| ZeroPMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_13755_13814) ) (!  (not (select (|PolymorphicMapType_30582_13753_33517#PolymorphicMapType_30582| ZeroPMask) o_2@@25 f_4@@25))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30582_13753_33517#PolymorphicMapType_30582| ZeroPMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_30093_53) ) (!  (not (select (|PolymorphicMapType_30582_13753_53#PolymorphicMapType_30582| ZeroPMask) o_2@@26 f_4@@26))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30582_13753_53#PolymorphicMapType_30582| ZeroPMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_30106_30107) ) (!  (not (select (|PolymorphicMapType_30582_13755_13756#PolymorphicMapType_30582| ZeroPMask) o_2@@27 f_4@@27))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30582_13755_13756#PolymorphicMapType_30582| ZeroPMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_33419_1186) ) (!  (not (select (|PolymorphicMapType_30582_13753_1186#PolymorphicMapType_30582| ZeroPMask) o_2@@28 f_4@@28))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30582_13753_1186#PolymorphicMapType_30582| ZeroPMask) o_2@@28 f_4@@28))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_13759_13760 (P x))
 :qid |stdinbpl.198:15|
 :skolemid |23|
 :pattern ( (P x))
)))
(assert (forall ((x@@0 T@Ref) ) (! (IsPredicateField_13788_13789 (Q x@@0))
 :qid |stdinbpl.308:15|
 :skolemid |29|
 :pattern ( (Q x@@0))
)))
(assert (forall ((x@@1 T@Ref) ) (! (IsPredicateField_13813_13814 (Rec x@@1))
 :qid |stdinbpl.362:15|
 :skolemid |35|
 :pattern ( (Rec x@@1))
)))
(assert (forall ((x@@2 T@Ref) ) (! (IsPredicateField_13853_13854 (MRecA x@@2))
 :qid |stdinbpl.589:15|
 :skolemid |45|
 :pattern ( (MRecA x@@2))
)))
(assert (forall ((x@@3 T@Ref) ) (! (IsPredicateField_13893_13894 (MRecB x@@3))
 :qid |stdinbpl.816:15|
 :skolemid |55|
 :pattern ( (MRecB x@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_30033) (x@@4 T@Ref) ) (! (|P#everUsed_13759| (P x@@4))
 :qid |stdinbpl.217:15|
 :skolemid |27|
 :pattern ( (|P#trigger_13759| Heap@@0 (P x@@4)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_30033) (x@@5 T@Ref) ) (! (|Q#everUsed_13788| (Q x@@5))
 :qid |stdinbpl.327:15|
 :skolemid |33|
 :pattern ( (|Q#trigger_13788| Heap@@1 (Q x@@5)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_30033) (x@@6 T@Ref) ) (! (|Rec#everUsed_13813| (Rec x@@6))
 :qid |stdinbpl.381:15|
 :skolemid |39|
 :pattern ( (|Rec#trigger_13813| Heap@@2 (Rec x@@6)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_30033) (x@@7 T@Ref) ) (! (|MRecA#everUsed_13853| (MRecA x@@7))
 :qid |stdinbpl.608:15|
 :skolemid |49|
 :pattern ( (|MRecA#trigger_13853| Heap@@3 (MRecA x@@7)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_30033) (x@@8 T@Ref) ) (! (|MRecB#everUsed_13893| (MRecB x@@8))
 :qid |stdinbpl.835:15|
 :skolemid |59|
 :pattern ( (|MRecB#trigger_13893| Heap@@4 (MRecB x@@8)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_30033) (ExhaleHeap T@PolymorphicMapType_30033) (Mask@@0 T@PolymorphicMapType_30054) (pm_f_41 T@Field_34511_34512) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_34511_13814 Mask@@0 null pm_f_41) (IsPredicateField_13788_13789 pm_f_41)) (= (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@5) null (PredicateMaskField_13788 pm_f_41)) (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| ExhaleHeap) null (PredicateMaskField_13788 pm_f_41)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@0) (IsPredicateField_13788_13789 pm_f_41) (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| ExhaleHeap) null (PredicateMaskField_13788 pm_f_41)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_30033) (ExhaleHeap@@0 T@PolymorphicMapType_30033) (Mask@@1 T@PolymorphicMapType_30054) (pm_f_41@@0 T@Field_33516_33517) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_33516_13814 Mask@@1 null pm_f_41@@0) (IsPredicateField_13759_13760 pm_f_41@@0)) (= (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@6) null (PredicateMaskField_13759 pm_f_41@@0)) (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| ExhaleHeap@@0) null (PredicateMaskField_13759 pm_f_41@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@1) (IsPredicateField_13759_13760 pm_f_41@@0) (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| ExhaleHeap@@0) null (PredicateMaskField_13759 pm_f_41@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_30033) (ExhaleHeap@@1 T@PolymorphicMapType_30033) (Mask@@2 T@PolymorphicMapType_30054) (pm_f_41@@1 T@Field_55007_55008) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_13893_13894 Mask@@2 null pm_f_41@@1) (IsPredicateField_13893_13894 pm_f_41@@1)) (= (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@7) null (PredicateMaskField_13893 pm_f_41@@1)) (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| ExhaleHeap@@1) null (PredicateMaskField_13893 pm_f_41@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@2) (IsPredicateField_13893_13894 pm_f_41@@1) (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| ExhaleHeap@@1) null (PredicateMaskField_13893 pm_f_41@@1)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_30033) (ExhaleHeap@@2 T@PolymorphicMapType_30033) (Mask@@3 T@PolymorphicMapType_30054) (pm_f_41@@2 T@Field_53810_53811) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_13853_13854 Mask@@3 null pm_f_41@@2) (IsPredicateField_13853_13854 pm_f_41@@2)) (= (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@8) null (PredicateMaskField_13853 pm_f_41@@2)) (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| ExhaleHeap@@2) null (PredicateMaskField_13853 pm_f_41@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@3) (IsPredicateField_13853_13854 pm_f_41@@2) (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| ExhaleHeap@@2) null (PredicateMaskField_13853 pm_f_41@@2)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_30033) (ExhaleHeap@@3 T@PolymorphicMapType_30033) (Mask@@4 T@PolymorphicMapType_30054) (pm_f_41@@3 T@Field_38039_38040) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_13813_13814 Mask@@4 null pm_f_41@@3) (IsPredicateField_13813_13814 pm_f_41@@3)) (= (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@9) null (PredicateMaskField_13813 pm_f_41@@3)) (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| ExhaleHeap@@3) null (PredicateMaskField_13813 pm_f_41@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@4) (IsPredicateField_13813_13814 pm_f_41@@3) (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| ExhaleHeap@@3) null (PredicateMaskField_13813 pm_f_41@@3)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_30033) (ExhaleHeap@@4 T@PolymorphicMapType_30033) (Mask@@5 T@PolymorphicMapType_30054) (pm_f_41@@4 T@Field_13755_13814) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_13755_13814 Mask@@5 null pm_f_41@@4) (IsPredicateField_13755_132027 pm_f_41@@4)) (= (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@10) null (PredicateMaskField_13755 pm_f_41@@4)) (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| ExhaleHeap@@4) null (PredicateMaskField_13755 pm_f_41@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@5) (IsPredicateField_13755_132027 pm_f_41@@4) (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| ExhaleHeap@@4) null (PredicateMaskField_13755 pm_f_41@@4)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_30033) (ExhaleHeap@@5 T@PolymorphicMapType_30033) (Mask@@6 T@PolymorphicMapType_30054) (pm_f_41@@5 T@Field_34511_34512) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_34511_13814 Mask@@6 null pm_f_41@@5) (IsWandField_34511_143741 pm_f_41@@5)) (= (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@11) null (WandMaskField_34511 pm_f_41@@5)) (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| ExhaleHeap@@5) null (WandMaskField_34511 pm_f_41@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@6) (IsWandField_34511_143741 pm_f_41@@5) (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| ExhaleHeap@@5) null (WandMaskField_34511 pm_f_41@@5)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_30033) (ExhaleHeap@@6 T@PolymorphicMapType_30033) (Mask@@7 T@PolymorphicMapType_30054) (pm_f_41@@6 T@Field_33516_33517) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_33516_13814 Mask@@7 null pm_f_41@@6) (IsWandField_33516_143384 pm_f_41@@6)) (= (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@12) null (WandMaskField_33516 pm_f_41@@6)) (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| ExhaleHeap@@6) null (WandMaskField_33516 pm_f_41@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@7) (IsWandField_33516_143384 pm_f_41@@6) (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| ExhaleHeap@@6) null (WandMaskField_33516 pm_f_41@@6)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_30033) (ExhaleHeap@@7 T@PolymorphicMapType_30033) (Mask@@8 T@PolymorphicMapType_30054) (pm_f_41@@7 T@Field_55007_55008) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_13893_13894 Mask@@8 null pm_f_41@@7) (IsWandField_13893_143027 pm_f_41@@7)) (= (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@13) null (WandMaskField_13893 pm_f_41@@7)) (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| ExhaleHeap@@7) null (WandMaskField_13893 pm_f_41@@7)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@8) (IsWandField_13893_143027 pm_f_41@@7) (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| ExhaleHeap@@7) null (WandMaskField_13893 pm_f_41@@7)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_30033) (ExhaleHeap@@8 T@PolymorphicMapType_30033) (Mask@@9 T@PolymorphicMapType_30054) (pm_f_41@@8 T@Field_53810_53811) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_13853_13854 Mask@@9 null pm_f_41@@8) (IsWandField_13853_142670 pm_f_41@@8)) (= (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@14) null (WandMaskField_13853 pm_f_41@@8)) (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| ExhaleHeap@@8) null (WandMaskField_13853 pm_f_41@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@9) (IsWandField_13853_142670 pm_f_41@@8) (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| ExhaleHeap@@8) null (WandMaskField_13853 pm_f_41@@8)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_30033) (ExhaleHeap@@9 T@PolymorphicMapType_30033) (Mask@@10 T@PolymorphicMapType_30054) (pm_f_41@@9 T@Field_38039_38040) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_13813_13814 Mask@@10 null pm_f_41@@9) (IsWandField_13813_142313 pm_f_41@@9)) (= (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@15) null (WandMaskField_13813 pm_f_41@@9)) (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| ExhaleHeap@@9) null (WandMaskField_13813 pm_f_41@@9)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@10) (IsWandField_13813_142313 pm_f_41@@9) (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| ExhaleHeap@@9) null (WandMaskField_13813 pm_f_41@@9)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_30033) (ExhaleHeap@@10 T@PolymorphicMapType_30033) (Mask@@11 T@PolymorphicMapType_30054) (pm_f_41@@10 T@Field_13755_13814) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_13755_13814 Mask@@11 null pm_f_41@@10) (IsWandField_13755_141956 pm_f_41@@10)) (= (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@16) null (WandMaskField_13755 pm_f_41@@10)) (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| ExhaleHeap@@10) null (WandMaskField_13755 pm_f_41@@10)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@11) (IsWandField_13755_141956 pm_f_41@@10) (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| ExhaleHeap@@10) null (WandMaskField_13755 pm_f_41@@10)))
)))
(assert (forall ((x@@9 T@Ref) (x2 T@Ref) ) (!  (=> (= (P x@@9) (P x2)) (= x@@9 x2))
 :qid |stdinbpl.208:15|
 :skolemid |25|
 :pattern ( (P x@@9) (P x2))
)))
(assert (forall ((x@@10 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|P#sm| x@@10) (|P#sm| x2@@0)) (= x@@10 x2@@0))
 :qid |stdinbpl.212:15|
 :skolemid |26|
 :pattern ( (|P#sm| x@@10) (|P#sm| x2@@0))
)))
(assert (forall ((x@@11 T@Ref) (x2@@1 T@Ref) ) (!  (=> (= (Q x@@11) (Q x2@@1)) (= x@@11 x2@@1))
 :qid |stdinbpl.318:15|
 :skolemid |31|
 :pattern ( (Q x@@11) (Q x2@@1))
)))
(assert (forall ((x@@12 T@Ref) (x2@@2 T@Ref) ) (!  (=> (= (|Q#sm| x@@12) (|Q#sm| x2@@2)) (= x@@12 x2@@2))
 :qid |stdinbpl.322:15|
 :skolemid |32|
 :pattern ( (|Q#sm| x@@12) (|Q#sm| x2@@2))
)))
(assert (forall ((x@@13 T@Ref) (x2@@3 T@Ref) ) (!  (=> (= (Rec x@@13) (Rec x2@@3)) (= x@@13 x2@@3))
 :qid |stdinbpl.372:15|
 :skolemid |37|
 :pattern ( (Rec x@@13) (Rec x2@@3))
)))
(assert (forall ((x@@14 T@Ref) (x2@@4 T@Ref) ) (!  (=> (= (|Rec#sm| x@@14) (|Rec#sm| x2@@4)) (= x@@14 x2@@4))
 :qid |stdinbpl.376:15|
 :skolemid |38|
 :pattern ( (|Rec#sm| x@@14) (|Rec#sm| x2@@4))
)))
(assert (forall ((x@@15 T@Ref) (x2@@5 T@Ref) ) (!  (=> (= (MRecA x@@15) (MRecA x2@@5)) (= x@@15 x2@@5))
 :qid |stdinbpl.599:15|
 :skolemid |47|
 :pattern ( (MRecA x@@15) (MRecA x2@@5))
)))
(assert (forall ((x@@16 T@Ref) (x2@@6 T@Ref) ) (!  (=> (= (|MRecA#sm| x@@16) (|MRecA#sm| x2@@6)) (= x@@16 x2@@6))
 :qid |stdinbpl.603:15|
 :skolemid |48|
 :pattern ( (|MRecA#sm| x@@16) (|MRecA#sm| x2@@6))
)))
(assert (forall ((x@@17 T@Ref) (x2@@7 T@Ref) ) (!  (=> (= (MRecB x@@17) (MRecB x2@@7)) (= x@@17 x2@@7))
 :qid |stdinbpl.826:15|
 :skolemid |57|
 :pattern ( (MRecB x@@17) (MRecB x2@@7))
)))
(assert (forall ((x@@18 T@Ref) (x2@@8 T@Ref) ) (!  (=> (= (|MRecB#sm| x@@18) (|MRecB#sm| x2@@8)) (= x@@18 x2@@8))
 :qid |stdinbpl.830:15|
 :skolemid |58|
 :pattern ( (|MRecB#sm| x@@18) (|MRecB#sm| x2@@8))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@17 T@PolymorphicMapType_30033) (ExhaleHeap@@11 T@PolymorphicMapType_30033) (Mask@@12 T@PolymorphicMapType_30054) (o_69 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@12) (=> (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@17) o_69 $allocated) (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| ExhaleHeap@@11) o_69 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@12) (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| ExhaleHeap@@11) o_69 $allocated))
)))
(assert (forall ((p T@Field_13755_13814) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_30093_30093 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_30093_30093 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_34511_34512) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_13788_13788 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13788_13788 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_33516_33517) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_13759_33516 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13759_33516 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_53810_53811) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_13853_13853 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13853_13853 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((p@@3 T@Field_55007_55008) (v_1@@3 T@FrameType) (w@@3 T@FrameType) ) (!  (not (InsidePredicate_13893_13893 p@@3 v_1@@3 p@@3 w@@3))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13893_13893 p@@3 v_1@@3 p@@3 w@@3))
)))
(assert (forall ((p@@4 T@Field_38039_38040) (v_1@@4 T@FrameType) (w@@4 T@FrameType) ) (!  (not (InsidePredicate_13813_13813 p@@4 v_1@@4 p@@4 w@@4))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13813_13813 p@@4 v_1@@4 p@@4 w@@4))
)))
(assert  (not (IsPredicateField_13753_1186 f_7)))
(assert  (not (IsWandField_13753_1186 f_7)))
(assert  (not (IsPredicateField_13755_13756 g)))
(assert  (not (IsWandField_13755_13756 g)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_30033) (ExhaleHeap@@12 T@PolymorphicMapType_30033) (Mask@@13 T@PolymorphicMapType_30054) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@13) (succHeap Heap@@18 ExhaleHeap@@12))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@13))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_30054) (o_2@@29 T@Ref) (f_4@@29 T@Field_33529_33534) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_30054_13759_157258#PolymorphicMapType_30054| Mask@@14) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_13759_164188 f_4@@29))) (not (IsWandField_13759_164204 f_4@@29))) (<= (select (|PolymorphicMapType_30054_13759_157258#PolymorphicMapType_30054| Mask@@14) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_30054_13759_157258#PolymorphicMapType_30054| Mask@@14) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_30054) (o_2@@30 T@Ref) (f_4@@30 T@Field_33516_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_30054_13759_53#PolymorphicMapType_30054| Mask@@15) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_13759_53 f_4@@30))) (not (IsWandField_13759_53 f_4@@30))) (<= (select (|PolymorphicMapType_30054_13759_53#PolymorphicMapType_30054| Mask@@15) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_30054_13759_53#PolymorphicMapType_30054| Mask@@15) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_30054) (o_2@@31 T@Ref) (f_4@@31 T@Field_33516_1186) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_30054_13759_1186#PolymorphicMapType_30054| Mask@@16) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_13759_1186 f_4@@31))) (not (IsWandField_13759_1186 f_4@@31))) (<= (select (|PolymorphicMapType_30054_13759_1186#PolymorphicMapType_30054| Mask@@16) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_30054_13759_1186#PolymorphicMapType_30054| Mask@@16) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_30054) (o_2@@32 T@Ref) (f_4@@32 T@Field_33516_33517) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_30054_13759_13760#PolymorphicMapType_30054| Mask@@17) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_13759_13760 f_4@@32))) (not (IsWandField_33516_143384 f_4@@32))) (<= (select (|PolymorphicMapType_30054_13759_13760#PolymorphicMapType_30054| Mask@@17) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_30054_13759_13760#PolymorphicMapType_30054| Mask@@17) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_30054) (o_2@@33 T@Ref) (f_4@@33 T@Field_33516_13756) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_30054_13759_13756#PolymorphicMapType_30054| Mask@@18) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_13759_13756 f_4@@33))) (not (IsWandField_13759_13756 f_4@@33))) (<= (select (|PolymorphicMapType_30054_13759_13756#PolymorphicMapType_30054| Mask@@18) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_30054_13759_13756#PolymorphicMapType_30054| Mask@@18) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_30054) (o_2@@34 T@Ref) (f_4@@34 T@Field_53823_53828) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_30054_13853_156847#PolymorphicMapType_30054| Mask@@19) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_13853_163357 f_4@@34))) (not (IsWandField_13853_163373 f_4@@34))) (<= (select (|PolymorphicMapType_30054_13853_156847#PolymorphicMapType_30054| Mask@@19) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_30054_13853_156847#PolymorphicMapType_30054| Mask@@19) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_30054) (o_2@@35 T@Ref) (f_4@@35 T@Field_13853_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_30054_13853_53#PolymorphicMapType_30054| Mask@@20) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_13853_53 f_4@@35))) (not (IsWandField_13853_53 f_4@@35))) (<= (select (|PolymorphicMapType_30054_13853_53#PolymorphicMapType_30054| Mask@@20) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_30054_13853_53#PolymorphicMapType_30054| Mask@@20) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_30054) (o_2@@36 T@Ref) (f_4@@36 T@Field_13853_1186) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_30054_13853_1186#PolymorphicMapType_30054| Mask@@21) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_13853_1186 f_4@@36))) (not (IsWandField_13853_1186 f_4@@36))) (<= (select (|PolymorphicMapType_30054_13853_1186#PolymorphicMapType_30054| Mask@@21) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_30054_13853_1186#PolymorphicMapType_30054| Mask@@21) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_30054) (o_2@@37 T@Ref) (f_4@@37 T@Field_53810_53811) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_30054_13853_13854#PolymorphicMapType_30054| Mask@@22) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_13853_13854 f_4@@37))) (not (IsWandField_13853_142670 f_4@@37))) (<= (select (|PolymorphicMapType_30054_13853_13854#PolymorphicMapType_30054| Mask@@22) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_30054_13853_13854#PolymorphicMapType_30054| Mask@@22) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_30054) (o_2@@38 T@Ref) (f_4@@38 T@Field_13853_13756) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_30054_13853_13756#PolymorphicMapType_30054| Mask@@23) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_13853_13756 f_4@@38))) (not (IsWandField_13853_13756 f_4@@38))) (<= (select (|PolymorphicMapType_30054_13853_13756#PolymorphicMapType_30054| Mask@@23) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_30054_13853_13756#PolymorphicMapType_30054| Mask@@23) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_30054) (o_2@@39 T@Ref) (f_4@@39 T@Field_60385_60390) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_30054_13893_156436#PolymorphicMapType_30054| Mask@@24) o_2@@39 f_4@@39) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_13893_162526 f_4@@39))) (not (IsWandField_13893_162542 f_4@@39))) (<= (select (|PolymorphicMapType_30054_13893_156436#PolymorphicMapType_30054| Mask@@24) o_2@@39 f_4@@39) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_30054_13893_156436#PolymorphicMapType_30054| Mask@@24) o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_30054) (o_2@@40 T@Ref) (f_4@@40 T@Field_13893_53) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_30054_13893_53#PolymorphicMapType_30054| Mask@@25) o_2@@40 f_4@@40) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_13893_53 f_4@@40))) (not (IsWandField_13893_53 f_4@@40))) (<= (select (|PolymorphicMapType_30054_13893_53#PolymorphicMapType_30054| Mask@@25) o_2@@40 f_4@@40) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_30054_13893_53#PolymorphicMapType_30054| Mask@@25) o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_30054) (o_2@@41 T@Ref) (f_4@@41 T@Field_13893_1186) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_30054_13893_1186#PolymorphicMapType_30054| Mask@@26) o_2@@41 f_4@@41) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_13893_1186 f_4@@41))) (not (IsWandField_13893_1186 f_4@@41))) (<= (select (|PolymorphicMapType_30054_13893_1186#PolymorphicMapType_30054| Mask@@26) o_2@@41 f_4@@41) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_30054_13893_1186#PolymorphicMapType_30054| Mask@@26) o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_30054) (o_2@@42 T@Ref) (f_4@@42 T@Field_55007_55008) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_30054_13893_13894#PolymorphicMapType_30054| Mask@@27) o_2@@42 f_4@@42) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_13893_13894 f_4@@42))) (not (IsWandField_13893_143027 f_4@@42))) (<= (select (|PolymorphicMapType_30054_13893_13894#PolymorphicMapType_30054| Mask@@27) o_2@@42 f_4@@42) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_30054_13893_13894#PolymorphicMapType_30054| Mask@@27) o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_30054) (o_2@@43 T@Ref) (f_4@@43 T@Field_13893_13756) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_30054_13893_13756#PolymorphicMapType_30054| Mask@@28) o_2@@43 f_4@@43) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_13893_13756 f_4@@43))) (not (IsWandField_13893_13756 f_4@@43))) (<= (select (|PolymorphicMapType_30054_13893_13756#PolymorphicMapType_30054| Mask@@28) o_2@@43 f_4@@43) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_30054_13893_13756#PolymorphicMapType_30054| Mask@@28) o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_30054) (o_2@@44 T@Ref) (f_4@@44 T@Field_38052_38057) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_30054_13813_156025#PolymorphicMapType_30054| Mask@@29) o_2@@44 f_4@@44) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_13813_161695 f_4@@44))) (not (IsWandField_13813_161711 f_4@@44))) (<= (select (|PolymorphicMapType_30054_13813_156025#PolymorphicMapType_30054| Mask@@29) o_2@@44 f_4@@44) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_30054_13813_156025#PolymorphicMapType_30054| Mask@@29) o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_30054) (o_2@@45 T@Ref) (f_4@@45 T@Field_13813_53) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_30054_13813_53#PolymorphicMapType_30054| Mask@@30) o_2@@45 f_4@@45) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_13813_53 f_4@@45))) (not (IsWandField_13813_53 f_4@@45))) (<= (select (|PolymorphicMapType_30054_13813_53#PolymorphicMapType_30054| Mask@@30) o_2@@45 f_4@@45) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_30054_13813_53#PolymorphicMapType_30054| Mask@@30) o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_30054) (o_2@@46 T@Ref) (f_4@@46 T@Field_13813_1186) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_30054_13813_1186#PolymorphicMapType_30054| Mask@@31) o_2@@46 f_4@@46) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_13813_1186 f_4@@46))) (not (IsWandField_13813_1186 f_4@@46))) (<= (select (|PolymorphicMapType_30054_13813_1186#PolymorphicMapType_30054| Mask@@31) o_2@@46 f_4@@46) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_30054_13813_1186#PolymorphicMapType_30054| Mask@@31) o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_30054) (o_2@@47 T@Ref) (f_4@@47 T@Field_38039_38040) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_30054_13813_13814#PolymorphicMapType_30054| Mask@@32) o_2@@47 f_4@@47) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_13813_13814 f_4@@47))) (not (IsWandField_13813_142313 f_4@@47))) (<= (select (|PolymorphicMapType_30054_13813_13814#PolymorphicMapType_30054| Mask@@32) o_2@@47 f_4@@47) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_30054_13813_13814#PolymorphicMapType_30054| Mask@@32) o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_30054) (o_2@@48 T@Ref) (f_4@@48 T@Field_13813_13756) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_30054_13813_13756#PolymorphicMapType_30054| Mask@@33) o_2@@48 f_4@@48) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_13813_13756 f_4@@48))) (not (IsWandField_13813_13756 f_4@@48))) (<= (select (|PolymorphicMapType_30054_13813_13756#PolymorphicMapType_30054| Mask@@33) o_2@@48 f_4@@48) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_30054_13813_13756#PolymorphicMapType_30054| Mask@@33) o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_30054) (o_2@@49 T@Ref) (f_4@@49 T@Field_35892_35897) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_30054_13788_155614#PolymorphicMapType_30054| Mask@@34) o_2@@49 f_4@@49) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_13788_160864 f_4@@49))) (not (IsWandField_13788_160880 f_4@@49))) (<= (select (|PolymorphicMapType_30054_13788_155614#PolymorphicMapType_30054| Mask@@34) o_2@@49 f_4@@49) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_30054_13788_155614#PolymorphicMapType_30054| Mask@@34) o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_30054) (o_2@@50 T@Ref) (f_4@@50 T@Field_34511_53) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_30054_13788_53#PolymorphicMapType_30054| Mask@@35) o_2@@50 f_4@@50) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_13788_53 f_4@@50))) (not (IsWandField_13788_53 f_4@@50))) (<= (select (|PolymorphicMapType_30054_13788_53#PolymorphicMapType_30054| Mask@@35) o_2@@50 f_4@@50) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_30054_13788_53#PolymorphicMapType_30054| Mask@@35) o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_30054) (o_2@@51 T@Ref) (f_4@@51 T@Field_34511_1186) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_30054_13788_1186#PolymorphicMapType_30054| Mask@@36) o_2@@51 f_4@@51) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_13788_1186 f_4@@51))) (not (IsWandField_13788_1186 f_4@@51))) (<= (select (|PolymorphicMapType_30054_13788_1186#PolymorphicMapType_30054| Mask@@36) o_2@@51 f_4@@51) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_30054_13788_1186#PolymorphicMapType_30054| Mask@@36) o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_30054) (o_2@@52 T@Ref) (f_4@@52 T@Field_34511_34512) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_30054_13788_13789#PolymorphicMapType_30054| Mask@@37) o_2@@52 f_4@@52) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_13788_13789 f_4@@52))) (not (IsWandField_34511_143741 f_4@@52))) (<= (select (|PolymorphicMapType_30054_13788_13789#PolymorphicMapType_30054| Mask@@37) o_2@@52 f_4@@52) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_30054_13788_13789#PolymorphicMapType_30054| Mask@@37) o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_30054) (o_2@@53 T@Ref) (f_4@@53 T@Field_34511_13756) ) (!  (=> (GoodMask Mask@@38) (and (>= (select (|PolymorphicMapType_30054_13788_13756#PolymorphicMapType_30054| Mask@@38) o_2@@53 f_4@@53) NoPerm) (=> (and (and (and (GoodMask Mask@@38) AssumePermUpperBound) (not (IsPredicateField_13788_13756 f_4@@53))) (not (IsWandField_13788_13756 f_4@@53))) (<= (select (|PolymorphicMapType_30054_13788_13756#PolymorphicMapType_30054| Mask@@38) o_2@@53 f_4@@53) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@38) (select (|PolymorphicMapType_30054_13788_13756#PolymorphicMapType_30054| Mask@@38) o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_30054) (o_2@@54 T@Ref) (f_4@@54 T@Field_13755_33534) ) (!  (=> (GoodMask Mask@@39) (and (>= (select (|PolymorphicMapType_30054_13755_155203#PolymorphicMapType_30054| Mask@@39) o_2@@54 f_4@@54) NoPerm) (=> (and (and (and (GoodMask Mask@@39) AssumePermUpperBound) (not (IsPredicateField_13755_160033 f_4@@54))) (not (IsWandField_13755_160049 f_4@@54))) (<= (select (|PolymorphicMapType_30054_13755_155203#PolymorphicMapType_30054| Mask@@39) o_2@@54 f_4@@54) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@39) (select (|PolymorphicMapType_30054_13755_155203#PolymorphicMapType_30054| Mask@@39) o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_30054) (o_2@@55 T@Ref) (f_4@@55 T@Field_30093_53) ) (!  (=> (GoodMask Mask@@40) (and (>= (select (|PolymorphicMapType_30054_13755_53#PolymorphicMapType_30054| Mask@@40) o_2@@55 f_4@@55) NoPerm) (=> (and (and (and (GoodMask Mask@@40) AssumePermUpperBound) (not (IsPredicateField_13755_53 f_4@@55))) (not (IsWandField_13755_53 f_4@@55))) (<= (select (|PolymorphicMapType_30054_13755_53#PolymorphicMapType_30054| Mask@@40) o_2@@55 f_4@@55) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@40) (select (|PolymorphicMapType_30054_13755_53#PolymorphicMapType_30054| Mask@@40) o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_30054) (o_2@@56 T@Ref) (f_4@@56 T@Field_33419_1186) ) (!  (=> (GoodMask Mask@@41) (and (>= (select (|PolymorphicMapType_30054_13753_1186#PolymorphicMapType_30054| Mask@@41) o_2@@56 f_4@@56) NoPerm) (=> (and (and (and (GoodMask Mask@@41) AssumePermUpperBound) (not (IsPredicateField_13753_1186 f_4@@56))) (not (IsWandField_13753_1186 f_4@@56))) (<= (select (|PolymorphicMapType_30054_13753_1186#PolymorphicMapType_30054| Mask@@41) o_2@@56 f_4@@56) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@41) (select (|PolymorphicMapType_30054_13753_1186#PolymorphicMapType_30054| Mask@@41) o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_30054) (o_2@@57 T@Ref) (f_4@@57 T@Field_13755_13814) ) (!  (=> (GoodMask Mask@@42) (and (>= (select (|PolymorphicMapType_30054_13755_13789#PolymorphicMapType_30054| Mask@@42) o_2@@57 f_4@@57) NoPerm) (=> (and (and (and (GoodMask Mask@@42) AssumePermUpperBound) (not (IsPredicateField_13755_132027 f_4@@57))) (not (IsWandField_13755_141956 f_4@@57))) (<= (select (|PolymorphicMapType_30054_13755_13789#PolymorphicMapType_30054| Mask@@42) o_2@@57 f_4@@57) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@42) (select (|PolymorphicMapType_30054_13755_13789#PolymorphicMapType_30054| Mask@@42) o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_30054) (o_2@@58 T@Ref) (f_4@@58 T@Field_30106_30107) ) (!  (=> (GoodMask Mask@@43) (and (>= (select (|PolymorphicMapType_30054_13755_13756#PolymorphicMapType_30054| Mask@@43) o_2@@58 f_4@@58) NoPerm) (=> (and (and (and (GoodMask Mask@@43) AssumePermUpperBound) (not (IsPredicateField_13755_13756 f_4@@58))) (not (IsWandField_13755_13756 f_4@@58))) (<= (select (|PolymorphicMapType_30054_13755_13756#PolymorphicMapType_30054| Mask@@43) o_2@@58 f_4@@58) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@43) (select (|PolymorphicMapType_30054_13755_13756#PolymorphicMapType_30054| Mask@@43) o_2@@58 f_4@@58))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_30054) (o_2@@59 T@Ref) (f_4@@59 T@Field_35892_35897) ) (! (= (HasDirectPerm_34511_131782 Mask@@44 o_2@@59 f_4@@59) (> (select (|PolymorphicMapType_30054_13788_155614#PolymorphicMapType_30054| Mask@@44) o_2@@59 f_4@@59) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34511_131782 Mask@@44 o_2@@59 f_4@@59))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_30054) (o_2@@60 T@Ref) (f_4@@60 T@Field_34511_53) ) (! (= (HasDirectPerm_34511_53 Mask@@45 o_2@@60 f_4@@60) (> (select (|PolymorphicMapType_30054_13788_53#PolymorphicMapType_30054| Mask@@45) o_2@@60 f_4@@60) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34511_53 Mask@@45 o_2@@60 f_4@@60))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_30054) (o_2@@61 T@Ref) (f_4@@61 T@Field_34511_34512) ) (! (= (HasDirectPerm_34511_13814 Mask@@46 o_2@@61 f_4@@61) (> (select (|PolymorphicMapType_30054_13788_13789#PolymorphicMapType_30054| Mask@@46) o_2@@61 f_4@@61) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34511_13814 Mask@@46 o_2@@61 f_4@@61))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_30054) (o_2@@62 T@Ref) (f_4@@62 T@Field_34511_1186) ) (! (= (HasDirectPerm_34511_1186 Mask@@47 o_2@@62 f_4@@62) (> (select (|PolymorphicMapType_30054_13788_1186#PolymorphicMapType_30054| Mask@@47) o_2@@62 f_4@@62) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34511_1186 Mask@@47 o_2@@62 f_4@@62))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_30054) (o_2@@63 T@Ref) (f_4@@63 T@Field_34511_13756) ) (! (= (HasDirectPerm_34511_13756 Mask@@48 o_2@@63 f_4@@63) (> (select (|PolymorphicMapType_30054_13788_13756#PolymorphicMapType_30054| Mask@@48) o_2@@63 f_4@@63) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34511_13756 Mask@@48 o_2@@63 f_4@@63))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_30054) (o_2@@64 T@Ref) (f_4@@64 T@Field_33529_33534) ) (! (= (HasDirectPerm_33516_130664 Mask@@49 o_2@@64 f_4@@64) (> (select (|PolymorphicMapType_30054_13759_157258#PolymorphicMapType_30054| Mask@@49) o_2@@64 f_4@@64) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_33516_130664 Mask@@49 o_2@@64 f_4@@64))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_30054) (o_2@@65 T@Ref) (f_4@@65 T@Field_33516_53) ) (! (= (HasDirectPerm_33516_53 Mask@@50 o_2@@65 f_4@@65) (> (select (|PolymorphicMapType_30054_13759_53#PolymorphicMapType_30054| Mask@@50) o_2@@65 f_4@@65) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_33516_53 Mask@@50 o_2@@65 f_4@@65))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_30054) (o_2@@66 T@Ref) (f_4@@66 T@Field_33516_33517) ) (! (= (HasDirectPerm_33516_13814 Mask@@51 o_2@@66 f_4@@66) (> (select (|PolymorphicMapType_30054_13759_13760#PolymorphicMapType_30054| Mask@@51) o_2@@66 f_4@@66) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_33516_13814 Mask@@51 o_2@@66 f_4@@66))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_30054) (o_2@@67 T@Ref) (f_4@@67 T@Field_33516_1186) ) (! (= (HasDirectPerm_33516_1186 Mask@@52 o_2@@67 f_4@@67) (> (select (|PolymorphicMapType_30054_13759_1186#PolymorphicMapType_30054| Mask@@52) o_2@@67 f_4@@67) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_33516_1186 Mask@@52 o_2@@67 f_4@@67))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_30054) (o_2@@68 T@Ref) (f_4@@68 T@Field_33516_13756) ) (! (= (HasDirectPerm_33516_13756 Mask@@53 o_2@@68 f_4@@68) (> (select (|PolymorphicMapType_30054_13759_13756#PolymorphicMapType_30054| Mask@@53) o_2@@68 f_4@@68) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_33516_13756 Mask@@53 o_2@@68 f_4@@68))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_30054) (o_2@@69 T@Ref) (f_4@@69 T@Field_60385_60390) ) (! (= (HasDirectPerm_13893_129546 Mask@@54 o_2@@69 f_4@@69) (> (select (|PolymorphicMapType_30054_13893_156436#PolymorphicMapType_30054| Mask@@54) o_2@@69 f_4@@69) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13893_129546 Mask@@54 o_2@@69 f_4@@69))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_30054) (o_2@@70 T@Ref) (f_4@@70 T@Field_13893_53) ) (! (= (HasDirectPerm_13893_53 Mask@@55 o_2@@70 f_4@@70) (> (select (|PolymorphicMapType_30054_13893_53#PolymorphicMapType_30054| Mask@@55) o_2@@70 f_4@@70) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13893_53 Mask@@55 o_2@@70 f_4@@70))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_30054) (o_2@@71 T@Ref) (f_4@@71 T@Field_55007_55008) ) (! (= (HasDirectPerm_13893_13894 Mask@@56 o_2@@71 f_4@@71) (> (select (|PolymorphicMapType_30054_13893_13894#PolymorphicMapType_30054| Mask@@56) o_2@@71 f_4@@71) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13893_13894 Mask@@56 o_2@@71 f_4@@71))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_30054) (o_2@@72 T@Ref) (f_4@@72 T@Field_13893_1186) ) (! (= (HasDirectPerm_13893_1186 Mask@@57 o_2@@72 f_4@@72) (> (select (|PolymorphicMapType_30054_13893_1186#PolymorphicMapType_30054| Mask@@57) o_2@@72 f_4@@72) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13893_1186 Mask@@57 o_2@@72 f_4@@72))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_30054) (o_2@@73 T@Ref) (f_4@@73 T@Field_13893_13756) ) (! (= (HasDirectPerm_13893_13756 Mask@@58 o_2@@73 f_4@@73) (> (select (|PolymorphicMapType_30054_13893_13756#PolymorphicMapType_30054| Mask@@58) o_2@@73 f_4@@73) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13893_13756 Mask@@58 o_2@@73 f_4@@73))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_30054) (o_2@@74 T@Ref) (f_4@@74 T@Field_53823_53828) ) (! (= (HasDirectPerm_13853_128448 Mask@@59 o_2@@74 f_4@@74) (> (select (|PolymorphicMapType_30054_13853_156847#PolymorphicMapType_30054| Mask@@59) o_2@@74 f_4@@74) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13853_128448 Mask@@59 o_2@@74 f_4@@74))
)))
(assert (forall ((Mask@@60 T@PolymorphicMapType_30054) (o_2@@75 T@Ref) (f_4@@75 T@Field_13853_53) ) (! (= (HasDirectPerm_13853_53 Mask@@60 o_2@@75 f_4@@75) (> (select (|PolymorphicMapType_30054_13853_53#PolymorphicMapType_30054| Mask@@60) o_2@@75 f_4@@75) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13853_53 Mask@@60 o_2@@75 f_4@@75))
)))
(assert (forall ((Mask@@61 T@PolymorphicMapType_30054) (o_2@@76 T@Ref) (f_4@@76 T@Field_53810_53811) ) (! (= (HasDirectPerm_13853_13854 Mask@@61 o_2@@76 f_4@@76) (> (select (|PolymorphicMapType_30054_13853_13854#PolymorphicMapType_30054| Mask@@61) o_2@@76 f_4@@76) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13853_13854 Mask@@61 o_2@@76 f_4@@76))
)))
(assert (forall ((Mask@@62 T@PolymorphicMapType_30054) (o_2@@77 T@Ref) (f_4@@77 T@Field_13853_1186) ) (! (= (HasDirectPerm_13853_1186 Mask@@62 o_2@@77 f_4@@77) (> (select (|PolymorphicMapType_30054_13853_1186#PolymorphicMapType_30054| Mask@@62) o_2@@77 f_4@@77) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13853_1186 Mask@@62 o_2@@77 f_4@@77))
)))
(assert (forall ((Mask@@63 T@PolymorphicMapType_30054) (o_2@@78 T@Ref) (f_4@@78 T@Field_13853_13756) ) (! (= (HasDirectPerm_13853_13756 Mask@@63 o_2@@78 f_4@@78) (> (select (|PolymorphicMapType_30054_13853_13756#PolymorphicMapType_30054| Mask@@63) o_2@@78 f_4@@78) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13853_13756 Mask@@63 o_2@@78 f_4@@78))
)))
(assert (forall ((Mask@@64 T@PolymorphicMapType_30054) (o_2@@79 T@Ref) (f_4@@79 T@Field_38052_38057) ) (! (= (HasDirectPerm_13813_127350 Mask@@64 o_2@@79 f_4@@79) (> (select (|PolymorphicMapType_30054_13813_156025#PolymorphicMapType_30054| Mask@@64) o_2@@79 f_4@@79) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13813_127350 Mask@@64 o_2@@79 f_4@@79))
)))
(assert (forall ((Mask@@65 T@PolymorphicMapType_30054) (o_2@@80 T@Ref) (f_4@@80 T@Field_13813_53) ) (! (= (HasDirectPerm_13813_53 Mask@@65 o_2@@80 f_4@@80) (> (select (|PolymorphicMapType_30054_13813_53#PolymorphicMapType_30054| Mask@@65) o_2@@80 f_4@@80) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13813_53 Mask@@65 o_2@@80 f_4@@80))
)))
(assert (forall ((Mask@@66 T@PolymorphicMapType_30054) (o_2@@81 T@Ref) (f_4@@81 T@Field_38039_38040) ) (! (= (HasDirectPerm_13813_13814 Mask@@66 o_2@@81 f_4@@81) (> (select (|PolymorphicMapType_30054_13813_13814#PolymorphicMapType_30054| Mask@@66) o_2@@81 f_4@@81) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13813_13814 Mask@@66 o_2@@81 f_4@@81))
)))
(assert (forall ((Mask@@67 T@PolymorphicMapType_30054) (o_2@@82 T@Ref) (f_4@@82 T@Field_13813_1186) ) (! (= (HasDirectPerm_13813_1186 Mask@@67 o_2@@82 f_4@@82) (> (select (|PolymorphicMapType_30054_13813_1186#PolymorphicMapType_30054| Mask@@67) o_2@@82 f_4@@82) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13813_1186 Mask@@67 o_2@@82 f_4@@82))
)))
(assert (forall ((Mask@@68 T@PolymorphicMapType_30054) (o_2@@83 T@Ref) (f_4@@83 T@Field_13813_13756) ) (! (= (HasDirectPerm_13813_13756 Mask@@68 o_2@@83 f_4@@83) (> (select (|PolymorphicMapType_30054_13813_13756#PolymorphicMapType_30054| Mask@@68) o_2@@83 f_4@@83) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13813_13756 Mask@@68 o_2@@83 f_4@@83))
)))
(assert (forall ((Mask@@69 T@PolymorphicMapType_30054) (o_2@@84 T@Ref) (f_4@@84 T@Field_13755_33534) ) (! (= (HasDirectPerm_13755_126209 Mask@@69 o_2@@84 f_4@@84) (> (select (|PolymorphicMapType_30054_13755_155203#PolymorphicMapType_30054| Mask@@69) o_2@@84 f_4@@84) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13755_126209 Mask@@69 o_2@@84 f_4@@84))
)))
(assert (forall ((Mask@@70 T@PolymorphicMapType_30054) (o_2@@85 T@Ref) (f_4@@85 T@Field_30093_53) ) (! (= (HasDirectPerm_13755_53 Mask@@70 o_2@@85 f_4@@85) (> (select (|PolymorphicMapType_30054_13755_53#PolymorphicMapType_30054| Mask@@70) o_2@@85 f_4@@85) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13755_53 Mask@@70 o_2@@85 f_4@@85))
)))
(assert (forall ((Mask@@71 T@PolymorphicMapType_30054) (o_2@@86 T@Ref) (f_4@@86 T@Field_13755_13814) ) (! (= (HasDirectPerm_13755_13814 Mask@@71 o_2@@86 f_4@@86) (> (select (|PolymorphicMapType_30054_13755_13789#PolymorphicMapType_30054| Mask@@71) o_2@@86 f_4@@86) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13755_13814 Mask@@71 o_2@@86 f_4@@86))
)))
(assert (forall ((Mask@@72 T@PolymorphicMapType_30054) (o_2@@87 T@Ref) (f_4@@87 T@Field_33419_1186) ) (! (= (HasDirectPerm_13753_1186 Mask@@72 o_2@@87 f_4@@87) (> (select (|PolymorphicMapType_30054_13753_1186#PolymorphicMapType_30054| Mask@@72) o_2@@87 f_4@@87) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13753_1186 Mask@@72 o_2@@87 f_4@@87))
)))
(assert (forall ((Mask@@73 T@PolymorphicMapType_30054) (o_2@@88 T@Ref) (f_4@@88 T@Field_30106_30107) ) (! (= (HasDirectPerm_13755_13756 Mask@@73 o_2@@88 f_4@@88) (> (select (|PolymorphicMapType_30054_13755_13756#PolymorphicMapType_30054| Mask@@73) o_2@@88 f_4@@88) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13755_13756 Mask@@73 o_2@@88 f_4@@88))
)))
(assert (forall ((p@@5 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@5 f_6) (ite (> p@@5 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@5 f_6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_30033) (ExhaleHeap@@13 T@PolymorphicMapType_30033) (Mask@@74 T@PolymorphicMapType_30054) (o_69@@0 T@Ref) (f_130 T@Field_35892_35897) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@74) (=> (HasDirectPerm_34511_131782 Mask@@74 o_69@@0 f_130) (= (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@19) o_69@@0 f_130) (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| ExhaleHeap@@13) o_69@@0 f_130))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@74) (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| ExhaleHeap@@13) o_69@@0 f_130))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_30033) (ExhaleHeap@@14 T@PolymorphicMapType_30033) (Mask@@75 T@PolymorphicMapType_30054) (o_69@@1 T@Ref) (f_130@@0 T@Field_34511_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@75) (=> (HasDirectPerm_34511_53 Mask@@75 o_69@@1 f_130@@0) (= (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@20) o_69@@1 f_130@@0) (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| ExhaleHeap@@14) o_69@@1 f_130@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@75) (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| ExhaleHeap@@14) o_69@@1 f_130@@0))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_30033) (ExhaleHeap@@15 T@PolymorphicMapType_30033) (Mask@@76 T@PolymorphicMapType_30054) (o_69@@2 T@Ref) (f_130@@1 T@Field_34511_34512) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@76) (=> (HasDirectPerm_34511_13814 Mask@@76 o_69@@2 f_130@@1) (= (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@21) o_69@@2 f_130@@1) (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| ExhaleHeap@@15) o_69@@2 f_130@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@76) (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| ExhaleHeap@@15) o_69@@2 f_130@@1))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_30033) (ExhaleHeap@@16 T@PolymorphicMapType_30033) (Mask@@77 T@PolymorphicMapType_30054) (o_69@@3 T@Ref) (f_130@@2 T@Field_34511_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@77) (=> (HasDirectPerm_34511_1186 Mask@@77 o_69@@3 f_130@@2) (= (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@22) o_69@@3 f_130@@2) (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| ExhaleHeap@@16) o_69@@3 f_130@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@77) (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| ExhaleHeap@@16) o_69@@3 f_130@@2))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_30033) (ExhaleHeap@@17 T@PolymorphicMapType_30033) (Mask@@78 T@PolymorphicMapType_30054) (o_69@@4 T@Ref) (f_130@@3 T@Field_34511_13756) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@78) (=> (HasDirectPerm_34511_13756 Mask@@78 o_69@@4 f_130@@3) (= (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@23) o_69@@4 f_130@@3) (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| ExhaleHeap@@17) o_69@@4 f_130@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@78) (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| ExhaleHeap@@17) o_69@@4 f_130@@3))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_30033) (ExhaleHeap@@18 T@PolymorphicMapType_30033) (Mask@@79 T@PolymorphicMapType_30054) (o_69@@5 T@Ref) (f_130@@4 T@Field_33529_33534) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@79) (=> (HasDirectPerm_33516_130664 Mask@@79 o_69@@5 f_130@@4) (= (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@24) o_69@@5 f_130@@4) (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| ExhaleHeap@@18) o_69@@5 f_130@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@79) (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| ExhaleHeap@@18) o_69@@5 f_130@@4))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_30033) (ExhaleHeap@@19 T@PolymorphicMapType_30033) (Mask@@80 T@PolymorphicMapType_30054) (o_69@@6 T@Ref) (f_130@@5 T@Field_33516_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@19 Mask@@80) (=> (HasDirectPerm_33516_53 Mask@@80 o_69@@6 f_130@@5) (= (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@25) o_69@@6 f_130@@5) (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| ExhaleHeap@@19) o_69@@6 f_130@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@19 Mask@@80) (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| ExhaleHeap@@19) o_69@@6 f_130@@5))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_30033) (ExhaleHeap@@20 T@PolymorphicMapType_30033) (Mask@@81 T@PolymorphicMapType_30054) (o_69@@7 T@Ref) (f_130@@6 T@Field_33516_33517) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@20 Mask@@81) (=> (HasDirectPerm_33516_13814 Mask@@81 o_69@@7 f_130@@6) (= (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@26) o_69@@7 f_130@@6) (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| ExhaleHeap@@20) o_69@@7 f_130@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@20 Mask@@81) (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| ExhaleHeap@@20) o_69@@7 f_130@@6))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_30033) (ExhaleHeap@@21 T@PolymorphicMapType_30033) (Mask@@82 T@PolymorphicMapType_30054) (o_69@@8 T@Ref) (f_130@@7 T@Field_33516_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@21 Mask@@82) (=> (HasDirectPerm_33516_1186 Mask@@82 o_69@@8 f_130@@7) (= (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@27) o_69@@8 f_130@@7) (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| ExhaleHeap@@21) o_69@@8 f_130@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@21 Mask@@82) (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| ExhaleHeap@@21) o_69@@8 f_130@@7))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_30033) (ExhaleHeap@@22 T@PolymorphicMapType_30033) (Mask@@83 T@PolymorphicMapType_30054) (o_69@@9 T@Ref) (f_130@@8 T@Field_33516_13756) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@22 Mask@@83) (=> (HasDirectPerm_33516_13756 Mask@@83 o_69@@9 f_130@@8) (= (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@28) o_69@@9 f_130@@8) (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| ExhaleHeap@@22) o_69@@9 f_130@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@22 Mask@@83) (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| ExhaleHeap@@22) o_69@@9 f_130@@8))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_30033) (ExhaleHeap@@23 T@PolymorphicMapType_30033) (Mask@@84 T@PolymorphicMapType_30054) (o_69@@10 T@Ref) (f_130@@9 T@Field_60385_60390) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@23 Mask@@84) (=> (HasDirectPerm_13893_129546 Mask@@84 o_69@@10 f_130@@9) (= (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@29) o_69@@10 f_130@@9) (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| ExhaleHeap@@23) o_69@@10 f_130@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@23 Mask@@84) (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| ExhaleHeap@@23) o_69@@10 f_130@@9))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_30033) (ExhaleHeap@@24 T@PolymorphicMapType_30033) (Mask@@85 T@PolymorphicMapType_30054) (o_69@@11 T@Ref) (f_130@@10 T@Field_13893_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@24 Mask@@85) (=> (HasDirectPerm_13893_53 Mask@@85 o_69@@11 f_130@@10) (= (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@30) o_69@@11 f_130@@10) (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| ExhaleHeap@@24) o_69@@11 f_130@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@24 Mask@@85) (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| ExhaleHeap@@24) o_69@@11 f_130@@10))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_30033) (ExhaleHeap@@25 T@PolymorphicMapType_30033) (Mask@@86 T@PolymorphicMapType_30054) (o_69@@12 T@Ref) (f_130@@11 T@Field_55007_55008) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@25 Mask@@86) (=> (HasDirectPerm_13893_13894 Mask@@86 o_69@@12 f_130@@11) (= (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@31) o_69@@12 f_130@@11) (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| ExhaleHeap@@25) o_69@@12 f_130@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@25 Mask@@86) (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| ExhaleHeap@@25) o_69@@12 f_130@@11))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_30033) (ExhaleHeap@@26 T@PolymorphicMapType_30033) (Mask@@87 T@PolymorphicMapType_30054) (o_69@@13 T@Ref) (f_130@@12 T@Field_13893_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@26 Mask@@87) (=> (HasDirectPerm_13893_1186 Mask@@87 o_69@@13 f_130@@12) (= (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@32) o_69@@13 f_130@@12) (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| ExhaleHeap@@26) o_69@@13 f_130@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@26 Mask@@87) (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| ExhaleHeap@@26) o_69@@13 f_130@@12))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_30033) (ExhaleHeap@@27 T@PolymorphicMapType_30033) (Mask@@88 T@PolymorphicMapType_30054) (o_69@@14 T@Ref) (f_130@@13 T@Field_13893_13756) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@27 Mask@@88) (=> (HasDirectPerm_13893_13756 Mask@@88 o_69@@14 f_130@@13) (= (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@33) o_69@@14 f_130@@13) (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| ExhaleHeap@@27) o_69@@14 f_130@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@27 Mask@@88) (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| ExhaleHeap@@27) o_69@@14 f_130@@13))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_30033) (ExhaleHeap@@28 T@PolymorphicMapType_30033) (Mask@@89 T@PolymorphicMapType_30054) (o_69@@15 T@Ref) (f_130@@14 T@Field_53823_53828) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@28 Mask@@89) (=> (HasDirectPerm_13853_128448 Mask@@89 o_69@@15 f_130@@14) (= (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@34) o_69@@15 f_130@@14) (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| ExhaleHeap@@28) o_69@@15 f_130@@14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@28 Mask@@89) (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| ExhaleHeap@@28) o_69@@15 f_130@@14))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_30033) (ExhaleHeap@@29 T@PolymorphicMapType_30033) (Mask@@90 T@PolymorphicMapType_30054) (o_69@@16 T@Ref) (f_130@@15 T@Field_13853_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@29 Mask@@90) (=> (HasDirectPerm_13853_53 Mask@@90 o_69@@16 f_130@@15) (= (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@35) o_69@@16 f_130@@15) (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| ExhaleHeap@@29) o_69@@16 f_130@@15))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@29 Mask@@90) (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| ExhaleHeap@@29) o_69@@16 f_130@@15))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_30033) (ExhaleHeap@@30 T@PolymorphicMapType_30033) (Mask@@91 T@PolymorphicMapType_30054) (o_69@@17 T@Ref) (f_130@@16 T@Field_53810_53811) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@30 Mask@@91) (=> (HasDirectPerm_13853_13854 Mask@@91 o_69@@17 f_130@@16) (= (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@36) o_69@@17 f_130@@16) (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| ExhaleHeap@@30) o_69@@17 f_130@@16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@30 Mask@@91) (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| ExhaleHeap@@30) o_69@@17 f_130@@16))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_30033) (ExhaleHeap@@31 T@PolymorphicMapType_30033) (Mask@@92 T@PolymorphicMapType_30054) (o_69@@18 T@Ref) (f_130@@17 T@Field_13853_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@31 Mask@@92) (=> (HasDirectPerm_13853_1186 Mask@@92 o_69@@18 f_130@@17) (= (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@37) o_69@@18 f_130@@17) (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| ExhaleHeap@@31) o_69@@18 f_130@@17))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@31 Mask@@92) (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| ExhaleHeap@@31) o_69@@18 f_130@@17))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_30033) (ExhaleHeap@@32 T@PolymorphicMapType_30033) (Mask@@93 T@PolymorphicMapType_30054) (o_69@@19 T@Ref) (f_130@@18 T@Field_13853_13756) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@32 Mask@@93) (=> (HasDirectPerm_13853_13756 Mask@@93 o_69@@19 f_130@@18) (= (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@38) o_69@@19 f_130@@18) (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| ExhaleHeap@@32) o_69@@19 f_130@@18))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@32 Mask@@93) (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| ExhaleHeap@@32) o_69@@19 f_130@@18))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_30033) (ExhaleHeap@@33 T@PolymorphicMapType_30033) (Mask@@94 T@PolymorphicMapType_30054) (o_69@@20 T@Ref) (f_130@@19 T@Field_38052_38057) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@33 Mask@@94) (=> (HasDirectPerm_13813_127350 Mask@@94 o_69@@20 f_130@@19) (= (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@39) o_69@@20 f_130@@19) (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| ExhaleHeap@@33) o_69@@20 f_130@@19))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@33 Mask@@94) (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| ExhaleHeap@@33) o_69@@20 f_130@@19))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_30033) (ExhaleHeap@@34 T@PolymorphicMapType_30033) (Mask@@95 T@PolymorphicMapType_30054) (o_69@@21 T@Ref) (f_130@@20 T@Field_13813_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@34 Mask@@95) (=> (HasDirectPerm_13813_53 Mask@@95 o_69@@21 f_130@@20) (= (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@40) o_69@@21 f_130@@20) (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| ExhaleHeap@@34) o_69@@21 f_130@@20))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@34 Mask@@95) (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| ExhaleHeap@@34) o_69@@21 f_130@@20))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_30033) (ExhaleHeap@@35 T@PolymorphicMapType_30033) (Mask@@96 T@PolymorphicMapType_30054) (o_69@@22 T@Ref) (f_130@@21 T@Field_38039_38040) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@35 Mask@@96) (=> (HasDirectPerm_13813_13814 Mask@@96 o_69@@22 f_130@@21) (= (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@41) o_69@@22 f_130@@21) (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| ExhaleHeap@@35) o_69@@22 f_130@@21))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@35 Mask@@96) (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| ExhaleHeap@@35) o_69@@22 f_130@@21))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_30033) (ExhaleHeap@@36 T@PolymorphicMapType_30033) (Mask@@97 T@PolymorphicMapType_30054) (o_69@@23 T@Ref) (f_130@@22 T@Field_13813_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@36 Mask@@97) (=> (HasDirectPerm_13813_1186 Mask@@97 o_69@@23 f_130@@22) (= (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@42) o_69@@23 f_130@@22) (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| ExhaleHeap@@36) o_69@@23 f_130@@22))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@36 Mask@@97) (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| ExhaleHeap@@36) o_69@@23 f_130@@22))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_30033) (ExhaleHeap@@37 T@PolymorphicMapType_30033) (Mask@@98 T@PolymorphicMapType_30054) (o_69@@24 T@Ref) (f_130@@23 T@Field_13813_13756) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@37 Mask@@98) (=> (HasDirectPerm_13813_13756 Mask@@98 o_69@@24 f_130@@23) (= (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@43) o_69@@24 f_130@@23) (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| ExhaleHeap@@37) o_69@@24 f_130@@23))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@37 Mask@@98) (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| ExhaleHeap@@37) o_69@@24 f_130@@23))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_30033) (ExhaleHeap@@38 T@PolymorphicMapType_30033) (Mask@@99 T@PolymorphicMapType_30054) (o_69@@25 T@Ref) (f_130@@24 T@Field_13755_33534) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@38 Mask@@99) (=> (HasDirectPerm_13755_126209 Mask@@99 o_69@@25 f_130@@24) (= (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@44) o_69@@25 f_130@@24) (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| ExhaleHeap@@38) o_69@@25 f_130@@24))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@38 Mask@@99) (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| ExhaleHeap@@38) o_69@@25 f_130@@24))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_30033) (ExhaleHeap@@39 T@PolymorphicMapType_30033) (Mask@@100 T@PolymorphicMapType_30054) (o_69@@26 T@Ref) (f_130@@25 T@Field_30093_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@39 Mask@@100) (=> (HasDirectPerm_13755_53 Mask@@100 o_69@@26 f_130@@25) (= (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@45) o_69@@26 f_130@@25) (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| ExhaleHeap@@39) o_69@@26 f_130@@25))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@39 Mask@@100) (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| ExhaleHeap@@39) o_69@@26 f_130@@25))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_30033) (ExhaleHeap@@40 T@PolymorphicMapType_30033) (Mask@@101 T@PolymorphicMapType_30054) (o_69@@27 T@Ref) (f_130@@26 T@Field_13755_13814) ) (!  (=> (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@40 Mask@@101) (=> (HasDirectPerm_13755_13814 Mask@@101 o_69@@27 f_130@@26) (= (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@46) o_69@@27 f_130@@26) (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| ExhaleHeap@@40) o_69@@27 f_130@@26))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@40 Mask@@101) (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| ExhaleHeap@@40) o_69@@27 f_130@@26))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_30033) (ExhaleHeap@@41 T@PolymorphicMapType_30033) (Mask@@102 T@PolymorphicMapType_30054) (o_69@@28 T@Ref) (f_130@@27 T@Field_33419_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@41 Mask@@102) (=> (HasDirectPerm_13753_1186 Mask@@102 o_69@@28 f_130@@27) (= (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@47) o_69@@28 f_130@@27) (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| ExhaleHeap@@41) o_69@@28 f_130@@27))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@41 Mask@@102) (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| ExhaleHeap@@41) o_69@@28 f_130@@27))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_30033) (ExhaleHeap@@42 T@PolymorphicMapType_30033) (Mask@@103 T@PolymorphicMapType_30054) (o_69@@29 T@Ref) (f_130@@28 T@Field_30106_30107) ) (!  (=> (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@42 Mask@@103) (=> (HasDirectPerm_13755_13756 Mask@@103 o_69@@29 f_130@@28) (= (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@48) o_69@@29 f_130@@28) (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| ExhaleHeap@@42) o_69@@29 f_130@@28))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@42 Mask@@103) (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| ExhaleHeap@@42) o_69@@29 f_130@@28))
)))
(assert (forall ((o_2@@89 T@Ref) (f_4@@89 T@Field_33529_33534) ) (! (= (select (|PolymorphicMapType_30054_13759_157258#PolymorphicMapType_30054| ZeroMask) o_2@@89 f_4@@89) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30054_13759_157258#PolymorphicMapType_30054| ZeroMask) o_2@@89 f_4@@89))
)))
(assert (forall ((o_2@@90 T@Ref) (f_4@@90 T@Field_33516_53) ) (! (= (select (|PolymorphicMapType_30054_13759_53#PolymorphicMapType_30054| ZeroMask) o_2@@90 f_4@@90) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30054_13759_53#PolymorphicMapType_30054| ZeroMask) o_2@@90 f_4@@90))
)))
(assert (forall ((o_2@@91 T@Ref) (f_4@@91 T@Field_33516_1186) ) (! (= (select (|PolymorphicMapType_30054_13759_1186#PolymorphicMapType_30054| ZeroMask) o_2@@91 f_4@@91) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30054_13759_1186#PolymorphicMapType_30054| ZeroMask) o_2@@91 f_4@@91))
)))
(assert (forall ((o_2@@92 T@Ref) (f_4@@92 T@Field_33516_33517) ) (! (= (select (|PolymorphicMapType_30054_13759_13760#PolymorphicMapType_30054| ZeroMask) o_2@@92 f_4@@92) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30054_13759_13760#PolymorphicMapType_30054| ZeroMask) o_2@@92 f_4@@92))
)))
(assert (forall ((o_2@@93 T@Ref) (f_4@@93 T@Field_33516_13756) ) (! (= (select (|PolymorphicMapType_30054_13759_13756#PolymorphicMapType_30054| ZeroMask) o_2@@93 f_4@@93) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30054_13759_13756#PolymorphicMapType_30054| ZeroMask) o_2@@93 f_4@@93))
)))
(assert (forall ((o_2@@94 T@Ref) (f_4@@94 T@Field_53823_53828) ) (! (= (select (|PolymorphicMapType_30054_13853_156847#PolymorphicMapType_30054| ZeroMask) o_2@@94 f_4@@94) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30054_13853_156847#PolymorphicMapType_30054| ZeroMask) o_2@@94 f_4@@94))
)))
(assert (forall ((o_2@@95 T@Ref) (f_4@@95 T@Field_13853_53) ) (! (= (select (|PolymorphicMapType_30054_13853_53#PolymorphicMapType_30054| ZeroMask) o_2@@95 f_4@@95) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30054_13853_53#PolymorphicMapType_30054| ZeroMask) o_2@@95 f_4@@95))
)))
(assert (forall ((o_2@@96 T@Ref) (f_4@@96 T@Field_13853_1186) ) (! (= (select (|PolymorphicMapType_30054_13853_1186#PolymorphicMapType_30054| ZeroMask) o_2@@96 f_4@@96) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30054_13853_1186#PolymorphicMapType_30054| ZeroMask) o_2@@96 f_4@@96))
)))
(assert (forall ((o_2@@97 T@Ref) (f_4@@97 T@Field_53810_53811) ) (! (= (select (|PolymorphicMapType_30054_13853_13854#PolymorphicMapType_30054| ZeroMask) o_2@@97 f_4@@97) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30054_13853_13854#PolymorphicMapType_30054| ZeroMask) o_2@@97 f_4@@97))
)))
(assert (forall ((o_2@@98 T@Ref) (f_4@@98 T@Field_13853_13756) ) (! (= (select (|PolymorphicMapType_30054_13853_13756#PolymorphicMapType_30054| ZeroMask) o_2@@98 f_4@@98) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30054_13853_13756#PolymorphicMapType_30054| ZeroMask) o_2@@98 f_4@@98))
)))
(assert (forall ((o_2@@99 T@Ref) (f_4@@99 T@Field_60385_60390) ) (! (= (select (|PolymorphicMapType_30054_13893_156436#PolymorphicMapType_30054| ZeroMask) o_2@@99 f_4@@99) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30054_13893_156436#PolymorphicMapType_30054| ZeroMask) o_2@@99 f_4@@99))
)))
(assert (forall ((o_2@@100 T@Ref) (f_4@@100 T@Field_13893_53) ) (! (= (select (|PolymorphicMapType_30054_13893_53#PolymorphicMapType_30054| ZeroMask) o_2@@100 f_4@@100) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30054_13893_53#PolymorphicMapType_30054| ZeroMask) o_2@@100 f_4@@100))
)))
(assert (forall ((o_2@@101 T@Ref) (f_4@@101 T@Field_13893_1186) ) (! (= (select (|PolymorphicMapType_30054_13893_1186#PolymorphicMapType_30054| ZeroMask) o_2@@101 f_4@@101) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30054_13893_1186#PolymorphicMapType_30054| ZeroMask) o_2@@101 f_4@@101))
)))
(assert (forall ((o_2@@102 T@Ref) (f_4@@102 T@Field_55007_55008) ) (! (= (select (|PolymorphicMapType_30054_13893_13894#PolymorphicMapType_30054| ZeroMask) o_2@@102 f_4@@102) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30054_13893_13894#PolymorphicMapType_30054| ZeroMask) o_2@@102 f_4@@102))
)))
(assert (forall ((o_2@@103 T@Ref) (f_4@@103 T@Field_13893_13756) ) (! (= (select (|PolymorphicMapType_30054_13893_13756#PolymorphicMapType_30054| ZeroMask) o_2@@103 f_4@@103) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30054_13893_13756#PolymorphicMapType_30054| ZeroMask) o_2@@103 f_4@@103))
)))
(assert (forall ((o_2@@104 T@Ref) (f_4@@104 T@Field_38052_38057) ) (! (= (select (|PolymorphicMapType_30054_13813_156025#PolymorphicMapType_30054| ZeroMask) o_2@@104 f_4@@104) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30054_13813_156025#PolymorphicMapType_30054| ZeroMask) o_2@@104 f_4@@104))
)))
(assert (forall ((o_2@@105 T@Ref) (f_4@@105 T@Field_13813_53) ) (! (= (select (|PolymorphicMapType_30054_13813_53#PolymorphicMapType_30054| ZeroMask) o_2@@105 f_4@@105) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30054_13813_53#PolymorphicMapType_30054| ZeroMask) o_2@@105 f_4@@105))
)))
(assert (forall ((o_2@@106 T@Ref) (f_4@@106 T@Field_13813_1186) ) (! (= (select (|PolymorphicMapType_30054_13813_1186#PolymorphicMapType_30054| ZeroMask) o_2@@106 f_4@@106) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30054_13813_1186#PolymorphicMapType_30054| ZeroMask) o_2@@106 f_4@@106))
)))
(assert (forall ((o_2@@107 T@Ref) (f_4@@107 T@Field_38039_38040) ) (! (= (select (|PolymorphicMapType_30054_13813_13814#PolymorphicMapType_30054| ZeroMask) o_2@@107 f_4@@107) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30054_13813_13814#PolymorphicMapType_30054| ZeroMask) o_2@@107 f_4@@107))
)))
(assert (forall ((o_2@@108 T@Ref) (f_4@@108 T@Field_13813_13756) ) (! (= (select (|PolymorphicMapType_30054_13813_13756#PolymorphicMapType_30054| ZeroMask) o_2@@108 f_4@@108) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30054_13813_13756#PolymorphicMapType_30054| ZeroMask) o_2@@108 f_4@@108))
)))
(assert (forall ((o_2@@109 T@Ref) (f_4@@109 T@Field_35892_35897) ) (! (= (select (|PolymorphicMapType_30054_13788_155614#PolymorphicMapType_30054| ZeroMask) o_2@@109 f_4@@109) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30054_13788_155614#PolymorphicMapType_30054| ZeroMask) o_2@@109 f_4@@109))
)))
(assert (forall ((o_2@@110 T@Ref) (f_4@@110 T@Field_34511_53) ) (! (= (select (|PolymorphicMapType_30054_13788_53#PolymorphicMapType_30054| ZeroMask) o_2@@110 f_4@@110) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30054_13788_53#PolymorphicMapType_30054| ZeroMask) o_2@@110 f_4@@110))
)))
(assert (forall ((o_2@@111 T@Ref) (f_4@@111 T@Field_34511_1186) ) (! (= (select (|PolymorphicMapType_30054_13788_1186#PolymorphicMapType_30054| ZeroMask) o_2@@111 f_4@@111) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30054_13788_1186#PolymorphicMapType_30054| ZeroMask) o_2@@111 f_4@@111))
)))
(assert (forall ((o_2@@112 T@Ref) (f_4@@112 T@Field_34511_34512) ) (! (= (select (|PolymorphicMapType_30054_13788_13789#PolymorphicMapType_30054| ZeroMask) o_2@@112 f_4@@112) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30054_13788_13789#PolymorphicMapType_30054| ZeroMask) o_2@@112 f_4@@112))
)))
(assert (forall ((o_2@@113 T@Ref) (f_4@@113 T@Field_34511_13756) ) (! (= (select (|PolymorphicMapType_30054_13788_13756#PolymorphicMapType_30054| ZeroMask) o_2@@113 f_4@@113) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30054_13788_13756#PolymorphicMapType_30054| ZeroMask) o_2@@113 f_4@@113))
)))
(assert (forall ((o_2@@114 T@Ref) (f_4@@114 T@Field_13755_33534) ) (! (= (select (|PolymorphicMapType_30054_13755_155203#PolymorphicMapType_30054| ZeroMask) o_2@@114 f_4@@114) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30054_13755_155203#PolymorphicMapType_30054| ZeroMask) o_2@@114 f_4@@114))
)))
(assert (forall ((o_2@@115 T@Ref) (f_4@@115 T@Field_30093_53) ) (! (= (select (|PolymorphicMapType_30054_13755_53#PolymorphicMapType_30054| ZeroMask) o_2@@115 f_4@@115) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30054_13755_53#PolymorphicMapType_30054| ZeroMask) o_2@@115 f_4@@115))
)))
(assert (forall ((o_2@@116 T@Ref) (f_4@@116 T@Field_33419_1186) ) (! (= (select (|PolymorphicMapType_30054_13753_1186#PolymorphicMapType_30054| ZeroMask) o_2@@116 f_4@@116) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30054_13753_1186#PolymorphicMapType_30054| ZeroMask) o_2@@116 f_4@@116))
)))
(assert (forall ((o_2@@117 T@Ref) (f_4@@117 T@Field_13755_13814) ) (! (= (select (|PolymorphicMapType_30054_13755_13789#PolymorphicMapType_30054| ZeroMask) o_2@@117 f_4@@117) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30054_13755_13789#PolymorphicMapType_30054| ZeroMask) o_2@@117 f_4@@117))
)))
(assert (forall ((o_2@@118 T@Ref) (f_4@@118 T@Field_30106_30107) ) (! (= (select (|PolymorphicMapType_30054_13755_13756#PolymorphicMapType_30054| ZeroMask) o_2@@118 f_4@@118) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30054_13755_13756#PolymorphicMapType_30054| ZeroMask) o_2@@118 f_4@@118))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_30033) (ExhaleHeap@@43 T@PolymorphicMapType_30033) (Mask@@104 T@PolymorphicMapType_30054) (pm_f_41@@11 T@Field_34511_34512) ) (!  (=> (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@43 Mask@@104) (=> (and (HasDirectPerm_34511_13814 Mask@@104 null pm_f_41@@11) (IsPredicateField_13788_13789 pm_f_41@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_41 T@Ref) (f_130@@29 T@Field_33419_1186) ) (!  (=> (select (|PolymorphicMapType_30582_13753_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) null (PredicateMaskField_13788 pm_f_41@@11))) o2_41 f_130@@29) (= (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@49) o2_41 f_130@@29) (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41 f_130@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41 f_130@@29))
)) (forall ((o2_41@@0 T@Ref) (f_130@@30 T@Field_30106_30107) ) (!  (=> (select (|PolymorphicMapType_30582_13755_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) null (PredicateMaskField_13788 pm_f_41@@11))) o2_41@@0 f_130@@30) (= (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@49) o2_41@@0 f_130@@30) (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@0 f_130@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@0 f_130@@30))
))) (forall ((o2_41@@1 T@Ref) (f_130@@31 T@Field_30093_53) ) (!  (=> (select (|PolymorphicMapType_30582_13753_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) null (PredicateMaskField_13788 pm_f_41@@11))) o2_41@@1 f_130@@31) (= (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@49) o2_41@@1 f_130@@31) (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@1 f_130@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@1 f_130@@31))
))) (forall ((o2_41@@2 T@Ref) (f_130@@32 T@Field_13755_13814) ) (!  (=> (select (|PolymorphicMapType_30582_13753_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) null (PredicateMaskField_13788 pm_f_41@@11))) o2_41@@2 f_130@@32) (= (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@49) o2_41@@2 f_130@@32) (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@2 f_130@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@2 f_130@@32))
))) (forall ((o2_41@@3 T@Ref) (f_130@@33 T@Field_13755_33534) ) (!  (=> (select (|PolymorphicMapType_30582_13753_134784#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) null (PredicateMaskField_13788 pm_f_41@@11))) o2_41@@3 f_130@@33) (= (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@49) o2_41@@3 f_130@@33) (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@3 f_130@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@3 f_130@@33))
))) (forall ((o2_41@@4 T@Ref) (f_130@@34 T@Field_33516_1186) ) (!  (=> (select (|PolymorphicMapType_30582_33516_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) null (PredicateMaskField_13788 pm_f_41@@11))) o2_41@@4 f_130@@34) (= (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@49) o2_41@@4 f_130@@34) (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@4 f_130@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@4 f_130@@34))
))) (forall ((o2_41@@5 T@Ref) (f_130@@35 T@Field_33516_13756) ) (!  (=> (select (|PolymorphicMapType_30582_33516_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) null (PredicateMaskField_13788 pm_f_41@@11))) o2_41@@5 f_130@@35) (= (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@49) o2_41@@5 f_130@@35) (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@5 f_130@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@5 f_130@@35))
))) (forall ((o2_41@@6 T@Ref) (f_130@@36 T@Field_33516_53) ) (!  (=> (select (|PolymorphicMapType_30582_33516_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) null (PredicateMaskField_13788 pm_f_41@@11))) o2_41@@6 f_130@@36) (= (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@49) o2_41@@6 f_130@@36) (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@6 f_130@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@6 f_130@@36))
))) (forall ((o2_41@@7 T@Ref) (f_130@@37 T@Field_33516_33517) ) (!  (=> (select (|PolymorphicMapType_30582_33516_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) null (PredicateMaskField_13788 pm_f_41@@11))) o2_41@@7 f_130@@37) (= (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@49) o2_41@@7 f_130@@37) (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@7 f_130@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@7 f_130@@37))
))) (forall ((o2_41@@8 T@Ref) (f_130@@38 T@Field_33529_33534) ) (!  (=> (select (|PolymorphicMapType_30582_33516_135832#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) null (PredicateMaskField_13788 pm_f_41@@11))) o2_41@@8 f_130@@38) (= (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@49) o2_41@@8 f_130@@38) (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@8 f_130@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@8 f_130@@38))
))) (forall ((o2_41@@9 T@Ref) (f_130@@39 T@Field_34511_1186) ) (!  (=> (select (|PolymorphicMapType_30582_34511_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) null (PredicateMaskField_13788 pm_f_41@@11))) o2_41@@9 f_130@@39) (= (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@49) o2_41@@9 f_130@@39) (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@9 f_130@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@9 f_130@@39))
))) (forall ((o2_41@@10 T@Ref) (f_130@@40 T@Field_34511_13756) ) (!  (=> (select (|PolymorphicMapType_30582_34511_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) null (PredicateMaskField_13788 pm_f_41@@11))) o2_41@@10 f_130@@40) (= (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@49) o2_41@@10 f_130@@40) (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@10 f_130@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@10 f_130@@40))
))) (forall ((o2_41@@11 T@Ref) (f_130@@41 T@Field_34511_53) ) (!  (=> (select (|PolymorphicMapType_30582_34511_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) null (PredicateMaskField_13788 pm_f_41@@11))) o2_41@@11 f_130@@41) (= (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@49) o2_41@@11 f_130@@41) (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@11 f_130@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@11 f_130@@41))
))) (forall ((o2_41@@12 T@Ref) (f_130@@42 T@Field_34511_34512) ) (!  (=> (select (|PolymorphicMapType_30582_34511_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) null (PredicateMaskField_13788 pm_f_41@@11))) o2_41@@12 f_130@@42) (= (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@49) o2_41@@12 f_130@@42) (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@12 f_130@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@12 f_130@@42))
))) (forall ((o2_41@@13 T@Ref) (f_130@@43 T@Field_35892_35897) ) (!  (=> (select (|PolymorphicMapType_30582_34511_136880#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) null (PredicateMaskField_13788 pm_f_41@@11))) o2_41@@13 f_130@@43) (= (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) o2_41@@13 f_130@@43) (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@13 f_130@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@13 f_130@@43))
))) (forall ((o2_41@@14 T@Ref) (f_130@@44 T@Field_13813_1186) ) (!  (=> (select (|PolymorphicMapType_30582_38039_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) null (PredicateMaskField_13788 pm_f_41@@11))) o2_41@@14 f_130@@44) (= (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@49) o2_41@@14 f_130@@44) (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@14 f_130@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@14 f_130@@44))
))) (forall ((o2_41@@15 T@Ref) (f_130@@45 T@Field_13813_13756) ) (!  (=> (select (|PolymorphicMapType_30582_38039_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) null (PredicateMaskField_13788 pm_f_41@@11))) o2_41@@15 f_130@@45) (= (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@49) o2_41@@15 f_130@@45) (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@15 f_130@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@15 f_130@@45))
))) (forall ((o2_41@@16 T@Ref) (f_130@@46 T@Field_13813_53) ) (!  (=> (select (|PolymorphicMapType_30582_38039_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) null (PredicateMaskField_13788 pm_f_41@@11))) o2_41@@16 f_130@@46) (= (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@49) o2_41@@16 f_130@@46) (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@16 f_130@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@16 f_130@@46))
))) (forall ((o2_41@@17 T@Ref) (f_130@@47 T@Field_38039_38040) ) (!  (=> (select (|PolymorphicMapType_30582_38039_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) null (PredicateMaskField_13788 pm_f_41@@11))) o2_41@@17 f_130@@47) (= (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@49) o2_41@@17 f_130@@47) (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@17 f_130@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@17 f_130@@47))
))) (forall ((o2_41@@18 T@Ref) (f_130@@48 T@Field_38052_38057) ) (!  (=> (select (|PolymorphicMapType_30582_38039_137928#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) null (PredicateMaskField_13788 pm_f_41@@11))) o2_41@@18 f_130@@48) (= (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@49) o2_41@@18 f_130@@48) (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@18 f_130@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@18 f_130@@48))
))) (forall ((o2_41@@19 T@Ref) (f_130@@49 T@Field_13853_1186) ) (!  (=> (select (|PolymorphicMapType_30582_53810_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) null (PredicateMaskField_13788 pm_f_41@@11))) o2_41@@19 f_130@@49) (= (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@49) o2_41@@19 f_130@@49) (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@19 f_130@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@19 f_130@@49))
))) (forall ((o2_41@@20 T@Ref) (f_130@@50 T@Field_13853_13756) ) (!  (=> (select (|PolymorphicMapType_30582_53810_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) null (PredicateMaskField_13788 pm_f_41@@11))) o2_41@@20 f_130@@50) (= (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@49) o2_41@@20 f_130@@50) (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@20 f_130@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@20 f_130@@50))
))) (forall ((o2_41@@21 T@Ref) (f_130@@51 T@Field_13853_53) ) (!  (=> (select (|PolymorphicMapType_30582_53810_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) null (PredicateMaskField_13788 pm_f_41@@11))) o2_41@@21 f_130@@51) (= (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@49) o2_41@@21 f_130@@51) (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@21 f_130@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@21 f_130@@51))
))) (forall ((o2_41@@22 T@Ref) (f_130@@52 T@Field_53810_53811) ) (!  (=> (select (|PolymorphicMapType_30582_53810_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) null (PredicateMaskField_13788 pm_f_41@@11))) o2_41@@22 f_130@@52) (= (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@49) o2_41@@22 f_130@@52) (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@22 f_130@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@22 f_130@@52))
))) (forall ((o2_41@@23 T@Ref) (f_130@@53 T@Field_53823_53828) ) (!  (=> (select (|PolymorphicMapType_30582_53810_138976#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) null (PredicateMaskField_13788 pm_f_41@@11))) o2_41@@23 f_130@@53) (= (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@49) o2_41@@23 f_130@@53) (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@23 f_130@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@23 f_130@@53))
))) (forall ((o2_41@@24 T@Ref) (f_130@@54 T@Field_13893_1186) ) (!  (=> (select (|PolymorphicMapType_30582_55007_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) null (PredicateMaskField_13788 pm_f_41@@11))) o2_41@@24 f_130@@54) (= (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@49) o2_41@@24 f_130@@54) (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@24 f_130@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@24 f_130@@54))
))) (forall ((o2_41@@25 T@Ref) (f_130@@55 T@Field_13893_13756) ) (!  (=> (select (|PolymorphicMapType_30582_55007_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) null (PredicateMaskField_13788 pm_f_41@@11))) o2_41@@25 f_130@@55) (= (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@49) o2_41@@25 f_130@@55) (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@25 f_130@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@25 f_130@@55))
))) (forall ((o2_41@@26 T@Ref) (f_130@@56 T@Field_13893_53) ) (!  (=> (select (|PolymorphicMapType_30582_55007_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) null (PredicateMaskField_13788 pm_f_41@@11))) o2_41@@26 f_130@@56) (= (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@49) o2_41@@26 f_130@@56) (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@26 f_130@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@26 f_130@@56))
))) (forall ((o2_41@@27 T@Ref) (f_130@@57 T@Field_55007_55008) ) (!  (=> (select (|PolymorphicMapType_30582_55007_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) null (PredicateMaskField_13788 pm_f_41@@11))) o2_41@@27 f_130@@57) (= (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@49) o2_41@@27 f_130@@57) (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@27 f_130@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@27 f_130@@57))
))) (forall ((o2_41@@28 T@Ref) (f_130@@58 T@Field_60385_60390) ) (!  (=> (select (|PolymorphicMapType_30582_55007_140024#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@49) null (PredicateMaskField_13788 pm_f_41@@11))) o2_41@@28 f_130@@58) (= (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@49) o2_41@@28 f_130@@58) (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@28 f_130@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| ExhaleHeap@@43) o2_41@@28 f_130@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@43 Mask@@104) (IsPredicateField_13788_13789 pm_f_41@@11))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_30033) (ExhaleHeap@@44 T@PolymorphicMapType_30033) (Mask@@105 T@PolymorphicMapType_30054) (pm_f_41@@12 T@Field_33516_33517) ) (!  (=> (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@44 Mask@@105) (=> (and (HasDirectPerm_33516_13814 Mask@@105 null pm_f_41@@12) (IsPredicateField_13759_13760 pm_f_41@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_41@@29 T@Ref) (f_130@@59 T@Field_33419_1186) ) (!  (=> (select (|PolymorphicMapType_30582_13753_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) null (PredicateMaskField_13759 pm_f_41@@12))) o2_41@@29 f_130@@59) (= (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@50) o2_41@@29 f_130@@59) (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@29 f_130@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@29 f_130@@59))
)) (forall ((o2_41@@30 T@Ref) (f_130@@60 T@Field_30106_30107) ) (!  (=> (select (|PolymorphicMapType_30582_13755_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) null (PredicateMaskField_13759 pm_f_41@@12))) o2_41@@30 f_130@@60) (= (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@50) o2_41@@30 f_130@@60) (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@30 f_130@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@30 f_130@@60))
))) (forall ((o2_41@@31 T@Ref) (f_130@@61 T@Field_30093_53) ) (!  (=> (select (|PolymorphicMapType_30582_13753_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) null (PredicateMaskField_13759 pm_f_41@@12))) o2_41@@31 f_130@@61) (= (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@50) o2_41@@31 f_130@@61) (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@31 f_130@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@31 f_130@@61))
))) (forall ((o2_41@@32 T@Ref) (f_130@@62 T@Field_13755_13814) ) (!  (=> (select (|PolymorphicMapType_30582_13753_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) null (PredicateMaskField_13759 pm_f_41@@12))) o2_41@@32 f_130@@62) (= (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@50) o2_41@@32 f_130@@62) (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@32 f_130@@62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@32 f_130@@62))
))) (forall ((o2_41@@33 T@Ref) (f_130@@63 T@Field_13755_33534) ) (!  (=> (select (|PolymorphicMapType_30582_13753_134784#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) null (PredicateMaskField_13759 pm_f_41@@12))) o2_41@@33 f_130@@63) (= (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@50) o2_41@@33 f_130@@63) (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@33 f_130@@63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@33 f_130@@63))
))) (forall ((o2_41@@34 T@Ref) (f_130@@64 T@Field_33516_1186) ) (!  (=> (select (|PolymorphicMapType_30582_33516_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) null (PredicateMaskField_13759 pm_f_41@@12))) o2_41@@34 f_130@@64) (= (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@50) o2_41@@34 f_130@@64) (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@34 f_130@@64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@34 f_130@@64))
))) (forall ((o2_41@@35 T@Ref) (f_130@@65 T@Field_33516_13756) ) (!  (=> (select (|PolymorphicMapType_30582_33516_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) null (PredicateMaskField_13759 pm_f_41@@12))) o2_41@@35 f_130@@65) (= (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@50) o2_41@@35 f_130@@65) (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@35 f_130@@65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@35 f_130@@65))
))) (forall ((o2_41@@36 T@Ref) (f_130@@66 T@Field_33516_53) ) (!  (=> (select (|PolymorphicMapType_30582_33516_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) null (PredicateMaskField_13759 pm_f_41@@12))) o2_41@@36 f_130@@66) (= (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@50) o2_41@@36 f_130@@66) (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@36 f_130@@66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@36 f_130@@66))
))) (forall ((o2_41@@37 T@Ref) (f_130@@67 T@Field_33516_33517) ) (!  (=> (select (|PolymorphicMapType_30582_33516_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) null (PredicateMaskField_13759 pm_f_41@@12))) o2_41@@37 f_130@@67) (= (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@50) o2_41@@37 f_130@@67) (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@37 f_130@@67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@37 f_130@@67))
))) (forall ((o2_41@@38 T@Ref) (f_130@@68 T@Field_33529_33534) ) (!  (=> (select (|PolymorphicMapType_30582_33516_135832#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) null (PredicateMaskField_13759 pm_f_41@@12))) o2_41@@38 f_130@@68) (= (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) o2_41@@38 f_130@@68) (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@38 f_130@@68)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@38 f_130@@68))
))) (forall ((o2_41@@39 T@Ref) (f_130@@69 T@Field_34511_1186) ) (!  (=> (select (|PolymorphicMapType_30582_34511_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) null (PredicateMaskField_13759 pm_f_41@@12))) o2_41@@39 f_130@@69) (= (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@50) o2_41@@39 f_130@@69) (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@39 f_130@@69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@39 f_130@@69))
))) (forall ((o2_41@@40 T@Ref) (f_130@@70 T@Field_34511_13756) ) (!  (=> (select (|PolymorphicMapType_30582_34511_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) null (PredicateMaskField_13759 pm_f_41@@12))) o2_41@@40 f_130@@70) (= (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@50) o2_41@@40 f_130@@70) (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@40 f_130@@70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@40 f_130@@70))
))) (forall ((o2_41@@41 T@Ref) (f_130@@71 T@Field_34511_53) ) (!  (=> (select (|PolymorphicMapType_30582_34511_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) null (PredicateMaskField_13759 pm_f_41@@12))) o2_41@@41 f_130@@71) (= (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@50) o2_41@@41 f_130@@71) (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@41 f_130@@71)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@41 f_130@@71))
))) (forall ((o2_41@@42 T@Ref) (f_130@@72 T@Field_34511_34512) ) (!  (=> (select (|PolymorphicMapType_30582_34511_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) null (PredicateMaskField_13759 pm_f_41@@12))) o2_41@@42 f_130@@72) (= (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@50) o2_41@@42 f_130@@72) (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@42 f_130@@72)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@42 f_130@@72))
))) (forall ((o2_41@@43 T@Ref) (f_130@@73 T@Field_35892_35897) ) (!  (=> (select (|PolymorphicMapType_30582_34511_136880#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) null (PredicateMaskField_13759 pm_f_41@@12))) o2_41@@43 f_130@@73) (= (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@50) o2_41@@43 f_130@@73) (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@43 f_130@@73)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@43 f_130@@73))
))) (forall ((o2_41@@44 T@Ref) (f_130@@74 T@Field_13813_1186) ) (!  (=> (select (|PolymorphicMapType_30582_38039_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) null (PredicateMaskField_13759 pm_f_41@@12))) o2_41@@44 f_130@@74) (= (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@50) o2_41@@44 f_130@@74) (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@44 f_130@@74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@44 f_130@@74))
))) (forall ((o2_41@@45 T@Ref) (f_130@@75 T@Field_13813_13756) ) (!  (=> (select (|PolymorphicMapType_30582_38039_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) null (PredicateMaskField_13759 pm_f_41@@12))) o2_41@@45 f_130@@75) (= (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@50) o2_41@@45 f_130@@75) (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@45 f_130@@75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@45 f_130@@75))
))) (forall ((o2_41@@46 T@Ref) (f_130@@76 T@Field_13813_53) ) (!  (=> (select (|PolymorphicMapType_30582_38039_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) null (PredicateMaskField_13759 pm_f_41@@12))) o2_41@@46 f_130@@76) (= (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@50) o2_41@@46 f_130@@76) (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@46 f_130@@76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@46 f_130@@76))
))) (forall ((o2_41@@47 T@Ref) (f_130@@77 T@Field_38039_38040) ) (!  (=> (select (|PolymorphicMapType_30582_38039_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) null (PredicateMaskField_13759 pm_f_41@@12))) o2_41@@47 f_130@@77) (= (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@50) o2_41@@47 f_130@@77) (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@47 f_130@@77)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@47 f_130@@77))
))) (forall ((o2_41@@48 T@Ref) (f_130@@78 T@Field_38052_38057) ) (!  (=> (select (|PolymorphicMapType_30582_38039_137928#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) null (PredicateMaskField_13759 pm_f_41@@12))) o2_41@@48 f_130@@78) (= (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@50) o2_41@@48 f_130@@78) (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@48 f_130@@78)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@48 f_130@@78))
))) (forall ((o2_41@@49 T@Ref) (f_130@@79 T@Field_13853_1186) ) (!  (=> (select (|PolymorphicMapType_30582_53810_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) null (PredicateMaskField_13759 pm_f_41@@12))) o2_41@@49 f_130@@79) (= (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@50) o2_41@@49 f_130@@79) (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@49 f_130@@79)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@49 f_130@@79))
))) (forall ((o2_41@@50 T@Ref) (f_130@@80 T@Field_13853_13756) ) (!  (=> (select (|PolymorphicMapType_30582_53810_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) null (PredicateMaskField_13759 pm_f_41@@12))) o2_41@@50 f_130@@80) (= (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@50) o2_41@@50 f_130@@80) (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@50 f_130@@80)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@50 f_130@@80))
))) (forall ((o2_41@@51 T@Ref) (f_130@@81 T@Field_13853_53) ) (!  (=> (select (|PolymorphicMapType_30582_53810_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) null (PredicateMaskField_13759 pm_f_41@@12))) o2_41@@51 f_130@@81) (= (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@50) o2_41@@51 f_130@@81) (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@51 f_130@@81)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@51 f_130@@81))
))) (forall ((o2_41@@52 T@Ref) (f_130@@82 T@Field_53810_53811) ) (!  (=> (select (|PolymorphicMapType_30582_53810_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) null (PredicateMaskField_13759 pm_f_41@@12))) o2_41@@52 f_130@@82) (= (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@50) o2_41@@52 f_130@@82) (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@52 f_130@@82)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@52 f_130@@82))
))) (forall ((o2_41@@53 T@Ref) (f_130@@83 T@Field_53823_53828) ) (!  (=> (select (|PolymorphicMapType_30582_53810_138976#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) null (PredicateMaskField_13759 pm_f_41@@12))) o2_41@@53 f_130@@83) (= (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@50) o2_41@@53 f_130@@83) (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@53 f_130@@83)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@53 f_130@@83))
))) (forall ((o2_41@@54 T@Ref) (f_130@@84 T@Field_13893_1186) ) (!  (=> (select (|PolymorphicMapType_30582_55007_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) null (PredicateMaskField_13759 pm_f_41@@12))) o2_41@@54 f_130@@84) (= (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@50) o2_41@@54 f_130@@84) (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@54 f_130@@84)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@54 f_130@@84))
))) (forall ((o2_41@@55 T@Ref) (f_130@@85 T@Field_13893_13756) ) (!  (=> (select (|PolymorphicMapType_30582_55007_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) null (PredicateMaskField_13759 pm_f_41@@12))) o2_41@@55 f_130@@85) (= (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@50) o2_41@@55 f_130@@85) (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@55 f_130@@85)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@55 f_130@@85))
))) (forall ((o2_41@@56 T@Ref) (f_130@@86 T@Field_13893_53) ) (!  (=> (select (|PolymorphicMapType_30582_55007_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) null (PredicateMaskField_13759 pm_f_41@@12))) o2_41@@56 f_130@@86) (= (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@50) o2_41@@56 f_130@@86) (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@56 f_130@@86)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@56 f_130@@86))
))) (forall ((o2_41@@57 T@Ref) (f_130@@87 T@Field_55007_55008) ) (!  (=> (select (|PolymorphicMapType_30582_55007_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) null (PredicateMaskField_13759 pm_f_41@@12))) o2_41@@57 f_130@@87) (= (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@50) o2_41@@57 f_130@@87) (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@57 f_130@@87)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@57 f_130@@87))
))) (forall ((o2_41@@58 T@Ref) (f_130@@88 T@Field_60385_60390) ) (!  (=> (select (|PolymorphicMapType_30582_55007_140024#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@50) null (PredicateMaskField_13759 pm_f_41@@12))) o2_41@@58 f_130@@88) (= (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@50) o2_41@@58 f_130@@88) (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@58 f_130@@88)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| ExhaleHeap@@44) o2_41@@58 f_130@@88))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@44 Mask@@105) (IsPredicateField_13759_13760 pm_f_41@@12))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_30033) (ExhaleHeap@@45 T@PolymorphicMapType_30033) (Mask@@106 T@PolymorphicMapType_30054) (pm_f_41@@13 T@Field_55007_55008) ) (!  (=> (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@45 Mask@@106) (=> (and (HasDirectPerm_13893_13894 Mask@@106 null pm_f_41@@13) (IsPredicateField_13893_13894 pm_f_41@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_41@@59 T@Ref) (f_130@@89 T@Field_33419_1186) ) (!  (=> (select (|PolymorphicMapType_30582_13753_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) null (PredicateMaskField_13893 pm_f_41@@13))) o2_41@@59 f_130@@89) (= (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@51) o2_41@@59 f_130@@89) (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@59 f_130@@89)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@59 f_130@@89))
)) (forall ((o2_41@@60 T@Ref) (f_130@@90 T@Field_30106_30107) ) (!  (=> (select (|PolymorphicMapType_30582_13755_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) null (PredicateMaskField_13893 pm_f_41@@13))) o2_41@@60 f_130@@90) (= (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@51) o2_41@@60 f_130@@90) (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@60 f_130@@90)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@60 f_130@@90))
))) (forall ((o2_41@@61 T@Ref) (f_130@@91 T@Field_30093_53) ) (!  (=> (select (|PolymorphicMapType_30582_13753_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) null (PredicateMaskField_13893 pm_f_41@@13))) o2_41@@61 f_130@@91) (= (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@51) o2_41@@61 f_130@@91) (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@61 f_130@@91)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@61 f_130@@91))
))) (forall ((o2_41@@62 T@Ref) (f_130@@92 T@Field_13755_13814) ) (!  (=> (select (|PolymorphicMapType_30582_13753_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) null (PredicateMaskField_13893 pm_f_41@@13))) o2_41@@62 f_130@@92) (= (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@51) o2_41@@62 f_130@@92) (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@62 f_130@@92)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@62 f_130@@92))
))) (forall ((o2_41@@63 T@Ref) (f_130@@93 T@Field_13755_33534) ) (!  (=> (select (|PolymorphicMapType_30582_13753_134784#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) null (PredicateMaskField_13893 pm_f_41@@13))) o2_41@@63 f_130@@93) (= (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@51) o2_41@@63 f_130@@93) (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@63 f_130@@93)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@63 f_130@@93))
))) (forall ((o2_41@@64 T@Ref) (f_130@@94 T@Field_33516_1186) ) (!  (=> (select (|PolymorphicMapType_30582_33516_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) null (PredicateMaskField_13893 pm_f_41@@13))) o2_41@@64 f_130@@94) (= (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@51) o2_41@@64 f_130@@94) (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@64 f_130@@94)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@64 f_130@@94))
))) (forall ((o2_41@@65 T@Ref) (f_130@@95 T@Field_33516_13756) ) (!  (=> (select (|PolymorphicMapType_30582_33516_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) null (PredicateMaskField_13893 pm_f_41@@13))) o2_41@@65 f_130@@95) (= (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@51) o2_41@@65 f_130@@95) (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@65 f_130@@95)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@65 f_130@@95))
))) (forall ((o2_41@@66 T@Ref) (f_130@@96 T@Field_33516_53) ) (!  (=> (select (|PolymorphicMapType_30582_33516_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) null (PredicateMaskField_13893 pm_f_41@@13))) o2_41@@66 f_130@@96) (= (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@51) o2_41@@66 f_130@@96) (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@66 f_130@@96)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@66 f_130@@96))
))) (forall ((o2_41@@67 T@Ref) (f_130@@97 T@Field_33516_33517) ) (!  (=> (select (|PolymorphicMapType_30582_33516_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) null (PredicateMaskField_13893 pm_f_41@@13))) o2_41@@67 f_130@@97) (= (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@51) o2_41@@67 f_130@@97) (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@67 f_130@@97)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@67 f_130@@97))
))) (forall ((o2_41@@68 T@Ref) (f_130@@98 T@Field_33529_33534) ) (!  (=> (select (|PolymorphicMapType_30582_33516_135832#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) null (PredicateMaskField_13893 pm_f_41@@13))) o2_41@@68 f_130@@98) (= (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@51) o2_41@@68 f_130@@98) (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@68 f_130@@98)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@68 f_130@@98))
))) (forall ((o2_41@@69 T@Ref) (f_130@@99 T@Field_34511_1186) ) (!  (=> (select (|PolymorphicMapType_30582_34511_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) null (PredicateMaskField_13893 pm_f_41@@13))) o2_41@@69 f_130@@99) (= (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@51) o2_41@@69 f_130@@99) (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@69 f_130@@99)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@69 f_130@@99))
))) (forall ((o2_41@@70 T@Ref) (f_130@@100 T@Field_34511_13756) ) (!  (=> (select (|PolymorphicMapType_30582_34511_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) null (PredicateMaskField_13893 pm_f_41@@13))) o2_41@@70 f_130@@100) (= (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@51) o2_41@@70 f_130@@100) (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@70 f_130@@100)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@70 f_130@@100))
))) (forall ((o2_41@@71 T@Ref) (f_130@@101 T@Field_34511_53) ) (!  (=> (select (|PolymorphicMapType_30582_34511_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) null (PredicateMaskField_13893 pm_f_41@@13))) o2_41@@71 f_130@@101) (= (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@51) o2_41@@71 f_130@@101) (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@71 f_130@@101)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@71 f_130@@101))
))) (forall ((o2_41@@72 T@Ref) (f_130@@102 T@Field_34511_34512) ) (!  (=> (select (|PolymorphicMapType_30582_34511_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) null (PredicateMaskField_13893 pm_f_41@@13))) o2_41@@72 f_130@@102) (= (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@51) o2_41@@72 f_130@@102) (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@72 f_130@@102)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@72 f_130@@102))
))) (forall ((o2_41@@73 T@Ref) (f_130@@103 T@Field_35892_35897) ) (!  (=> (select (|PolymorphicMapType_30582_34511_136880#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) null (PredicateMaskField_13893 pm_f_41@@13))) o2_41@@73 f_130@@103) (= (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@51) o2_41@@73 f_130@@103) (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@73 f_130@@103)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@73 f_130@@103))
))) (forall ((o2_41@@74 T@Ref) (f_130@@104 T@Field_13813_1186) ) (!  (=> (select (|PolymorphicMapType_30582_38039_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) null (PredicateMaskField_13893 pm_f_41@@13))) o2_41@@74 f_130@@104) (= (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@51) o2_41@@74 f_130@@104) (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@74 f_130@@104)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@74 f_130@@104))
))) (forall ((o2_41@@75 T@Ref) (f_130@@105 T@Field_13813_13756) ) (!  (=> (select (|PolymorphicMapType_30582_38039_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) null (PredicateMaskField_13893 pm_f_41@@13))) o2_41@@75 f_130@@105) (= (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@51) o2_41@@75 f_130@@105) (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@75 f_130@@105)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@75 f_130@@105))
))) (forall ((o2_41@@76 T@Ref) (f_130@@106 T@Field_13813_53) ) (!  (=> (select (|PolymorphicMapType_30582_38039_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) null (PredicateMaskField_13893 pm_f_41@@13))) o2_41@@76 f_130@@106) (= (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@51) o2_41@@76 f_130@@106) (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@76 f_130@@106)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@76 f_130@@106))
))) (forall ((o2_41@@77 T@Ref) (f_130@@107 T@Field_38039_38040) ) (!  (=> (select (|PolymorphicMapType_30582_38039_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) null (PredicateMaskField_13893 pm_f_41@@13))) o2_41@@77 f_130@@107) (= (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@51) o2_41@@77 f_130@@107) (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@77 f_130@@107)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@77 f_130@@107))
))) (forall ((o2_41@@78 T@Ref) (f_130@@108 T@Field_38052_38057) ) (!  (=> (select (|PolymorphicMapType_30582_38039_137928#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) null (PredicateMaskField_13893 pm_f_41@@13))) o2_41@@78 f_130@@108) (= (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@51) o2_41@@78 f_130@@108) (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@78 f_130@@108)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@78 f_130@@108))
))) (forall ((o2_41@@79 T@Ref) (f_130@@109 T@Field_13853_1186) ) (!  (=> (select (|PolymorphicMapType_30582_53810_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) null (PredicateMaskField_13893 pm_f_41@@13))) o2_41@@79 f_130@@109) (= (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@51) o2_41@@79 f_130@@109) (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@79 f_130@@109)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@79 f_130@@109))
))) (forall ((o2_41@@80 T@Ref) (f_130@@110 T@Field_13853_13756) ) (!  (=> (select (|PolymorphicMapType_30582_53810_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) null (PredicateMaskField_13893 pm_f_41@@13))) o2_41@@80 f_130@@110) (= (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@51) o2_41@@80 f_130@@110) (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@80 f_130@@110)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@80 f_130@@110))
))) (forall ((o2_41@@81 T@Ref) (f_130@@111 T@Field_13853_53) ) (!  (=> (select (|PolymorphicMapType_30582_53810_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) null (PredicateMaskField_13893 pm_f_41@@13))) o2_41@@81 f_130@@111) (= (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@51) o2_41@@81 f_130@@111) (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@81 f_130@@111)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@81 f_130@@111))
))) (forall ((o2_41@@82 T@Ref) (f_130@@112 T@Field_53810_53811) ) (!  (=> (select (|PolymorphicMapType_30582_53810_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) null (PredicateMaskField_13893 pm_f_41@@13))) o2_41@@82 f_130@@112) (= (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@51) o2_41@@82 f_130@@112) (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@82 f_130@@112)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@82 f_130@@112))
))) (forall ((o2_41@@83 T@Ref) (f_130@@113 T@Field_53823_53828) ) (!  (=> (select (|PolymorphicMapType_30582_53810_138976#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) null (PredicateMaskField_13893 pm_f_41@@13))) o2_41@@83 f_130@@113) (= (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@51) o2_41@@83 f_130@@113) (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@83 f_130@@113)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@83 f_130@@113))
))) (forall ((o2_41@@84 T@Ref) (f_130@@114 T@Field_13893_1186) ) (!  (=> (select (|PolymorphicMapType_30582_55007_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) null (PredicateMaskField_13893 pm_f_41@@13))) o2_41@@84 f_130@@114) (= (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@51) o2_41@@84 f_130@@114) (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@84 f_130@@114)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@84 f_130@@114))
))) (forall ((o2_41@@85 T@Ref) (f_130@@115 T@Field_13893_13756) ) (!  (=> (select (|PolymorphicMapType_30582_55007_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) null (PredicateMaskField_13893 pm_f_41@@13))) o2_41@@85 f_130@@115) (= (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@51) o2_41@@85 f_130@@115) (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@85 f_130@@115)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@85 f_130@@115))
))) (forall ((o2_41@@86 T@Ref) (f_130@@116 T@Field_13893_53) ) (!  (=> (select (|PolymorphicMapType_30582_55007_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) null (PredicateMaskField_13893 pm_f_41@@13))) o2_41@@86 f_130@@116) (= (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@51) o2_41@@86 f_130@@116) (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@86 f_130@@116)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@86 f_130@@116))
))) (forall ((o2_41@@87 T@Ref) (f_130@@117 T@Field_55007_55008) ) (!  (=> (select (|PolymorphicMapType_30582_55007_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) null (PredicateMaskField_13893 pm_f_41@@13))) o2_41@@87 f_130@@117) (= (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@51) o2_41@@87 f_130@@117) (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@87 f_130@@117)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@87 f_130@@117))
))) (forall ((o2_41@@88 T@Ref) (f_130@@118 T@Field_60385_60390) ) (!  (=> (select (|PolymorphicMapType_30582_55007_140024#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) null (PredicateMaskField_13893 pm_f_41@@13))) o2_41@@88 f_130@@118) (= (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@51) o2_41@@88 f_130@@118) (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@88 f_130@@118)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| ExhaleHeap@@45) o2_41@@88 f_130@@118))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@45 Mask@@106) (IsPredicateField_13893_13894 pm_f_41@@13))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_30033) (ExhaleHeap@@46 T@PolymorphicMapType_30033) (Mask@@107 T@PolymorphicMapType_30054) (pm_f_41@@14 T@Field_53810_53811) ) (!  (=> (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@46 Mask@@107) (=> (and (HasDirectPerm_13853_13854 Mask@@107 null pm_f_41@@14) (IsPredicateField_13853_13854 pm_f_41@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_41@@89 T@Ref) (f_130@@119 T@Field_33419_1186) ) (!  (=> (select (|PolymorphicMapType_30582_13753_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) null (PredicateMaskField_13853 pm_f_41@@14))) o2_41@@89 f_130@@119) (= (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@52) o2_41@@89 f_130@@119) (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@89 f_130@@119)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@89 f_130@@119))
)) (forall ((o2_41@@90 T@Ref) (f_130@@120 T@Field_30106_30107) ) (!  (=> (select (|PolymorphicMapType_30582_13755_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) null (PredicateMaskField_13853 pm_f_41@@14))) o2_41@@90 f_130@@120) (= (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@52) o2_41@@90 f_130@@120) (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@90 f_130@@120)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@90 f_130@@120))
))) (forall ((o2_41@@91 T@Ref) (f_130@@121 T@Field_30093_53) ) (!  (=> (select (|PolymorphicMapType_30582_13753_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) null (PredicateMaskField_13853 pm_f_41@@14))) o2_41@@91 f_130@@121) (= (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@52) o2_41@@91 f_130@@121) (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@91 f_130@@121)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@91 f_130@@121))
))) (forall ((o2_41@@92 T@Ref) (f_130@@122 T@Field_13755_13814) ) (!  (=> (select (|PolymorphicMapType_30582_13753_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) null (PredicateMaskField_13853 pm_f_41@@14))) o2_41@@92 f_130@@122) (= (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@52) o2_41@@92 f_130@@122) (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@92 f_130@@122)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@92 f_130@@122))
))) (forall ((o2_41@@93 T@Ref) (f_130@@123 T@Field_13755_33534) ) (!  (=> (select (|PolymorphicMapType_30582_13753_134784#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) null (PredicateMaskField_13853 pm_f_41@@14))) o2_41@@93 f_130@@123) (= (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@52) o2_41@@93 f_130@@123) (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@93 f_130@@123)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@93 f_130@@123))
))) (forall ((o2_41@@94 T@Ref) (f_130@@124 T@Field_33516_1186) ) (!  (=> (select (|PolymorphicMapType_30582_33516_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) null (PredicateMaskField_13853 pm_f_41@@14))) o2_41@@94 f_130@@124) (= (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@52) o2_41@@94 f_130@@124) (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@94 f_130@@124)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@94 f_130@@124))
))) (forall ((o2_41@@95 T@Ref) (f_130@@125 T@Field_33516_13756) ) (!  (=> (select (|PolymorphicMapType_30582_33516_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) null (PredicateMaskField_13853 pm_f_41@@14))) o2_41@@95 f_130@@125) (= (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@52) o2_41@@95 f_130@@125) (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@95 f_130@@125)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@95 f_130@@125))
))) (forall ((o2_41@@96 T@Ref) (f_130@@126 T@Field_33516_53) ) (!  (=> (select (|PolymorphicMapType_30582_33516_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) null (PredicateMaskField_13853 pm_f_41@@14))) o2_41@@96 f_130@@126) (= (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@52) o2_41@@96 f_130@@126) (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@96 f_130@@126)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@96 f_130@@126))
))) (forall ((o2_41@@97 T@Ref) (f_130@@127 T@Field_33516_33517) ) (!  (=> (select (|PolymorphicMapType_30582_33516_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) null (PredicateMaskField_13853 pm_f_41@@14))) o2_41@@97 f_130@@127) (= (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@52) o2_41@@97 f_130@@127) (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@97 f_130@@127)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@97 f_130@@127))
))) (forall ((o2_41@@98 T@Ref) (f_130@@128 T@Field_33529_33534) ) (!  (=> (select (|PolymorphicMapType_30582_33516_135832#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) null (PredicateMaskField_13853 pm_f_41@@14))) o2_41@@98 f_130@@128) (= (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@52) o2_41@@98 f_130@@128) (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@98 f_130@@128)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@98 f_130@@128))
))) (forall ((o2_41@@99 T@Ref) (f_130@@129 T@Field_34511_1186) ) (!  (=> (select (|PolymorphicMapType_30582_34511_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) null (PredicateMaskField_13853 pm_f_41@@14))) o2_41@@99 f_130@@129) (= (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@52) o2_41@@99 f_130@@129) (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@99 f_130@@129)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@99 f_130@@129))
))) (forall ((o2_41@@100 T@Ref) (f_130@@130 T@Field_34511_13756) ) (!  (=> (select (|PolymorphicMapType_30582_34511_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) null (PredicateMaskField_13853 pm_f_41@@14))) o2_41@@100 f_130@@130) (= (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@52) o2_41@@100 f_130@@130) (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@100 f_130@@130)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@100 f_130@@130))
))) (forall ((o2_41@@101 T@Ref) (f_130@@131 T@Field_34511_53) ) (!  (=> (select (|PolymorphicMapType_30582_34511_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) null (PredicateMaskField_13853 pm_f_41@@14))) o2_41@@101 f_130@@131) (= (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@52) o2_41@@101 f_130@@131) (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@101 f_130@@131)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@101 f_130@@131))
))) (forall ((o2_41@@102 T@Ref) (f_130@@132 T@Field_34511_34512) ) (!  (=> (select (|PolymorphicMapType_30582_34511_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) null (PredicateMaskField_13853 pm_f_41@@14))) o2_41@@102 f_130@@132) (= (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@52) o2_41@@102 f_130@@132) (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@102 f_130@@132)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@102 f_130@@132))
))) (forall ((o2_41@@103 T@Ref) (f_130@@133 T@Field_35892_35897) ) (!  (=> (select (|PolymorphicMapType_30582_34511_136880#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) null (PredicateMaskField_13853 pm_f_41@@14))) o2_41@@103 f_130@@133) (= (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@52) o2_41@@103 f_130@@133) (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@103 f_130@@133)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@103 f_130@@133))
))) (forall ((o2_41@@104 T@Ref) (f_130@@134 T@Field_13813_1186) ) (!  (=> (select (|PolymorphicMapType_30582_38039_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) null (PredicateMaskField_13853 pm_f_41@@14))) o2_41@@104 f_130@@134) (= (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@52) o2_41@@104 f_130@@134) (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@104 f_130@@134)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@104 f_130@@134))
))) (forall ((o2_41@@105 T@Ref) (f_130@@135 T@Field_13813_13756) ) (!  (=> (select (|PolymorphicMapType_30582_38039_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) null (PredicateMaskField_13853 pm_f_41@@14))) o2_41@@105 f_130@@135) (= (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@52) o2_41@@105 f_130@@135) (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@105 f_130@@135)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@105 f_130@@135))
))) (forall ((o2_41@@106 T@Ref) (f_130@@136 T@Field_13813_53) ) (!  (=> (select (|PolymorphicMapType_30582_38039_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) null (PredicateMaskField_13853 pm_f_41@@14))) o2_41@@106 f_130@@136) (= (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@52) o2_41@@106 f_130@@136) (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@106 f_130@@136)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@106 f_130@@136))
))) (forall ((o2_41@@107 T@Ref) (f_130@@137 T@Field_38039_38040) ) (!  (=> (select (|PolymorphicMapType_30582_38039_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) null (PredicateMaskField_13853 pm_f_41@@14))) o2_41@@107 f_130@@137) (= (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@52) o2_41@@107 f_130@@137) (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@107 f_130@@137)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@107 f_130@@137))
))) (forall ((o2_41@@108 T@Ref) (f_130@@138 T@Field_38052_38057) ) (!  (=> (select (|PolymorphicMapType_30582_38039_137928#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) null (PredicateMaskField_13853 pm_f_41@@14))) o2_41@@108 f_130@@138) (= (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@52) o2_41@@108 f_130@@138) (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@108 f_130@@138)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@108 f_130@@138))
))) (forall ((o2_41@@109 T@Ref) (f_130@@139 T@Field_13853_1186) ) (!  (=> (select (|PolymorphicMapType_30582_53810_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) null (PredicateMaskField_13853 pm_f_41@@14))) o2_41@@109 f_130@@139) (= (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@52) o2_41@@109 f_130@@139) (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@109 f_130@@139)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@109 f_130@@139))
))) (forall ((o2_41@@110 T@Ref) (f_130@@140 T@Field_13853_13756) ) (!  (=> (select (|PolymorphicMapType_30582_53810_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) null (PredicateMaskField_13853 pm_f_41@@14))) o2_41@@110 f_130@@140) (= (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@52) o2_41@@110 f_130@@140) (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@110 f_130@@140)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@110 f_130@@140))
))) (forall ((o2_41@@111 T@Ref) (f_130@@141 T@Field_13853_53) ) (!  (=> (select (|PolymorphicMapType_30582_53810_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) null (PredicateMaskField_13853 pm_f_41@@14))) o2_41@@111 f_130@@141) (= (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@52) o2_41@@111 f_130@@141) (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@111 f_130@@141)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@111 f_130@@141))
))) (forall ((o2_41@@112 T@Ref) (f_130@@142 T@Field_53810_53811) ) (!  (=> (select (|PolymorphicMapType_30582_53810_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) null (PredicateMaskField_13853 pm_f_41@@14))) o2_41@@112 f_130@@142) (= (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@52) o2_41@@112 f_130@@142) (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@112 f_130@@142)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@112 f_130@@142))
))) (forall ((o2_41@@113 T@Ref) (f_130@@143 T@Field_53823_53828) ) (!  (=> (select (|PolymorphicMapType_30582_53810_138976#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) null (PredicateMaskField_13853 pm_f_41@@14))) o2_41@@113 f_130@@143) (= (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) o2_41@@113 f_130@@143) (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@113 f_130@@143)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@113 f_130@@143))
))) (forall ((o2_41@@114 T@Ref) (f_130@@144 T@Field_13893_1186) ) (!  (=> (select (|PolymorphicMapType_30582_55007_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) null (PredicateMaskField_13853 pm_f_41@@14))) o2_41@@114 f_130@@144) (= (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@52) o2_41@@114 f_130@@144) (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@114 f_130@@144)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@114 f_130@@144))
))) (forall ((o2_41@@115 T@Ref) (f_130@@145 T@Field_13893_13756) ) (!  (=> (select (|PolymorphicMapType_30582_55007_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) null (PredicateMaskField_13853 pm_f_41@@14))) o2_41@@115 f_130@@145) (= (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@52) o2_41@@115 f_130@@145) (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@115 f_130@@145)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@115 f_130@@145))
))) (forall ((o2_41@@116 T@Ref) (f_130@@146 T@Field_13893_53) ) (!  (=> (select (|PolymorphicMapType_30582_55007_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) null (PredicateMaskField_13853 pm_f_41@@14))) o2_41@@116 f_130@@146) (= (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@52) o2_41@@116 f_130@@146) (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@116 f_130@@146)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@116 f_130@@146))
))) (forall ((o2_41@@117 T@Ref) (f_130@@147 T@Field_55007_55008) ) (!  (=> (select (|PolymorphicMapType_30582_55007_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) null (PredicateMaskField_13853 pm_f_41@@14))) o2_41@@117 f_130@@147) (= (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@52) o2_41@@117 f_130@@147) (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@117 f_130@@147)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@117 f_130@@147))
))) (forall ((o2_41@@118 T@Ref) (f_130@@148 T@Field_60385_60390) ) (!  (=> (select (|PolymorphicMapType_30582_55007_140024#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@52) null (PredicateMaskField_13853 pm_f_41@@14))) o2_41@@118 f_130@@148) (= (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@52) o2_41@@118 f_130@@148) (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@118 f_130@@148)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| ExhaleHeap@@46) o2_41@@118 f_130@@148))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@46 Mask@@107) (IsPredicateField_13853_13854 pm_f_41@@14))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_30033) (ExhaleHeap@@47 T@PolymorphicMapType_30033) (Mask@@108 T@PolymorphicMapType_30054) (pm_f_41@@15 T@Field_38039_38040) ) (!  (=> (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@47 Mask@@108) (=> (and (HasDirectPerm_13813_13814 Mask@@108 null pm_f_41@@15) (IsPredicateField_13813_13814 pm_f_41@@15)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_41@@119 T@Ref) (f_130@@149 T@Field_33419_1186) ) (!  (=> (select (|PolymorphicMapType_30582_13753_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) null (PredicateMaskField_13813 pm_f_41@@15))) o2_41@@119 f_130@@149) (= (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@53) o2_41@@119 f_130@@149) (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@119 f_130@@149)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@119 f_130@@149))
)) (forall ((o2_41@@120 T@Ref) (f_130@@150 T@Field_30106_30107) ) (!  (=> (select (|PolymorphicMapType_30582_13755_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) null (PredicateMaskField_13813 pm_f_41@@15))) o2_41@@120 f_130@@150) (= (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@53) o2_41@@120 f_130@@150) (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@120 f_130@@150)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@120 f_130@@150))
))) (forall ((o2_41@@121 T@Ref) (f_130@@151 T@Field_30093_53) ) (!  (=> (select (|PolymorphicMapType_30582_13753_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) null (PredicateMaskField_13813 pm_f_41@@15))) o2_41@@121 f_130@@151) (= (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@53) o2_41@@121 f_130@@151) (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@121 f_130@@151)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@121 f_130@@151))
))) (forall ((o2_41@@122 T@Ref) (f_130@@152 T@Field_13755_13814) ) (!  (=> (select (|PolymorphicMapType_30582_13753_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) null (PredicateMaskField_13813 pm_f_41@@15))) o2_41@@122 f_130@@152) (= (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@53) o2_41@@122 f_130@@152) (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@122 f_130@@152)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@122 f_130@@152))
))) (forall ((o2_41@@123 T@Ref) (f_130@@153 T@Field_13755_33534) ) (!  (=> (select (|PolymorphicMapType_30582_13753_134784#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) null (PredicateMaskField_13813 pm_f_41@@15))) o2_41@@123 f_130@@153) (= (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@53) o2_41@@123 f_130@@153) (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@123 f_130@@153)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@123 f_130@@153))
))) (forall ((o2_41@@124 T@Ref) (f_130@@154 T@Field_33516_1186) ) (!  (=> (select (|PolymorphicMapType_30582_33516_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) null (PredicateMaskField_13813 pm_f_41@@15))) o2_41@@124 f_130@@154) (= (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@53) o2_41@@124 f_130@@154) (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@124 f_130@@154)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@124 f_130@@154))
))) (forall ((o2_41@@125 T@Ref) (f_130@@155 T@Field_33516_13756) ) (!  (=> (select (|PolymorphicMapType_30582_33516_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) null (PredicateMaskField_13813 pm_f_41@@15))) o2_41@@125 f_130@@155) (= (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@53) o2_41@@125 f_130@@155) (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@125 f_130@@155)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@125 f_130@@155))
))) (forall ((o2_41@@126 T@Ref) (f_130@@156 T@Field_33516_53) ) (!  (=> (select (|PolymorphicMapType_30582_33516_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) null (PredicateMaskField_13813 pm_f_41@@15))) o2_41@@126 f_130@@156) (= (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@53) o2_41@@126 f_130@@156) (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@126 f_130@@156)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@126 f_130@@156))
))) (forall ((o2_41@@127 T@Ref) (f_130@@157 T@Field_33516_33517) ) (!  (=> (select (|PolymorphicMapType_30582_33516_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) null (PredicateMaskField_13813 pm_f_41@@15))) o2_41@@127 f_130@@157) (= (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@53) o2_41@@127 f_130@@157) (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@127 f_130@@157)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@127 f_130@@157))
))) (forall ((o2_41@@128 T@Ref) (f_130@@158 T@Field_33529_33534) ) (!  (=> (select (|PolymorphicMapType_30582_33516_135832#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) null (PredicateMaskField_13813 pm_f_41@@15))) o2_41@@128 f_130@@158) (= (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@53) o2_41@@128 f_130@@158) (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@128 f_130@@158)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@128 f_130@@158))
))) (forall ((o2_41@@129 T@Ref) (f_130@@159 T@Field_34511_1186) ) (!  (=> (select (|PolymorphicMapType_30582_34511_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) null (PredicateMaskField_13813 pm_f_41@@15))) o2_41@@129 f_130@@159) (= (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@53) o2_41@@129 f_130@@159) (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@129 f_130@@159)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@129 f_130@@159))
))) (forall ((o2_41@@130 T@Ref) (f_130@@160 T@Field_34511_13756) ) (!  (=> (select (|PolymorphicMapType_30582_34511_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) null (PredicateMaskField_13813 pm_f_41@@15))) o2_41@@130 f_130@@160) (= (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@53) o2_41@@130 f_130@@160) (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@130 f_130@@160)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@130 f_130@@160))
))) (forall ((o2_41@@131 T@Ref) (f_130@@161 T@Field_34511_53) ) (!  (=> (select (|PolymorphicMapType_30582_34511_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) null (PredicateMaskField_13813 pm_f_41@@15))) o2_41@@131 f_130@@161) (= (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@53) o2_41@@131 f_130@@161) (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@131 f_130@@161)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@131 f_130@@161))
))) (forall ((o2_41@@132 T@Ref) (f_130@@162 T@Field_34511_34512) ) (!  (=> (select (|PolymorphicMapType_30582_34511_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) null (PredicateMaskField_13813 pm_f_41@@15))) o2_41@@132 f_130@@162) (= (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@53) o2_41@@132 f_130@@162) (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@132 f_130@@162)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@132 f_130@@162))
))) (forall ((o2_41@@133 T@Ref) (f_130@@163 T@Field_35892_35897) ) (!  (=> (select (|PolymorphicMapType_30582_34511_136880#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) null (PredicateMaskField_13813 pm_f_41@@15))) o2_41@@133 f_130@@163) (= (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@53) o2_41@@133 f_130@@163) (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@133 f_130@@163)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@133 f_130@@163))
))) (forall ((o2_41@@134 T@Ref) (f_130@@164 T@Field_13813_1186) ) (!  (=> (select (|PolymorphicMapType_30582_38039_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) null (PredicateMaskField_13813 pm_f_41@@15))) o2_41@@134 f_130@@164) (= (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@53) o2_41@@134 f_130@@164) (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@134 f_130@@164)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@134 f_130@@164))
))) (forall ((o2_41@@135 T@Ref) (f_130@@165 T@Field_13813_13756) ) (!  (=> (select (|PolymorphicMapType_30582_38039_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) null (PredicateMaskField_13813 pm_f_41@@15))) o2_41@@135 f_130@@165) (= (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@53) o2_41@@135 f_130@@165) (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@135 f_130@@165)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@135 f_130@@165))
))) (forall ((o2_41@@136 T@Ref) (f_130@@166 T@Field_13813_53) ) (!  (=> (select (|PolymorphicMapType_30582_38039_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) null (PredicateMaskField_13813 pm_f_41@@15))) o2_41@@136 f_130@@166) (= (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@53) o2_41@@136 f_130@@166) (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@136 f_130@@166)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@136 f_130@@166))
))) (forall ((o2_41@@137 T@Ref) (f_130@@167 T@Field_38039_38040) ) (!  (=> (select (|PolymorphicMapType_30582_38039_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) null (PredicateMaskField_13813 pm_f_41@@15))) o2_41@@137 f_130@@167) (= (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@53) o2_41@@137 f_130@@167) (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@137 f_130@@167)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@137 f_130@@167))
))) (forall ((o2_41@@138 T@Ref) (f_130@@168 T@Field_38052_38057) ) (!  (=> (select (|PolymorphicMapType_30582_38039_137928#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) null (PredicateMaskField_13813 pm_f_41@@15))) o2_41@@138 f_130@@168) (= (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) o2_41@@138 f_130@@168) (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@138 f_130@@168)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@138 f_130@@168))
))) (forall ((o2_41@@139 T@Ref) (f_130@@169 T@Field_13853_1186) ) (!  (=> (select (|PolymorphicMapType_30582_53810_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) null (PredicateMaskField_13813 pm_f_41@@15))) o2_41@@139 f_130@@169) (= (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@53) o2_41@@139 f_130@@169) (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@139 f_130@@169)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@139 f_130@@169))
))) (forall ((o2_41@@140 T@Ref) (f_130@@170 T@Field_13853_13756) ) (!  (=> (select (|PolymorphicMapType_30582_53810_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) null (PredicateMaskField_13813 pm_f_41@@15))) o2_41@@140 f_130@@170) (= (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@53) o2_41@@140 f_130@@170) (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@140 f_130@@170)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@140 f_130@@170))
))) (forall ((o2_41@@141 T@Ref) (f_130@@171 T@Field_13853_53) ) (!  (=> (select (|PolymorphicMapType_30582_53810_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) null (PredicateMaskField_13813 pm_f_41@@15))) o2_41@@141 f_130@@171) (= (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@53) o2_41@@141 f_130@@171) (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@141 f_130@@171)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@141 f_130@@171))
))) (forall ((o2_41@@142 T@Ref) (f_130@@172 T@Field_53810_53811) ) (!  (=> (select (|PolymorphicMapType_30582_53810_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) null (PredicateMaskField_13813 pm_f_41@@15))) o2_41@@142 f_130@@172) (= (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@53) o2_41@@142 f_130@@172) (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@142 f_130@@172)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@142 f_130@@172))
))) (forall ((o2_41@@143 T@Ref) (f_130@@173 T@Field_53823_53828) ) (!  (=> (select (|PolymorphicMapType_30582_53810_138976#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) null (PredicateMaskField_13813 pm_f_41@@15))) o2_41@@143 f_130@@173) (= (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@53) o2_41@@143 f_130@@173) (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@143 f_130@@173)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@143 f_130@@173))
))) (forall ((o2_41@@144 T@Ref) (f_130@@174 T@Field_13893_1186) ) (!  (=> (select (|PolymorphicMapType_30582_55007_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) null (PredicateMaskField_13813 pm_f_41@@15))) o2_41@@144 f_130@@174) (= (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@53) o2_41@@144 f_130@@174) (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@144 f_130@@174)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@144 f_130@@174))
))) (forall ((o2_41@@145 T@Ref) (f_130@@175 T@Field_13893_13756) ) (!  (=> (select (|PolymorphicMapType_30582_55007_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) null (PredicateMaskField_13813 pm_f_41@@15))) o2_41@@145 f_130@@175) (= (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@53) o2_41@@145 f_130@@175) (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@145 f_130@@175)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@145 f_130@@175))
))) (forall ((o2_41@@146 T@Ref) (f_130@@176 T@Field_13893_53) ) (!  (=> (select (|PolymorphicMapType_30582_55007_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) null (PredicateMaskField_13813 pm_f_41@@15))) o2_41@@146 f_130@@176) (= (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@53) o2_41@@146 f_130@@176) (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@146 f_130@@176)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@146 f_130@@176))
))) (forall ((o2_41@@147 T@Ref) (f_130@@177 T@Field_55007_55008) ) (!  (=> (select (|PolymorphicMapType_30582_55007_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) null (PredicateMaskField_13813 pm_f_41@@15))) o2_41@@147 f_130@@177) (= (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@53) o2_41@@147 f_130@@177) (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@147 f_130@@177)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@147 f_130@@177))
))) (forall ((o2_41@@148 T@Ref) (f_130@@178 T@Field_60385_60390) ) (!  (=> (select (|PolymorphicMapType_30582_55007_140024#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@53) null (PredicateMaskField_13813 pm_f_41@@15))) o2_41@@148 f_130@@178) (= (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@53) o2_41@@148 f_130@@178) (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@148 f_130@@178)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| ExhaleHeap@@47) o2_41@@148 f_130@@178))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@47 Mask@@108) (IsPredicateField_13813_13814 pm_f_41@@15))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_30033) (ExhaleHeap@@48 T@PolymorphicMapType_30033) (Mask@@109 T@PolymorphicMapType_30054) (pm_f_41@@16 T@Field_13755_13814) ) (!  (=> (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@48 Mask@@109) (=> (and (HasDirectPerm_13755_13814 Mask@@109 null pm_f_41@@16) (IsPredicateField_13755_132027 pm_f_41@@16)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_41@@149 T@Ref) (f_130@@179 T@Field_33419_1186) ) (!  (=> (select (|PolymorphicMapType_30582_13753_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) null (PredicateMaskField_13755 pm_f_41@@16))) o2_41@@149 f_130@@179) (= (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@54) o2_41@@149 f_130@@179) (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@149 f_130@@179)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@149 f_130@@179))
)) (forall ((o2_41@@150 T@Ref) (f_130@@180 T@Field_30106_30107) ) (!  (=> (select (|PolymorphicMapType_30582_13755_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) null (PredicateMaskField_13755 pm_f_41@@16))) o2_41@@150 f_130@@180) (= (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@54) o2_41@@150 f_130@@180) (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@150 f_130@@180)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@150 f_130@@180))
))) (forall ((o2_41@@151 T@Ref) (f_130@@181 T@Field_30093_53) ) (!  (=> (select (|PolymorphicMapType_30582_13753_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) null (PredicateMaskField_13755 pm_f_41@@16))) o2_41@@151 f_130@@181) (= (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@54) o2_41@@151 f_130@@181) (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@151 f_130@@181)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@151 f_130@@181))
))) (forall ((o2_41@@152 T@Ref) (f_130@@182 T@Field_13755_13814) ) (!  (=> (select (|PolymorphicMapType_30582_13753_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) null (PredicateMaskField_13755 pm_f_41@@16))) o2_41@@152 f_130@@182) (= (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@54) o2_41@@152 f_130@@182) (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@152 f_130@@182)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@152 f_130@@182))
))) (forall ((o2_41@@153 T@Ref) (f_130@@183 T@Field_13755_33534) ) (!  (=> (select (|PolymorphicMapType_30582_13753_134784#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) null (PredicateMaskField_13755 pm_f_41@@16))) o2_41@@153 f_130@@183) (= (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) o2_41@@153 f_130@@183) (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@153 f_130@@183)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@153 f_130@@183))
))) (forall ((o2_41@@154 T@Ref) (f_130@@184 T@Field_33516_1186) ) (!  (=> (select (|PolymorphicMapType_30582_33516_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) null (PredicateMaskField_13755 pm_f_41@@16))) o2_41@@154 f_130@@184) (= (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@54) o2_41@@154 f_130@@184) (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@154 f_130@@184)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@154 f_130@@184))
))) (forall ((o2_41@@155 T@Ref) (f_130@@185 T@Field_33516_13756) ) (!  (=> (select (|PolymorphicMapType_30582_33516_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) null (PredicateMaskField_13755 pm_f_41@@16))) o2_41@@155 f_130@@185) (= (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@54) o2_41@@155 f_130@@185) (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@155 f_130@@185)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@155 f_130@@185))
))) (forall ((o2_41@@156 T@Ref) (f_130@@186 T@Field_33516_53) ) (!  (=> (select (|PolymorphicMapType_30582_33516_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) null (PredicateMaskField_13755 pm_f_41@@16))) o2_41@@156 f_130@@186) (= (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@54) o2_41@@156 f_130@@186) (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@156 f_130@@186)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@156 f_130@@186))
))) (forall ((o2_41@@157 T@Ref) (f_130@@187 T@Field_33516_33517) ) (!  (=> (select (|PolymorphicMapType_30582_33516_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) null (PredicateMaskField_13755 pm_f_41@@16))) o2_41@@157 f_130@@187) (= (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@54) o2_41@@157 f_130@@187) (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@157 f_130@@187)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@157 f_130@@187))
))) (forall ((o2_41@@158 T@Ref) (f_130@@188 T@Field_33529_33534) ) (!  (=> (select (|PolymorphicMapType_30582_33516_135832#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) null (PredicateMaskField_13755 pm_f_41@@16))) o2_41@@158 f_130@@188) (= (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@54) o2_41@@158 f_130@@188) (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@158 f_130@@188)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@158 f_130@@188))
))) (forall ((o2_41@@159 T@Ref) (f_130@@189 T@Field_34511_1186) ) (!  (=> (select (|PolymorphicMapType_30582_34511_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) null (PredicateMaskField_13755 pm_f_41@@16))) o2_41@@159 f_130@@189) (= (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@54) o2_41@@159 f_130@@189) (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@159 f_130@@189)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@159 f_130@@189))
))) (forall ((o2_41@@160 T@Ref) (f_130@@190 T@Field_34511_13756) ) (!  (=> (select (|PolymorphicMapType_30582_34511_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) null (PredicateMaskField_13755 pm_f_41@@16))) o2_41@@160 f_130@@190) (= (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@54) o2_41@@160 f_130@@190) (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@160 f_130@@190)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@160 f_130@@190))
))) (forall ((o2_41@@161 T@Ref) (f_130@@191 T@Field_34511_53) ) (!  (=> (select (|PolymorphicMapType_30582_34511_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) null (PredicateMaskField_13755 pm_f_41@@16))) o2_41@@161 f_130@@191) (= (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@54) o2_41@@161 f_130@@191) (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@161 f_130@@191)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@161 f_130@@191))
))) (forall ((o2_41@@162 T@Ref) (f_130@@192 T@Field_34511_34512) ) (!  (=> (select (|PolymorphicMapType_30582_34511_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) null (PredicateMaskField_13755 pm_f_41@@16))) o2_41@@162 f_130@@192) (= (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@54) o2_41@@162 f_130@@192) (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@162 f_130@@192)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@162 f_130@@192))
))) (forall ((o2_41@@163 T@Ref) (f_130@@193 T@Field_35892_35897) ) (!  (=> (select (|PolymorphicMapType_30582_34511_136880#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) null (PredicateMaskField_13755 pm_f_41@@16))) o2_41@@163 f_130@@193) (= (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@54) o2_41@@163 f_130@@193) (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@163 f_130@@193)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@163 f_130@@193))
))) (forall ((o2_41@@164 T@Ref) (f_130@@194 T@Field_13813_1186) ) (!  (=> (select (|PolymorphicMapType_30582_38039_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) null (PredicateMaskField_13755 pm_f_41@@16))) o2_41@@164 f_130@@194) (= (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@54) o2_41@@164 f_130@@194) (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@164 f_130@@194)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@164 f_130@@194))
))) (forall ((o2_41@@165 T@Ref) (f_130@@195 T@Field_13813_13756) ) (!  (=> (select (|PolymorphicMapType_30582_38039_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) null (PredicateMaskField_13755 pm_f_41@@16))) o2_41@@165 f_130@@195) (= (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@54) o2_41@@165 f_130@@195) (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@165 f_130@@195)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@165 f_130@@195))
))) (forall ((o2_41@@166 T@Ref) (f_130@@196 T@Field_13813_53) ) (!  (=> (select (|PolymorphicMapType_30582_38039_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) null (PredicateMaskField_13755 pm_f_41@@16))) o2_41@@166 f_130@@196) (= (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@54) o2_41@@166 f_130@@196) (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@166 f_130@@196)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@166 f_130@@196))
))) (forall ((o2_41@@167 T@Ref) (f_130@@197 T@Field_38039_38040) ) (!  (=> (select (|PolymorphicMapType_30582_38039_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) null (PredicateMaskField_13755 pm_f_41@@16))) o2_41@@167 f_130@@197) (= (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@54) o2_41@@167 f_130@@197) (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@167 f_130@@197)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@167 f_130@@197))
))) (forall ((o2_41@@168 T@Ref) (f_130@@198 T@Field_38052_38057) ) (!  (=> (select (|PolymorphicMapType_30582_38039_137928#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) null (PredicateMaskField_13755 pm_f_41@@16))) o2_41@@168 f_130@@198) (= (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@54) o2_41@@168 f_130@@198) (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@168 f_130@@198)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@168 f_130@@198))
))) (forall ((o2_41@@169 T@Ref) (f_130@@199 T@Field_13853_1186) ) (!  (=> (select (|PolymorphicMapType_30582_53810_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) null (PredicateMaskField_13755 pm_f_41@@16))) o2_41@@169 f_130@@199) (= (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@54) o2_41@@169 f_130@@199) (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@169 f_130@@199)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@169 f_130@@199))
))) (forall ((o2_41@@170 T@Ref) (f_130@@200 T@Field_13853_13756) ) (!  (=> (select (|PolymorphicMapType_30582_53810_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) null (PredicateMaskField_13755 pm_f_41@@16))) o2_41@@170 f_130@@200) (= (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@54) o2_41@@170 f_130@@200) (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@170 f_130@@200)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@170 f_130@@200))
))) (forall ((o2_41@@171 T@Ref) (f_130@@201 T@Field_13853_53) ) (!  (=> (select (|PolymorphicMapType_30582_53810_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) null (PredicateMaskField_13755 pm_f_41@@16))) o2_41@@171 f_130@@201) (= (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@54) o2_41@@171 f_130@@201) (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@171 f_130@@201)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@171 f_130@@201))
))) (forall ((o2_41@@172 T@Ref) (f_130@@202 T@Field_53810_53811) ) (!  (=> (select (|PolymorphicMapType_30582_53810_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) null (PredicateMaskField_13755 pm_f_41@@16))) o2_41@@172 f_130@@202) (= (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@54) o2_41@@172 f_130@@202) (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@172 f_130@@202)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@172 f_130@@202))
))) (forall ((o2_41@@173 T@Ref) (f_130@@203 T@Field_53823_53828) ) (!  (=> (select (|PolymorphicMapType_30582_53810_138976#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) null (PredicateMaskField_13755 pm_f_41@@16))) o2_41@@173 f_130@@203) (= (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@54) o2_41@@173 f_130@@203) (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@173 f_130@@203)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@173 f_130@@203))
))) (forall ((o2_41@@174 T@Ref) (f_130@@204 T@Field_13893_1186) ) (!  (=> (select (|PolymorphicMapType_30582_55007_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) null (PredicateMaskField_13755 pm_f_41@@16))) o2_41@@174 f_130@@204) (= (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@54) o2_41@@174 f_130@@204) (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@174 f_130@@204)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@174 f_130@@204))
))) (forall ((o2_41@@175 T@Ref) (f_130@@205 T@Field_13893_13756) ) (!  (=> (select (|PolymorphicMapType_30582_55007_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) null (PredicateMaskField_13755 pm_f_41@@16))) o2_41@@175 f_130@@205) (= (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@54) o2_41@@175 f_130@@205) (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@175 f_130@@205)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@175 f_130@@205))
))) (forall ((o2_41@@176 T@Ref) (f_130@@206 T@Field_13893_53) ) (!  (=> (select (|PolymorphicMapType_30582_55007_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) null (PredicateMaskField_13755 pm_f_41@@16))) o2_41@@176 f_130@@206) (= (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@54) o2_41@@176 f_130@@206) (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@176 f_130@@206)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@176 f_130@@206))
))) (forall ((o2_41@@177 T@Ref) (f_130@@207 T@Field_55007_55008) ) (!  (=> (select (|PolymorphicMapType_30582_55007_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) null (PredicateMaskField_13755 pm_f_41@@16))) o2_41@@177 f_130@@207) (= (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@54) o2_41@@177 f_130@@207) (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@177 f_130@@207)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@177 f_130@@207))
))) (forall ((o2_41@@178 T@Ref) (f_130@@208 T@Field_60385_60390) ) (!  (=> (select (|PolymorphicMapType_30582_55007_140024#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@54) null (PredicateMaskField_13755 pm_f_41@@16))) o2_41@@178 f_130@@208) (= (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@54) o2_41@@178 f_130@@208) (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@178 f_130@@208)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| ExhaleHeap@@48) o2_41@@178 f_130@@208))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@48 Mask@@109) (IsPredicateField_13755_132027 pm_f_41@@16))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_30033) (ExhaleHeap@@49 T@PolymorphicMapType_30033) (Mask@@110 T@PolymorphicMapType_30054) (pm_f_41@@17 T@Field_34511_34512) ) (!  (=> (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@49 Mask@@110) (=> (and (HasDirectPerm_34511_13814 Mask@@110 null pm_f_41@@17) (IsWandField_34511_143741 pm_f_41@@17)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_41@@179 T@Ref) (f_130@@209 T@Field_33419_1186) ) (!  (=> (select (|PolymorphicMapType_30582_13753_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) null (WandMaskField_34511 pm_f_41@@17))) o2_41@@179 f_130@@209) (= (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@55) o2_41@@179 f_130@@209) (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@179 f_130@@209)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@179 f_130@@209))
)) (forall ((o2_41@@180 T@Ref) (f_130@@210 T@Field_30106_30107) ) (!  (=> (select (|PolymorphicMapType_30582_13755_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) null (WandMaskField_34511 pm_f_41@@17))) o2_41@@180 f_130@@210) (= (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@55) o2_41@@180 f_130@@210) (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@180 f_130@@210)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@180 f_130@@210))
))) (forall ((o2_41@@181 T@Ref) (f_130@@211 T@Field_30093_53) ) (!  (=> (select (|PolymorphicMapType_30582_13753_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) null (WandMaskField_34511 pm_f_41@@17))) o2_41@@181 f_130@@211) (= (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@55) o2_41@@181 f_130@@211) (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@181 f_130@@211)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@181 f_130@@211))
))) (forall ((o2_41@@182 T@Ref) (f_130@@212 T@Field_13755_13814) ) (!  (=> (select (|PolymorphicMapType_30582_13753_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) null (WandMaskField_34511 pm_f_41@@17))) o2_41@@182 f_130@@212) (= (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@55) o2_41@@182 f_130@@212) (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@182 f_130@@212)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@182 f_130@@212))
))) (forall ((o2_41@@183 T@Ref) (f_130@@213 T@Field_13755_33534) ) (!  (=> (select (|PolymorphicMapType_30582_13753_134784#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) null (WandMaskField_34511 pm_f_41@@17))) o2_41@@183 f_130@@213) (= (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@55) o2_41@@183 f_130@@213) (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@183 f_130@@213)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@183 f_130@@213))
))) (forall ((o2_41@@184 T@Ref) (f_130@@214 T@Field_33516_1186) ) (!  (=> (select (|PolymorphicMapType_30582_33516_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) null (WandMaskField_34511 pm_f_41@@17))) o2_41@@184 f_130@@214) (= (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@55) o2_41@@184 f_130@@214) (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@184 f_130@@214)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@184 f_130@@214))
))) (forall ((o2_41@@185 T@Ref) (f_130@@215 T@Field_33516_13756) ) (!  (=> (select (|PolymorphicMapType_30582_33516_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) null (WandMaskField_34511 pm_f_41@@17))) o2_41@@185 f_130@@215) (= (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@55) o2_41@@185 f_130@@215) (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@185 f_130@@215)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@185 f_130@@215))
))) (forall ((o2_41@@186 T@Ref) (f_130@@216 T@Field_33516_53) ) (!  (=> (select (|PolymorphicMapType_30582_33516_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) null (WandMaskField_34511 pm_f_41@@17))) o2_41@@186 f_130@@216) (= (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@55) o2_41@@186 f_130@@216) (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@186 f_130@@216)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@186 f_130@@216))
))) (forall ((o2_41@@187 T@Ref) (f_130@@217 T@Field_33516_33517) ) (!  (=> (select (|PolymorphicMapType_30582_33516_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) null (WandMaskField_34511 pm_f_41@@17))) o2_41@@187 f_130@@217) (= (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@55) o2_41@@187 f_130@@217) (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@187 f_130@@217)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@187 f_130@@217))
))) (forall ((o2_41@@188 T@Ref) (f_130@@218 T@Field_33529_33534) ) (!  (=> (select (|PolymorphicMapType_30582_33516_135832#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) null (WandMaskField_34511 pm_f_41@@17))) o2_41@@188 f_130@@218) (= (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@55) o2_41@@188 f_130@@218) (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@188 f_130@@218)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@188 f_130@@218))
))) (forall ((o2_41@@189 T@Ref) (f_130@@219 T@Field_34511_1186) ) (!  (=> (select (|PolymorphicMapType_30582_34511_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) null (WandMaskField_34511 pm_f_41@@17))) o2_41@@189 f_130@@219) (= (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@55) o2_41@@189 f_130@@219) (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@189 f_130@@219)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@189 f_130@@219))
))) (forall ((o2_41@@190 T@Ref) (f_130@@220 T@Field_34511_13756) ) (!  (=> (select (|PolymorphicMapType_30582_34511_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) null (WandMaskField_34511 pm_f_41@@17))) o2_41@@190 f_130@@220) (= (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@55) o2_41@@190 f_130@@220) (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@190 f_130@@220)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@190 f_130@@220))
))) (forall ((o2_41@@191 T@Ref) (f_130@@221 T@Field_34511_53) ) (!  (=> (select (|PolymorphicMapType_30582_34511_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) null (WandMaskField_34511 pm_f_41@@17))) o2_41@@191 f_130@@221) (= (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@55) o2_41@@191 f_130@@221) (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@191 f_130@@221)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@191 f_130@@221))
))) (forall ((o2_41@@192 T@Ref) (f_130@@222 T@Field_34511_34512) ) (!  (=> (select (|PolymorphicMapType_30582_34511_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) null (WandMaskField_34511 pm_f_41@@17))) o2_41@@192 f_130@@222) (= (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@55) o2_41@@192 f_130@@222) (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@192 f_130@@222)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@192 f_130@@222))
))) (forall ((o2_41@@193 T@Ref) (f_130@@223 T@Field_35892_35897) ) (!  (=> (select (|PolymorphicMapType_30582_34511_136880#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) null (WandMaskField_34511 pm_f_41@@17))) o2_41@@193 f_130@@223) (= (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) o2_41@@193 f_130@@223) (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@193 f_130@@223)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@193 f_130@@223))
))) (forall ((o2_41@@194 T@Ref) (f_130@@224 T@Field_13813_1186) ) (!  (=> (select (|PolymorphicMapType_30582_38039_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) null (WandMaskField_34511 pm_f_41@@17))) o2_41@@194 f_130@@224) (= (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@55) o2_41@@194 f_130@@224) (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@194 f_130@@224)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@194 f_130@@224))
))) (forall ((o2_41@@195 T@Ref) (f_130@@225 T@Field_13813_13756) ) (!  (=> (select (|PolymorphicMapType_30582_38039_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) null (WandMaskField_34511 pm_f_41@@17))) o2_41@@195 f_130@@225) (= (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@55) o2_41@@195 f_130@@225) (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@195 f_130@@225)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@195 f_130@@225))
))) (forall ((o2_41@@196 T@Ref) (f_130@@226 T@Field_13813_53) ) (!  (=> (select (|PolymorphicMapType_30582_38039_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) null (WandMaskField_34511 pm_f_41@@17))) o2_41@@196 f_130@@226) (= (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@55) o2_41@@196 f_130@@226) (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@196 f_130@@226)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@196 f_130@@226))
))) (forall ((o2_41@@197 T@Ref) (f_130@@227 T@Field_38039_38040) ) (!  (=> (select (|PolymorphicMapType_30582_38039_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) null (WandMaskField_34511 pm_f_41@@17))) o2_41@@197 f_130@@227) (= (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@55) o2_41@@197 f_130@@227) (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@197 f_130@@227)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@197 f_130@@227))
))) (forall ((o2_41@@198 T@Ref) (f_130@@228 T@Field_38052_38057) ) (!  (=> (select (|PolymorphicMapType_30582_38039_137928#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) null (WandMaskField_34511 pm_f_41@@17))) o2_41@@198 f_130@@228) (= (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@55) o2_41@@198 f_130@@228) (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@198 f_130@@228)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@198 f_130@@228))
))) (forall ((o2_41@@199 T@Ref) (f_130@@229 T@Field_13853_1186) ) (!  (=> (select (|PolymorphicMapType_30582_53810_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) null (WandMaskField_34511 pm_f_41@@17))) o2_41@@199 f_130@@229) (= (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@55) o2_41@@199 f_130@@229) (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@199 f_130@@229)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@199 f_130@@229))
))) (forall ((o2_41@@200 T@Ref) (f_130@@230 T@Field_13853_13756) ) (!  (=> (select (|PolymorphicMapType_30582_53810_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) null (WandMaskField_34511 pm_f_41@@17))) o2_41@@200 f_130@@230) (= (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@55) o2_41@@200 f_130@@230) (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@200 f_130@@230)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@200 f_130@@230))
))) (forall ((o2_41@@201 T@Ref) (f_130@@231 T@Field_13853_53) ) (!  (=> (select (|PolymorphicMapType_30582_53810_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) null (WandMaskField_34511 pm_f_41@@17))) o2_41@@201 f_130@@231) (= (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@55) o2_41@@201 f_130@@231) (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@201 f_130@@231)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@201 f_130@@231))
))) (forall ((o2_41@@202 T@Ref) (f_130@@232 T@Field_53810_53811) ) (!  (=> (select (|PolymorphicMapType_30582_53810_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) null (WandMaskField_34511 pm_f_41@@17))) o2_41@@202 f_130@@232) (= (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@55) o2_41@@202 f_130@@232) (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@202 f_130@@232)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@202 f_130@@232))
))) (forall ((o2_41@@203 T@Ref) (f_130@@233 T@Field_53823_53828) ) (!  (=> (select (|PolymorphicMapType_30582_53810_138976#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) null (WandMaskField_34511 pm_f_41@@17))) o2_41@@203 f_130@@233) (= (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@55) o2_41@@203 f_130@@233) (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@203 f_130@@233)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@203 f_130@@233))
))) (forall ((o2_41@@204 T@Ref) (f_130@@234 T@Field_13893_1186) ) (!  (=> (select (|PolymorphicMapType_30582_55007_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) null (WandMaskField_34511 pm_f_41@@17))) o2_41@@204 f_130@@234) (= (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@55) o2_41@@204 f_130@@234) (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@204 f_130@@234)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@204 f_130@@234))
))) (forall ((o2_41@@205 T@Ref) (f_130@@235 T@Field_13893_13756) ) (!  (=> (select (|PolymorphicMapType_30582_55007_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) null (WandMaskField_34511 pm_f_41@@17))) o2_41@@205 f_130@@235) (= (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@55) o2_41@@205 f_130@@235) (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@205 f_130@@235)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@205 f_130@@235))
))) (forall ((o2_41@@206 T@Ref) (f_130@@236 T@Field_13893_53) ) (!  (=> (select (|PolymorphicMapType_30582_55007_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) null (WandMaskField_34511 pm_f_41@@17))) o2_41@@206 f_130@@236) (= (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@55) o2_41@@206 f_130@@236) (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@206 f_130@@236)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@206 f_130@@236))
))) (forall ((o2_41@@207 T@Ref) (f_130@@237 T@Field_55007_55008) ) (!  (=> (select (|PolymorphicMapType_30582_55007_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) null (WandMaskField_34511 pm_f_41@@17))) o2_41@@207 f_130@@237) (= (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@55) o2_41@@207 f_130@@237) (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@207 f_130@@237)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@207 f_130@@237))
))) (forall ((o2_41@@208 T@Ref) (f_130@@238 T@Field_60385_60390) ) (!  (=> (select (|PolymorphicMapType_30582_55007_140024#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@55) null (WandMaskField_34511 pm_f_41@@17))) o2_41@@208 f_130@@238) (= (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@55) o2_41@@208 f_130@@238) (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@208 f_130@@238)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| ExhaleHeap@@49) o2_41@@208 f_130@@238))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@49 Mask@@110) (IsWandField_34511_143741 pm_f_41@@17))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_30033) (ExhaleHeap@@50 T@PolymorphicMapType_30033) (Mask@@111 T@PolymorphicMapType_30054) (pm_f_41@@18 T@Field_33516_33517) ) (!  (=> (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@50 Mask@@111) (=> (and (HasDirectPerm_33516_13814 Mask@@111 null pm_f_41@@18) (IsWandField_33516_143384 pm_f_41@@18)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_41@@209 T@Ref) (f_130@@239 T@Field_33419_1186) ) (!  (=> (select (|PolymorphicMapType_30582_13753_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) null (WandMaskField_33516 pm_f_41@@18))) o2_41@@209 f_130@@239) (= (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@56) o2_41@@209 f_130@@239) (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@209 f_130@@239)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@209 f_130@@239))
)) (forall ((o2_41@@210 T@Ref) (f_130@@240 T@Field_30106_30107) ) (!  (=> (select (|PolymorphicMapType_30582_13755_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) null (WandMaskField_33516 pm_f_41@@18))) o2_41@@210 f_130@@240) (= (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@56) o2_41@@210 f_130@@240) (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@210 f_130@@240)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@210 f_130@@240))
))) (forall ((o2_41@@211 T@Ref) (f_130@@241 T@Field_30093_53) ) (!  (=> (select (|PolymorphicMapType_30582_13753_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) null (WandMaskField_33516 pm_f_41@@18))) o2_41@@211 f_130@@241) (= (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@56) o2_41@@211 f_130@@241) (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@211 f_130@@241)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@211 f_130@@241))
))) (forall ((o2_41@@212 T@Ref) (f_130@@242 T@Field_13755_13814) ) (!  (=> (select (|PolymorphicMapType_30582_13753_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) null (WandMaskField_33516 pm_f_41@@18))) o2_41@@212 f_130@@242) (= (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@56) o2_41@@212 f_130@@242) (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@212 f_130@@242)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@212 f_130@@242))
))) (forall ((o2_41@@213 T@Ref) (f_130@@243 T@Field_13755_33534) ) (!  (=> (select (|PolymorphicMapType_30582_13753_134784#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) null (WandMaskField_33516 pm_f_41@@18))) o2_41@@213 f_130@@243) (= (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@56) o2_41@@213 f_130@@243) (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@213 f_130@@243)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@213 f_130@@243))
))) (forall ((o2_41@@214 T@Ref) (f_130@@244 T@Field_33516_1186) ) (!  (=> (select (|PolymorphicMapType_30582_33516_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) null (WandMaskField_33516 pm_f_41@@18))) o2_41@@214 f_130@@244) (= (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@56) o2_41@@214 f_130@@244) (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@214 f_130@@244)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@214 f_130@@244))
))) (forall ((o2_41@@215 T@Ref) (f_130@@245 T@Field_33516_13756) ) (!  (=> (select (|PolymorphicMapType_30582_33516_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) null (WandMaskField_33516 pm_f_41@@18))) o2_41@@215 f_130@@245) (= (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@56) o2_41@@215 f_130@@245) (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@215 f_130@@245)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@215 f_130@@245))
))) (forall ((o2_41@@216 T@Ref) (f_130@@246 T@Field_33516_53) ) (!  (=> (select (|PolymorphicMapType_30582_33516_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) null (WandMaskField_33516 pm_f_41@@18))) o2_41@@216 f_130@@246) (= (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@56) o2_41@@216 f_130@@246) (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@216 f_130@@246)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@216 f_130@@246))
))) (forall ((o2_41@@217 T@Ref) (f_130@@247 T@Field_33516_33517) ) (!  (=> (select (|PolymorphicMapType_30582_33516_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) null (WandMaskField_33516 pm_f_41@@18))) o2_41@@217 f_130@@247) (= (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@56) o2_41@@217 f_130@@247) (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@217 f_130@@247)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@217 f_130@@247))
))) (forall ((o2_41@@218 T@Ref) (f_130@@248 T@Field_33529_33534) ) (!  (=> (select (|PolymorphicMapType_30582_33516_135832#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) null (WandMaskField_33516 pm_f_41@@18))) o2_41@@218 f_130@@248) (= (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) o2_41@@218 f_130@@248) (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@218 f_130@@248)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@218 f_130@@248))
))) (forall ((o2_41@@219 T@Ref) (f_130@@249 T@Field_34511_1186) ) (!  (=> (select (|PolymorphicMapType_30582_34511_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) null (WandMaskField_33516 pm_f_41@@18))) o2_41@@219 f_130@@249) (= (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@56) o2_41@@219 f_130@@249) (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@219 f_130@@249)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@219 f_130@@249))
))) (forall ((o2_41@@220 T@Ref) (f_130@@250 T@Field_34511_13756) ) (!  (=> (select (|PolymorphicMapType_30582_34511_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) null (WandMaskField_33516 pm_f_41@@18))) o2_41@@220 f_130@@250) (= (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@56) o2_41@@220 f_130@@250) (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@220 f_130@@250)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@220 f_130@@250))
))) (forall ((o2_41@@221 T@Ref) (f_130@@251 T@Field_34511_53) ) (!  (=> (select (|PolymorphicMapType_30582_34511_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) null (WandMaskField_33516 pm_f_41@@18))) o2_41@@221 f_130@@251) (= (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@56) o2_41@@221 f_130@@251) (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@221 f_130@@251)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@221 f_130@@251))
))) (forall ((o2_41@@222 T@Ref) (f_130@@252 T@Field_34511_34512) ) (!  (=> (select (|PolymorphicMapType_30582_34511_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) null (WandMaskField_33516 pm_f_41@@18))) o2_41@@222 f_130@@252) (= (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@56) o2_41@@222 f_130@@252) (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@222 f_130@@252)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@222 f_130@@252))
))) (forall ((o2_41@@223 T@Ref) (f_130@@253 T@Field_35892_35897) ) (!  (=> (select (|PolymorphicMapType_30582_34511_136880#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) null (WandMaskField_33516 pm_f_41@@18))) o2_41@@223 f_130@@253) (= (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@56) o2_41@@223 f_130@@253) (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@223 f_130@@253)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@223 f_130@@253))
))) (forall ((o2_41@@224 T@Ref) (f_130@@254 T@Field_13813_1186) ) (!  (=> (select (|PolymorphicMapType_30582_38039_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) null (WandMaskField_33516 pm_f_41@@18))) o2_41@@224 f_130@@254) (= (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@56) o2_41@@224 f_130@@254) (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@224 f_130@@254)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@224 f_130@@254))
))) (forall ((o2_41@@225 T@Ref) (f_130@@255 T@Field_13813_13756) ) (!  (=> (select (|PolymorphicMapType_30582_38039_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) null (WandMaskField_33516 pm_f_41@@18))) o2_41@@225 f_130@@255) (= (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@56) o2_41@@225 f_130@@255) (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@225 f_130@@255)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@225 f_130@@255))
))) (forall ((o2_41@@226 T@Ref) (f_130@@256 T@Field_13813_53) ) (!  (=> (select (|PolymorphicMapType_30582_38039_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) null (WandMaskField_33516 pm_f_41@@18))) o2_41@@226 f_130@@256) (= (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@56) o2_41@@226 f_130@@256) (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@226 f_130@@256)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@226 f_130@@256))
))) (forall ((o2_41@@227 T@Ref) (f_130@@257 T@Field_38039_38040) ) (!  (=> (select (|PolymorphicMapType_30582_38039_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) null (WandMaskField_33516 pm_f_41@@18))) o2_41@@227 f_130@@257) (= (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@56) o2_41@@227 f_130@@257) (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@227 f_130@@257)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@227 f_130@@257))
))) (forall ((o2_41@@228 T@Ref) (f_130@@258 T@Field_38052_38057) ) (!  (=> (select (|PolymorphicMapType_30582_38039_137928#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) null (WandMaskField_33516 pm_f_41@@18))) o2_41@@228 f_130@@258) (= (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@56) o2_41@@228 f_130@@258) (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@228 f_130@@258)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@228 f_130@@258))
))) (forall ((o2_41@@229 T@Ref) (f_130@@259 T@Field_13853_1186) ) (!  (=> (select (|PolymorphicMapType_30582_53810_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) null (WandMaskField_33516 pm_f_41@@18))) o2_41@@229 f_130@@259) (= (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@56) o2_41@@229 f_130@@259) (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@229 f_130@@259)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@229 f_130@@259))
))) (forall ((o2_41@@230 T@Ref) (f_130@@260 T@Field_13853_13756) ) (!  (=> (select (|PolymorphicMapType_30582_53810_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) null (WandMaskField_33516 pm_f_41@@18))) o2_41@@230 f_130@@260) (= (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@56) o2_41@@230 f_130@@260) (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@230 f_130@@260)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@230 f_130@@260))
))) (forall ((o2_41@@231 T@Ref) (f_130@@261 T@Field_13853_53) ) (!  (=> (select (|PolymorphicMapType_30582_53810_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) null (WandMaskField_33516 pm_f_41@@18))) o2_41@@231 f_130@@261) (= (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@56) o2_41@@231 f_130@@261) (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@231 f_130@@261)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@231 f_130@@261))
))) (forall ((o2_41@@232 T@Ref) (f_130@@262 T@Field_53810_53811) ) (!  (=> (select (|PolymorphicMapType_30582_53810_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) null (WandMaskField_33516 pm_f_41@@18))) o2_41@@232 f_130@@262) (= (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@56) o2_41@@232 f_130@@262) (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@232 f_130@@262)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@232 f_130@@262))
))) (forall ((o2_41@@233 T@Ref) (f_130@@263 T@Field_53823_53828) ) (!  (=> (select (|PolymorphicMapType_30582_53810_138976#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) null (WandMaskField_33516 pm_f_41@@18))) o2_41@@233 f_130@@263) (= (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@56) o2_41@@233 f_130@@263) (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@233 f_130@@263)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@233 f_130@@263))
))) (forall ((o2_41@@234 T@Ref) (f_130@@264 T@Field_13893_1186) ) (!  (=> (select (|PolymorphicMapType_30582_55007_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) null (WandMaskField_33516 pm_f_41@@18))) o2_41@@234 f_130@@264) (= (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@56) o2_41@@234 f_130@@264) (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@234 f_130@@264)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@234 f_130@@264))
))) (forall ((o2_41@@235 T@Ref) (f_130@@265 T@Field_13893_13756) ) (!  (=> (select (|PolymorphicMapType_30582_55007_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) null (WandMaskField_33516 pm_f_41@@18))) o2_41@@235 f_130@@265) (= (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@56) o2_41@@235 f_130@@265) (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@235 f_130@@265)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@235 f_130@@265))
))) (forall ((o2_41@@236 T@Ref) (f_130@@266 T@Field_13893_53) ) (!  (=> (select (|PolymorphicMapType_30582_55007_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) null (WandMaskField_33516 pm_f_41@@18))) o2_41@@236 f_130@@266) (= (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@56) o2_41@@236 f_130@@266) (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@236 f_130@@266)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@236 f_130@@266))
))) (forall ((o2_41@@237 T@Ref) (f_130@@267 T@Field_55007_55008) ) (!  (=> (select (|PolymorphicMapType_30582_55007_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) null (WandMaskField_33516 pm_f_41@@18))) o2_41@@237 f_130@@267) (= (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@56) o2_41@@237 f_130@@267) (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@237 f_130@@267)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@237 f_130@@267))
))) (forall ((o2_41@@238 T@Ref) (f_130@@268 T@Field_60385_60390) ) (!  (=> (select (|PolymorphicMapType_30582_55007_140024#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@56) null (WandMaskField_33516 pm_f_41@@18))) o2_41@@238 f_130@@268) (= (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@56) o2_41@@238 f_130@@268) (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@238 f_130@@268)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| ExhaleHeap@@50) o2_41@@238 f_130@@268))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@50 Mask@@111) (IsWandField_33516_143384 pm_f_41@@18))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_30033) (ExhaleHeap@@51 T@PolymorphicMapType_30033) (Mask@@112 T@PolymorphicMapType_30054) (pm_f_41@@19 T@Field_55007_55008) ) (!  (=> (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@51 Mask@@112) (=> (and (HasDirectPerm_13893_13894 Mask@@112 null pm_f_41@@19) (IsWandField_13893_143027 pm_f_41@@19)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_41@@239 T@Ref) (f_130@@269 T@Field_33419_1186) ) (!  (=> (select (|PolymorphicMapType_30582_13753_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) null (WandMaskField_13893 pm_f_41@@19))) o2_41@@239 f_130@@269) (= (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@57) o2_41@@239 f_130@@269) (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@239 f_130@@269)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@239 f_130@@269))
)) (forall ((o2_41@@240 T@Ref) (f_130@@270 T@Field_30106_30107) ) (!  (=> (select (|PolymorphicMapType_30582_13755_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) null (WandMaskField_13893 pm_f_41@@19))) o2_41@@240 f_130@@270) (= (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@57) o2_41@@240 f_130@@270) (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@240 f_130@@270)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@240 f_130@@270))
))) (forall ((o2_41@@241 T@Ref) (f_130@@271 T@Field_30093_53) ) (!  (=> (select (|PolymorphicMapType_30582_13753_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) null (WandMaskField_13893 pm_f_41@@19))) o2_41@@241 f_130@@271) (= (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@57) o2_41@@241 f_130@@271) (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@241 f_130@@271)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@241 f_130@@271))
))) (forall ((o2_41@@242 T@Ref) (f_130@@272 T@Field_13755_13814) ) (!  (=> (select (|PolymorphicMapType_30582_13753_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) null (WandMaskField_13893 pm_f_41@@19))) o2_41@@242 f_130@@272) (= (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@57) o2_41@@242 f_130@@272) (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@242 f_130@@272)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@242 f_130@@272))
))) (forall ((o2_41@@243 T@Ref) (f_130@@273 T@Field_13755_33534) ) (!  (=> (select (|PolymorphicMapType_30582_13753_134784#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) null (WandMaskField_13893 pm_f_41@@19))) o2_41@@243 f_130@@273) (= (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@57) o2_41@@243 f_130@@273) (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@243 f_130@@273)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@243 f_130@@273))
))) (forall ((o2_41@@244 T@Ref) (f_130@@274 T@Field_33516_1186) ) (!  (=> (select (|PolymorphicMapType_30582_33516_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) null (WandMaskField_13893 pm_f_41@@19))) o2_41@@244 f_130@@274) (= (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@57) o2_41@@244 f_130@@274) (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@244 f_130@@274)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@244 f_130@@274))
))) (forall ((o2_41@@245 T@Ref) (f_130@@275 T@Field_33516_13756) ) (!  (=> (select (|PolymorphicMapType_30582_33516_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) null (WandMaskField_13893 pm_f_41@@19))) o2_41@@245 f_130@@275) (= (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@57) o2_41@@245 f_130@@275) (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@245 f_130@@275)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@245 f_130@@275))
))) (forall ((o2_41@@246 T@Ref) (f_130@@276 T@Field_33516_53) ) (!  (=> (select (|PolymorphicMapType_30582_33516_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) null (WandMaskField_13893 pm_f_41@@19))) o2_41@@246 f_130@@276) (= (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@57) o2_41@@246 f_130@@276) (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@246 f_130@@276)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@246 f_130@@276))
))) (forall ((o2_41@@247 T@Ref) (f_130@@277 T@Field_33516_33517) ) (!  (=> (select (|PolymorphicMapType_30582_33516_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) null (WandMaskField_13893 pm_f_41@@19))) o2_41@@247 f_130@@277) (= (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@57) o2_41@@247 f_130@@277) (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@247 f_130@@277)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@247 f_130@@277))
))) (forall ((o2_41@@248 T@Ref) (f_130@@278 T@Field_33529_33534) ) (!  (=> (select (|PolymorphicMapType_30582_33516_135832#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) null (WandMaskField_13893 pm_f_41@@19))) o2_41@@248 f_130@@278) (= (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@57) o2_41@@248 f_130@@278) (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@248 f_130@@278)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@248 f_130@@278))
))) (forall ((o2_41@@249 T@Ref) (f_130@@279 T@Field_34511_1186) ) (!  (=> (select (|PolymorphicMapType_30582_34511_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) null (WandMaskField_13893 pm_f_41@@19))) o2_41@@249 f_130@@279) (= (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@57) o2_41@@249 f_130@@279) (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@249 f_130@@279)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@249 f_130@@279))
))) (forall ((o2_41@@250 T@Ref) (f_130@@280 T@Field_34511_13756) ) (!  (=> (select (|PolymorphicMapType_30582_34511_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) null (WandMaskField_13893 pm_f_41@@19))) o2_41@@250 f_130@@280) (= (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@57) o2_41@@250 f_130@@280) (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@250 f_130@@280)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@250 f_130@@280))
))) (forall ((o2_41@@251 T@Ref) (f_130@@281 T@Field_34511_53) ) (!  (=> (select (|PolymorphicMapType_30582_34511_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) null (WandMaskField_13893 pm_f_41@@19))) o2_41@@251 f_130@@281) (= (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@57) o2_41@@251 f_130@@281) (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@251 f_130@@281)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@251 f_130@@281))
))) (forall ((o2_41@@252 T@Ref) (f_130@@282 T@Field_34511_34512) ) (!  (=> (select (|PolymorphicMapType_30582_34511_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) null (WandMaskField_13893 pm_f_41@@19))) o2_41@@252 f_130@@282) (= (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@57) o2_41@@252 f_130@@282) (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@252 f_130@@282)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@252 f_130@@282))
))) (forall ((o2_41@@253 T@Ref) (f_130@@283 T@Field_35892_35897) ) (!  (=> (select (|PolymorphicMapType_30582_34511_136880#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) null (WandMaskField_13893 pm_f_41@@19))) o2_41@@253 f_130@@283) (= (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@57) o2_41@@253 f_130@@283) (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@253 f_130@@283)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@253 f_130@@283))
))) (forall ((o2_41@@254 T@Ref) (f_130@@284 T@Field_13813_1186) ) (!  (=> (select (|PolymorphicMapType_30582_38039_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) null (WandMaskField_13893 pm_f_41@@19))) o2_41@@254 f_130@@284) (= (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@57) o2_41@@254 f_130@@284) (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@254 f_130@@284)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@254 f_130@@284))
))) (forall ((o2_41@@255 T@Ref) (f_130@@285 T@Field_13813_13756) ) (!  (=> (select (|PolymorphicMapType_30582_38039_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) null (WandMaskField_13893 pm_f_41@@19))) o2_41@@255 f_130@@285) (= (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@57) o2_41@@255 f_130@@285) (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@255 f_130@@285)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@255 f_130@@285))
))) (forall ((o2_41@@256 T@Ref) (f_130@@286 T@Field_13813_53) ) (!  (=> (select (|PolymorphicMapType_30582_38039_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) null (WandMaskField_13893 pm_f_41@@19))) o2_41@@256 f_130@@286) (= (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@57) o2_41@@256 f_130@@286) (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@256 f_130@@286)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@256 f_130@@286))
))) (forall ((o2_41@@257 T@Ref) (f_130@@287 T@Field_38039_38040) ) (!  (=> (select (|PolymorphicMapType_30582_38039_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) null (WandMaskField_13893 pm_f_41@@19))) o2_41@@257 f_130@@287) (= (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@57) o2_41@@257 f_130@@287) (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@257 f_130@@287)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@257 f_130@@287))
))) (forall ((o2_41@@258 T@Ref) (f_130@@288 T@Field_38052_38057) ) (!  (=> (select (|PolymorphicMapType_30582_38039_137928#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) null (WandMaskField_13893 pm_f_41@@19))) o2_41@@258 f_130@@288) (= (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@57) o2_41@@258 f_130@@288) (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@258 f_130@@288)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@258 f_130@@288))
))) (forall ((o2_41@@259 T@Ref) (f_130@@289 T@Field_13853_1186) ) (!  (=> (select (|PolymorphicMapType_30582_53810_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) null (WandMaskField_13893 pm_f_41@@19))) o2_41@@259 f_130@@289) (= (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@57) o2_41@@259 f_130@@289) (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@259 f_130@@289)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@259 f_130@@289))
))) (forall ((o2_41@@260 T@Ref) (f_130@@290 T@Field_13853_13756) ) (!  (=> (select (|PolymorphicMapType_30582_53810_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) null (WandMaskField_13893 pm_f_41@@19))) o2_41@@260 f_130@@290) (= (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@57) o2_41@@260 f_130@@290) (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@260 f_130@@290)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@260 f_130@@290))
))) (forall ((o2_41@@261 T@Ref) (f_130@@291 T@Field_13853_53) ) (!  (=> (select (|PolymorphicMapType_30582_53810_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) null (WandMaskField_13893 pm_f_41@@19))) o2_41@@261 f_130@@291) (= (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@57) o2_41@@261 f_130@@291) (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@261 f_130@@291)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@261 f_130@@291))
))) (forall ((o2_41@@262 T@Ref) (f_130@@292 T@Field_53810_53811) ) (!  (=> (select (|PolymorphicMapType_30582_53810_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) null (WandMaskField_13893 pm_f_41@@19))) o2_41@@262 f_130@@292) (= (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@57) o2_41@@262 f_130@@292) (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@262 f_130@@292)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@262 f_130@@292))
))) (forall ((o2_41@@263 T@Ref) (f_130@@293 T@Field_53823_53828) ) (!  (=> (select (|PolymorphicMapType_30582_53810_138976#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) null (WandMaskField_13893 pm_f_41@@19))) o2_41@@263 f_130@@293) (= (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@57) o2_41@@263 f_130@@293) (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@263 f_130@@293)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@263 f_130@@293))
))) (forall ((o2_41@@264 T@Ref) (f_130@@294 T@Field_13893_1186) ) (!  (=> (select (|PolymorphicMapType_30582_55007_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) null (WandMaskField_13893 pm_f_41@@19))) o2_41@@264 f_130@@294) (= (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@57) o2_41@@264 f_130@@294) (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@264 f_130@@294)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@264 f_130@@294))
))) (forall ((o2_41@@265 T@Ref) (f_130@@295 T@Field_13893_13756) ) (!  (=> (select (|PolymorphicMapType_30582_55007_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) null (WandMaskField_13893 pm_f_41@@19))) o2_41@@265 f_130@@295) (= (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@57) o2_41@@265 f_130@@295) (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@265 f_130@@295)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@265 f_130@@295))
))) (forall ((o2_41@@266 T@Ref) (f_130@@296 T@Field_13893_53) ) (!  (=> (select (|PolymorphicMapType_30582_55007_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) null (WandMaskField_13893 pm_f_41@@19))) o2_41@@266 f_130@@296) (= (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@57) o2_41@@266 f_130@@296) (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@266 f_130@@296)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@266 f_130@@296))
))) (forall ((o2_41@@267 T@Ref) (f_130@@297 T@Field_55007_55008) ) (!  (=> (select (|PolymorphicMapType_30582_55007_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) null (WandMaskField_13893 pm_f_41@@19))) o2_41@@267 f_130@@297) (= (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@57) o2_41@@267 f_130@@297) (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@267 f_130@@297)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@267 f_130@@297))
))) (forall ((o2_41@@268 T@Ref) (f_130@@298 T@Field_60385_60390) ) (!  (=> (select (|PolymorphicMapType_30582_55007_140024#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) null (WandMaskField_13893 pm_f_41@@19))) o2_41@@268 f_130@@298) (= (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@57) o2_41@@268 f_130@@298) (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@268 f_130@@298)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| ExhaleHeap@@51) o2_41@@268 f_130@@298))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@51 Mask@@112) (IsWandField_13893_143027 pm_f_41@@19))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_30033) (ExhaleHeap@@52 T@PolymorphicMapType_30033) (Mask@@113 T@PolymorphicMapType_30054) (pm_f_41@@20 T@Field_53810_53811) ) (!  (=> (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@52 Mask@@113) (=> (and (HasDirectPerm_13853_13854 Mask@@113 null pm_f_41@@20) (IsWandField_13853_142670 pm_f_41@@20)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_41@@269 T@Ref) (f_130@@299 T@Field_33419_1186) ) (!  (=> (select (|PolymorphicMapType_30582_13753_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) null (WandMaskField_13853 pm_f_41@@20))) o2_41@@269 f_130@@299) (= (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@58) o2_41@@269 f_130@@299) (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@269 f_130@@299)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@269 f_130@@299))
)) (forall ((o2_41@@270 T@Ref) (f_130@@300 T@Field_30106_30107) ) (!  (=> (select (|PolymorphicMapType_30582_13755_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) null (WandMaskField_13853 pm_f_41@@20))) o2_41@@270 f_130@@300) (= (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@58) o2_41@@270 f_130@@300) (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@270 f_130@@300)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@270 f_130@@300))
))) (forall ((o2_41@@271 T@Ref) (f_130@@301 T@Field_30093_53) ) (!  (=> (select (|PolymorphicMapType_30582_13753_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) null (WandMaskField_13853 pm_f_41@@20))) o2_41@@271 f_130@@301) (= (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@58) o2_41@@271 f_130@@301) (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@271 f_130@@301)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@271 f_130@@301))
))) (forall ((o2_41@@272 T@Ref) (f_130@@302 T@Field_13755_13814) ) (!  (=> (select (|PolymorphicMapType_30582_13753_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) null (WandMaskField_13853 pm_f_41@@20))) o2_41@@272 f_130@@302) (= (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@58) o2_41@@272 f_130@@302) (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@272 f_130@@302)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@272 f_130@@302))
))) (forall ((o2_41@@273 T@Ref) (f_130@@303 T@Field_13755_33534) ) (!  (=> (select (|PolymorphicMapType_30582_13753_134784#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) null (WandMaskField_13853 pm_f_41@@20))) o2_41@@273 f_130@@303) (= (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@58) o2_41@@273 f_130@@303) (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@273 f_130@@303)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@273 f_130@@303))
))) (forall ((o2_41@@274 T@Ref) (f_130@@304 T@Field_33516_1186) ) (!  (=> (select (|PolymorphicMapType_30582_33516_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) null (WandMaskField_13853 pm_f_41@@20))) o2_41@@274 f_130@@304) (= (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@58) o2_41@@274 f_130@@304) (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@274 f_130@@304)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@274 f_130@@304))
))) (forall ((o2_41@@275 T@Ref) (f_130@@305 T@Field_33516_13756) ) (!  (=> (select (|PolymorphicMapType_30582_33516_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) null (WandMaskField_13853 pm_f_41@@20))) o2_41@@275 f_130@@305) (= (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@58) o2_41@@275 f_130@@305) (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@275 f_130@@305)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@275 f_130@@305))
))) (forall ((o2_41@@276 T@Ref) (f_130@@306 T@Field_33516_53) ) (!  (=> (select (|PolymorphicMapType_30582_33516_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) null (WandMaskField_13853 pm_f_41@@20))) o2_41@@276 f_130@@306) (= (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@58) o2_41@@276 f_130@@306) (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@276 f_130@@306)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@276 f_130@@306))
))) (forall ((o2_41@@277 T@Ref) (f_130@@307 T@Field_33516_33517) ) (!  (=> (select (|PolymorphicMapType_30582_33516_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) null (WandMaskField_13853 pm_f_41@@20))) o2_41@@277 f_130@@307) (= (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@58) o2_41@@277 f_130@@307) (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@277 f_130@@307)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@277 f_130@@307))
))) (forall ((o2_41@@278 T@Ref) (f_130@@308 T@Field_33529_33534) ) (!  (=> (select (|PolymorphicMapType_30582_33516_135832#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) null (WandMaskField_13853 pm_f_41@@20))) o2_41@@278 f_130@@308) (= (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@58) o2_41@@278 f_130@@308) (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@278 f_130@@308)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@278 f_130@@308))
))) (forall ((o2_41@@279 T@Ref) (f_130@@309 T@Field_34511_1186) ) (!  (=> (select (|PolymorphicMapType_30582_34511_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) null (WandMaskField_13853 pm_f_41@@20))) o2_41@@279 f_130@@309) (= (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@58) o2_41@@279 f_130@@309) (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@279 f_130@@309)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@279 f_130@@309))
))) (forall ((o2_41@@280 T@Ref) (f_130@@310 T@Field_34511_13756) ) (!  (=> (select (|PolymorphicMapType_30582_34511_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) null (WandMaskField_13853 pm_f_41@@20))) o2_41@@280 f_130@@310) (= (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@58) o2_41@@280 f_130@@310) (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@280 f_130@@310)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@280 f_130@@310))
))) (forall ((o2_41@@281 T@Ref) (f_130@@311 T@Field_34511_53) ) (!  (=> (select (|PolymorphicMapType_30582_34511_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) null (WandMaskField_13853 pm_f_41@@20))) o2_41@@281 f_130@@311) (= (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@58) o2_41@@281 f_130@@311) (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@281 f_130@@311)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@281 f_130@@311))
))) (forall ((o2_41@@282 T@Ref) (f_130@@312 T@Field_34511_34512) ) (!  (=> (select (|PolymorphicMapType_30582_34511_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) null (WandMaskField_13853 pm_f_41@@20))) o2_41@@282 f_130@@312) (= (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@58) o2_41@@282 f_130@@312) (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@282 f_130@@312)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@282 f_130@@312))
))) (forall ((o2_41@@283 T@Ref) (f_130@@313 T@Field_35892_35897) ) (!  (=> (select (|PolymorphicMapType_30582_34511_136880#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) null (WandMaskField_13853 pm_f_41@@20))) o2_41@@283 f_130@@313) (= (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@58) o2_41@@283 f_130@@313) (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@283 f_130@@313)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@283 f_130@@313))
))) (forall ((o2_41@@284 T@Ref) (f_130@@314 T@Field_13813_1186) ) (!  (=> (select (|PolymorphicMapType_30582_38039_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) null (WandMaskField_13853 pm_f_41@@20))) o2_41@@284 f_130@@314) (= (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@58) o2_41@@284 f_130@@314) (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@284 f_130@@314)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@284 f_130@@314))
))) (forall ((o2_41@@285 T@Ref) (f_130@@315 T@Field_13813_13756) ) (!  (=> (select (|PolymorphicMapType_30582_38039_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) null (WandMaskField_13853 pm_f_41@@20))) o2_41@@285 f_130@@315) (= (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@58) o2_41@@285 f_130@@315) (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@285 f_130@@315)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@285 f_130@@315))
))) (forall ((o2_41@@286 T@Ref) (f_130@@316 T@Field_13813_53) ) (!  (=> (select (|PolymorphicMapType_30582_38039_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) null (WandMaskField_13853 pm_f_41@@20))) o2_41@@286 f_130@@316) (= (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@58) o2_41@@286 f_130@@316) (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@286 f_130@@316)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@286 f_130@@316))
))) (forall ((o2_41@@287 T@Ref) (f_130@@317 T@Field_38039_38040) ) (!  (=> (select (|PolymorphicMapType_30582_38039_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) null (WandMaskField_13853 pm_f_41@@20))) o2_41@@287 f_130@@317) (= (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@58) o2_41@@287 f_130@@317) (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@287 f_130@@317)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@287 f_130@@317))
))) (forall ((o2_41@@288 T@Ref) (f_130@@318 T@Field_38052_38057) ) (!  (=> (select (|PolymorphicMapType_30582_38039_137928#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) null (WandMaskField_13853 pm_f_41@@20))) o2_41@@288 f_130@@318) (= (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@58) o2_41@@288 f_130@@318) (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@288 f_130@@318)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@288 f_130@@318))
))) (forall ((o2_41@@289 T@Ref) (f_130@@319 T@Field_13853_1186) ) (!  (=> (select (|PolymorphicMapType_30582_53810_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) null (WandMaskField_13853 pm_f_41@@20))) o2_41@@289 f_130@@319) (= (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@58) o2_41@@289 f_130@@319) (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@289 f_130@@319)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@289 f_130@@319))
))) (forall ((o2_41@@290 T@Ref) (f_130@@320 T@Field_13853_13756) ) (!  (=> (select (|PolymorphicMapType_30582_53810_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) null (WandMaskField_13853 pm_f_41@@20))) o2_41@@290 f_130@@320) (= (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@58) o2_41@@290 f_130@@320) (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@290 f_130@@320)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@290 f_130@@320))
))) (forall ((o2_41@@291 T@Ref) (f_130@@321 T@Field_13853_53) ) (!  (=> (select (|PolymorphicMapType_30582_53810_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) null (WandMaskField_13853 pm_f_41@@20))) o2_41@@291 f_130@@321) (= (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@58) o2_41@@291 f_130@@321) (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@291 f_130@@321)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@291 f_130@@321))
))) (forall ((o2_41@@292 T@Ref) (f_130@@322 T@Field_53810_53811) ) (!  (=> (select (|PolymorphicMapType_30582_53810_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) null (WandMaskField_13853 pm_f_41@@20))) o2_41@@292 f_130@@322) (= (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@58) o2_41@@292 f_130@@322) (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@292 f_130@@322)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@292 f_130@@322))
))) (forall ((o2_41@@293 T@Ref) (f_130@@323 T@Field_53823_53828) ) (!  (=> (select (|PolymorphicMapType_30582_53810_138976#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) null (WandMaskField_13853 pm_f_41@@20))) o2_41@@293 f_130@@323) (= (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) o2_41@@293 f_130@@323) (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@293 f_130@@323)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@293 f_130@@323))
))) (forall ((o2_41@@294 T@Ref) (f_130@@324 T@Field_13893_1186) ) (!  (=> (select (|PolymorphicMapType_30582_55007_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) null (WandMaskField_13853 pm_f_41@@20))) o2_41@@294 f_130@@324) (= (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@58) o2_41@@294 f_130@@324) (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@294 f_130@@324)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@294 f_130@@324))
))) (forall ((o2_41@@295 T@Ref) (f_130@@325 T@Field_13893_13756) ) (!  (=> (select (|PolymorphicMapType_30582_55007_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) null (WandMaskField_13853 pm_f_41@@20))) o2_41@@295 f_130@@325) (= (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@58) o2_41@@295 f_130@@325) (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@295 f_130@@325)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@295 f_130@@325))
))) (forall ((o2_41@@296 T@Ref) (f_130@@326 T@Field_13893_53) ) (!  (=> (select (|PolymorphicMapType_30582_55007_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) null (WandMaskField_13853 pm_f_41@@20))) o2_41@@296 f_130@@326) (= (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@58) o2_41@@296 f_130@@326) (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@296 f_130@@326)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@296 f_130@@326))
))) (forall ((o2_41@@297 T@Ref) (f_130@@327 T@Field_55007_55008) ) (!  (=> (select (|PolymorphicMapType_30582_55007_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) null (WandMaskField_13853 pm_f_41@@20))) o2_41@@297 f_130@@327) (= (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@58) o2_41@@297 f_130@@327) (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@297 f_130@@327)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@297 f_130@@327))
))) (forall ((o2_41@@298 T@Ref) (f_130@@328 T@Field_60385_60390) ) (!  (=> (select (|PolymorphicMapType_30582_55007_140024#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@58) null (WandMaskField_13853 pm_f_41@@20))) o2_41@@298 f_130@@328) (= (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@58) o2_41@@298 f_130@@328) (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@298 f_130@@328)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| ExhaleHeap@@52) o2_41@@298 f_130@@328))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@52 Mask@@113) (IsWandField_13853_142670 pm_f_41@@20))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_30033) (ExhaleHeap@@53 T@PolymorphicMapType_30033) (Mask@@114 T@PolymorphicMapType_30054) (pm_f_41@@21 T@Field_38039_38040) ) (!  (=> (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@53 Mask@@114) (=> (and (HasDirectPerm_13813_13814 Mask@@114 null pm_f_41@@21) (IsWandField_13813_142313 pm_f_41@@21)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_41@@299 T@Ref) (f_130@@329 T@Field_33419_1186) ) (!  (=> (select (|PolymorphicMapType_30582_13753_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) null (WandMaskField_13813 pm_f_41@@21))) o2_41@@299 f_130@@329) (= (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@59) o2_41@@299 f_130@@329) (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@299 f_130@@329)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@299 f_130@@329))
)) (forall ((o2_41@@300 T@Ref) (f_130@@330 T@Field_30106_30107) ) (!  (=> (select (|PolymorphicMapType_30582_13755_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) null (WandMaskField_13813 pm_f_41@@21))) o2_41@@300 f_130@@330) (= (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@59) o2_41@@300 f_130@@330) (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@300 f_130@@330)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@300 f_130@@330))
))) (forall ((o2_41@@301 T@Ref) (f_130@@331 T@Field_30093_53) ) (!  (=> (select (|PolymorphicMapType_30582_13753_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) null (WandMaskField_13813 pm_f_41@@21))) o2_41@@301 f_130@@331) (= (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@59) o2_41@@301 f_130@@331) (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@301 f_130@@331)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@301 f_130@@331))
))) (forall ((o2_41@@302 T@Ref) (f_130@@332 T@Field_13755_13814) ) (!  (=> (select (|PolymorphicMapType_30582_13753_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) null (WandMaskField_13813 pm_f_41@@21))) o2_41@@302 f_130@@332) (= (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@59) o2_41@@302 f_130@@332) (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@302 f_130@@332)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@302 f_130@@332))
))) (forall ((o2_41@@303 T@Ref) (f_130@@333 T@Field_13755_33534) ) (!  (=> (select (|PolymorphicMapType_30582_13753_134784#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) null (WandMaskField_13813 pm_f_41@@21))) o2_41@@303 f_130@@333) (= (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@59) o2_41@@303 f_130@@333) (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@303 f_130@@333)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@303 f_130@@333))
))) (forall ((o2_41@@304 T@Ref) (f_130@@334 T@Field_33516_1186) ) (!  (=> (select (|PolymorphicMapType_30582_33516_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) null (WandMaskField_13813 pm_f_41@@21))) o2_41@@304 f_130@@334) (= (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@59) o2_41@@304 f_130@@334) (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@304 f_130@@334)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@304 f_130@@334))
))) (forall ((o2_41@@305 T@Ref) (f_130@@335 T@Field_33516_13756) ) (!  (=> (select (|PolymorphicMapType_30582_33516_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) null (WandMaskField_13813 pm_f_41@@21))) o2_41@@305 f_130@@335) (= (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@59) o2_41@@305 f_130@@335) (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@305 f_130@@335)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@305 f_130@@335))
))) (forall ((o2_41@@306 T@Ref) (f_130@@336 T@Field_33516_53) ) (!  (=> (select (|PolymorphicMapType_30582_33516_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) null (WandMaskField_13813 pm_f_41@@21))) o2_41@@306 f_130@@336) (= (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@59) o2_41@@306 f_130@@336) (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@306 f_130@@336)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@306 f_130@@336))
))) (forall ((o2_41@@307 T@Ref) (f_130@@337 T@Field_33516_33517) ) (!  (=> (select (|PolymorphicMapType_30582_33516_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) null (WandMaskField_13813 pm_f_41@@21))) o2_41@@307 f_130@@337) (= (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@59) o2_41@@307 f_130@@337) (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@307 f_130@@337)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@307 f_130@@337))
))) (forall ((o2_41@@308 T@Ref) (f_130@@338 T@Field_33529_33534) ) (!  (=> (select (|PolymorphicMapType_30582_33516_135832#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) null (WandMaskField_13813 pm_f_41@@21))) o2_41@@308 f_130@@338) (= (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@59) o2_41@@308 f_130@@338) (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@308 f_130@@338)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@308 f_130@@338))
))) (forall ((o2_41@@309 T@Ref) (f_130@@339 T@Field_34511_1186) ) (!  (=> (select (|PolymorphicMapType_30582_34511_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) null (WandMaskField_13813 pm_f_41@@21))) o2_41@@309 f_130@@339) (= (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@59) o2_41@@309 f_130@@339) (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@309 f_130@@339)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@309 f_130@@339))
))) (forall ((o2_41@@310 T@Ref) (f_130@@340 T@Field_34511_13756) ) (!  (=> (select (|PolymorphicMapType_30582_34511_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) null (WandMaskField_13813 pm_f_41@@21))) o2_41@@310 f_130@@340) (= (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@59) o2_41@@310 f_130@@340) (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@310 f_130@@340)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@310 f_130@@340))
))) (forall ((o2_41@@311 T@Ref) (f_130@@341 T@Field_34511_53) ) (!  (=> (select (|PolymorphicMapType_30582_34511_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) null (WandMaskField_13813 pm_f_41@@21))) o2_41@@311 f_130@@341) (= (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@59) o2_41@@311 f_130@@341) (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@311 f_130@@341)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@311 f_130@@341))
))) (forall ((o2_41@@312 T@Ref) (f_130@@342 T@Field_34511_34512) ) (!  (=> (select (|PolymorphicMapType_30582_34511_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) null (WandMaskField_13813 pm_f_41@@21))) o2_41@@312 f_130@@342) (= (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@59) o2_41@@312 f_130@@342) (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@312 f_130@@342)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@312 f_130@@342))
))) (forall ((o2_41@@313 T@Ref) (f_130@@343 T@Field_35892_35897) ) (!  (=> (select (|PolymorphicMapType_30582_34511_136880#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) null (WandMaskField_13813 pm_f_41@@21))) o2_41@@313 f_130@@343) (= (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@59) o2_41@@313 f_130@@343) (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@313 f_130@@343)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@313 f_130@@343))
))) (forall ((o2_41@@314 T@Ref) (f_130@@344 T@Field_13813_1186) ) (!  (=> (select (|PolymorphicMapType_30582_38039_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) null (WandMaskField_13813 pm_f_41@@21))) o2_41@@314 f_130@@344) (= (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@59) o2_41@@314 f_130@@344) (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@314 f_130@@344)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@314 f_130@@344))
))) (forall ((o2_41@@315 T@Ref) (f_130@@345 T@Field_13813_13756) ) (!  (=> (select (|PolymorphicMapType_30582_38039_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) null (WandMaskField_13813 pm_f_41@@21))) o2_41@@315 f_130@@345) (= (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@59) o2_41@@315 f_130@@345) (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@315 f_130@@345)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@315 f_130@@345))
))) (forall ((o2_41@@316 T@Ref) (f_130@@346 T@Field_13813_53) ) (!  (=> (select (|PolymorphicMapType_30582_38039_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) null (WandMaskField_13813 pm_f_41@@21))) o2_41@@316 f_130@@346) (= (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@59) o2_41@@316 f_130@@346) (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@316 f_130@@346)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@316 f_130@@346))
))) (forall ((o2_41@@317 T@Ref) (f_130@@347 T@Field_38039_38040) ) (!  (=> (select (|PolymorphicMapType_30582_38039_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) null (WandMaskField_13813 pm_f_41@@21))) o2_41@@317 f_130@@347) (= (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@59) o2_41@@317 f_130@@347) (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@317 f_130@@347)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@317 f_130@@347))
))) (forall ((o2_41@@318 T@Ref) (f_130@@348 T@Field_38052_38057) ) (!  (=> (select (|PolymorphicMapType_30582_38039_137928#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) null (WandMaskField_13813 pm_f_41@@21))) o2_41@@318 f_130@@348) (= (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) o2_41@@318 f_130@@348) (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@318 f_130@@348)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@318 f_130@@348))
))) (forall ((o2_41@@319 T@Ref) (f_130@@349 T@Field_13853_1186) ) (!  (=> (select (|PolymorphicMapType_30582_53810_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) null (WandMaskField_13813 pm_f_41@@21))) o2_41@@319 f_130@@349) (= (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@59) o2_41@@319 f_130@@349) (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@319 f_130@@349)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@319 f_130@@349))
))) (forall ((o2_41@@320 T@Ref) (f_130@@350 T@Field_13853_13756) ) (!  (=> (select (|PolymorphicMapType_30582_53810_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) null (WandMaskField_13813 pm_f_41@@21))) o2_41@@320 f_130@@350) (= (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@59) o2_41@@320 f_130@@350) (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@320 f_130@@350)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@320 f_130@@350))
))) (forall ((o2_41@@321 T@Ref) (f_130@@351 T@Field_13853_53) ) (!  (=> (select (|PolymorphicMapType_30582_53810_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) null (WandMaskField_13813 pm_f_41@@21))) o2_41@@321 f_130@@351) (= (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@59) o2_41@@321 f_130@@351) (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@321 f_130@@351)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@321 f_130@@351))
))) (forall ((o2_41@@322 T@Ref) (f_130@@352 T@Field_53810_53811) ) (!  (=> (select (|PolymorphicMapType_30582_53810_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) null (WandMaskField_13813 pm_f_41@@21))) o2_41@@322 f_130@@352) (= (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@59) o2_41@@322 f_130@@352) (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@322 f_130@@352)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@322 f_130@@352))
))) (forall ((o2_41@@323 T@Ref) (f_130@@353 T@Field_53823_53828) ) (!  (=> (select (|PolymorphicMapType_30582_53810_138976#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) null (WandMaskField_13813 pm_f_41@@21))) o2_41@@323 f_130@@353) (= (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@59) o2_41@@323 f_130@@353) (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@323 f_130@@353)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@323 f_130@@353))
))) (forall ((o2_41@@324 T@Ref) (f_130@@354 T@Field_13893_1186) ) (!  (=> (select (|PolymorphicMapType_30582_55007_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) null (WandMaskField_13813 pm_f_41@@21))) o2_41@@324 f_130@@354) (= (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@59) o2_41@@324 f_130@@354) (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@324 f_130@@354)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@324 f_130@@354))
))) (forall ((o2_41@@325 T@Ref) (f_130@@355 T@Field_13893_13756) ) (!  (=> (select (|PolymorphicMapType_30582_55007_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) null (WandMaskField_13813 pm_f_41@@21))) o2_41@@325 f_130@@355) (= (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@59) o2_41@@325 f_130@@355) (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@325 f_130@@355)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@325 f_130@@355))
))) (forall ((o2_41@@326 T@Ref) (f_130@@356 T@Field_13893_53) ) (!  (=> (select (|PolymorphicMapType_30582_55007_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) null (WandMaskField_13813 pm_f_41@@21))) o2_41@@326 f_130@@356) (= (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@59) o2_41@@326 f_130@@356) (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@326 f_130@@356)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@326 f_130@@356))
))) (forall ((o2_41@@327 T@Ref) (f_130@@357 T@Field_55007_55008) ) (!  (=> (select (|PolymorphicMapType_30582_55007_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) null (WandMaskField_13813 pm_f_41@@21))) o2_41@@327 f_130@@357) (= (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@59) o2_41@@327 f_130@@357) (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@327 f_130@@357)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@327 f_130@@357))
))) (forall ((o2_41@@328 T@Ref) (f_130@@358 T@Field_60385_60390) ) (!  (=> (select (|PolymorphicMapType_30582_55007_140024#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@59) null (WandMaskField_13813 pm_f_41@@21))) o2_41@@328 f_130@@358) (= (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@59) o2_41@@328 f_130@@358) (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@328 f_130@@358)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| ExhaleHeap@@53) o2_41@@328 f_130@@358))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@53 Mask@@114) (IsWandField_13813_142313 pm_f_41@@21))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_30033) (ExhaleHeap@@54 T@PolymorphicMapType_30033) (Mask@@115 T@PolymorphicMapType_30054) (pm_f_41@@22 T@Field_13755_13814) ) (!  (=> (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@54 Mask@@115) (=> (and (HasDirectPerm_13755_13814 Mask@@115 null pm_f_41@@22) (IsWandField_13755_141956 pm_f_41@@22)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_41@@329 T@Ref) (f_130@@359 T@Field_33419_1186) ) (!  (=> (select (|PolymorphicMapType_30582_13753_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) null (WandMaskField_13755 pm_f_41@@22))) o2_41@@329 f_130@@359) (= (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@60) o2_41@@329 f_130@@359) (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@329 f_130@@359)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@329 f_130@@359))
)) (forall ((o2_41@@330 T@Ref) (f_130@@360 T@Field_30106_30107) ) (!  (=> (select (|PolymorphicMapType_30582_13755_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) null (WandMaskField_13755 pm_f_41@@22))) o2_41@@330 f_130@@360) (= (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@60) o2_41@@330 f_130@@360) (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@330 f_130@@360)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@330 f_130@@360))
))) (forall ((o2_41@@331 T@Ref) (f_130@@361 T@Field_30093_53) ) (!  (=> (select (|PolymorphicMapType_30582_13753_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) null (WandMaskField_13755 pm_f_41@@22))) o2_41@@331 f_130@@361) (= (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@60) o2_41@@331 f_130@@361) (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@331 f_130@@361)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@331 f_130@@361))
))) (forall ((o2_41@@332 T@Ref) (f_130@@362 T@Field_13755_13814) ) (!  (=> (select (|PolymorphicMapType_30582_13753_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) null (WandMaskField_13755 pm_f_41@@22))) o2_41@@332 f_130@@362) (= (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@60) o2_41@@332 f_130@@362) (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@332 f_130@@362)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@332 f_130@@362))
))) (forall ((o2_41@@333 T@Ref) (f_130@@363 T@Field_13755_33534) ) (!  (=> (select (|PolymorphicMapType_30582_13753_134784#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) null (WandMaskField_13755 pm_f_41@@22))) o2_41@@333 f_130@@363) (= (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) o2_41@@333 f_130@@363) (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@333 f_130@@363)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@333 f_130@@363))
))) (forall ((o2_41@@334 T@Ref) (f_130@@364 T@Field_33516_1186) ) (!  (=> (select (|PolymorphicMapType_30582_33516_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) null (WandMaskField_13755 pm_f_41@@22))) o2_41@@334 f_130@@364) (= (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@60) o2_41@@334 f_130@@364) (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@334 f_130@@364)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@334 f_130@@364))
))) (forall ((o2_41@@335 T@Ref) (f_130@@365 T@Field_33516_13756) ) (!  (=> (select (|PolymorphicMapType_30582_33516_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) null (WandMaskField_13755 pm_f_41@@22))) o2_41@@335 f_130@@365) (= (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@60) o2_41@@335 f_130@@365) (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@335 f_130@@365)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@335 f_130@@365))
))) (forall ((o2_41@@336 T@Ref) (f_130@@366 T@Field_33516_53) ) (!  (=> (select (|PolymorphicMapType_30582_33516_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) null (WandMaskField_13755 pm_f_41@@22))) o2_41@@336 f_130@@366) (= (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@60) o2_41@@336 f_130@@366) (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@336 f_130@@366)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@336 f_130@@366))
))) (forall ((o2_41@@337 T@Ref) (f_130@@367 T@Field_33516_33517) ) (!  (=> (select (|PolymorphicMapType_30582_33516_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) null (WandMaskField_13755 pm_f_41@@22))) o2_41@@337 f_130@@367) (= (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@60) o2_41@@337 f_130@@367) (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@337 f_130@@367)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@337 f_130@@367))
))) (forall ((o2_41@@338 T@Ref) (f_130@@368 T@Field_33529_33534) ) (!  (=> (select (|PolymorphicMapType_30582_33516_135832#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) null (WandMaskField_13755 pm_f_41@@22))) o2_41@@338 f_130@@368) (= (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@60) o2_41@@338 f_130@@368) (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@338 f_130@@368)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@338 f_130@@368))
))) (forall ((o2_41@@339 T@Ref) (f_130@@369 T@Field_34511_1186) ) (!  (=> (select (|PolymorphicMapType_30582_34511_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) null (WandMaskField_13755 pm_f_41@@22))) o2_41@@339 f_130@@369) (= (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@60) o2_41@@339 f_130@@369) (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@339 f_130@@369)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@339 f_130@@369))
))) (forall ((o2_41@@340 T@Ref) (f_130@@370 T@Field_34511_13756) ) (!  (=> (select (|PolymorphicMapType_30582_34511_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) null (WandMaskField_13755 pm_f_41@@22))) o2_41@@340 f_130@@370) (= (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@60) o2_41@@340 f_130@@370) (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@340 f_130@@370)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@340 f_130@@370))
))) (forall ((o2_41@@341 T@Ref) (f_130@@371 T@Field_34511_53) ) (!  (=> (select (|PolymorphicMapType_30582_34511_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) null (WandMaskField_13755 pm_f_41@@22))) o2_41@@341 f_130@@371) (= (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@60) o2_41@@341 f_130@@371) (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@341 f_130@@371)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@341 f_130@@371))
))) (forall ((o2_41@@342 T@Ref) (f_130@@372 T@Field_34511_34512) ) (!  (=> (select (|PolymorphicMapType_30582_34511_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) null (WandMaskField_13755 pm_f_41@@22))) o2_41@@342 f_130@@372) (= (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@60) o2_41@@342 f_130@@372) (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@342 f_130@@372)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@342 f_130@@372))
))) (forall ((o2_41@@343 T@Ref) (f_130@@373 T@Field_35892_35897) ) (!  (=> (select (|PolymorphicMapType_30582_34511_136880#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) null (WandMaskField_13755 pm_f_41@@22))) o2_41@@343 f_130@@373) (= (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@60) o2_41@@343 f_130@@373) (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@343 f_130@@373)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@343 f_130@@373))
))) (forall ((o2_41@@344 T@Ref) (f_130@@374 T@Field_13813_1186) ) (!  (=> (select (|PolymorphicMapType_30582_38039_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) null (WandMaskField_13755 pm_f_41@@22))) o2_41@@344 f_130@@374) (= (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@60) o2_41@@344 f_130@@374) (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@344 f_130@@374)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@344 f_130@@374))
))) (forall ((o2_41@@345 T@Ref) (f_130@@375 T@Field_13813_13756) ) (!  (=> (select (|PolymorphicMapType_30582_38039_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) null (WandMaskField_13755 pm_f_41@@22))) o2_41@@345 f_130@@375) (= (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@60) o2_41@@345 f_130@@375) (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@345 f_130@@375)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@345 f_130@@375))
))) (forall ((o2_41@@346 T@Ref) (f_130@@376 T@Field_13813_53) ) (!  (=> (select (|PolymorphicMapType_30582_38039_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) null (WandMaskField_13755 pm_f_41@@22))) o2_41@@346 f_130@@376) (= (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@60) o2_41@@346 f_130@@376) (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@346 f_130@@376)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@346 f_130@@376))
))) (forall ((o2_41@@347 T@Ref) (f_130@@377 T@Field_38039_38040) ) (!  (=> (select (|PolymorphicMapType_30582_38039_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) null (WandMaskField_13755 pm_f_41@@22))) o2_41@@347 f_130@@377) (= (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@60) o2_41@@347 f_130@@377) (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@347 f_130@@377)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@347 f_130@@377))
))) (forall ((o2_41@@348 T@Ref) (f_130@@378 T@Field_38052_38057) ) (!  (=> (select (|PolymorphicMapType_30582_38039_137928#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) null (WandMaskField_13755 pm_f_41@@22))) o2_41@@348 f_130@@378) (= (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@60) o2_41@@348 f_130@@378) (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@348 f_130@@378)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@348 f_130@@378))
))) (forall ((o2_41@@349 T@Ref) (f_130@@379 T@Field_13853_1186) ) (!  (=> (select (|PolymorphicMapType_30582_53810_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) null (WandMaskField_13755 pm_f_41@@22))) o2_41@@349 f_130@@379) (= (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@60) o2_41@@349 f_130@@379) (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@349 f_130@@379)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@349 f_130@@379))
))) (forall ((o2_41@@350 T@Ref) (f_130@@380 T@Field_13853_13756) ) (!  (=> (select (|PolymorphicMapType_30582_53810_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) null (WandMaskField_13755 pm_f_41@@22))) o2_41@@350 f_130@@380) (= (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@60) o2_41@@350 f_130@@380) (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@350 f_130@@380)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@350 f_130@@380))
))) (forall ((o2_41@@351 T@Ref) (f_130@@381 T@Field_13853_53) ) (!  (=> (select (|PolymorphicMapType_30582_53810_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) null (WandMaskField_13755 pm_f_41@@22))) o2_41@@351 f_130@@381) (= (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@60) o2_41@@351 f_130@@381) (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@351 f_130@@381)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@351 f_130@@381))
))) (forall ((o2_41@@352 T@Ref) (f_130@@382 T@Field_53810_53811) ) (!  (=> (select (|PolymorphicMapType_30582_53810_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) null (WandMaskField_13755 pm_f_41@@22))) o2_41@@352 f_130@@382) (= (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@60) o2_41@@352 f_130@@382) (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@352 f_130@@382)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@352 f_130@@382))
))) (forall ((o2_41@@353 T@Ref) (f_130@@383 T@Field_53823_53828) ) (!  (=> (select (|PolymorphicMapType_30582_53810_138976#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) null (WandMaskField_13755 pm_f_41@@22))) o2_41@@353 f_130@@383) (= (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@60) o2_41@@353 f_130@@383) (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@353 f_130@@383)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@353 f_130@@383))
))) (forall ((o2_41@@354 T@Ref) (f_130@@384 T@Field_13893_1186) ) (!  (=> (select (|PolymorphicMapType_30582_55007_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) null (WandMaskField_13755 pm_f_41@@22))) o2_41@@354 f_130@@384) (= (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@60) o2_41@@354 f_130@@384) (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@354 f_130@@384)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@354 f_130@@384))
))) (forall ((o2_41@@355 T@Ref) (f_130@@385 T@Field_13893_13756) ) (!  (=> (select (|PolymorphicMapType_30582_55007_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) null (WandMaskField_13755 pm_f_41@@22))) o2_41@@355 f_130@@385) (= (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@60) o2_41@@355 f_130@@385) (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@355 f_130@@385)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@355 f_130@@385))
))) (forall ((o2_41@@356 T@Ref) (f_130@@386 T@Field_13893_53) ) (!  (=> (select (|PolymorphicMapType_30582_55007_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) null (WandMaskField_13755 pm_f_41@@22))) o2_41@@356 f_130@@386) (= (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@60) o2_41@@356 f_130@@386) (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@356 f_130@@386)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@356 f_130@@386))
))) (forall ((o2_41@@357 T@Ref) (f_130@@387 T@Field_55007_55008) ) (!  (=> (select (|PolymorphicMapType_30582_55007_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) null (WandMaskField_13755 pm_f_41@@22))) o2_41@@357 f_130@@387) (= (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@60) o2_41@@357 f_130@@387) (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@357 f_130@@387)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@357 f_130@@387))
))) (forall ((o2_41@@358 T@Ref) (f_130@@388 T@Field_60385_60390) ) (!  (=> (select (|PolymorphicMapType_30582_55007_140024#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@60) null (WandMaskField_13755 pm_f_41@@22))) o2_41@@358 f_130@@388) (= (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@60) o2_41@@358 f_130@@388) (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@358 f_130@@388)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| ExhaleHeap@@54) o2_41@@358 f_130@@388))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@54 Mask@@115) (IsWandField_13755_141956 pm_f_41@@22))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_30054) (SummandMask1 T@PolymorphicMapType_30054) (SummandMask2 T@PolymorphicMapType_30054) (o_2@@119 T@Ref) (f_4@@119 T@Field_33529_33534) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_30054_13759_157258#PolymorphicMapType_30054| ResultMask) o_2@@119 f_4@@119) (+ (select (|PolymorphicMapType_30054_13759_157258#PolymorphicMapType_30054| SummandMask1) o_2@@119 f_4@@119) (select (|PolymorphicMapType_30054_13759_157258#PolymorphicMapType_30054| SummandMask2) o_2@@119 f_4@@119))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_30054_13759_157258#PolymorphicMapType_30054| ResultMask) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_30054_13759_157258#PolymorphicMapType_30054| SummandMask1) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_30054_13759_157258#PolymorphicMapType_30054| SummandMask2) o_2@@119 f_4@@119))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_30054) (SummandMask1@@0 T@PolymorphicMapType_30054) (SummandMask2@@0 T@PolymorphicMapType_30054) (o_2@@120 T@Ref) (f_4@@120 T@Field_33516_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_30054_13759_53#PolymorphicMapType_30054| ResultMask@@0) o_2@@120 f_4@@120) (+ (select (|PolymorphicMapType_30054_13759_53#PolymorphicMapType_30054| SummandMask1@@0) o_2@@120 f_4@@120) (select (|PolymorphicMapType_30054_13759_53#PolymorphicMapType_30054| SummandMask2@@0) o_2@@120 f_4@@120))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_30054_13759_53#PolymorphicMapType_30054| ResultMask@@0) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_30054_13759_53#PolymorphicMapType_30054| SummandMask1@@0) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_30054_13759_53#PolymorphicMapType_30054| SummandMask2@@0) o_2@@120 f_4@@120))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_30054) (SummandMask1@@1 T@PolymorphicMapType_30054) (SummandMask2@@1 T@PolymorphicMapType_30054) (o_2@@121 T@Ref) (f_4@@121 T@Field_33516_1186) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_30054_13759_1186#PolymorphicMapType_30054| ResultMask@@1) o_2@@121 f_4@@121) (+ (select (|PolymorphicMapType_30054_13759_1186#PolymorphicMapType_30054| SummandMask1@@1) o_2@@121 f_4@@121) (select (|PolymorphicMapType_30054_13759_1186#PolymorphicMapType_30054| SummandMask2@@1) o_2@@121 f_4@@121))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_30054_13759_1186#PolymorphicMapType_30054| ResultMask@@1) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_30054_13759_1186#PolymorphicMapType_30054| SummandMask1@@1) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_30054_13759_1186#PolymorphicMapType_30054| SummandMask2@@1) o_2@@121 f_4@@121))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_30054) (SummandMask1@@2 T@PolymorphicMapType_30054) (SummandMask2@@2 T@PolymorphicMapType_30054) (o_2@@122 T@Ref) (f_4@@122 T@Field_33516_33517) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_30054_13759_13760#PolymorphicMapType_30054| ResultMask@@2) o_2@@122 f_4@@122) (+ (select (|PolymorphicMapType_30054_13759_13760#PolymorphicMapType_30054| SummandMask1@@2) o_2@@122 f_4@@122) (select (|PolymorphicMapType_30054_13759_13760#PolymorphicMapType_30054| SummandMask2@@2) o_2@@122 f_4@@122))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_30054_13759_13760#PolymorphicMapType_30054| ResultMask@@2) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_30054_13759_13760#PolymorphicMapType_30054| SummandMask1@@2) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_30054_13759_13760#PolymorphicMapType_30054| SummandMask2@@2) o_2@@122 f_4@@122))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_30054) (SummandMask1@@3 T@PolymorphicMapType_30054) (SummandMask2@@3 T@PolymorphicMapType_30054) (o_2@@123 T@Ref) (f_4@@123 T@Field_33516_13756) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_30054_13759_13756#PolymorphicMapType_30054| ResultMask@@3) o_2@@123 f_4@@123) (+ (select (|PolymorphicMapType_30054_13759_13756#PolymorphicMapType_30054| SummandMask1@@3) o_2@@123 f_4@@123) (select (|PolymorphicMapType_30054_13759_13756#PolymorphicMapType_30054| SummandMask2@@3) o_2@@123 f_4@@123))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_30054_13759_13756#PolymorphicMapType_30054| ResultMask@@3) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_30054_13759_13756#PolymorphicMapType_30054| SummandMask1@@3) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_30054_13759_13756#PolymorphicMapType_30054| SummandMask2@@3) o_2@@123 f_4@@123))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_30054) (SummandMask1@@4 T@PolymorphicMapType_30054) (SummandMask2@@4 T@PolymorphicMapType_30054) (o_2@@124 T@Ref) (f_4@@124 T@Field_53823_53828) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_30054_13853_156847#PolymorphicMapType_30054| ResultMask@@4) o_2@@124 f_4@@124) (+ (select (|PolymorphicMapType_30054_13853_156847#PolymorphicMapType_30054| SummandMask1@@4) o_2@@124 f_4@@124) (select (|PolymorphicMapType_30054_13853_156847#PolymorphicMapType_30054| SummandMask2@@4) o_2@@124 f_4@@124))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_30054_13853_156847#PolymorphicMapType_30054| ResultMask@@4) o_2@@124 f_4@@124))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_30054_13853_156847#PolymorphicMapType_30054| SummandMask1@@4) o_2@@124 f_4@@124))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_30054_13853_156847#PolymorphicMapType_30054| SummandMask2@@4) o_2@@124 f_4@@124))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_30054) (SummandMask1@@5 T@PolymorphicMapType_30054) (SummandMask2@@5 T@PolymorphicMapType_30054) (o_2@@125 T@Ref) (f_4@@125 T@Field_13853_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_30054_13853_53#PolymorphicMapType_30054| ResultMask@@5) o_2@@125 f_4@@125) (+ (select (|PolymorphicMapType_30054_13853_53#PolymorphicMapType_30054| SummandMask1@@5) o_2@@125 f_4@@125) (select (|PolymorphicMapType_30054_13853_53#PolymorphicMapType_30054| SummandMask2@@5) o_2@@125 f_4@@125))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_30054_13853_53#PolymorphicMapType_30054| ResultMask@@5) o_2@@125 f_4@@125))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_30054_13853_53#PolymorphicMapType_30054| SummandMask1@@5) o_2@@125 f_4@@125))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_30054_13853_53#PolymorphicMapType_30054| SummandMask2@@5) o_2@@125 f_4@@125))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_30054) (SummandMask1@@6 T@PolymorphicMapType_30054) (SummandMask2@@6 T@PolymorphicMapType_30054) (o_2@@126 T@Ref) (f_4@@126 T@Field_13853_1186) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_30054_13853_1186#PolymorphicMapType_30054| ResultMask@@6) o_2@@126 f_4@@126) (+ (select (|PolymorphicMapType_30054_13853_1186#PolymorphicMapType_30054| SummandMask1@@6) o_2@@126 f_4@@126) (select (|PolymorphicMapType_30054_13853_1186#PolymorphicMapType_30054| SummandMask2@@6) o_2@@126 f_4@@126))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_30054_13853_1186#PolymorphicMapType_30054| ResultMask@@6) o_2@@126 f_4@@126))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_30054_13853_1186#PolymorphicMapType_30054| SummandMask1@@6) o_2@@126 f_4@@126))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_30054_13853_1186#PolymorphicMapType_30054| SummandMask2@@6) o_2@@126 f_4@@126))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_30054) (SummandMask1@@7 T@PolymorphicMapType_30054) (SummandMask2@@7 T@PolymorphicMapType_30054) (o_2@@127 T@Ref) (f_4@@127 T@Field_53810_53811) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_30054_13853_13854#PolymorphicMapType_30054| ResultMask@@7) o_2@@127 f_4@@127) (+ (select (|PolymorphicMapType_30054_13853_13854#PolymorphicMapType_30054| SummandMask1@@7) o_2@@127 f_4@@127) (select (|PolymorphicMapType_30054_13853_13854#PolymorphicMapType_30054| SummandMask2@@7) o_2@@127 f_4@@127))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_30054_13853_13854#PolymorphicMapType_30054| ResultMask@@7) o_2@@127 f_4@@127))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_30054_13853_13854#PolymorphicMapType_30054| SummandMask1@@7) o_2@@127 f_4@@127))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_30054_13853_13854#PolymorphicMapType_30054| SummandMask2@@7) o_2@@127 f_4@@127))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_30054) (SummandMask1@@8 T@PolymorphicMapType_30054) (SummandMask2@@8 T@PolymorphicMapType_30054) (o_2@@128 T@Ref) (f_4@@128 T@Field_13853_13756) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_30054_13853_13756#PolymorphicMapType_30054| ResultMask@@8) o_2@@128 f_4@@128) (+ (select (|PolymorphicMapType_30054_13853_13756#PolymorphicMapType_30054| SummandMask1@@8) o_2@@128 f_4@@128) (select (|PolymorphicMapType_30054_13853_13756#PolymorphicMapType_30054| SummandMask2@@8) o_2@@128 f_4@@128))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_30054_13853_13756#PolymorphicMapType_30054| ResultMask@@8) o_2@@128 f_4@@128))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_30054_13853_13756#PolymorphicMapType_30054| SummandMask1@@8) o_2@@128 f_4@@128))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_30054_13853_13756#PolymorphicMapType_30054| SummandMask2@@8) o_2@@128 f_4@@128))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_30054) (SummandMask1@@9 T@PolymorphicMapType_30054) (SummandMask2@@9 T@PolymorphicMapType_30054) (o_2@@129 T@Ref) (f_4@@129 T@Field_60385_60390) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_30054_13893_156436#PolymorphicMapType_30054| ResultMask@@9) o_2@@129 f_4@@129) (+ (select (|PolymorphicMapType_30054_13893_156436#PolymorphicMapType_30054| SummandMask1@@9) o_2@@129 f_4@@129) (select (|PolymorphicMapType_30054_13893_156436#PolymorphicMapType_30054| SummandMask2@@9) o_2@@129 f_4@@129))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_30054_13893_156436#PolymorphicMapType_30054| ResultMask@@9) o_2@@129 f_4@@129))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_30054_13893_156436#PolymorphicMapType_30054| SummandMask1@@9) o_2@@129 f_4@@129))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_30054_13893_156436#PolymorphicMapType_30054| SummandMask2@@9) o_2@@129 f_4@@129))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_30054) (SummandMask1@@10 T@PolymorphicMapType_30054) (SummandMask2@@10 T@PolymorphicMapType_30054) (o_2@@130 T@Ref) (f_4@@130 T@Field_13893_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_30054_13893_53#PolymorphicMapType_30054| ResultMask@@10) o_2@@130 f_4@@130) (+ (select (|PolymorphicMapType_30054_13893_53#PolymorphicMapType_30054| SummandMask1@@10) o_2@@130 f_4@@130) (select (|PolymorphicMapType_30054_13893_53#PolymorphicMapType_30054| SummandMask2@@10) o_2@@130 f_4@@130))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_30054_13893_53#PolymorphicMapType_30054| ResultMask@@10) o_2@@130 f_4@@130))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_30054_13893_53#PolymorphicMapType_30054| SummandMask1@@10) o_2@@130 f_4@@130))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_30054_13893_53#PolymorphicMapType_30054| SummandMask2@@10) o_2@@130 f_4@@130))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_30054) (SummandMask1@@11 T@PolymorphicMapType_30054) (SummandMask2@@11 T@PolymorphicMapType_30054) (o_2@@131 T@Ref) (f_4@@131 T@Field_13893_1186) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_30054_13893_1186#PolymorphicMapType_30054| ResultMask@@11) o_2@@131 f_4@@131) (+ (select (|PolymorphicMapType_30054_13893_1186#PolymorphicMapType_30054| SummandMask1@@11) o_2@@131 f_4@@131) (select (|PolymorphicMapType_30054_13893_1186#PolymorphicMapType_30054| SummandMask2@@11) o_2@@131 f_4@@131))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_30054_13893_1186#PolymorphicMapType_30054| ResultMask@@11) o_2@@131 f_4@@131))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_30054_13893_1186#PolymorphicMapType_30054| SummandMask1@@11) o_2@@131 f_4@@131))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_30054_13893_1186#PolymorphicMapType_30054| SummandMask2@@11) o_2@@131 f_4@@131))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_30054) (SummandMask1@@12 T@PolymorphicMapType_30054) (SummandMask2@@12 T@PolymorphicMapType_30054) (o_2@@132 T@Ref) (f_4@@132 T@Field_55007_55008) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_30054_13893_13894#PolymorphicMapType_30054| ResultMask@@12) o_2@@132 f_4@@132) (+ (select (|PolymorphicMapType_30054_13893_13894#PolymorphicMapType_30054| SummandMask1@@12) o_2@@132 f_4@@132) (select (|PolymorphicMapType_30054_13893_13894#PolymorphicMapType_30054| SummandMask2@@12) o_2@@132 f_4@@132))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_30054_13893_13894#PolymorphicMapType_30054| ResultMask@@12) o_2@@132 f_4@@132))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_30054_13893_13894#PolymorphicMapType_30054| SummandMask1@@12) o_2@@132 f_4@@132))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_30054_13893_13894#PolymorphicMapType_30054| SummandMask2@@12) o_2@@132 f_4@@132))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_30054) (SummandMask1@@13 T@PolymorphicMapType_30054) (SummandMask2@@13 T@PolymorphicMapType_30054) (o_2@@133 T@Ref) (f_4@@133 T@Field_13893_13756) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_30054_13893_13756#PolymorphicMapType_30054| ResultMask@@13) o_2@@133 f_4@@133) (+ (select (|PolymorphicMapType_30054_13893_13756#PolymorphicMapType_30054| SummandMask1@@13) o_2@@133 f_4@@133) (select (|PolymorphicMapType_30054_13893_13756#PolymorphicMapType_30054| SummandMask2@@13) o_2@@133 f_4@@133))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_30054_13893_13756#PolymorphicMapType_30054| ResultMask@@13) o_2@@133 f_4@@133))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_30054_13893_13756#PolymorphicMapType_30054| SummandMask1@@13) o_2@@133 f_4@@133))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_30054_13893_13756#PolymorphicMapType_30054| SummandMask2@@13) o_2@@133 f_4@@133))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_30054) (SummandMask1@@14 T@PolymorphicMapType_30054) (SummandMask2@@14 T@PolymorphicMapType_30054) (o_2@@134 T@Ref) (f_4@@134 T@Field_38052_38057) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_30054_13813_156025#PolymorphicMapType_30054| ResultMask@@14) o_2@@134 f_4@@134) (+ (select (|PolymorphicMapType_30054_13813_156025#PolymorphicMapType_30054| SummandMask1@@14) o_2@@134 f_4@@134) (select (|PolymorphicMapType_30054_13813_156025#PolymorphicMapType_30054| SummandMask2@@14) o_2@@134 f_4@@134))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_30054_13813_156025#PolymorphicMapType_30054| ResultMask@@14) o_2@@134 f_4@@134))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_30054_13813_156025#PolymorphicMapType_30054| SummandMask1@@14) o_2@@134 f_4@@134))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_30054_13813_156025#PolymorphicMapType_30054| SummandMask2@@14) o_2@@134 f_4@@134))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_30054) (SummandMask1@@15 T@PolymorphicMapType_30054) (SummandMask2@@15 T@PolymorphicMapType_30054) (o_2@@135 T@Ref) (f_4@@135 T@Field_13813_53) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_30054_13813_53#PolymorphicMapType_30054| ResultMask@@15) o_2@@135 f_4@@135) (+ (select (|PolymorphicMapType_30054_13813_53#PolymorphicMapType_30054| SummandMask1@@15) o_2@@135 f_4@@135) (select (|PolymorphicMapType_30054_13813_53#PolymorphicMapType_30054| SummandMask2@@15) o_2@@135 f_4@@135))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_30054_13813_53#PolymorphicMapType_30054| ResultMask@@15) o_2@@135 f_4@@135))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_30054_13813_53#PolymorphicMapType_30054| SummandMask1@@15) o_2@@135 f_4@@135))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_30054_13813_53#PolymorphicMapType_30054| SummandMask2@@15) o_2@@135 f_4@@135))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_30054) (SummandMask1@@16 T@PolymorphicMapType_30054) (SummandMask2@@16 T@PolymorphicMapType_30054) (o_2@@136 T@Ref) (f_4@@136 T@Field_13813_1186) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_30054_13813_1186#PolymorphicMapType_30054| ResultMask@@16) o_2@@136 f_4@@136) (+ (select (|PolymorphicMapType_30054_13813_1186#PolymorphicMapType_30054| SummandMask1@@16) o_2@@136 f_4@@136) (select (|PolymorphicMapType_30054_13813_1186#PolymorphicMapType_30054| SummandMask2@@16) o_2@@136 f_4@@136))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_30054_13813_1186#PolymorphicMapType_30054| ResultMask@@16) o_2@@136 f_4@@136))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_30054_13813_1186#PolymorphicMapType_30054| SummandMask1@@16) o_2@@136 f_4@@136))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_30054_13813_1186#PolymorphicMapType_30054| SummandMask2@@16) o_2@@136 f_4@@136))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_30054) (SummandMask1@@17 T@PolymorphicMapType_30054) (SummandMask2@@17 T@PolymorphicMapType_30054) (o_2@@137 T@Ref) (f_4@@137 T@Field_38039_38040) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_30054_13813_13814#PolymorphicMapType_30054| ResultMask@@17) o_2@@137 f_4@@137) (+ (select (|PolymorphicMapType_30054_13813_13814#PolymorphicMapType_30054| SummandMask1@@17) o_2@@137 f_4@@137) (select (|PolymorphicMapType_30054_13813_13814#PolymorphicMapType_30054| SummandMask2@@17) o_2@@137 f_4@@137))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_30054_13813_13814#PolymorphicMapType_30054| ResultMask@@17) o_2@@137 f_4@@137))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_30054_13813_13814#PolymorphicMapType_30054| SummandMask1@@17) o_2@@137 f_4@@137))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_30054_13813_13814#PolymorphicMapType_30054| SummandMask2@@17) o_2@@137 f_4@@137))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_30054) (SummandMask1@@18 T@PolymorphicMapType_30054) (SummandMask2@@18 T@PolymorphicMapType_30054) (o_2@@138 T@Ref) (f_4@@138 T@Field_13813_13756) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_30054_13813_13756#PolymorphicMapType_30054| ResultMask@@18) o_2@@138 f_4@@138) (+ (select (|PolymorphicMapType_30054_13813_13756#PolymorphicMapType_30054| SummandMask1@@18) o_2@@138 f_4@@138) (select (|PolymorphicMapType_30054_13813_13756#PolymorphicMapType_30054| SummandMask2@@18) o_2@@138 f_4@@138))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_30054_13813_13756#PolymorphicMapType_30054| ResultMask@@18) o_2@@138 f_4@@138))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_30054_13813_13756#PolymorphicMapType_30054| SummandMask1@@18) o_2@@138 f_4@@138))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_30054_13813_13756#PolymorphicMapType_30054| SummandMask2@@18) o_2@@138 f_4@@138))
)))
(assert (forall ((ResultMask@@19 T@PolymorphicMapType_30054) (SummandMask1@@19 T@PolymorphicMapType_30054) (SummandMask2@@19 T@PolymorphicMapType_30054) (o_2@@139 T@Ref) (f_4@@139 T@Field_35892_35897) ) (!  (=> (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (= (select (|PolymorphicMapType_30054_13788_155614#PolymorphicMapType_30054| ResultMask@@19) o_2@@139 f_4@@139) (+ (select (|PolymorphicMapType_30054_13788_155614#PolymorphicMapType_30054| SummandMask1@@19) o_2@@139 f_4@@139) (select (|PolymorphicMapType_30054_13788_155614#PolymorphicMapType_30054| SummandMask2@@19) o_2@@139 f_4@@139))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_30054_13788_155614#PolymorphicMapType_30054| ResultMask@@19) o_2@@139 f_4@@139))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_30054_13788_155614#PolymorphicMapType_30054| SummandMask1@@19) o_2@@139 f_4@@139))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_30054_13788_155614#PolymorphicMapType_30054| SummandMask2@@19) o_2@@139 f_4@@139))
)))
(assert (forall ((ResultMask@@20 T@PolymorphicMapType_30054) (SummandMask1@@20 T@PolymorphicMapType_30054) (SummandMask2@@20 T@PolymorphicMapType_30054) (o_2@@140 T@Ref) (f_4@@140 T@Field_34511_53) ) (!  (=> (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (= (select (|PolymorphicMapType_30054_13788_53#PolymorphicMapType_30054| ResultMask@@20) o_2@@140 f_4@@140) (+ (select (|PolymorphicMapType_30054_13788_53#PolymorphicMapType_30054| SummandMask1@@20) o_2@@140 f_4@@140) (select (|PolymorphicMapType_30054_13788_53#PolymorphicMapType_30054| SummandMask2@@20) o_2@@140 f_4@@140))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_30054_13788_53#PolymorphicMapType_30054| ResultMask@@20) o_2@@140 f_4@@140))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_30054_13788_53#PolymorphicMapType_30054| SummandMask1@@20) o_2@@140 f_4@@140))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_30054_13788_53#PolymorphicMapType_30054| SummandMask2@@20) o_2@@140 f_4@@140))
)))
(assert (forall ((ResultMask@@21 T@PolymorphicMapType_30054) (SummandMask1@@21 T@PolymorphicMapType_30054) (SummandMask2@@21 T@PolymorphicMapType_30054) (o_2@@141 T@Ref) (f_4@@141 T@Field_34511_1186) ) (!  (=> (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (= (select (|PolymorphicMapType_30054_13788_1186#PolymorphicMapType_30054| ResultMask@@21) o_2@@141 f_4@@141) (+ (select (|PolymorphicMapType_30054_13788_1186#PolymorphicMapType_30054| SummandMask1@@21) o_2@@141 f_4@@141) (select (|PolymorphicMapType_30054_13788_1186#PolymorphicMapType_30054| SummandMask2@@21) o_2@@141 f_4@@141))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_30054_13788_1186#PolymorphicMapType_30054| ResultMask@@21) o_2@@141 f_4@@141))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_30054_13788_1186#PolymorphicMapType_30054| SummandMask1@@21) o_2@@141 f_4@@141))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_30054_13788_1186#PolymorphicMapType_30054| SummandMask2@@21) o_2@@141 f_4@@141))
)))
(assert (forall ((ResultMask@@22 T@PolymorphicMapType_30054) (SummandMask1@@22 T@PolymorphicMapType_30054) (SummandMask2@@22 T@PolymorphicMapType_30054) (o_2@@142 T@Ref) (f_4@@142 T@Field_34511_34512) ) (!  (=> (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (= (select (|PolymorphicMapType_30054_13788_13789#PolymorphicMapType_30054| ResultMask@@22) o_2@@142 f_4@@142) (+ (select (|PolymorphicMapType_30054_13788_13789#PolymorphicMapType_30054| SummandMask1@@22) o_2@@142 f_4@@142) (select (|PolymorphicMapType_30054_13788_13789#PolymorphicMapType_30054| SummandMask2@@22) o_2@@142 f_4@@142))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_30054_13788_13789#PolymorphicMapType_30054| ResultMask@@22) o_2@@142 f_4@@142))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_30054_13788_13789#PolymorphicMapType_30054| SummandMask1@@22) o_2@@142 f_4@@142))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_30054_13788_13789#PolymorphicMapType_30054| SummandMask2@@22) o_2@@142 f_4@@142))
)))
(assert (forall ((ResultMask@@23 T@PolymorphicMapType_30054) (SummandMask1@@23 T@PolymorphicMapType_30054) (SummandMask2@@23 T@PolymorphicMapType_30054) (o_2@@143 T@Ref) (f_4@@143 T@Field_34511_13756) ) (!  (=> (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (= (select (|PolymorphicMapType_30054_13788_13756#PolymorphicMapType_30054| ResultMask@@23) o_2@@143 f_4@@143) (+ (select (|PolymorphicMapType_30054_13788_13756#PolymorphicMapType_30054| SummandMask1@@23) o_2@@143 f_4@@143) (select (|PolymorphicMapType_30054_13788_13756#PolymorphicMapType_30054| SummandMask2@@23) o_2@@143 f_4@@143))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_30054_13788_13756#PolymorphicMapType_30054| ResultMask@@23) o_2@@143 f_4@@143))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_30054_13788_13756#PolymorphicMapType_30054| SummandMask1@@23) o_2@@143 f_4@@143))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_30054_13788_13756#PolymorphicMapType_30054| SummandMask2@@23) o_2@@143 f_4@@143))
)))
(assert (forall ((ResultMask@@24 T@PolymorphicMapType_30054) (SummandMask1@@24 T@PolymorphicMapType_30054) (SummandMask2@@24 T@PolymorphicMapType_30054) (o_2@@144 T@Ref) (f_4@@144 T@Field_13755_33534) ) (!  (=> (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (= (select (|PolymorphicMapType_30054_13755_155203#PolymorphicMapType_30054| ResultMask@@24) o_2@@144 f_4@@144) (+ (select (|PolymorphicMapType_30054_13755_155203#PolymorphicMapType_30054| SummandMask1@@24) o_2@@144 f_4@@144) (select (|PolymorphicMapType_30054_13755_155203#PolymorphicMapType_30054| SummandMask2@@24) o_2@@144 f_4@@144))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (select (|PolymorphicMapType_30054_13755_155203#PolymorphicMapType_30054| ResultMask@@24) o_2@@144 f_4@@144))
 :pattern ( (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (select (|PolymorphicMapType_30054_13755_155203#PolymorphicMapType_30054| SummandMask1@@24) o_2@@144 f_4@@144))
 :pattern ( (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (select (|PolymorphicMapType_30054_13755_155203#PolymorphicMapType_30054| SummandMask2@@24) o_2@@144 f_4@@144))
)))
(assert (forall ((ResultMask@@25 T@PolymorphicMapType_30054) (SummandMask1@@25 T@PolymorphicMapType_30054) (SummandMask2@@25 T@PolymorphicMapType_30054) (o_2@@145 T@Ref) (f_4@@145 T@Field_30093_53) ) (!  (=> (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (= (select (|PolymorphicMapType_30054_13755_53#PolymorphicMapType_30054| ResultMask@@25) o_2@@145 f_4@@145) (+ (select (|PolymorphicMapType_30054_13755_53#PolymorphicMapType_30054| SummandMask1@@25) o_2@@145 f_4@@145) (select (|PolymorphicMapType_30054_13755_53#PolymorphicMapType_30054| SummandMask2@@25) o_2@@145 f_4@@145))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (select (|PolymorphicMapType_30054_13755_53#PolymorphicMapType_30054| ResultMask@@25) o_2@@145 f_4@@145))
 :pattern ( (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (select (|PolymorphicMapType_30054_13755_53#PolymorphicMapType_30054| SummandMask1@@25) o_2@@145 f_4@@145))
 :pattern ( (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (select (|PolymorphicMapType_30054_13755_53#PolymorphicMapType_30054| SummandMask2@@25) o_2@@145 f_4@@145))
)))
(assert (forall ((ResultMask@@26 T@PolymorphicMapType_30054) (SummandMask1@@26 T@PolymorphicMapType_30054) (SummandMask2@@26 T@PolymorphicMapType_30054) (o_2@@146 T@Ref) (f_4@@146 T@Field_33419_1186) ) (!  (=> (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (= (select (|PolymorphicMapType_30054_13753_1186#PolymorphicMapType_30054| ResultMask@@26) o_2@@146 f_4@@146) (+ (select (|PolymorphicMapType_30054_13753_1186#PolymorphicMapType_30054| SummandMask1@@26) o_2@@146 f_4@@146) (select (|PolymorphicMapType_30054_13753_1186#PolymorphicMapType_30054| SummandMask2@@26) o_2@@146 f_4@@146))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (select (|PolymorphicMapType_30054_13753_1186#PolymorphicMapType_30054| ResultMask@@26) o_2@@146 f_4@@146))
 :pattern ( (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (select (|PolymorphicMapType_30054_13753_1186#PolymorphicMapType_30054| SummandMask1@@26) o_2@@146 f_4@@146))
 :pattern ( (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (select (|PolymorphicMapType_30054_13753_1186#PolymorphicMapType_30054| SummandMask2@@26) o_2@@146 f_4@@146))
)))
(assert (forall ((ResultMask@@27 T@PolymorphicMapType_30054) (SummandMask1@@27 T@PolymorphicMapType_30054) (SummandMask2@@27 T@PolymorphicMapType_30054) (o_2@@147 T@Ref) (f_4@@147 T@Field_13755_13814) ) (!  (=> (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (= (select (|PolymorphicMapType_30054_13755_13789#PolymorphicMapType_30054| ResultMask@@27) o_2@@147 f_4@@147) (+ (select (|PolymorphicMapType_30054_13755_13789#PolymorphicMapType_30054| SummandMask1@@27) o_2@@147 f_4@@147) (select (|PolymorphicMapType_30054_13755_13789#PolymorphicMapType_30054| SummandMask2@@27) o_2@@147 f_4@@147))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (select (|PolymorphicMapType_30054_13755_13789#PolymorphicMapType_30054| ResultMask@@27) o_2@@147 f_4@@147))
 :pattern ( (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (select (|PolymorphicMapType_30054_13755_13789#PolymorphicMapType_30054| SummandMask1@@27) o_2@@147 f_4@@147))
 :pattern ( (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (select (|PolymorphicMapType_30054_13755_13789#PolymorphicMapType_30054| SummandMask2@@27) o_2@@147 f_4@@147))
)))
(assert (forall ((ResultMask@@28 T@PolymorphicMapType_30054) (SummandMask1@@28 T@PolymorphicMapType_30054) (SummandMask2@@28 T@PolymorphicMapType_30054) (o_2@@148 T@Ref) (f_4@@148 T@Field_30106_30107) ) (!  (=> (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (= (select (|PolymorphicMapType_30054_13755_13756#PolymorphicMapType_30054| ResultMask@@28) o_2@@148 f_4@@148) (+ (select (|PolymorphicMapType_30054_13755_13756#PolymorphicMapType_30054| SummandMask1@@28) o_2@@148 f_4@@148) (select (|PolymorphicMapType_30054_13755_13756#PolymorphicMapType_30054| SummandMask2@@28) o_2@@148 f_4@@148))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (select (|PolymorphicMapType_30054_13755_13756#PolymorphicMapType_30054| ResultMask@@28) o_2@@148 f_4@@148))
 :pattern ( (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (select (|PolymorphicMapType_30054_13755_13756#PolymorphicMapType_30054| SummandMask1@@28) o_2@@148 f_4@@148))
 :pattern ( (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (select (|PolymorphicMapType_30054_13755_13756#PolymorphicMapType_30054| SummandMask2@@28) o_2@@148 f_4@@148))
)))
(assert (forall ((x@@19 T@Ref) ) (! (= (getPredWandId_13759_13760 (P x@@19)) 0)
 :qid |stdinbpl.202:15|
 :skolemid |24|
 :pattern ( (P x@@19))
)))
(assert (forall ((x@@20 T@Ref) ) (! (= (getPredWandId_13788_13789 (Q x@@20)) 1)
 :qid |stdinbpl.312:15|
 :skolemid |30|
 :pattern ( (Q x@@20))
)))
(assert (forall ((x@@21 T@Ref) ) (! (= (getPredWandId_13813_13814 (Rec x@@21)) 2)
 :qid |stdinbpl.366:15|
 :skolemid |36|
 :pattern ( (Rec x@@21))
)))
(assert (forall ((x@@22 T@Ref) ) (! (= (getPredWandId_13853_13854 (MRecA x@@22)) 3)
 :qid |stdinbpl.593:15|
 :skolemid |46|
 :pattern ( (MRecA x@@22))
)))
(assert (forall ((x@@23 T@Ref) ) (! (= (getPredWandId_13893_13894 (MRecB x@@23)) 4)
 :qid |stdinbpl.820:15|
 :skolemid |56|
 :pattern ( (MRecB x@@23))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_30033) (o_22 T@Ref) (f_69 T@Field_33529_33534) (v T@PolymorphicMapType_30582) ) (! (succHeap Heap@@61 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@61) (store (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@61) o_22 f_69 v) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@61) (store (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@61) o_22 f_69 v) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@61) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_30033) (o_22@@0 T@Ref) (f_69@@0 T@Field_33516_1186) (v@@0 Int) ) (! (succHeap Heap@@62 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@62) (store (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@62) o_22@@0 f_69@@0 v@@0) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@62) (store (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@62) o_22@@0 f_69@@0 v@@0) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@62) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_30033) (o_22@@1 T@Ref) (f_69@@1 T@Field_33516_33517) (v@@1 T@FrameType) ) (! (succHeap Heap@@63 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@63) (store (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@63) o_22@@1 f_69@@1 v@@1) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@63) (store (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@63) o_22@@1 f_69@@1 v@@1) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@63) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_30033) (o_22@@2 T@Ref) (f_69@@2 T@Field_33516_13756) (v@@2 T@Ref) ) (! (succHeap Heap@@64 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@64) (store (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@64) o_22@@2 f_69@@2 v@@2) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@64) (store (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@64) o_22@@2 f_69@@2 v@@2) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@64) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_30033) (o_22@@3 T@Ref) (f_69@@3 T@Field_33516_53) (v@@3 Bool) ) (! (succHeap Heap@@65 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@65) (store (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@65) o_22@@3 f_69@@3 v@@3) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@65) (store (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@65) o_22@@3 f_69@@3 v@@3) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@65) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@65)))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_30033) (o_22@@4 T@Ref) (f_69@@4 T@Field_53823_53828) (v@@4 T@PolymorphicMapType_30582) ) (! (succHeap Heap@@66 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@66) (store (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@66) o_22@@4 f_69@@4 v@@4) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@66)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@66) (store (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@66) o_22@@4 f_69@@4 v@@4) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@66) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@66)))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_30033) (o_22@@5 T@Ref) (f_69@@5 T@Field_13853_1186) (v@@5 Int) ) (! (succHeap Heap@@67 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@67) (store (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@67) o_22@@5 f_69@@5 v@@5) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@67)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@67) (store (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@67) o_22@@5 f_69@@5 v@@5) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@67) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@67)))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_30033) (o_22@@6 T@Ref) (f_69@@6 T@Field_53810_53811) (v@@6 T@FrameType) ) (! (succHeap Heap@@68 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@68) (store (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@68) o_22@@6 f_69@@6 v@@6) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@68)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@68) (store (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@68) o_22@@6 f_69@@6 v@@6) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@68) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@68)))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_30033) (o_22@@7 T@Ref) (f_69@@7 T@Field_13853_13756) (v@@7 T@Ref) ) (! (succHeap Heap@@69 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@69) (store (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@69) o_22@@7 f_69@@7 v@@7) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@69)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@69) (store (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@69) o_22@@7 f_69@@7 v@@7) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@69) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@69)))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_30033) (o_22@@8 T@Ref) (f_69@@8 T@Field_13853_53) (v@@8 Bool) ) (! (succHeap Heap@@70 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@70) (store (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@70) o_22@@8 f_69@@8 v@@8) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@70)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@70) (store (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@70) o_22@@8 f_69@@8 v@@8) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@70) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@70)))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_30033) (o_22@@9 T@Ref) (f_69@@9 T@Field_60385_60390) (v@@9 T@PolymorphicMapType_30582) ) (! (succHeap Heap@@71 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@71) (store (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@71) o_22@@9 f_69@@9 v@@9) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@71)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@71) (store (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@71) o_22@@9 f_69@@9 v@@9) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@71) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@71)))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_30033) (o_22@@10 T@Ref) (f_69@@10 T@Field_13893_1186) (v@@10 Int) ) (! (succHeap Heap@@72 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@72) (store (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@72) o_22@@10 f_69@@10 v@@10) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@72)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@72) (store (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@72) o_22@@10 f_69@@10 v@@10) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@72) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@72)))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_30033) (o_22@@11 T@Ref) (f_69@@11 T@Field_55007_55008) (v@@11 T@FrameType) ) (! (succHeap Heap@@73 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@73) (store (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@73) o_22@@11 f_69@@11 v@@11) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@73)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@73) (store (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@73) o_22@@11 f_69@@11 v@@11) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@73) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@73)))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_30033) (o_22@@12 T@Ref) (f_69@@12 T@Field_13893_13756) (v@@12 T@Ref) ) (! (succHeap Heap@@74 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@74) (store (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@74) o_22@@12 f_69@@12 v@@12) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@74)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@74) (store (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@74) o_22@@12 f_69@@12 v@@12) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@74) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@74)))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_30033) (o_22@@13 T@Ref) (f_69@@13 T@Field_13893_53) (v@@13 Bool) ) (! (succHeap Heap@@75 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@75) (store (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@75) o_22@@13 f_69@@13 v@@13) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@75)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@75) (store (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@75) o_22@@13 f_69@@13 v@@13) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@75) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@75)))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_30033) (o_22@@14 T@Ref) (f_69@@14 T@Field_38052_38057) (v@@14 T@PolymorphicMapType_30582) ) (! (succHeap Heap@@76 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@76) (store (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@76) o_22@@14 f_69@@14 v@@14) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@76)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@76) (store (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@76) o_22@@14 f_69@@14 v@@14) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@76) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@76)))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_30033) (o_22@@15 T@Ref) (f_69@@15 T@Field_13813_1186) (v@@15 Int) ) (! (succHeap Heap@@77 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@77) (store (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@77) o_22@@15 f_69@@15 v@@15) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@77)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@77) (store (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@77) o_22@@15 f_69@@15 v@@15) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@77) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@77)))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_30033) (o_22@@16 T@Ref) (f_69@@16 T@Field_38039_38040) (v@@16 T@FrameType) ) (! (succHeap Heap@@78 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@78) (store (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@78) o_22@@16 f_69@@16 v@@16) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@78)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@78) (store (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@78) o_22@@16 f_69@@16 v@@16) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@78) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@78)))
)))
(assert (forall ((Heap@@79 T@PolymorphicMapType_30033) (o_22@@17 T@Ref) (f_69@@17 T@Field_13813_13756) (v@@17 T@Ref) ) (! (succHeap Heap@@79 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@79) (store (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@79) o_22@@17 f_69@@17 v@@17) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@79)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@79) (store (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@79) o_22@@17 f_69@@17 v@@17) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@79) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@79)))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_30033) (o_22@@18 T@Ref) (f_69@@18 T@Field_13813_53) (v@@18 Bool) ) (! (succHeap Heap@@80 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@80) (store (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@80) o_22@@18 f_69@@18 v@@18) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@80)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@80) (store (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@80) o_22@@18 f_69@@18 v@@18) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@80) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@80)))
)))
(assert (forall ((Heap@@81 T@PolymorphicMapType_30033) (o_22@@19 T@Ref) (f_69@@19 T@Field_35892_35897) (v@@19 T@PolymorphicMapType_30582) ) (! (succHeap Heap@@81 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@81) (store (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@81) o_22@@19 f_69@@19 v@@19) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@81)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@81) (store (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@81) o_22@@19 f_69@@19 v@@19) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@81) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@81)))
)))
(assert (forall ((Heap@@82 T@PolymorphicMapType_30033) (o_22@@20 T@Ref) (f_69@@20 T@Field_34511_1186) (v@@20 Int) ) (! (succHeap Heap@@82 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@82) (store (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@82) o_22@@20 f_69@@20 v@@20) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@82)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@82) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@82) (store (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@82) o_22@@20 f_69@@20 v@@20) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@82)))
)))
(assert (forall ((Heap@@83 T@PolymorphicMapType_30033) (o_22@@21 T@Ref) (f_69@@21 T@Field_34511_34512) (v@@21 T@FrameType) ) (! (succHeap Heap@@83 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@83) (store (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@83) o_22@@21 f_69@@21 v@@21) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@83)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@83) (store (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@83) o_22@@21 f_69@@21 v@@21) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@83) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@83)))
)))
(assert (forall ((Heap@@84 T@PolymorphicMapType_30033) (o_22@@22 T@Ref) (f_69@@22 T@Field_34511_13756) (v@@22 T@Ref) ) (! (succHeap Heap@@84 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@84) (store (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@84) o_22@@22 f_69@@22 v@@22) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@84)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@84) (store (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@84) o_22@@22 f_69@@22 v@@22) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@84) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@84)))
)))
(assert (forall ((Heap@@85 T@PolymorphicMapType_30033) (o_22@@23 T@Ref) (f_69@@23 T@Field_34511_53) (v@@23 Bool) ) (! (succHeap Heap@@85 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@85) (store (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@85) o_22@@23 f_69@@23 v@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@85) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@85) (store (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@85) o_22@@23 f_69@@23 v@@23)))
)))
(assert (forall ((Heap@@86 T@PolymorphicMapType_30033) (o_22@@24 T@Ref) (f_69@@24 T@Field_13755_33534) (v@@24 T@PolymorphicMapType_30582) ) (! (succHeap Heap@@86 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@86) (store (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@86) o_22@@24 f_69@@24 v@@24) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@86)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@86) (store (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@86) o_22@@24 f_69@@24 v@@24) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@86) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@86)))
)))
(assert (forall ((Heap@@87 T@PolymorphicMapType_30033) (o_22@@25 T@Ref) (f_69@@25 T@Field_33419_1186) (v@@25 Int) ) (! (succHeap Heap@@87 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@87) (store (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@87) o_22@@25 f_69@@25 v@@25) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@87)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@87) (store (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@87) o_22@@25 f_69@@25 v@@25) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@87) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@87)))
)))
(assert (forall ((Heap@@88 T@PolymorphicMapType_30033) (o_22@@26 T@Ref) (f_69@@26 T@Field_13755_13814) (v@@26 T@FrameType) ) (! (succHeap Heap@@88 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@88) (store (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@88) o_22@@26 f_69@@26 v@@26) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@88)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@88) (store (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@88) o_22@@26 f_69@@26 v@@26) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@88) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@88)))
)))
(assert (forall ((Heap@@89 T@PolymorphicMapType_30033) (o_22@@27 T@Ref) (f_69@@27 T@Field_30106_30107) (v@@27 T@Ref) ) (! (succHeap Heap@@89 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@89) (store (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@89) o_22@@27 f_69@@27 v@@27) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@89)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@89) (store (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@89) o_22@@27 f_69@@27 v@@27) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@89) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@89)))
)))
(assert (forall ((Heap@@90 T@PolymorphicMapType_30033) (o_22@@28 T@Ref) (f_69@@28 T@Field_30093_53) (v@@28 Bool) ) (! (succHeap Heap@@90 (PolymorphicMapType_30033 (store (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@90) o_22@@28 f_69@@28 v@@28) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@90)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30033 (store (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@90) o_22@@28 f_69@@28 v@@28) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@90) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@90)))
)))
(assert (forall ((x@@24 T@Ref) ) (! (= (PredicateMaskField_13759 (P x@@24)) (|P#sm| x@@24))
 :qid |stdinbpl.194:15|
 :skolemid |22|
 :pattern ( (PredicateMaskField_13759 (P x@@24)))
)))
(assert (forall ((x@@25 T@Ref) ) (! (= (PredicateMaskField_13788 (Q x@@25)) (|Q#sm| x@@25))
 :qid |stdinbpl.304:15|
 :skolemid |28|
 :pattern ( (PredicateMaskField_13788 (Q x@@25)))
)))
(assert (forall ((x@@26 T@Ref) ) (! (= (PredicateMaskField_13813 (Rec x@@26)) (|Rec#sm| x@@26))
 :qid |stdinbpl.358:15|
 :skolemid |34|
 :pattern ( (PredicateMaskField_13813 (Rec x@@26)))
)))
(assert (forall ((x@@27 T@Ref) ) (! (= (PredicateMaskField_13853 (MRecA x@@27)) (|MRecA#sm| x@@27))
 :qid |stdinbpl.585:15|
 :skolemid |44|
 :pattern ( (PredicateMaskField_13853 (MRecA x@@27)))
)))
(assert (forall ((x@@28 T@Ref) ) (! (= (PredicateMaskField_13893 (MRecB x@@28)) (|MRecB#sm| x@@28))
 :qid |stdinbpl.812:15|
 :skolemid |54|
 :pattern ( (PredicateMaskField_13893 (MRecB x@@28)))
)))
(assert (forall ((o_22@@29 T@Ref) (f_32 T@Field_30106_30107) (Heap@@91 T@PolymorphicMapType_30033) ) (!  (=> (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@91) o_22@@29 $allocated) (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@91) (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@91) o_22@@29 f_32) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@91) o_22@@29 f_32))
)))
(assert (forall ((p@@6 T@Field_34511_34512) (v_1@@5 T@FrameType) (q T@Field_13755_13814) (w@@5 T@FrameType) (r T@Field_33516_33517) (u T@FrameType) ) (!  (=> (and (InsidePredicate_13788_30093 p@@6 v_1@@5 q w@@5) (InsidePredicate_30093_33516 q w@@5 r u)) (InsidePredicate_13788_33516 p@@6 v_1@@5 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_30093 p@@6 v_1@@5 q w@@5) (InsidePredicate_30093_33516 q w@@5 r u))
)))
(assert (forall ((p@@7 T@Field_34511_34512) (v_1@@6 T@FrameType) (q@@0 T@Field_13755_13814) (w@@6 T@FrameType) (r@@0 T@Field_13755_13814) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_30093 p@@7 v_1@@6 q@@0 w@@6) (InsidePredicate_30093_30093 q@@0 w@@6 r@@0 u@@0)) (InsidePredicate_13788_30093 p@@7 v_1@@6 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_30093 p@@7 v_1@@6 q@@0 w@@6) (InsidePredicate_30093_30093 q@@0 w@@6 r@@0 u@@0))
)))
(assert (forall ((p@@8 T@Field_34511_34512) (v_1@@7 T@FrameType) (q@@1 T@Field_13755_13814) (w@@7 T@FrameType) (r@@1 T@Field_34511_34512) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_30093 p@@8 v_1@@7 q@@1 w@@7) (InsidePredicate_30093_13788 q@@1 w@@7 r@@1 u@@1)) (InsidePredicate_13788_13788 p@@8 v_1@@7 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_30093 p@@8 v_1@@7 q@@1 w@@7) (InsidePredicate_30093_13788 q@@1 w@@7 r@@1 u@@1))
)))
(assert (forall ((p@@9 T@Field_34511_34512) (v_1@@8 T@FrameType) (q@@2 T@Field_13755_13814) (w@@8 T@FrameType) (r@@2 T@Field_55007_55008) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_30093 p@@9 v_1@@8 q@@2 w@@8) (InsidePredicate_30093_13893 q@@2 w@@8 r@@2 u@@2)) (InsidePredicate_13788_13893 p@@9 v_1@@8 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_30093 p@@9 v_1@@8 q@@2 w@@8) (InsidePredicate_30093_13893 q@@2 w@@8 r@@2 u@@2))
)))
(assert (forall ((p@@10 T@Field_34511_34512) (v_1@@9 T@FrameType) (q@@3 T@Field_13755_13814) (w@@9 T@FrameType) (r@@3 T@Field_53810_53811) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_30093 p@@10 v_1@@9 q@@3 w@@9) (InsidePredicate_30093_13853 q@@3 w@@9 r@@3 u@@3)) (InsidePredicate_13788_13853 p@@10 v_1@@9 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_30093 p@@10 v_1@@9 q@@3 w@@9) (InsidePredicate_30093_13853 q@@3 w@@9 r@@3 u@@3))
)))
(assert (forall ((p@@11 T@Field_34511_34512) (v_1@@10 T@FrameType) (q@@4 T@Field_13755_13814) (w@@10 T@FrameType) (r@@4 T@Field_38039_38040) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_30093 p@@11 v_1@@10 q@@4 w@@10) (InsidePredicate_30093_13813 q@@4 w@@10 r@@4 u@@4)) (InsidePredicate_13788_13813 p@@11 v_1@@10 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_30093 p@@11 v_1@@10 q@@4 w@@10) (InsidePredicate_30093_13813 q@@4 w@@10 r@@4 u@@4))
)))
(assert (forall ((p@@12 T@Field_34511_34512) (v_1@@11 T@FrameType) (q@@5 T@Field_33516_33517) (w@@11 T@FrameType) (r@@5 T@Field_33516_33517) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_33516 p@@12 v_1@@11 q@@5 w@@11) (InsidePredicate_13759_33516 q@@5 w@@11 r@@5 u@@5)) (InsidePredicate_13788_33516 p@@12 v_1@@11 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_33516 p@@12 v_1@@11 q@@5 w@@11) (InsidePredicate_13759_33516 q@@5 w@@11 r@@5 u@@5))
)))
(assert (forall ((p@@13 T@Field_34511_34512) (v_1@@12 T@FrameType) (q@@6 T@Field_33516_33517) (w@@12 T@FrameType) (r@@6 T@Field_13755_13814) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_33516 p@@13 v_1@@12 q@@6 w@@12) (InsidePredicate_13759_30093 q@@6 w@@12 r@@6 u@@6)) (InsidePredicate_13788_30093 p@@13 v_1@@12 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_33516 p@@13 v_1@@12 q@@6 w@@12) (InsidePredicate_13759_30093 q@@6 w@@12 r@@6 u@@6))
)))
(assert (forall ((p@@14 T@Field_34511_34512) (v_1@@13 T@FrameType) (q@@7 T@Field_33516_33517) (w@@13 T@FrameType) (r@@7 T@Field_34511_34512) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_33516 p@@14 v_1@@13 q@@7 w@@13) (InsidePredicate_13759_13788 q@@7 w@@13 r@@7 u@@7)) (InsidePredicate_13788_13788 p@@14 v_1@@13 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_33516 p@@14 v_1@@13 q@@7 w@@13) (InsidePredicate_13759_13788 q@@7 w@@13 r@@7 u@@7))
)))
(assert (forall ((p@@15 T@Field_34511_34512) (v_1@@14 T@FrameType) (q@@8 T@Field_33516_33517) (w@@14 T@FrameType) (r@@8 T@Field_55007_55008) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_33516 p@@15 v_1@@14 q@@8 w@@14) (InsidePredicate_13759_13893 q@@8 w@@14 r@@8 u@@8)) (InsidePredicate_13788_13893 p@@15 v_1@@14 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_33516 p@@15 v_1@@14 q@@8 w@@14) (InsidePredicate_13759_13893 q@@8 w@@14 r@@8 u@@8))
)))
(assert (forall ((p@@16 T@Field_34511_34512) (v_1@@15 T@FrameType) (q@@9 T@Field_33516_33517) (w@@15 T@FrameType) (r@@9 T@Field_53810_53811) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_33516 p@@16 v_1@@15 q@@9 w@@15) (InsidePredicate_13759_13853 q@@9 w@@15 r@@9 u@@9)) (InsidePredicate_13788_13853 p@@16 v_1@@15 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_33516 p@@16 v_1@@15 q@@9 w@@15) (InsidePredicate_13759_13853 q@@9 w@@15 r@@9 u@@9))
)))
(assert (forall ((p@@17 T@Field_34511_34512) (v_1@@16 T@FrameType) (q@@10 T@Field_33516_33517) (w@@16 T@FrameType) (r@@10 T@Field_38039_38040) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_33516 p@@17 v_1@@16 q@@10 w@@16) (InsidePredicate_13759_13813 q@@10 w@@16 r@@10 u@@10)) (InsidePredicate_13788_13813 p@@17 v_1@@16 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_33516 p@@17 v_1@@16 q@@10 w@@16) (InsidePredicate_13759_13813 q@@10 w@@16 r@@10 u@@10))
)))
(assert (forall ((p@@18 T@Field_34511_34512) (v_1@@17 T@FrameType) (q@@11 T@Field_34511_34512) (w@@17 T@FrameType) (r@@11 T@Field_33516_33517) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_13788 p@@18 v_1@@17 q@@11 w@@17) (InsidePredicate_13788_33516 q@@11 w@@17 r@@11 u@@11)) (InsidePredicate_13788_33516 p@@18 v_1@@17 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_13788 p@@18 v_1@@17 q@@11 w@@17) (InsidePredicate_13788_33516 q@@11 w@@17 r@@11 u@@11))
)))
(assert (forall ((p@@19 T@Field_34511_34512) (v_1@@18 T@FrameType) (q@@12 T@Field_34511_34512) (w@@18 T@FrameType) (r@@12 T@Field_13755_13814) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_13788 p@@19 v_1@@18 q@@12 w@@18) (InsidePredicate_13788_30093 q@@12 w@@18 r@@12 u@@12)) (InsidePredicate_13788_30093 p@@19 v_1@@18 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_13788 p@@19 v_1@@18 q@@12 w@@18) (InsidePredicate_13788_30093 q@@12 w@@18 r@@12 u@@12))
)))
(assert (forall ((p@@20 T@Field_34511_34512) (v_1@@19 T@FrameType) (q@@13 T@Field_34511_34512) (w@@19 T@FrameType) (r@@13 T@Field_34511_34512) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_13788 p@@20 v_1@@19 q@@13 w@@19) (InsidePredicate_13788_13788 q@@13 w@@19 r@@13 u@@13)) (InsidePredicate_13788_13788 p@@20 v_1@@19 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_13788 p@@20 v_1@@19 q@@13 w@@19) (InsidePredicate_13788_13788 q@@13 w@@19 r@@13 u@@13))
)))
(assert (forall ((p@@21 T@Field_34511_34512) (v_1@@20 T@FrameType) (q@@14 T@Field_34511_34512) (w@@20 T@FrameType) (r@@14 T@Field_55007_55008) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_13788 p@@21 v_1@@20 q@@14 w@@20) (InsidePredicate_13788_13893 q@@14 w@@20 r@@14 u@@14)) (InsidePredicate_13788_13893 p@@21 v_1@@20 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_13788 p@@21 v_1@@20 q@@14 w@@20) (InsidePredicate_13788_13893 q@@14 w@@20 r@@14 u@@14))
)))
(assert (forall ((p@@22 T@Field_34511_34512) (v_1@@21 T@FrameType) (q@@15 T@Field_34511_34512) (w@@21 T@FrameType) (r@@15 T@Field_53810_53811) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_13788 p@@22 v_1@@21 q@@15 w@@21) (InsidePredicate_13788_13853 q@@15 w@@21 r@@15 u@@15)) (InsidePredicate_13788_13853 p@@22 v_1@@21 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_13788 p@@22 v_1@@21 q@@15 w@@21) (InsidePredicate_13788_13853 q@@15 w@@21 r@@15 u@@15))
)))
(assert (forall ((p@@23 T@Field_34511_34512) (v_1@@22 T@FrameType) (q@@16 T@Field_34511_34512) (w@@22 T@FrameType) (r@@16 T@Field_38039_38040) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_13788 p@@23 v_1@@22 q@@16 w@@22) (InsidePredicate_13788_13813 q@@16 w@@22 r@@16 u@@16)) (InsidePredicate_13788_13813 p@@23 v_1@@22 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_13788 p@@23 v_1@@22 q@@16 w@@22) (InsidePredicate_13788_13813 q@@16 w@@22 r@@16 u@@16))
)))
(assert (forall ((p@@24 T@Field_34511_34512) (v_1@@23 T@FrameType) (q@@17 T@Field_55007_55008) (w@@23 T@FrameType) (r@@17 T@Field_33516_33517) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_13893 p@@24 v_1@@23 q@@17 w@@23) (InsidePredicate_13893_33516 q@@17 w@@23 r@@17 u@@17)) (InsidePredicate_13788_33516 p@@24 v_1@@23 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_13893 p@@24 v_1@@23 q@@17 w@@23) (InsidePredicate_13893_33516 q@@17 w@@23 r@@17 u@@17))
)))
(assert (forall ((p@@25 T@Field_34511_34512) (v_1@@24 T@FrameType) (q@@18 T@Field_55007_55008) (w@@24 T@FrameType) (r@@18 T@Field_13755_13814) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_13893 p@@25 v_1@@24 q@@18 w@@24) (InsidePredicate_13893_30093 q@@18 w@@24 r@@18 u@@18)) (InsidePredicate_13788_30093 p@@25 v_1@@24 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_13893 p@@25 v_1@@24 q@@18 w@@24) (InsidePredicate_13893_30093 q@@18 w@@24 r@@18 u@@18))
)))
(assert (forall ((p@@26 T@Field_34511_34512) (v_1@@25 T@FrameType) (q@@19 T@Field_55007_55008) (w@@25 T@FrameType) (r@@19 T@Field_34511_34512) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_13893 p@@26 v_1@@25 q@@19 w@@25) (InsidePredicate_13893_13788 q@@19 w@@25 r@@19 u@@19)) (InsidePredicate_13788_13788 p@@26 v_1@@25 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_13893 p@@26 v_1@@25 q@@19 w@@25) (InsidePredicate_13893_13788 q@@19 w@@25 r@@19 u@@19))
)))
(assert (forall ((p@@27 T@Field_34511_34512) (v_1@@26 T@FrameType) (q@@20 T@Field_55007_55008) (w@@26 T@FrameType) (r@@20 T@Field_55007_55008) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_13893 p@@27 v_1@@26 q@@20 w@@26) (InsidePredicate_13893_13893 q@@20 w@@26 r@@20 u@@20)) (InsidePredicate_13788_13893 p@@27 v_1@@26 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_13893 p@@27 v_1@@26 q@@20 w@@26) (InsidePredicate_13893_13893 q@@20 w@@26 r@@20 u@@20))
)))
(assert (forall ((p@@28 T@Field_34511_34512) (v_1@@27 T@FrameType) (q@@21 T@Field_55007_55008) (w@@27 T@FrameType) (r@@21 T@Field_53810_53811) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_13893 p@@28 v_1@@27 q@@21 w@@27) (InsidePredicate_13893_13853 q@@21 w@@27 r@@21 u@@21)) (InsidePredicate_13788_13853 p@@28 v_1@@27 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_13893 p@@28 v_1@@27 q@@21 w@@27) (InsidePredicate_13893_13853 q@@21 w@@27 r@@21 u@@21))
)))
(assert (forall ((p@@29 T@Field_34511_34512) (v_1@@28 T@FrameType) (q@@22 T@Field_55007_55008) (w@@28 T@FrameType) (r@@22 T@Field_38039_38040) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_13893 p@@29 v_1@@28 q@@22 w@@28) (InsidePredicate_13893_13813 q@@22 w@@28 r@@22 u@@22)) (InsidePredicate_13788_13813 p@@29 v_1@@28 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_13893 p@@29 v_1@@28 q@@22 w@@28) (InsidePredicate_13893_13813 q@@22 w@@28 r@@22 u@@22))
)))
(assert (forall ((p@@30 T@Field_34511_34512) (v_1@@29 T@FrameType) (q@@23 T@Field_53810_53811) (w@@29 T@FrameType) (r@@23 T@Field_33516_33517) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_13853 p@@30 v_1@@29 q@@23 w@@29) (InsidePredicate_13853_33516 q@@23 w@@29 r@@23 u@@23)) (InsidePredicate_13788_33516 p@@30 v_1@@29 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_13853 p@@30 v_1@@29 q@@23 w@@29) (InsidePredicate_13853_33516 q@@23 w@@29 r@@23 u@@23))
)))
(assert (forall ((p@@31 T@Field_34511_34512) (v_1@@30 T@FrameType) (q@@24 T@Field_53810_53811) (w@@30 T@FrameType) (r@@24 T@Field_13755_13814) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_13853 p@@31 v_1@@30 q@@24 w@@30) (InsidePredicate_13853_30093 q@@24 w@@30 r@@24 u@@24)) (InsidePredicate_13788_30093 p@@31 v_1@@30 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_13853 p@@31 v_1@@30 q@@24 w@@30) (InsidePredicate_13853_30093 q@@24 w@@30 r@@24 u@@24))
)))
(assert (forall ((p@@32 T@Field_34511_34512) (v_1@@31 T@FrameType) (q@@25 T@Field_53810_53811) (w@@31 T@FrameType) (r@@25 T@Field_34511_34512) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_13853 p@@32 v_1@@31 q@@25 w@@31) (InsidePredicate_13853_13788 q@@25 w@@31 r@@25 u@@25)) (InsidePredicate_13788_13788 p@@32 v_1@@31 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_13853 p@@32 v_1@@31 q@@25 w@@31) (InsidePredicate_13853_13788 q@@25 w@@31 r@@25 u@@25))
)))
(assert (forall ((p@@33 T@Field_34511_34512) (v_1@@32 T@FrameType) (q@@26 T@Field_53810_53811) (w@@32 T@FrameType) (r@@26 T@Field_55007_55008) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_13853 p@@33 v_1@@32 q@@26 w@@32) (InsidePredicate_13853_13893 q@@26 w@@32 r@@26 u@@26)) (InsidePredicate_13788_13893 p@@33 v_1@@32 r@@26 u@@26))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_13853 p@@33 v_1@@32 q@@26 w@@32) (InsidePredicate_13853_13893 q@@26 w@@32 r@@26 u@@26))
)))
(assert (forall ((p@@34 T@Field_34511_34512) (v_1@@33 T@FrameType) (q@@27 T@Field_53810_53811) (w@@33 T@FrameType) (r@@27 T@Field_53810_53811) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_13853 p@@34 v_1@@33 q@@27 w@@33) (InsidePredicate_13853_13853 q@@27 w@@33 r@@27 u@@27)) (InsidePredicate_13788_13853 p@@34 v_1@@33 r@@27 u@@27))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_13853 p@@34 v_1@@33 q@@27 w@@33) (InsidePredicate_13853_13853 q@@27 w@@33 r@@27 u@@27))
)))
(assert (forall ((p@@35 T@Field_34511_34512) (v_1@@34 T@FrameType) (q@@28 T@Field_53810_53811) (w@@34 T@FrameType) (r@@28 T@Field_38039_38040) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_13853 p@@35 v_1@@34 q@@28 w@@34) (InsidePredicate_13853_13813 q@@28 w@@34 r@@28 u@@28)) (InsidePredicate_13788_13813 p@@35 v_1@@34 r@@28 u@@28))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_13853 p@@35 v_1@@34 q@@28 w@@34) (InsidePredicate_13853_13813 q@@28 w@@34 r@@28 u@@28))
)))
(assert (forall ((p@@36 T@Field_34511_34512) (v_1@@35 T@FrameType) (q@@29 T@Field_38039_38040) (w@@35 T@FrameType) (r@@29 T@Field_33516_33517) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_13813 p@@36 v_1@@35 q@@29 w@@35) (InsidePredicate_13813_33516 q@@29 w@@35 r@@29 u@@29)) (InsidePredicate_13788_33516 p@@36 v_1@@35 r@@29 u@@29))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_13813 p@@36 v_1@@35 q@@29 w@@35) (InsidePredicate_13813_33516 q@@29 w@@35 r@@29 u@@29))
)))
(assert (forall ((p@@37 T@Field_34511_34512) (v_1@@36 T@FrameType) (q@@30 T@Field_38039_38040) (w@@36 T@FrameType) (r@@30 T@Field_13755_13814) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_13813 p@@37 v_1@@36 q@@30 w@@36) (InsidePredicate_13813_30093 q@@30 w@@36 r@@30 u@@30)) (InsidePredicate_13788_30093 p@@37 v_1@@36 r@@30 u@@30))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_13813 p@@37 v_1@@36 q@@30 w@@36) (InsidePredicate_13813_30093 q@@30 w@@36 r@@30 u@@30))
)))
(assert (forall ((p@@38 T@Field_34511_34512) (v_1@@37 T@FrameType) (q@@31 T@Field_38039_38040) (w@@37 T@FrameType) (r@@31 T@Field_34511_34512) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_13813 p@@38 v_1@@37 q@@31 w@@37) (InsidePredicate_13813_13788 q@@31 w@@37 r@@31 u@@31)) (InsidePredicate_13788_13788 p@@38 v_1@@37 r@@31 u@@31))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_13813 p@@38 v_1@@37 q@@31 w@@37) (InsidePredicate_13813_13788 q@@31 w@@37 r@@31 u@@31))
)))
(assert (forall ((p@@39 T@Field_34511_34512) (v_1@@38 T@FrameType) (q@@32 T@Field_38039_38040) (w@@38 T@FrameType) (r@@32 T@Field_55007_55008) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_13813 p@@39 v_1@@38 q@@32 w@@38) (InsidePredicate_13813_13893 q@@32 w@@38 r@@32 u@@32)) (InsidePredicate_13788_13893 p@@39 v_1@@38 r@@32 u@@32))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_13813 p@@39 v_1@@38 q@@32 w@@38) (InsidePredicate_13813_13893 q@@32 w@@38 r@@32 u@@32))
)))
(assert (forall ((p@@40 T@Field_34511_34512) (v_1@@39 T@FrameType) (q@@33 T@Field_38039_38040) (w@@39 T@FrameType) (r@@33 T@Field_53810_53811) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_13813 p@@40 v_1@@39 q@@33 w@@39) (InsidePredicate_13813_13853 q@@33 w@@39 r@@33 u@@33)) (InsidePredicate_13788_13853 p@@40 v_1@@39 r@@33 u@@33))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_13813 p@@40 v_1@@39 q@@33 w@@39) (InsidePredicate_13813_13853 q@@33 w@@39 r@@33 u@@33))
)))
(assert (forall ((p@@41 T@Field_34511_34512) (v_1@@40 T@FrameType) (q@@34 T@Field_38039_38040) (w@@40 T@FrameType) (r@@34 T@Field_38039_38040) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_13788_13813 p@@41 v_1@@40 q@@34 w@@40) (InsidePredicate_13813_13813 q@@34 w@@40 r@@34 u@@34)) (InsidePredicate_13788_13813 p@@41 v_1@@40 r@@34 u@@34))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13788_13813 p@@41 v_1@@40 q@@34 w@@40) (InsidePredicate_13813_13813 q@@34 w@@40 r@@34 u@@34))
)))
(assert (forall ((p@@42 T@Field_13755_13814) (v_1@@41 T@FrameType) (q@@35 T@Field_13755_13814) (w@@41 T@FrameType) (r@@35 T@Field_33516_33517) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_30093 p@@42 v_1@@41 q@@35 w@@41) (InsidePredicate_30093_33516 q@@35 w@@41 r@@35 u@@35)) (InsidePredicate_30093_33516 p@@42 v_1@@41 r@@35 u@@35))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_30093 p@@42 v_1@@41 q@@35 w@@41) (InsidePredicate_30093_33516 q@@35 w@@41 r@@35 u@@35))
)))
(assert (forall ((p@@43 T@Field_13755_13814) (v_1@@42 T@FrameType) (q@@36 T@Field_13755_13814) (w@@42 T@FrameType) (r@@36 T@Field_13755_13814) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_30093 p@@43 v_1@@42 q@@36 w@@42) (InsidePredicate_30093_30093 q@@36 w@@42 r@@36 u@@36)) (InsidePredicate_30093_30093 p@@43 v_1@@42 r@@36 u@@36))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_30093 p@@43 v_1@@42 q@@36 w@@42) (InsidePredicate_30093_30093 q@@36 w@@42 r@@36 u@@36))
)))
(assert (forall ((p@@44 T@Field_13755_13814) (v_1@@43 T@FrameType) (q@@37 T@Field_13755_13814) (w@@43 T@FrameType) (r@@37 T@Field_34511_34512) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_30093 p@@44 v_1@@43 q@@37 w@@43) (InsidePredicate_30093_13788 q@@37 w@@43 r@@37 u@@37)) (InsidePredicate_30093_13788 p@@44 v_1@@43 r@@37 u@@37))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_30093 p@@44 v_1@@43 q@@37 w@@43) (InsidePredicate_30093_13788 q@@37 w@@43 r@@37 u@@37))
)))
(assert (forall ((p@@45 T@Field_13755_13814) (v_1@@44 T@FrameType) (q@@38 T@Field_13755_13814) (w@@44 T@FrameType) (r@@38 T@Field_55007_55008) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_30093 p@@45 v_1@@44 q@@38 w@@44) (InsidePredicate_30093_13893 q@@38 w@@44 r@@38 u@@38)) (InsidePredicate_30093_13893 p@@45 v_1@@44 r@@38 u@@38))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_30093 p@@45 v_1@@44 q@@38 w@@44) (InsidePredicate_30093_13893 q@@38 w@@44 r@@38 u@@38))
)))
(assert (forall ((p@@46 T@Field_13755_13814) (v_1@@45 T@FrameType) (q@@39 T@Field_13755_13814) (w@@45 T@FrameType) (r@@39 T@Field_53810_53811) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_30093 p@@46 v_1@@45 q@@39 w@@45) (InsidePredicate_30093_13853 q@@39 w@@45 r@@39 u@@39)) (InsidePredicate_30093_13853 p@@46 v_1@@45 r@@39 u@@39))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_30093 p@@46 v_1@@45 q@@39 w@@45) (InsidePredicate_30093_13853 q@@39 w@@45 r@@39 u@@39))
)))
(assert (forall ((p@@47 T@Field_13755_13814) (v_1@@46 T@FrameType) (q@@40 T@Field_13755_13814) (w@@46 T@FrameType) (r@@40 T@Field_38039_38040) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_30093 p@@47 v_1@@46 q@@40 w@@46) (InsidePredicate_30093_13813 q@@40 w@@46 r@@40 u@@40)) (InsidePredicate_30093_13813 p@@47 v_1@@46 r@@40 u@@40))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_30093 p@@47 v_1@@46 q@@40 w@@46) (InsidePredicate_30093_13813 q@@40 w@@46 r@@40 u@@40))
)))
(assert (forall ((p@@48 T@Field_13755_13814) (v_1@@47 T@FrameType) (q@@41 T@Field_33516_33517) (w@@47 T@FrameType) (r@@41 T@Field_33516_33517) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_33516 p@@48 v_1@@47 q@@41 w@@47) (InsidePredicate_13759_33516 q@@41 w@@47 r@@41 u@@41)) (InsidePredicate_30093_33516 p@@48 v_1@@47 r@@41 u@@41))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_33516 p@@48 v_1@@47 q@@41 w@@47) (InsidePredicate_13759_33516 q@@41 w@@47 r@@41 u@@41))
)))
(assert (forall ((p@@49 T@Field_13755_13814) (v_1@@48 T@FrameType) (q@@42 T@Field_33516_33517) (w@@48 T@FrameType) (r@@42 T@Field_13755_13814) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_33516 p@@49 v_1@@48 q@@42 w@@48) (InsidePredicate_13759_30093 q@@42 w@@48 r@@42 u@@42)) (InsidePredicate_30093_30093 p@@49 v_1@@48 r@@42 u@@42))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_33516 p@@49 v_1@@48 q@@42 w@@48) (InsidePredicate_13759_30093 q@@42 w@@48 r@@42 u@@42))
)))
(assert (forall ((p@@50 T@Field_13755_13814) (v_1@@49 T@FrameType) (q@@43 T@Field_33516_33517) (w@@49 T@FrameType) (r@@43 T@Field_34511_34512) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_33516 p@@50 v_1@@49 q@@43 w@@49) (InsidePredicate_13759_13788 q@@43 w@@49 r@@43 u@@43)) (InsidePredicate_30093_13788 p@@50 v_1@@49 r@@43 u@@43))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_33516 p@@50 v_1@@49 q@@43 w@@49) (InsidePredicate_13759_13788 q@@43 w@@49 r@@43 u@@43))
)))
(assert (forall ((p@@51 T@Field_13755_13814) (v_1@@50 T@FrameType) (q@@44 T@Field_33516_33517) (w@@50 T@FrameType) (r@@44 T@Field_55007_55008) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_33516 p@@51 v_1@@50 q@@44 w@@50) (InsidePredicate_13759_13893 q@@44 w@@50 r@@44 u@@44)) (InsidePredicate_30093_13893 p@@51 v_1@@50 r@@44 u@@44))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_33516 p@@51 v_1@@50 q@@44 w@@50) (InsidePredicate_13759_13893 q@@44 w@@50 r@@44 u@@44))
)))
(assert (forall ((p@@52 T@Field_13755_13814) (v_1@@51 T@FrameType) (q@@45 T@Field_33516_33517) (w@@51 T@FrameType) (r@@45 T@Field_53810_53811) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_33516 p@@52 v_1@@51 q@@45 w@@51) (InsidePredicate_13759_13853 q@@45 w@@51 r@@45 u@@45)) (InsidePredicate_30093_13853 p@@52 v_1@@51 r@@45 u@@45))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_33516 p@@52 v_1@@51 q@@45 w@@51) (InsidePredicate_13759_13853 q@@45 w@@51 r@@45 u@@45))
)))
(assert (forall ((p@@53 T@Field_13755_13814) (v_1@@52 T@FrameType) (q@@46 T@Field_33516_33517) (w@@52 T@FrameType) (r@@46 T@Field_38039_38040) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_33516 p@@53 v_1@@52 q@@46 w@@52) (InsidePredicate_13759_13813 q@@46 w@@52 r@@46 u@@46)) (InsidePredicate_30093_13813 p@@53 v_1@@52 r@@46 u@@46))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_33516 p@@53 v_1@@52 q@@46 w@@52) (InsidePredicate_13759_13813 q@@46 w@@52 r@@46 u@@46))
)))
(assert (forall ((p@@54 T@Field_13755_13814) (v_1@@53 T@FrameType) (q@@47 T@Field_34511_34512) (w@@53 T@FrameType) (r@@47 T@Field_33516_33517) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_13788 p@@54 v_1@@53 q@@47 w@@53) (InsidePredicate_13788_33516 q@@47 w@@53 r@@47 u@@47)) (InsidePredicate_30093_33516 p@@54 v_1@@53 r@@47 u@@47))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_13788 p@@54 v_1@@53 q@@47 w@@53) (InsidePredicate_13788_33516 q@@47 w@@53 r@@47 u@@47))
)))
(assert (forall ((p@@55 T@Field_13755_13814) (v_1@@54 T@FrameType) (q@@48 T@Field_34511_34512) (w@@54 T@FrameType) (r@@48 T@Field_13755_13814) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_13788 p@@55 v_1@@54 q@@48 w@@54) (InsidePredicate_13788_30093 q@@48 w@@54 r@@48 u@@48)) (InsidePredicate_30093_30093 p@@55 v_1@@54 r@@48 u@@48))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_13788 p@@55 v_1@@54 q@@48 w@@54) (InsidePredicate_13788_30093 q@@48 w@@54 r@@48 u@@48))
)))
(assert (forall ((p@@56 T@Field_13755_13814) (v_1@@55 T@FrameType) (q@@49 T@Field_34511_34512) (w@@55 T@FrameType) (r@@49 T@Field_34511_34512) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_13788 p@@56 v_1@@55 q@@49 w@@55) (InsidePredicate_13788_13788 q@@49 w@@55 r@@49 u@@49)) (InsidePredicate_30093_13788 p@@56 v_1@@55 r@@49 u@@49))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_13788 p@@56 v_1@@55 q@@49 w@@55) (InsidePredicate_13788_13788 q@@49 w@@55 r@@49 u@@49))
)))
(assert (forall ((p@@57 T@Field_13755_13814) (v_1@@56 T@FrameType) (q@@50 T@Field_34511_34512) (w@@56 T@FrameType) (r@@50 T@Field_55007_55008) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_13788 p@@57 v_1@@56 q@@50 w@@56) (InsidePredicate_13788_13893 q@@50 w@@56 r@@50 u@@50)) (InsidePredicate_30093_13893 p@@57 v_1@@56 r@@50 u@@50))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_13788 p@@57 v_1@@56 q@@50 w@@56) (InsidePredicate_13788_13893 q@@50 w@@56 r@@50 u@@50))
)))
(assert (forall ((p@@58 T@Field_13755_13814) (v_1@@57 T@FrameType) (q@@51 T@Field_34511_34512) (w@@57 T@FrameType) (r@@51 T@Field_53810_53811) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_13788 p@@58 v_1@@57 q@@51 w@@57) (InsidePredicate_13788_13853 q@@51 w@@57 r@@51 u@@51)) (InsidePredicate_30093_13853 p@@58 v_1@@57 r@@51 u@@51))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_13788 p@@58 v_1@@57 q@@51 w@@57) (InsidePredicate_13788_13853 q@@51 w@@57 r@@51 u@@51))
)))
(assert (forall ((p@@59 T@Field_13755_13814) (v_1@@58 T@FrameType) (q@@52 T@Field_34511_34512) (w@@58 T@FrameType) (r@@52 T@Field_38039_38040) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_13788 p@@59 v_1@@58 q@@52 w@@58) (InsidePredicate_13788_13813 q@@52 w@@58 r@@52 u@@52)) (InsidePredicate_30093_13813 p@@59 v_1@@58 r@@52 u@@52))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_13788 p@@59 v_1@@58 q@@52 w@@58) (InsidePredicate_13788_13813 q@@52 w@@58 r@@52 u@@52))
)))
(assert (forall ((p@@60 T@Field_13755_13814) (v_1@@59 T@FrameType) (q@@53 T@Field_55007_55008) (w@@59 T@FrameType) (r@@53 T@Field_33516_33517) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_13893 p@@60 v_1@@59 q@@53 w@@59) (InsidePredicate_13893_33516 q@@53 w@@59 r@@53 u@@53)) (InsidePredicate_30093_33516 p@@60 v_1@@59 r@@53 u@@53))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_13893 p@@60 v_1@@59 q@@53 w@@59) (InsidePredicate_13893_33516 q@@53 w@@59 r@@53 u@@53))
)))
(assert (forall ((p@@61 T@Field_13755_13814) (v_1@@60 T@FrameType) (q@@54 T@Field_55007_55008) (w@@60 T@FrameType) (r@@54 T@Field_13755_13814) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_13893 p@@61 v_1@@60 q@@54 w@@60) (InsidePredicate_13893_30093 q@@54 w@@60 r@@54 u@@54)) (InsidePredicate_30093_30093 p@@61 v_1@@60 r@@54 u@@54))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_13893 p@@61 v_1@@60 q@@54 w@@60) (InsidePredicate_13893_30093 q@@54 w@@60 r@@54 u@@54))
)))
(assert (forall ((p@@62 T@Field_13755_13814) (v_1@@61 T@FrameType) (q@@55 T@Field_55007_55008) (w@@61 T@FrameType) (r@@55 T@Field_34511_34512) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_13893 p@@62 v_1@@61 q@@55 w@@61) (InsidePredicate_13893_13788 q@@55 w@@61 r@@55 u@@55)) (InsidePredicate_30093_13788 p@@62 v_1@@61 r@@55 u@@55))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_13893 p@@62 v_1@@61 q@@55 w@@61) (InsidePredicate_13893_13788 q@@55 w@@61 r@@55 u@@55))
)))
(assert (forall ((p@@63 T@Field_13755_13814) (v_1@@62 T@FrameType) (q@@56 T@Field_55007_55008) (w@@62 T@FrameType) (r@@56 T@Field_55007_55008) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_13893 p@@63 v_1@@62 q@@56 w@@62) (InsidePredicate_13893_13893 q@@56 w@@62 r@@56 u@@56)) (InsidePredicate_30093_13893 p@@63 v_1@@62 r@@56 u@@56))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_13893 p@@63 v_1@@62 q@@56 w@@62) (InsidePredicate_13893_13893 q@@56 w@@62 r@@56 u@@56))
)))
(assert (forall ((p@@64 T@Field_13755_13814) (v_1@@63 T@FrameType) (q@@57 T@Field_55007_55008) (w@@63 T@FrameType) (r@@57 T@Field_53810_53811) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_13893 p@@64 v_1@@63 q@@57 w@@63) (InsidePredicate_13893_13853 q@@57 w@@63 r@@57 u@@57)) (InsidePredicate_30093_13853 p@@64 v_1@@63 r@@57 u@@57))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_13893 p@@64 v_1@@63 q@@57 w@@63) (InsidePredicate_13893_13853 q@@57 w@@63 r@@57 u@@57))
)))
(assert (forall ((p@@65 T@Field_13755_13814) (v_1@@64 T@FrameType) (q@@58 T@Field_55007_55008) (w@@64 T@FrameType) (r@@58 T@Field_38039_38040) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_13893 p@@65 v_1@@64 q@@58 w@@64) (InsidePredicate_13893_13813 q@@58 w@@64 r@@58 u@@58)) (InsidePredicate_30093_13813 p@@65 v_1@@64 r@@58 u@@58))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_13893 p@@65 v_1@@64 q@@58 w@@64) (InsidePredicate_13893_13813 q@@58 w@@64 r@@58 u@@58))
)))
(assert (forall ((p@@66 T@Field_13755_13814) (v_1@@65 T@FrameType) (q@@59 T@Field_53810_53811) (w@@65 T@FrameType) (r@@59 T@Field_33516_33517) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_13853 p@@66 v_1@@65 q@@59 w@@65) (InsidePredicate_13853_33516 q@@59 w@@65 r@@59 u@@59)) (InsidePredicate_30093_33516 p@@66 v_1@@65 r@@59 u@@59))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_13853 p@@66 v_1@@65 q@@59 w@@65) (InsidePredicate_13853_33516 q@@59 w@@65 r@@59 u@@59))
)))
(assert (forall ((p@@67 T@Field_13755_13814) (v_1@@66 T@FrameType) (q@@60 T@Field_53810_53811) (w@@66 T@FrameType) (r@@60 T@Field_13755_13814) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_13853 p@@67 v_1@@66 q@@60 w@@66) (InsidePredicate_13853_30093 q@@60 w@@66 r@@60 u@@60)) (InsidePredicate_30093_30093 p@@67 v_1@@66 r@@60 u@@60))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_13853 p@@67 v_1@@66 q@@60 w@@66) (InsidePredicate_13853_30093 q@@60 w@@66 r@@60 u@@60))
)))
(assert (forall ((p@@68 T@Field_13755_13814) (v_1@@67 T@FrameType) (q@@61 T@Field_53810_53811) (w@@67 T@FrameType) (r@@61 T@Field_34511_34512) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_13853 p@@68 v_1@@67 q@@61 w@@67) (InsidePredicate_13853_13788 q@@61 w@@67 r@@61 u@@61)) (InsidePredicate_30093_13788 p@@68 v_1@@67 r@@61 u@@61))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_13853 p@@68 v_1@@67 q@@61 w@@67) (InsidePredicate_13853_13788 q@@61 w@@67 r@@61 u@@61))
)))
(assert (forall ((p@@69 T@Field_13755_13814) (v_1@@68 T@FrameType) (q@@62 T@Field_53810_53811) (w@@68 T@FrameType) (r@@62 T@Field_55007_55008) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_13853 p@@69 v_1@@68 q@@62 w@@68) (InsidePredicate_13853_13893 q@@62 w@@68 r@@62 u@@62)) (InsidePredicate_30093_13893 p@@69 v_1@@68 r@@62 u@@62))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_13853 p@@69 v_1@@68 q@@62 w@@68) (InsidePredicate_13853_13893 q@@62 w@@68 r@@62 u@@62))
)))
(assert (forall ((p@@70 T@Field_13755_13814) (v_1@@69 T@FrameType) (q@@63 T@Field_53810_53811) (w@@69 T@FrameType) (r@@63 T@Field_53810_53811) (u@@63 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_13853 p@@70 v_1@@69 q@@63 w@@69) (InsidePredicate_13853_13853 q@@63 w@@69 r@@63 u@@63)) (InsidePredicate_30093_13853 p@@70 v_1@@69 r@@63 u@@63))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_13853 p@@70 v_1@@69 q@@63 w@@69) (InsidePredicate_13853_13853 q@@63 w@@69 r@@63 u@@63))
)))
(assert (forall ((p@@71 T@Field_13755_13814) (v_1@@70 T@FrameType) (q@@64 T@Field_53810_53811) (w@@70 T@FrameType) (r@@64 T@Field_38039_38040) (u@@64 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_13853 p@@71 v_1@@70 q@@64 w@@70) (InsidePredicate_13853_13813 q@@64 w@@70 r@@64 u@@64)) (InsidePredicate_30093_13813 p@@71 v_1@@70 r@@64 u@@64))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_13853 p@@71 v_1@@70 q@@64 w@@70) (InsidePredicate_13853_13813 q@@64 w@@70 r@@64 u@@64))
)))
(assert (forall ((p@@72 T@Field_13755_13814) (v_1@@71 T@FrameType) (q@@65 T@Field_38039_38040) (w@@71 T@FrameType) (r@@65 T@Field_33516_33517) (u@@65 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_13813 p@@72 v_1@@71 q@@65 w@@71) (InsidePredicate_13813_33516 q@@65 w@@71 r@@65 u@@65)) (InsidePredicate_30093_33516 p@@72 v_1@@71 r@@65 u@@65))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_13813 p@@72 v_1@@71 q@@65 w@@71) (InsidePredicate_13813_33516 q@@65 w@@71 r@@65 u@@65))
)))
(assert (forall ((p@@73 T@Field_13755_13814) (v_1@@72 T@FrameType) (q@@66 T@Field_38039_38040) (w@@72 T@FrameType) (r@@66 T@Field_13755_13814) (u@@66 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_13813 p@@73 v_1@@72 q@@66 w@@72) (InsidePredicate_13813_30093 q@@66 w@@72 r@@66 u@@66)) (InsidePredicate_30093_30093 p@@73 v_1@@72 r@@66 u@@66))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_13813 p@@73 v_1@@72 q@@66 w@@72) (InsidePredicate_13813_30093 q@@66 w@@72 r@@66 u@@66))
)))
(assert (forall ((p@@74 T@Field_13755_13814) (v_1@@73 T@FrameType) (q@@67 T@Field_38039_38040) (w@@73 T@FrameType) (r@@67 T@Field_34511_34512) (u@@67 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_13813 p@@74 v_1@@73 q@@67 w@@73) (InsidePredicate_13813_13788 q@@67 w@@73 r@@67 u@@67)) (InsidePredicate_30093_13788 p@@74 v_1@@73 r@@67 u@@67))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_13813 p@@74 v_1@@73 q@@67 w@@73) (InsidePredicate_13813_13788 q@@67 w@@73 r@@67 u@@67))
)))
(assert (forall ((p@@75 T@Field_13755_13814) (v_1@@74 T@FrameType) (q@@68 T@Field_38039_38040) (w@@74 T@FrameType) (r@@68 T@Field_55007_55008) (u@@68 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_13813 p@@75 v_1@@74 q@@68 w@@74) (InsidePredicate_13813_13893 q@@68 w@@74 r@@68 u@@68)) (InsidePredicate_30093_13893 p@@75 v_1@@74 r@@68 u@@68))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_13813 p@@75 v_1@@74 q@@68 w@@74) (InsidePredicate_13813_13893 q@@68 w@@74 r@@68 u@@68))
)))
(assert (forall ((p@@76 T@Field_13755_13814) (v_1@@75 T@FrameType) (q@@69 T@Field_38039_38040) (w@@75 T@FrameType) (r@@69 T@Field_53810_53811) (u@@69 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_13813 p@@76 v_1@@75 q@@69 w@@75) (InsidePredicate_13813_13853 q@@69 w@@75 r@@69 u@@69)) (InsidePredicate_30093_13853 p@@76 v_1@@75 r@@69 u@@69))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_13813 p@@76 v_1@@75 q@@69 w@@75) (InsidePredicate_13813_13853 q@@69 w@@75 r@@69 u@@69))
)))
(assert (forall ((p@@77 T@Field_13755_13814) (v_1@@76 T@FrameType) (q@@70 T@Field_38039_38040) (w@@76 T@FrameType) (r@@70 T@Field_38039_38040) (u@@70 T@FrameType) ) (!  (=> (and (InsidePredicate_30093_13813 p@@77 v_1@@76 q@@70 w@@76) (InsidePredicate_13813_13813 q@@70 w@@76 r@@70 u@@70)) (InsidePredicate_30093_13813 p@@77 v_1@@76 r@@70 u@@70))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30093_13813 p@@77 v_1@@76 q@@70 w@@76) (InsidePredicate_13813_13813 q@@70 w@@76 r@@70 u@@70))
)))
(assert (forall ((p@@78 T@Field_33516_33517) (v_1@@77 T@FrameType) (q@@71 T@Field_13755_13814) (w@@77 T@FrameType) (r@@71 T@Field_33516_33517) (u@@71 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_30093 p@@78 v_1@@77 q@@71 w@@77) (InsidePredicate_30093_33516 q@@71 w@@77 r@@71 u@@71)) (InsidePredicate_13759_33516 p@@78 v_1@@77 r@@71 u@@71))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_30093 p@@78 v_1@@77 q@@71 w@@77) (InsidePredicate_30093_33516 q@@71 w@@77 r@@71 u@@71))
)))
(assert (forall ((p@@79 T@Field_33516_33517) (v_1@@78 T@FrameType) (q@@72 T@Field_13755_13814) (w@@78 T@FrameType) (r@@72 T@Field_13755_13814) (u@@72 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_30093 p@@79 v_1@@78 q@@72 w@@78) (InsidePredicate_30093_30093 q@@72 w@@78 r@@72 u@@72)) (InsidePredicate_13759_30093 p@@79 v_1@@78 r@@72 u@@72))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_30093 p@@79 v_1@@78 q@@72 w@@78) (InsidePredicate_30093_30093 q@@72 w@@78 r@@72 u@@72))
)))
(assert (forall ((p@@80 T@Field_33516_33517) (v_1@@79 T@FrameType) (q@@73 T@Field_13755_13814) (w@@79 T@FrameType) (r@@73 T@Field_34511_34512) (u@@73 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_30093 p@@80 v_1@@79 q@@73 w@@79) (InsidePredicate_30093_13788 q@@73 w@@79 r@@73 u@@73)) (InsidePredicate_13759_13788 p@@80 v_1@@79 r@@73 u@@73))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_30093 p@@80 v_1@@79 q@@73 w@@79) (InsidePredicate_30093_13788 q@@73 w@@79 r@@73 u@@73))
)))
(assert (forall ((p@@81 T@Field_33516_33517) (v_1@@80 T@FrameType) (q@@74 T@Field_13755_13814) (w@@80 T@FrameType) (r@@74 T@Field_55007_55008) (u@@74 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_30093 p@@81 v_1@@80 q@@74 w@@80) (InsidePredicate_30093_13893 q@@74 w@@80 r@@74 u@@74)) (InsidePredicate_13759_13893 p@@81 v_1@@80 r@@74 u@@74))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_30093 p@@81 v_1@@80 q@@74 w@@80) (InsidePredicate_30093_13893 q@@74 w@@80 r@@74 u@@74))
)))
(assert (forall ((p@@82 T@Field_33516_33517) (v_1@@81 T@FrameType) (q@@75 T@Field_13755_13814) (w@@81 T@FrameType) (r@@75 T@Field_53810_53811) (u@@75 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_30093 p@@82 v_1@@81 q@@75 w@@81) (InsidePredicate_30093_13853 q@@75 w@@81 r@@75 u@@75)) (InsidePredicate_13759_13853 p@@82 v_1@@81 r@@75 u@@75))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_30093 p@@82 v_1@@81 q@@75 w@@81) (InsidePredicate_30093_13853 q@@75 w@@81 r@@75 u@@75))
)))
(assert (forall ((p@@83 T@Field_33516_33517) (v_1@@82 T@FrameType) (q@@76 T@Field_13755_13814) (w@@82 T@FrameType) (r@@76 T@Field_38039_38040) (u@@76 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_30093 p@@83 v_1@@82 q@@76 w@@82) (InsidePredicate_30093_13813 q@@76 w@@82 r@@76 u@@76)) (InsidePredicate_13759_13813 p@@83 v_1@@82 r@@76 u@@76))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_30093 p@@83 v_1@@82 q@@76 w@@82) (InsidePredicate_30093_13813 q@@76 w@@82 r@@76 u@@76))
)))
(assert (forall ((p@@84 T@Field_33516_33517) (v_1@@83 T@FrameType) (q@@77 T@Field_33516_33517) (w@@83 T@FrameType) (r@@77 T@Field_33516_33517) (u@@77 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_33516 p@@84 v_1@@83 q@@77 w@@83) (InsidePredicate_13759_33516 q@@77 w@@83 r@@77 u@@77)) (InsidePredicate_13759_33516 p@@84 v_1@@83 r@@77 u@@77))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_33516 p@@84 v_1@@83 q@@77 w@@83) (InsidePredicate_13759_33516 q@@77 w@@83 r@@77 u@@77))
)))
(assert (forall ((p@@85 T@Field_33516_33517) (v_1@@84 T@FrameType) (q@@78 T@Field_33516_33517) (w@@84 T@FrameType) (r@@78 T@Field_13755_13814) (u@@78 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_33516 p@@85 v_1@@84 q@@78 w@@84) (InsidePredicate_13759_30093 q@@78 w@@84 r@@78 u@@78)) (InsidePredicate_13759_30093 p@@85 v_1@@84 r@@78 u@@78))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_33516 p@@85 v_1@@84 q@@78 w@@84) (InsidePredicate_13759_30093 q@@78 w@@84 r@@78 u@@78))
)))
(assert (forall ((p@@86 T@Field_33516_33517) (v_1@@85 T@FrameType) (q@@79 T@Field_33516_33517) (w@@85 T@FrameType) (r@@79 T@Field_34511_34512) (u@@79 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_33516 p@@86 v_1@@85 q@@79 w@@85) (InsidePredicate_13759_13788 q@@79 w@@85 r@@79 u@@79)) (InsidePredicate_13759_13788 p@@86 v_1@@85 r@@79 u@@79))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_33516 p@@86 v_1@@85 q@@79 w@@85) (InsidePredicate_13759_13788 q@@79 w@@85 r@@79 u@@79))
)))
(assert (forall ((p@@87 T@Field_33516_33517) (v_1@@86 T@FrameType) (q@@80 T@Field_33516_33517) (w@@86 T@FrameType) (r@@80 T@Field_55007_55008) (u@@80 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_33516 p@@87 v_1@@86 q@@80 w@@86) (InsidePredicate_13759_13893 q@@80 w@@86 r@@80 u@@80)) (InsidePredicate_13759_13893 p@@87 v_1@@86 r@@80 u@@80))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_33516 p@@87 v_1@@86 q@@80 w@@86) (InsidePredicate_13759_13893 q@@80 w@@86 r@@80 u@@80))
)))
(assert (forall ((p@@88 T@Field_33516_33517) (v_1@@87 T@FrameType) (q@@81 T@Field_33516_33517) (w@@87 T@FrameType) (r@@81 T@Field_53810_53811) (u@@81 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_33516 p@@88 v_1@@87 q@@81 w@@87) (InsidePredicate_13759_13853 q@@81 w@@87 r@@81 u@@81)) (InsidePredicate_13759_13853 p@@88 v_1@@87 r@@81 u@@81))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_33516 p@@88 v_1@@87 q@@81 w@@87) (InsidePredicate_13759_13853 q@@81 w@@87 r@@81 u@@81))
)))
(assert (forall ((p@@89 T@Field_33516_33517) (v_1@@88 T@FrameType) (q@@82 T@Field_33516_33517) (w@@88 T@FrameType) (r@@82 T@Field_38039_38040) (u@@82 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_33516 p@@89 v_1@@88 q@@82 w@@88) (InsidePredicate_13759_13813 q@@82 w@@88 r@@82 u@@82)) (InsidePredicate_13759_13813 p@@89 v_1@@88 r@@82 u@@82))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_33516 p@@89 v_1@@88 q@@82 w@@88) (InsidePredicate_13759_13813 q@@82 w@@88 r@@82 u@@82))
)))
(assert (forall ((p@@90 T@Field_33516_33517) (v_1@@89 T@FrameType) (q@@83 T@Field_34511_34512) (w@@89 T@FrameType) (r@@83 T@Field_33516_33517) (u@@83 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_13788 p@@90 v_1@@89 q@@83 w@@89) (InsidePredicate_13788_33516 q@@83 w@@89 r@@83 u@@83)) (InsidePredicate_13759_33516 p@@90 v_1@@89 r@@83 u@@83))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_13788 p@@90 v_1@@89 q@@83 w@@89) (InsidePredicate_13788_33516 q@@83 w@@89 r@@83 u@@83))
)))
(assert (forall ((p@@91 T@Field_33516_33517) (v_1@@90 T@FrameType) (q@@84 T@Field_34511_34512) (w@@90 T@FrameType) (r@@84 T@Field_13755_13814) (u@@84 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_13788 p@@91 v_1@@90 q@@84 w@@90) (InsidePredicate_13788_30093 q@@84 w@@90 r@@84 u@@84)) (InsidePredicate_13759_30093 p@@91 v_1@@90 r@@84 u@@84))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_13788 p@@91 v_1@@90 q@@84 w@@90) (InsidePredicate_13788_30093 q@@84 w@@90 r@@84 u@@84))
)))
(assert (forall ((p@@92 T@Field_33516_33517) (v_1@@91 T@FrameType) (q@@85 T@Field_34511_34512) (w@@91 T@FrameType) (r@@85 T@Field_34511_34512) (u@@85 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_13788 p@@92 v_1@@91 q@@85 w@@91) (InsidePredicate_13788_13788 q@@85 w@@91 r@@85 u@@85)) (InsidePredicate_13759_13788 p@@92 v_1@@91 r@@85 u@@85))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_13788 p@@92 v_1@@91 q@@85 w@@91) (InsidePredicate_13788_13788 q@@85 w@@91 r@@85 u@@85))
)))
(assert (forall ((p@@93 T@Field_33516_33517) (v_1@@92 T@FrameType) (q@@86 T@Field_34511_34512) (w@@92 T@FrameType) (r@@86 T@Field_55007_55008) (u@@86 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_13788 p@@93 v_1@@92 q@@86 w@@92) (InsidePredicate_13788_13893 q@@86 w@@92 r@@86 u@@86)) (InsidePredicate_13759_13893 p@@93 v_1@@92 r@@86 u@@86))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_13788 p@@93 v_1@@92 q@@86 w@@92) (InsidePredicate_13788_13893 q@@86 w@@92 r@@86 u@@86))
)))
(assert (forall ((p@@94 T@Field_33516_33517) (v_1@@93 T@FrameType) (q@@87 T@Field_34511_34512) (w@@93 T@FrameType) (r@@87 T@Field_53810_53811) (u@@87 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_13788 p@@94 v_1@@93 q@@87 w@@93) (InsidePredicate_13788_13853 q@@87 w@@93 r@@87 u@@87)) (InsidePredicate_13759_13853 p@@94 v_1@@93 r@@87 u@@87))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_13788 p@@94 v_1@@93 q@@87 w@@93) (InsidePredicate_13788_13853 q@@87 w@@93 r@@87 u@@87))
)))
(assert (forall ((p@@95 T@Field_33516_33517) (v_1@@94 T@FrameType) (q@@88 T@Field_34511_34512) (w@@94 T@FrameType) (r@@88 T@Field_38039_38040) (u@@88 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_13788 p@@95 v_1@@94 q@@88 w@@94) (InsidePredicate_13788_13813 q@@88 w@@94 r@@88 u@@88)) (InsidePredicate_13759_13813 p@@95 v_1@@94 r@@88 u@@88))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_13788 p@@95 v_1@@94 q@@88 w@@94) (InsidePredicate_13788_13813 q@@88 w@@94 r@@88 u@@88))
)))
(assert (forall ((p@@96 T@Field_33516_33517) (v_1@@95 T@FrameType) (q@@89 T@Field_55007_55008) (w@@95 T@FrameType) (r@@89 T@Field_33516_33517) (u@@89 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_13893 p@@96 v_1@@95 q@@89 w@@95) (InsidePredicate_13893_33516 q@@89 w@@95 r@@89 u@@89)) (InsidePredicate_13759_33516 p@@96 v_1@@95 r@@89 u@@89))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_13893 p@@96 v_1@@95 q@@89 w@@95) (InsidePredicate_13893_33516 q@@89 w@@95 r@@89 u@@89))
)))
(assert (forall ((p@@97 T@Field_33516_33517) (v_1@@96 T@FrameType) (q@@90 T@Field_55007_55008) (w@@96 T@FrameType) (r@@90 T@Field_13755_13814) (u@@90 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_13893 p@@97 v_1@@96 q@@90 w@@96) (InsidePredicate_13893_30093 q@@90 w@@96 r@@90 u@@90)) (InsidePredicate_13759_30093 p@@97 v_1@@96 r@@90 u@@90))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_13893 p@@97 v_1@@96 q@@90 w@@96) (InsidePredicate_13893_30093 q@@90 w@@96 r@@90 u@@90))
)))
(assert (forall ((p@@98 T@Field_33516_33517) (v_1@@97 T@FrameType) (q@@91 T@Field_55007_55008) (w@@97 T@FrameType) (r@@91 T@Field_34511_34512) (u@@91 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_13893 p@@98 v_1@@97 q@@91 w@@97) (InsidePredicate_13893_13788 q@@91 w@@97 r@@91 u@@91)) (InsidePredicate_13759_13788 p@@98 v_1@@97 r@@91 u@@91))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_13893 p@@98 v_1@@97 q@@91 w@@97) (InsidePredicate_13893_13788 q@@91 w@@97 r@@91 u@@91))
)))
(assert (forall ((p@@99 T@Field_33516_33517) (v_1@@98 T@FrameType) (q@@92 T@Field_55007_55008) (w@@98 T@FrameType) (r@@92 T@Field_55007_55008) (u@@92 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_13893 p@@99 v_1@@98 q@@92 w@@98) (InsidePredicate_13893_13893 q@@92 w@@98 r@@92 u@@92)) (InsidePredicate_13759_13893 p@@99 v_1@@98 r@@92 u@@92))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_13893 p@@99 v_1@@98 q@@92 w@@98) (InsidePredicate_13893_13893 q@@92 w@@98 r@@92 u@@92))
)))
(assert (forall ((p@@100 T@Field_33516_33517) (v_1@@99 T@FrameType) (q@@93 T@Field_55007_55008) (w@@99 T@FrameType) (r@@93 T@Field_53810_53811) (u@@93 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_13893 p@@100 v_1@@99 q@@93 w@@99) (InsidePredicate_13893_13853 q@@93 w@@99 r@@93 u@@93)) (InsidePredicate_13759_13853 p@@100 v_1@@99 r@@93 u@@93))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_13893 p@@100 v_1@@99 q@@93 w@@99) (InsidePredicate_13893_13853 q@@93 w@@99 r@@93 u@@93))
)))
(assert (forall ((p@@101 T@Field_33516_33517) (v_1@@100 T@FrameType) (q@@94 T@Field_55007_55008) (w@@100 T@FrameType) (r@@94 T@Field_38039_38040) (u@@94 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_13893 p@@101 v_1@@100 q@@94 w@@100) (InsidePredicate_13893_13813 q@@94 w@@100 r@@94 u@@94)) (InsidePredicate_13759_13813 p@@101 v_1@@100 r@@94 u@@94))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_13893 p@@101 v_1@@100 q@@94 w@@100) (InsidePredicate_13893_13813 q@@94 w@@100 r@@94 u@@94))
)))
(assert (forall ((p@@102 T@Field_33516_33517) (v_1@@101 T@FrameType) (q@@95 T@Field_53810_53811) (w@@101 T@FrameType) (r@@95 T@Field_33516_33517) (u@@95 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_13853 p@@102 v_1@@101 q@@95 w@@101) (InsidePredicate_13853_33516 q@@95 w@@101 r@@95 u@@95)) (InsidePredicate_13759_33516 p@@102 v_1@@101 r@@95 u@@95))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_13853 p@@102 v_1@@101 q@@95 w@@101) (InsidePredicate_13853_33516 q@@95 w@@101 r@@95 u@@95))
)))
(assert (forall ((p@@103 T@Field_33516_33517) (v_1@@102 T@FrameType) (q@@96 T@Field_53810_53811) (w@@102 T@FrameType) (r@@96 T@Field_13755_13814) (u@@96 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_13853 p@@103 v_1@@102 q@@96 w@@102) (InsidePredicate_13853_30093 q@@96 w@@102 r@@96 u@@96)) (InsidePredicate_13759_30093 p@@103 v_1@@102 r@@96 u@@96))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_13853 p@@103 v_1@@102 q@@96 w@@102) (InsidePredicate_13853_30093 q@@96 w@@102 r@@96 u@@96))
)))
(assert (forall ((p@@104 T@Field_33516_33517) (v_1@@103 T@FrameType) (q@@97 T@Field_53810_53811) (w@@103 T@FrameType) (r@@97 T@Field_34511_34512) (u@@97 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_13853 p@@104 v_1@@103 q@@97 w@@103) (InsidePredicate_13853_13788 q@@97 w@@103 r@@97 u@@97)) (InsidePredicate_13759_13788 p@@104 v_1@@103 r@@97 u@@97))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_13853 p@@104 v_1@@103 q@@97 w@@103) (InsidePredicate_13853_13788 q@@97 w@@103 r@@97 u@@97))
)))
(assert (forall ((p@@105 T@Field_33516_33517) (v_1@@104 T@FrameType) (q@@98 T@Field_53810_53811) (w@@104 T@FrameType) (r@@98 T@Field_55007_55008) (u@@98 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_13853 p@@105 v_1@@104 q@@98 w@@104) (InsidePredicate_13853_13893 q@@98 w@@104 r@@98 u@@98)) (InsidePredicate_13759_13893 p@@105 v_1@@104 r@@98 u@@98))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_13853 p@@105 v_1@@104 q@@98 w@@104) (InsidePredicate_13853_13893 q@@98 w@@104 r@@98 u@@98))
)))
(assert (forall ((p@@106 T@Field_33516_33517) (v_1@@105 T@FrameType) (q@@99 T@Field_53810_53811) (w@@105 T@FrameType) (r@@99 T@Field_53810_53811) (u@@99 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_13853 p@@106 v_1@@105 q@@99 w@@105) (InsidePredicate_13853_13853 q@@99 w@@105 r@@99 u@@99)) (InsidePredicate_13759_13853 p@@106 v_1@@105 r@@99 u@@99))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_13853 p@@106 v_1@@105 q@@99 w@@105) (InsidePredicate_13853_13853 q@@99 w@@105 r@@99 u@@99))
)))
(assert (forall ((p@@107 T@Field_33516_33517) (v_1@@106 T@FrameType) (q@@100 T@Field_53810_53811) (w@@106 T@FrameType) (r@@100 T@Field_38039_38040) (u@@100 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_13853 p@@107 v_1@@106 q@@100 w@@106) (InsidePredicate_13853_13813 q@@100 w@@106 r@@100 u@@100)) (InsidePredicate_13759_13813 p@@107 v_1@@106 r@@100 u@@100))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_13853 p@@107 v_1@@106 q@@100 w@@106) (InsidePredicate_13853_13813 q@@100 w@@106 r@@100 u@@100))
)))
(assert (forall ((p@@108 T@Field_33516_33517) (v_1@@107 T@FrameType) (q@@101 T@Field_38039_38040) (w@@107 T@FrameType) (r@@101 T@Field_33516_33517) (u@@101 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_13813 p@@108 v_1@@107 q@@101 w@@107) (InsidePredicate_13813_33516 q@@101 w@@107 r@@101 u@@101)) (InsidePredicate_13759_33516 p@@108 v_1@@107 r@@101 u@@101))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_13813 p@@108 v_1@@107 q@@101 w@@107) (InsidePredicate_13813_33516 q@@101 w@@107 r@@101 u@@101))
)))
(assert (forall ((p@@109 T@Field_33516_33517) (v_1@@108 T@FrameType) (q@@102 T@Field_38039_38040) (w@@108 T@FrameType) (r@@102 T@Field_13755_13814) (u@@102 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_13813 p@@109 v_1@@108 q@@102 w@@108) (InsidePredicate_13813_30093 q@@102 w@@108 r@@102 u@@102)) (InsidePredicate_13759_30093 p@@109 v_1@@108 r@@102 u@@102))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_13813 p@@109 v_1@@108 q@@102 w@@108) (InsidePredicate_13813_30093 q@@102 w@@108 r@@102 u@@102))
)))
(assert (forall ((p@@110 T@Field_33516_33517) (v_1@@109 T@FrameType) (q@@103 T@Field_38039_38040) (w@@109 T@FrameType) (r@@103 T@Field_34511_34512) (u@@103 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_13813 p@@110 v_1@@109 q@@103 w@@109) (InsidePredicate_13813_13788 q@@103 w@@109 r@@103 u@@103)) (InsidePredicate_13759_13788 p@@110 v_1@@109 r@@103 u@@103))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_13813 p@@110 v_1@@109 q@@103 w@@109) (InsidePredicate_13813_13788 q@@103 w@@109 r@@103 u@@103))
)))
(assert (forall ((p@@111 T@Field_33516_33517) (v_1@@110 T@FrameType) (q@@104 T@Field_38039_38040) (w@@110 T@FrameType) (r@@104 T@Field_55007_55008) (u@@104 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_13813 p@@111 v_1@@110 q@@104 w@@110) (InsidePredicate_13813_13893 q@@104 w@@110 r@@104 u@@104)) (InsidePredicate_13759_13893 p@@111 v_1@@110 r@@104 u@@104))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_13813 p@@111 v_1@@110 q@@104 w@@110) (InsidePredicate_13813_13893 q@@104 w@@110 r@@104 u@@104))
)))
(assert (forall ((p@@112 T@Field_33516_33517) (v_1@@111 T@FrameType) (q@@105 T@Field_38039_38040) (w@@111 T@FrameType) (r@@105 T@Field_53810_53811) (u@@105 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_13813 p@@112 v_1@@111 q@@105 w@@111) (InsidePredicate_13813_13853 q@@105 w@@111 r@@105 u@@105)) (InsidePredicate_13759_13853 p@@112 v_1@@111 r@@105 u@@105))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_13813 p@@112 v_1@@111 q@@105 w@@111) (InsidePredicate_13813_13853 q@@105 w@@111 r@@105 u@@105))
)))
(assert (forall ((p@@113 T@Field_33516_33517) (v_1@@112 T@FrameType) (q@@106 T@Field_38039_38040) (w@@112 T@FrameType) (r@@106 T@Field_38039_38040) (u@@106 T@FrameType) ) (!  (=> (and (InsidePredicate_13759_13813 p@@113 v_1@@112 q@@106 w@@112) (InsidePredicate_13813_13813 q@@106 w@@112 r@@106 u@@106)) (InsidePredicate_13759_13813 p@@113 v_1@@112 r@@106 u@@106))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13759_13813 p@@113 v_1@@112 q@@106 w@@112) (InsidePredicate_13813_13813 q@@106 w@@112 r@@106 u@@106))
)))
(assert (forall ((p@@114 T@Field_53810_53811) (v_1@@113 T@FrameType) (q@@107 T@Field_13755_13814) (w@@113 T@FrameType) (r@@107 T@Field_33516_33517) (u@@107 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_30093 p@@114 v_1@@113 q@@107 w@@113) (InsidePredicate_30093_33516 q@@107 w@@113 r@@107 u@@107)) (InsidePredicate_13853_33516 p@@114 v_1@@113 r@@107 u@@107))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_30093 p@@114 v_1@@113 q@@107 w@@113) (InsidePredicate_30093_33516 q@@107 w@@113 r@@107 u@@107))
)))
(assert (forall ((p@@115 T@Field_53810_53811) (v_1@@114 T@FrameType) (q@@108 T@Field_13755_13814) (w@@114 T@FrameType) (r@@108 T@Field_13755_13814) (u@@108 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_30093 p@@115 v_1@@114 q@@108 w@@114) (InsidePredicate_30093_30093 q@@108 w@@114 r@@108 u@@108)) (InsidePredicate_13853_30093 p@@115 v_1@@114 r@@108 u@@108))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_30093 p@@115 v_1@@114 q@@108 w@@114) (InsidePredicate_30093_30093 q@@108 w@@114 r@@108 u@@108))
)))
(assert (forall ((p@@116 T@Field_53810_53811) (v_1@@115 T@FrameType) (q@@109 T@Field_13755_13814) (w@@115 T@FrameType) (r@@109 T@Field_34511_34512) (u@@109 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_30093 p@@116 v_1@@115 q@@109 w@@115) (InsidePredicate_30093_13788 q@@109 w@@115 r@@109 u@@109)) (InsidePredicate_13853_13788 p@@116 v_1@@115 r@@109 u@@109))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_30093 p@@116 v_1@@115 q@@109 w@@115) (InsidePredicate_30093_13788 q@@109 w@@115 r@@109 u@@109))
)))
(assert (forall ((p@@117 T@Field_53810_53811) (v_1@@116 T@FrameType) (q@@110 T@Field_13755_13814) (w@@116 T@FrameType) (r@@110 T@Field_55007_55008) (u@@110 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_30093 p@@117 v_1@@116 q@@110 w@@116) (InsidePredicate_30093_13893 q@@110 w@@116 r@@110 u@@110)) (InsidePredicate_13853_13893 p@@117 v_1@@116 r@@110 u@@110))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_30093 p@@117 v_1@@116 q@@110 w@@116) (InsidePredicate_30093_13893 q@@110 w@@116 r@@110 u@@110))
)))
(assert (forall ((p@@118 T@Field_53810_53811) (v_1@@117 T@FrameType) (q@@111 T@Field_13755_13814) (w@@117 T@FrameType) (r@@111 T@Field_53810_53811) (u@@111 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_30093 p@@118 v_1@@117 q@@111 w@@117) (InsidePredicate_30093_13853 q@@111 w@@117 r@@111 u@@111)) (InsidePredicate_13853_13853 p@@118 v_1@@117 r@@111 u@@111))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_30093 p@@118 v_1@@117 q@@111 w@@117) (InsidePredicate_30093_13853 q@@111 w@@117 r@@111 u@@111))
)))
(assert (forall ((p@@119 T@Field_53810_53811) (v_1@@118 T@FrameType) (q@@112 T@Field_13755_13814) (w@@118 T@FrameType) (r@@112 T@Field_38039_38040) (u@@112 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_30093 p@@119 v_1@@118 q@@112 w@@118) (InsidePredicate_30093_13813 q@@112 w@@118 r@@112 u@@112)) (InsidePredicate_13853_13813 p@@119 v_1@@118 r@@112 u@@112))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_30093 p@@119 v_1@@118 q@@112 w@@118) (InsidePredicate_30093_13813 q@@112 w@@118 r@@112 u@@112))
)))
(assert (forall ((p@@120 T@Field_53810_53811) (v_1@@119 T@FrameType) (q@@113 T@Field_33516_33517) (w@@119 T@FrameType) (r@@113 T@Field_33516_33517) (u@@113 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_33516 p@@120 v_1@@119 q@@113 w@@119) (InsidePredicate_13759_33516 q@@113 w@@119 r@@113 u@@113)) (InsidePredicate_13853_33516 p@@120 v_1@@119 r@@113 u@@113))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_33516 p@@120 v_1@@119 q@@113 w@@119) (InsidePredicate_13759_33516 q@@113 w@@119 r@@113 u@@113))
)))
(assert (forall ((p@@121 T@Field_53810_53811) (v_1@@120 T@FrameType) (q@@114 T@Field_33516_33517) (w@@120 T@FrameType) (r@@114 T@Field_13755_13814) (u@@114 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_33516 p@@121 v_1@@120 q@@114 w@@120) (InsidePredicate_13759_30093 q@@114 w@@120 r@@114 u@@114)) (InsidePredicate_13853_30093 p@@121 v_1@@120 r@@114 u@@114))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_33516 p@@121 v_1@@120 q@@114 w@@120) (InsidePredicate_13759_30093 q@@114 w@@120 r@@114 u@@114))
)))
(assert (forall ((p@@122 T@Field_53810_53811) (v_1@@121 T@FrameType) (q@@115 T@Field_33516_33517) (w@@121 T@FrameType) (r@@115 T@Field_34511_34512) (u@@115 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_33516 p@@122 v_1@@121 q@@115 w@@121) (InsidePredicate_13759_13788 q@@115 w@@121 r@@115 u@@115)) (InsidePredicate_13853_13788 p@@122 v_1@@121 r@@115 u@@115))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_33516 p@@122 v_1@@121 q@@115 w@@121) (InsidePredicate_13759_13788 q@@115 w@@121 r@@115 u@@115))
)))
(assert (forall ((p@@123 T@Field_53810_53811) (v_1@@122 T@FrameType) (q@@116 T@Field_33516_33517) (w@@122 T@FrameType) (r@@116 T@Field_55007_55008) (u@@116 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_33516 p@@123 v_1@@122 q@@116 w@@122) (InsidePredicate_13759_13893 q@@116 w@@122 r@@116 u@@116)) (InsidePredicate_13853_13893 p@@123 v_1@@122 r@@116 u@@116))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_33516 p@@123 v_1@@122 q@@116 w@@122) (InsidePredicate_13759_13893 q@@116 w@@122 r@@116 u@@116))
)))
(assert (forall ((p@@124 T@Field_53810_53811) (v_1@@123 T@FrameType) (q@@117 T@Field_33516_33517) (w@@123 T@FrameType) (r@@117 T@Field_53810_53811) (u@@117 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_33516 p@@124 v_1@@123 q@@117 w@@123) (InsidePredicate_13759_13853 q@@117 w@@123 r@@117 u@@117)) (InsidePredicate_13853_13853 p@@124 v_1@@123 r@@117 u@@117))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_33516 p@@124 v_1@@123 q@@117 w@@123) (InsidePredicate_13759_13853 q@@117 w@@123 r@@117 u@@117))
)))
(assert (forall ((p@@125 T@Field_53810_53811) (v_1@@124 T@FrameType) (q@@118 T@Field_33516_33517) (w@@124 T@FrameType) (r@@118 T@Field_38039_38040) (u@@118 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_33516 p@@125 v_1@@124 q@@118 w@@124) (InsidePredicate_13759_13813 q@@118 w@@124 r@@118 u@@118)) (InsidePredicate_13853_13813 p@@125 v_1@@124 r@@118 u@@118))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_33516 p@@125 v_1@@124 q@@118 w@@124) (InsidePredicate_13759_13813 q@@118 w@@124 r@@118 u@@118))
)))
(assert (forall ((p@@126 T@Field_53810_53811) (v_1@@125 T@FrameType) (q@@119 T@Field_34511_34512) (w@@125 T@FrameType) (r@@119 T@Field_33516_33517) (u@@119 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_13788 p@@126 v_1@@125 q@@119 w@@125) (InsidePredicate_13788_33516 q@@119 w@@125 r@@119 u@@119)) (InsidePredicate_13853_33516 p@@126 v_1@@125 r@@119 u@@119))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_13788 p@@126 v_1@@125 q@@119 w@@125) (InsidePredicate_13788_33516 q@@119 w@@125 r@@119 u@@119))
)))
(assert (forall ((p@@127 T@Field_53810_53811) (v_1@@126 T@FrameType) (q@@120 T@Field_34511_34512) (w@@126 T@FrameType) (r@@120 T@Field_13755_13814) (u@@120 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_13788 p@@127 v_1@@126 q@@120 w@@126) (InsidePredicate_13788_30093 q@@120 w@@126 r@@120 u@@120)) (InsidePredicate_13853_30093 p@@127 v_1@@126 r@@120 u@@120))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_13788 p@@127 v_1@@126 q@@120 w@@126) (InsidePredicate_13788_30093 q@@120 w@@126 r@@120 u@@120))
)))
(assert (forall ((p@@128 T@Field_53810_53811) (v_1@@127 T@FrameType) (q@@121 T@Field_34511_34512) (w@@127 T@FrameType) (r@@121 T@Field_34511_34512) (u@@121 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_13788 p@@128 v_1@@127 q@@121 w@@127) (InsidePredicate_13788_13788 q@@121 w@@127 r@@121 u@@121)) (InsidePredicate_13853_13788 p@@128 v_1@@127 r@@121 u@@121))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_13788 p@@128 v_1@@127 q@@121 w@@127) (InsidePredicate_13788_13788 q@@121 w@@127 r@@121 u@@121))
)))
(assert (forall ((p@@129 T@Field_53810_53811) (v_1@@128 T@FrameType) (q@@122 T@Field_34511_34512) (w@@128 T@FrameType) (r@@122 T@Field_55007_55008) (u@@122 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_13788 p@@129 v_1@@128 q@@122 w@@128) (InsidePredicate_13788_13893 q@@122 w@@128 r@@122 u@@122)) (InsidePredicate_13853_13893 p@@129 v_1@@128 r@@122 u@@122))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_13788 p@@129 v_1@@128 q@@122 w@@128) (InsidePredicate_13788_13893 q@@122 w@@128 r@@122 u@@122))
)))
(assert (forall ((p@@130 T@Field_53810_53811) (v_1@@129 T@FrameType) (q@@123 T@Field_34511_34512) (w@@129 T@FrameType) (r@@123 T@Field_53810_53811) (u@@123 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_13788 p@@130 v_1@@129 q@@123 w@@129) (InsidePredicate_13788_13853 q@@123 w@@129 r@@123 u@@123)) (InsidePredicate_13853_13853 p@@130 v_1@@129 r@@123 u@@123))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_13788 p@@130 v_1@@129 q@@123 w@@129) (InsidePredicate_13788_13853 q@@123 w@@129 r@@123 u@@123))
)))
(assert (forall ((p@@131 T@Field_53810_53811) (v_1@@130 T@FrameType) (q@@124 T@Field_34511_34512) (w@@130 T@FrameType) (r@@124 T@Field_38039_38040) (u@@124 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_13788 p@@131 v_1@@130 q@@124 w@@130) (InsidePredicate_13788_13813 q@@124 w@@130 r@@124 u@@124)) (InsidePredicate_13853_13813 p@@131 v_1@@130 r@@124 u@@124))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_13788 p@@131 v_1@@130 q@@124 w@@130) (InsidePredicate_13788_13813 q@@124 w@@130 r@@124 u@@124))
)))
(assert (forall ((p@@132 T@Field_53810_53811) (v_1@@131 T@FrameType) (q@@125 T@Field_55007_55008) (w@@131 T@FrameType) (r@@125 T@Field_33516_33517) (u@@125 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_13893 p@@132 v_1@@131 q@@125 w@@131) (InsidePredicate_13893_33516 q@@125 w@@131 r@@125 u@@125)) (InsidePredicate_13853_33516 p@@132 v_1@@131 r@@125 u@@125))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_13893 p@@132 v_1@@131 q@@125 w@@131) (InsidePredicate_13893_33516 q@@125 w@@131 r@@125 u@@125))
)))
(assert (forall ((p@@133 T@Field_53810_53811) (v_1@@132 T@FrameType) (q@@126 T@Field_55007_55008) (w@@132 T@FrameType) (r@@126 T@Field_13755_13814) (u@@126 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_13893 p@@133 v_1@@132 q@@126 w@@132) (InsidePredicate_13893_30093 q@@126 w@@132 r@@126 u@@126)) (InsidePredicate_13853_30093 p@@133 v_1@@132 r@@126 u@@126))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_13893 p@@133 v_1@@132 q@@126 w@@132) (InsidePredicate_13893_30093 q@@126 w@@132 r@@126 u@@126))
)))
(assert (forall ((p@@134 T@Field_53810_53811) (v_1@@133 T@FrameType) (q@@127 T@Field_55007_55008) (w@@133 T@FrameType) (r@@127 T@Field_34511_34512) (u@@127 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_13893 p@@134 v_1@@133 q@@127 w@@133) (InsidePredicate_13893_13788 q@@127 w@@133 r@@127 u@@127)) (InsidePredicate_13853_13788 p@@134 v_1@@133 r@@127 u@@127))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_13893 p@@134 v_1@@133 q@@127 w@@133) (InsidePredicate_13893_13788 q@@127 w@@133 r@@127 u@@127))
)))
(assert (forall ((p@@135 T@Field_53810_53811) (v_1@@134 T@FrameType) (q@@128 T@Field_55007_55008) (w@@134 T@FrameType) (r@@128 T@Field_55007_55008) (u@@128 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_13893 p@@135 v_1@@134 q@@128 w@@134) (InsidePredicate_13893_13893 q@@128 w@@134 r@@128 u@@128)) (InsidePredicate_13853_13893 p@@135 v_1@@134 r@@128 u@@128))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_13893 p@@135 v_1@@134 q@@128 w@@134) (InsidePredicate_13893_13893 q@@128 w@@134 r@@128 u@@128))
)))
(assert (forall ((p@@136 T@Field_53810_53811) (v_1@@135 T@FrameType) (q@@129 T@Field_55007_55008) (w@@135 T@FrameType) (r@@129 T@Field_53810_53811) (u@@129 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_13893 p@@136 v_1@@135 q@@129 w@@135) (InsidePredicate_13893_13853 q@@129 w@@135 r@@129 u@@129)) (InsidePredicate_13853_13853 p@@136 v_1@@135 r@@129 u@@129))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_13893 p@@136 v_1@@135 q@@129 w@@135) (InsidePredicate_13893_13853 q@@129 w@@135 r@@129 u@@129))
)))
(assert (forall ((p@@137 T@Field_53810_53811) (v_1@@136 T@FrameType) (q@@130 T@Field_55007_55008) (w@@136 T@FrameType) (r@@130 T@Field_38039_38040) (u@@130 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_13893 p@@137 v_1@@136 q@@130 w@@136) (InsidePredicate_13893_13813 q@@130 w@@136 r@@130 u@@130)) (InsidePredicate_13853_13813 p@@137 v_1@@136 r@@130 u@@130))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_13893 p@@137 v_1@@136 q@@130 w@@136) (InsidePredicate_13893_13813 q@@130 w@@136 r@@130 u@@130))
)))
(assert (forall ((p@@138 T@Field_53810_53811) (v_1@@137 T@FrameType) (q@@131 T@Field_53810_53811) (w@@137 T@FrameType) (r@@131 T@Field_33516_33517) (u@@131 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_13853 p@@138 v_1@@137 q@@131 w@@137) (InsidePredicate_13853_33516 q@@131 w@@137 r@@131 u@@131)) (InsidePredicate_13853_33516 p@@138 v_1@@137 r@@131 u@@131))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_13853 p@@138 v_1@@137 q@@131 w@@137) (InsidePredicate_13853_33516 q@@131 w@@137 r@@131 u@@131))
)))
(assert (forall ((p@@139 T@Field_53810_53811) (v_1@@138 T@FrameType) (q@@132 T@Field_53810_53811) (w@@138 T@FrameType) (r@@132 T@Field_13755_13814) (u@@132 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_13853 p@@139 v_1@@138 q@@132 w@@138) (InsidePredicate_13853_30093 q@@132 w@@138 r@@132 u@@132)) (InsidePredicate_13853_30093 p@@139 v_1@@138 r@@132 u@@132))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_13853 p@@139 v_1@@138 q@@132 w@@138) (InsidePredicate_13853_30093 q@@132 w@@138 r@@132 u@@132))
)))
(assert (forall ((p@@140 T@Field_53810_53811) (v_1@@139 T@FrameType) (q@@133 T@Field_53810_53811) (w@@139 T@FrameType) (r@@133 T@Field_34511_34512) (u@@133 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_13853 p@@140 v_1@@139 q@@133 w@@139) (InsidePredicate_13853_13788 q@@133 w@@139 r@@133 u@@133)) (InsidePredicate_13853_13788 p@@140 v_1@@139 r@@133 u@@133))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_13853 p@@140 v_1@@139 q@@133 w@@139) (InsidePredicate_13853_13788 q@@133 w@@139 r@@133 u@@133))
)))
(assert (forall ((p@@141 T@Field_53810_53811) (v_1@@140 T@FrameType) (q@@134 T@Field_53810_53811) (w@@140 T@FrameType) (r@@134 T@Field_55007_55008) (u@@134 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_13853 p@@141 v_1@@140 q@@134 w@@140) (InsidePredicate_13853_13893 q@@134 w@@140 r@@134 u@@134)) (InsidePredicate_13853_13893 p@@141 v_1@@140 r@@134 u@@134))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_13853 p@@141 v_1@@140 q@@134 w@@140) (InsidePredicate_13853_13893 q@@134 w@@140 r@@134 u@@134))
)))
(assert (forall ((p@@142 T@Field_53810_53811) (v_1@@141 T@FrameType) (q@@135 T@Field_53810_53811) (w@@141 T@FrameType) (r@@135 T@Field_53810_53811) (u@@135 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_13853 p@@142 v_1@@141 q@@135 w@@141) (InsidePredicate_13853_13853 q@@135 w@@141 r@@135 u@@135)) (InsidePredicate_13853_13853 p@@142 v_1@@141 r@@135 u@@135))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_13853 p@@142 v_1@@141 q@@135 w@@141) (InsidePredicate_13853_13853 q@@135 w@@141 r@@135 u@@135))
)))
(assert (forall ((p@@143 T@Field_53810_53811) (v_1@@142 T@FrameType) (q@@136 T@Field_53810_53811) (w@@142 T@FrameType) (r@@136 T@Field_38039_38040) (u@@136 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_13853 p@@143 v_1@@142 q@@136 w@@142) (InsidePredicate_13853_13813 q@@136 w@@142 r@@136 u@@136)) (InsidePredicate_13853_13813 p@@143 v_1@@142 r@@136 u@@136))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_13853 p@@143 v_1@@142 q@@136 w@@142) (InsidePredicate_13853_13813 q@@136 w@@142 r@@136 u@@136))
)))
(assert (forall ((p@@144 T@Field_53810_53811) (v_1@@143 T@FrameType) (q@@137 T@Field_38039_38040) (w@@143 T@FrameType) (r@@137 T@Field_33516_33517) (u@@137 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_13813 p@@144 v_1@@143 q@@137 w@@143) (InsidePredicate_13813_33516 q@@137 w@@143 r@@137 u@@137)) (InsidePredicate_13853_33516 p@@144 v_1@@143 r@@137 u@@137))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_13813 p@@144 v_1@@143 q@@137 w@@143) (InsidePredicate_13813_33516 q@@137 w@@143 r@@137 u@@137))
)))
(assert (forall ((p@@145 T@Field_53810_53811) (v_1@@144 T@FrameType) (q@@138 T@Field_38039_38040) (w@@144 T@FrameType) (r@@138 T@Field_13755_13814) (u@@138 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_13813 p@@145 v_1@@144 q@@138 w@@144) (InsidePredicate_13813_30093 q@@138 w@@144 r@@138 u@@138)) (InsidePredicate_13853_30093 p@@145 v_1@@144 r@@138 u@@138))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_13813 p@@145 v_1@@144 q@@138 w@@144) (InsidePredicate_13813_30093 q@@138 w@@144 r@@138 u@@138))
)))
(assert (forall ((p@@146 T@Field_53810_53811) (v_1@@145 T@FrameType) (q@@139 T@Field_38039_38040) (w@@145 T@FrameType) (r@@139 T@Field_34511_34512) (u@@139 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_13813 p@@146 v_1@@145 q@@139 w@@145) (InsidePredicate_13813_13788 q@@139 w@@145 r@@139 u@@139)) (InsidePredicate_13853_13788 p@@146 v_1@@145 r@@139 u@@139))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_13813 p@@146 v_1@@145 q@@139 w@@145) (InsidePredicate_13813_13788 q@@139 w@@145 r@@139 u@@139))
)))
(assert (forall ((p@@147 T@Field_53810_53811) (v_1@@146 T@FrameType) (q@@140 T@Field_38039_38040) (w@@146 T@FrameType) (r@@140 T@Field_55007_55008) (u@@140 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_13813 p@@147 v_1@@146 q@@140 w@@146) (InsidePredicate_13813_13893 q@@140 w@@146 r@@140 u@@140)) (InsidePredicate_13853_13893 p@@147 v_1@@146 r@@140 u@@140))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_13813 p@@147 v_1@@146 q@@140 w@@146) (InsidePredicate_13813_13893 q@@140 w@@146 r@@140 u@@140))
)))
(assert (forall ((p@@148 T@Field_53810_53811) (v_1@@147 T@FrameType) (q@@141 T@Field_38039_38040) (w@@147 T@FrameType) (r@@141 T@Field_53810_53811) (u@@141 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_13813 p@@148 v_1@@147 q@@141 w@@147) (InsidePredicate_13813_13853 q@@141 w@@147 r@@141 u@@141)) (InsidePredicate_13853_13853 p@@148 v_1@@147 r@@141 u@@141))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_13813 p@@148 v_1@@147 q@@141 w@@147) (InsidePredicate_13813_13853 q@@141 w@@147 r@@141 u@@141))
)))
(assert (forall ((p@@149 T@Field_53810_53811) (v_1@@148 T@FrameType) (q@@142 T@Field_38039_38040) (w@@148 T@FrameType) (r@@142 T@Field_38039_38040) (u@@142 T@FrameType) ) (!  (=> (and (InsidePredicate_13853_13813 p@@149 v_1@@148 q@@142 w@@148) (InsidePredicate_13813_13813 q@@142 w@@148 r@@142 u@@142)) (InsidePredicate_13853_13813 p@@149 v_1@@148 r@@142 u@@142))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13853_13813 p@@149 v_1@@148 q@@142 w@@148) (InsidePredicate_13813_13813 q@@142 w@@148 r@@142 u@@142))
)))
(assert (forall ((p@@150 T@Field_55007_55008) (v_1@@149 T@FrameType) (q@@143 T@Field_13755_13814) (w@@149 T@FrameType) (r@@143 T@Field_33516_33517) (u@@143 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_30093 p@@150 v_1@@149 q@@143 w@@149) (InsidePredicate_30093_33516 q@@143 w@@149 r@@143 u@@143)) (InsidePredicate_13893_33516 p@@150 v_1@@149 r@@143 u@@143))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_30093 p@@150 v_1@@149 q@@143 w@@149) (InsidePredicate_30093_33516 q@@143 w@@149 r@@143 u@@143))
)))
(assert (forall ((p@@151 T@Field_55007_55008) (v_1@@150 T@FrameType) (q@@144 T@Field_13755_13814) (w@@150 T@FrameType) (r@@144 T@Field_13755_13814) (u@@144 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_30093 p@@151 v_1@@150 q@@144 w@@150) (InsidePredicate_30093_30093 q@@144 w@@150 r@@144 u@@144)) (InsidePredicate_13893_30093 p@@151 v_1@@150 r@@144 u@@144))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_30093 p@@151 v_1@@150 q@@144 w@@150) (InsidePredicate_30093_30093 q@@144 w@@150 r@@144 u@@144))
)))
(assert (forall ((p@@152 T@Field_55007_55008) (v_1@@151 T@FrameType) (q@@145 T@Field_13755_13814) (w@@151 T@FrameType) (r@@145 T@Field_34511_34512) (u@@145 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_30093 p@@152 v_1@@151 q@@145 w@@151) (InsidePredicate_30093_13788 q@@145 w@@151 r@@145 u@@145)) (InsidePredicate_13893_13788 p@@152 v_1@@151 r@@145 u@@145))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_30093 p@@152 v_1@@151 q@@145 w@@151) (InsidePredicate_30093_13788 q@@145 w@@151 r@@145 u@@145))
)))
(assert (forall ((p@@153 T@Field_55007_55008) (v_1@@152 T@FrameType) (q@@146 T@Field_13755_13814) (w@@152 T@FrameType) (r@@146 T@Field_55007_55008) (u@@146 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_30093 p@@153 v_1@@152 q@@146 w@@152) (InsidePredicate_30093_13893 q@@146 w@@152 r@@146 u@@146)) (InsidePredicate_13893_13893 p@@153 v_1@@152 r@@146 u@@146))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_30093 p@@153 v_1@@152 q@@146 w@@152) (InsidePredicate_30093_13893 q@@146 w@@152 r@@146 u@@146))
)))
(assert (forall ((p@@154 T@Field_55007_55008) (v_1@@153 T@FrameType) (q@@147 T@Field_13755_13814) (w@@153 T@FrameType) (r@@147 T@Field_53810_53811) (u@@147 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_30093 p@@154 v_1@@153 q@@147 w@@153) (InsidePredicate_30093_13853 q@@147 w@@153 r@@147 u@@147)) (InsidePredicate_13893_13853 p@@154 v_1@@153 r@@147 u@@147))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_30093 p@@154 v_1@@153 q@@147 w@@153) (InsidePredicate_30093_13853 q@@147 w@@153 r@@147 u@@147))
)))
(assert (forall ((p@@155 T@Field_55007_55008) (v_1@@154 T@FrameType) (q@@148 T@Field_13755_13814) (w@@154 T@FrameType) (r@@148 T@Field_38039_38040) (u@@148 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_30093 p@@155 v_1@@154 q@@148 w@@154) (InsidePredicate_30093_13813 q@@148 w@@154 r@@148 u@@148)) (InsidePredicate_13893_13813 p@@155 v_1@@154 r@@148 u@@148))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_30093 p@@155 v_1@@154 q@@148 w@@154) (InsidePredicate_30093_13813 q@@148 w@@154 r@@148 u@@148))
)))
(assert (forall ((p@@156 T@Field_55007_55008) (v_1@@155 T@FrameType) (q@@149 T@Field_33516_33517) (w@@155 T@FrameType) (r@@149 T@Field_33516_33517) (u@@149 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_33516 p@@156 v_1@@155 q@@149 w@@155) (InsidePredicate_13759_33516 q@@149 w@@155 r@@149 u@@149)) (InsidePredicate_13893_33516 p@@156 v_1@@155 r@@149 u@@149))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_33516 p@@156 v_1@@155 q@@149 w@@155) (InsidePredicate_13759_33516 q@@149 w@@155 r@@149 u@@149))
)))
(assert (forall ((p@@157 T@Field_55007_55008) (v_1@@156 T@FrameType) (q@@150 T@Field_33516_33517) (w@@156 T@FrameType) (r@@150 T@Field_13755_13814) (u@@150 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_33516 p@@157 v_1@@156 q@@150 w@@156) (InsidePredicate_13759_30093 q@@150 w@@156 r@@150 u@@150)) (InsidePredicate_13893_30093 p@@157 v_1@@156 r@@150 u@@150))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_33516 p@@157 v_1@@156 q@@150 w@@156) (InsidePredicate_13759_30093 q@@150 w@@156 r@@150 u@@150))
)))
(assert (forall ((p@@158 T@Field_55007_55008) (v_1@@157 T@FrameType) (q@@151 T@Field_33516_33517) (w@@157 T@FrameType) (r@@151 T@Field_34511_34512) (u@@151 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_33516 p@@158 v_1@@157 q@@151 w@@157) (InsidePredicate_13759_13788 q@@151 w@@157 r@@151 u@@151)) (InsidePredicate_13893_13788 p@@158 v_1@@157 r@@151 u@@151))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_33516 p@@158 v_1@@157 q@@151 w@@157) (InsidePredicate_13759_13788 q@@151 w@@157 r@@151 u@@151))
)))
(assert (forall ((p@@159 T@Field_55007_55008) (v_1@@158 T@FrameType) (q@@152 T@Field_33516_33517) (w@@158 T@FrameType) (r@@152 T@Field_55007_55008) (u@@152 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_33516 p@@159 v_1@@158 q@@152 w@@158) (InsidePredicate_13759_13893 q@@152 w@@158 r@@152 u@@152)) (InsidePredicate_13893_13893 p@@159 v_1@@158 r@@152 u@@152))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_33516 p@@159 v_1@@158 q@@152 w@@158) (InsidePredicate_13759_13893 q@@152 w@@158 r@@152 u@@152))
)))
(assert (forall ((p@@160 T@Field_55007_55008) (v_1@@159 T@FrameType) (q@@153 T@Field_33516_33517) (w@@159 T@FrameType) (r@@153 T@Field_53810_53811) (u@@153 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_33516 p@@160 v_1@@159 q@@153 w@@159) (InsidePredicate_13759_13853 q@@153 w@@159 r@@153 u@@153)) (InsidePredicate_13893_13853 p@@160 v_1@@159 r@@153 u@@153))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_33516 p@@160 v_1@@159 q@@153 w@@159) (InsidePredicate_13759_13853 q@@153 w@@159 r@@153 u@@153))
)))
(assert (forall ((p@@161 T@Field_55007_55008) (v_1@@160 T@FrameType) (q@@154 T@Field_33516_33517) (w@@160 T@FrameType) (r@@154 T@Field_38039_38040) (u@@154 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_33516 p@@161 v_1@@160 q@@154 w@@160) (InsidePredicate_13759_13813 q@@154 w@@160 r@@154 u@@154)) (InsidePredicate_13893_13813 p@@161 v_1@@160 r@@154 u@@154))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_33516 p@@161 v_1@@160 q@@154 w@@160) (InsidePredicate_13759_13813 q@@154 w@@160 r@@154 u@@154))
)))
(assert (forall ((p@@162 T@Field_55007_55008) (v_1@@161 T@FrameType) (q@@155 T@Field_34511_34512) (w@@161 T@FrameType) (r@@155 T@Field_33516_33517) (u@@155 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_13788 p@@162 v_1@@161 q@@155 w@@161) (InsidePredicate_13788_33516 q@@155 w@@161 r@@155 u@@155)) (InsidePredicate_13893_33516 p@@162 v_1@@161 r@@155 u@@155))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_13788 p@@162 v_1@@161 q@@155 w@@161) (InsidePredicate_13788_33516 q@@155 w@@161 r@@155 u@@155))
)))
(assert (forall ((p@@163 T@Field_55007_55008) (v_1@@162 T@FrameType) (q@@156 T@Field_34511_34512) (w@@162 T@FrameType) (r@@156 T@Field_13755_13814) (u@@156 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_13788 p@@163 v_1@@162 q@@156 w@@162) (InsidePredicate_13788_30093 q@@156 w@@162 r@@156 u@@156)) (InsidePredicate_13893_30093 p@@163 v_1@@162 r@@156 u@@156))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_13788 p@@163 v_1@@162 q@@156 w@@162) (InsidePredicate_13788_30093 q@@156 w@@162 r@@156 u@@156))
)))
(assert (forall ((p@@164 T@Field_55007_55008) (v_1@@163 T@FrameType) (q@@157 T@Field_34511_34512) (w@@163 T@FrameType) (r@@157 T@Field_34511_34512) (u@@157 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_13788 p@@164 v_1@@163 q@@157 w@@163) (InsidePredicate_13788_13788 q@@157 w@@163 r@@157 u@@157)) (InsidePredicate_13893_13788 p@@164 v_1@@163 r@@157 u@@157))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_13788 p@@164 v_1@@163 q@@157 w@@163) (InsidePredicate_13788_13788 q@@157 w@@163 r@@157 u@@157))
)))
(assert (forall ((p@@165 T@Field_55007_55008) (v_1@@164 T@FrameType) (q@@158 T@Field_34511_34512) (w@@164 T@FrameType) (r@@158 T@Field_55007_55008) (u@@158 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_13788 p@@165 v_1@@164 q@@158 w@@164) (InsidePredicate_13788_13893 q@@158 w@@164 r@@158 u@@158)) (InsidePredicate_13893_13893 p@@165 v_1@@164 r@@158 u@@158))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_13788 p@@165 v_1@@164 q@@158 w@@164) (InsidePredicate_13788_13893 q@@158 w@@164 r@@158 u@@158))
)))
(assert (forall ((p@@166 T@Field_55007_55008) (v_1@@165 T@FrameType) (q@@159 T@Field_34511_34512) (w@@165 T@FrameType) (r@@159 T@Field_53810_53811) (u@@159 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_13788 p@@166 v_1@@165 q@@159 w@@165) (InsidePredicate_13788_13853 q@@159 w@@165 r@@159 u@@159)) (InsidePredicate_13893_13853 p@@166 v_1@@165 r@@159 u@@159))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_13788 p@@166 v_1@@165 q@@159 w@@165) (InsidePredicate_13788_13853 q@@159 w@@165 r@@159 u@@159))
)))
(assert (forall ((p@@167 T@Field_55007_55008) (v_1@@166 T@FrameType) (q@@160 T@Field_34511_34512) (w@@166 T@FrameType) (r@@160 T@Field_38039_38040) (u@@160 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_13788 p@@167 v_1@@166 q@@160 w@@166) (InsidePredicate_13788_13813 q@@160 w@@166 r@@160 u@@160)) (InsidePredicate_13893_13813 p@@167 v_1@@166 r@@160 u@@160))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_13788 p@@167 v_1@@166 q@@160 w@@166) (InsidePredicate_13788_13813 q@@160 w@@166 r@@160 u@@160))
)))
(assert (forall ((p@@168 T@Field_55007_55008) (v_1@@167 T@FrameType) (q@@161 T@Field_55007_55008) (w@@167 T@FrameType) (r@@161 T@Field_33516_33517) (u@@161 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_13893 p@@168 v_1@@167 q@@161 w@@167) (InsidePredicate_13893_33516 q@@161 w@@167 r@@161 u@@161)) (InsidePredicate_13893_33516 p@@168 v_1@@167 r@@161 u@@161))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_13893 p@@168 v_1@@167 q@@161 w@@167) (InsidePredicate_13893_33516 q@@161 w@@167 r@@161 u@@161))
)))
(assert (forall ((p@@169 T@Field_55007_55008) (v_1@@168 T@FrameType) (q@@162 T@Field_55007_55008) (w@@168 T@FrameType) (r@@162 T@Field_13755_13814) (u@@162 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_13893 p@@169 v_1@@168 q@@162 w@@168) (InsidePredicate_13893_30093 q@@162 w@@168 r@@162 u@@162)) (InsidePredicate_13893_30093 p@@169 v_1@@168 r@@162 u@@162))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_13893 p@@169 v_1@@168 q@@162 w@@168) (InsidePredicate_13893_30093 q@@162 w@@168 r@@162 u@@162))
)))
(assert (forall ((p@@170 T@Field_55007_55008) (v_1@@169 T@FrameType) (q@@163 T@Field_55007_55008) (w@@169 T@FrameType) (r@@163 T@Field_34511_34512) (u@@163 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_13893 p@@170 v_1@@169 q@@163 w@@169) (InsidePredicate_13893_13788 q@@163 w@@169 r@@163 u@@163)) (InsidePredicate_13893_13788 p@@170 v_1@@169 r@@163 u@@163))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_13893 p@@170 v_1@@169 q@@163 w@@169) (InsidePredicate_13893_13788 q@@163 w@@169 r@@163 u@@163))
)))
(assert (forall ((p@@171 T@Field_55007_55008) (v_1@@170 T@FrameType) (q@@164 T@Field_55007_55008) (w@@170 T@FrameType) (r@@164 T@Field_55007_55008) (u@@164 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_13893 p@@171 v_1@@170 q@@164 w@@170) (InsidePredicate_13893_13893 q@@164 w@@170 r@@164 u@@164)) (InsidePredicate_13893_13893 p@@171 v_1@@170 r@@164 u@@164))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_13893 p@@171 v_1@@170 q@@164 w@@170) (InsidePredicate_13893_13893 q@@164 w@@170 r@@164 u@@164))
)))
(assert (forall ((p@@172 T@Field_55007_55008) (v_1@@171 T@FrameType) (q@@165 T@Field_55007_55008) (w@@171 T@FrameType) (r@@165 T@Field_53810_53811) (u@@165 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_13893 p@@172 v_1@@171 q@@165 w@@171) (InsidePredicate_13893_13853 q@@165 w@@171 r@@165 u@@165)) (InsidePredicate_13893_13853 p@@172 v_1@@171 r@@165 u@@165))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_13893 p@@172 v_1@@171 q@@165 w@@171) (InsidePredicate_13893_13853 q@@165 w@@171 r@@165 u@@165))
)))
(assert (forall ((p@@173 T@Field_55007_55008) (v_1@@172 T@FrameType) (q@@166 T@Field_55007_55008) (w@@172 T@FrameType) (r@@166 T@Field_38039_38040) (u@@166 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_13893 p@@173 v_1@@172 q@@166 w@@172) (InsidePredicate_13893_13813 q@@166 w@@172 r@@166 u@@166)) (InsidePredicate_13893_13813 p@@173 v_1@@172 r@@166 u@@166))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_13893 p@@173 v_1@@172 q@@166 w@@172) (InsidePredicate_13893_13813 q@@166 w@@172 r@@166 u@@166))
)))
(assert (forall ((p@@174 T@Field_55007_55008) (v_1@@173 T@FrameType) (q@@167 T@Field_53810_53811) (w@@173 T@FrameType) (r@@167 T@Field_33516_33517) (u@@167 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_13853 p@@174 v_1@@173 q@@167 w@@173) (InsidePredicate_13853_33516 q@@167 w@@173 r@@167 u@@167)) (InsidePredicate_13893_33516 p@@174 v_1@@173 r@@167 u@@167))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_13853 p@@174 v_1@@173 q@@167 w@@173) (InsidePredicate_13853_33516 q@@167 w@@173 r@@167 u@@167))
)))
(assert (forall ((p@@175 T@Field_55007_55008) (v_1@@174 T@FrameType) (q@@168 T@Field_53810_53811) (w@@174 T@FrameType) (r@@168 T@Field_13755_13814) (u@@168 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_13853 p@@175 v_1@@174 q@@168 w@@174) (InsidePredicate_13853_30093 q@@168 w@@174 r@@168 u@@168)) (InsidePredicate_13893_30093 p@@175 v_1@@174 r@@168 u@@168))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_13853 p@@175 v_1@@174 q@@168 w@@174) (InsidePredicate_13853_30093 q@@168 w@@174 r@@168 u@@168))
)))
(assert (forall ((p@@176 T@Field_55007_55008) (v_1@@175 T@FrameType) (q@@169 T@Field_53810_53811) (w@@175 T@FrameType) (r@@169 T@Field_34511_34512) (u@@169 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_13853 p@@176 v_1@@175 q@@169 w@@175) (InsidePredicate_13853_13788 q@@169 w@@175 r@@169 u@@169)) (InsidePredicate_13893_13788 p@@176 v_1@@175 r@@169 u@@169))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_13853 p@@176 v_1@@175 q@@169 w@@175) (InsidePredicate_13853_13788 q@@169 w@@175 r@@169 u@@169))
)))
(assert (forall ((p@@177 T@Field_55007_55008) (v_1@@176 T@FrameType) (q@@170 T@Field_53810_53811) (w@@176 T@FrameType) (r@@170 T@Field_55007_55008) (u@@170 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_13853 p@@177 v_1@@176 q@@170 w@@176) (InsidePredicate_13853_13893 q@@170 w@@176 r@@170 u@@170)) (InsidePredicate_13893_13893 p@@177 v_1@@176 r@@170 u@@170))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_13853 p@@177 v_1@@176 q@@170 w@@176) (InsidePredicate_13853_13893 q@@170 w@@176 r@@170 u@@170))
)))
(assert (forall ((p@@178 T@Field_55007_55008) (v_1@@177 T@FrameType) (q@@171 T@Field_53810_53811) (w@@177 T@FrameType) (r@@171 T@Field_53810_53811) (u@@171 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_13853 p@@178 v_1@@177 q@@171 w@@177) (InsidePredicate_13853_13853 q@@171 w@@177 r@@171 u@@171)) (InsidePredicate_13893_13853 p@@178 v_1@@177 r@@171 u@@171))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_13853 p@@178 v_1@@177 q@@171 w@@177) (InsidePredicate_13853_13853 q@@171 w@@177 r@@171 u@@171))
)))
(assert (forall ((p@@179 T@Field_55007_55008) (v_1@@178 T@FrameType) (q@@172 T@Field_53810_53811) (w@@178 T@FrameType) (r@@172 T@Field_38039_38040) (u@@172 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_13853 p@@179 v_1@@178 q@@172 w@@178) (InsidePredicate_13853_13813 q@@172 w@@178 r@@172 u@@172)) (InsidePredicate_13893_13813 p@@179 v_1@@178 r@@172 u@@172))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_13853 p@@179 v_1@@178 q@@172 w@@178) (InsidePredicate_13853_13813 q@@172 w@@178 r@@172 u@@172))
)))
(assert (forall ((p@@180 T@Field_55007_55008) (v_1@@179 T@FrameType) (q@@173 T@Field_38039_38040) (w@@179 T@FrameType) (r@@173 T@Field_33516_33517) (u@@173 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_13813 p@@180 v_1@@179 q@@173 w@@179) (InsidePredicate_13813_33516 q@@173 w@@179 r@@173 u@@173)) (InsidePredicate_13893_33516 p@@180 v_1@@179 r@@173 u@@173))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_13813 p@@180 v_1@@179 q@@173 w@@179) (InsidePredicate_13813_33516 q@@173 w@@179 r@@173 u@@173))
)))
(assert (forall ((p@@181 T@Field_55007_55008) (v_1@@180 T@FrameType) (q@@174 T@Field_38039_38040) (w@@180 T@FrameType) (r@@174 T@Field_13755_13814) (u@@174 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_13813 p@@181 v_1@@180 q@@174 w@@180) (InsidePredicate_13813_30093 q@@174 w@@180 r@@174 u@@174)) (InsidePredicate_13893_30093 p@@181 v_1@@180 r@@174 u@@174))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_13813 p@@181 v_1@@180 q@@174 w@@180) (InsidePredicate_13813_30093 q@@174 w@@180 r@@174 u@@174))
)))
(assert (forall ((p@@182 T@Field_55007_55008) (v_1@@181 T@FrameType) (q@@175 T@Field_38039_38040) (w@@181 T@FrameType) (r@@175 T@Field_34511_34512) (u@@175 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_13813 p@@182 v_1@@181 q@@175 w@@181) (InsidePredicate_13813_13788 q@@175 w@@181 r@@175 u@@175)) (InsidePredicate_13893_13788 p@@182 v_1@@181 r@@175 u@@175))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_13813 p@@182 v_1@@181 q@@175 w@@181) (InsidePredicate_13813_13788 q@@175 w@@181 r@@175 u@@175))
)))
(assert (forall ((p@@183 T@Field_55007_55008) (v_1@@182 T@FrameType) (q@@176 T@Field_38039_38040) (w@@182 T@FrameType) (r@@176 T@Field_55007_55008) (u@@176 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_13813 p@@183 v_1@@182 q@@176 w@@182) (InsidePredicate_13813_13893 q@@176 w@@182 r@@176 u@@176)) (InsidePredicate_13893_13893 p@@183 v_1@@182 r@@176 u@@176))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_13813 p@@183 v_1@@182 q@@176 w@@182) (InsidePredicate_13813_13893 q@@176 w@@182 r@@176 u@@176))
)))
(assert (forall ((p@@184 T@Field_55007_55008) (v_1@@183 T@FrameType) (q@@177 T@Field_38039_38040) (w@@183 T@FrameType) (r@@177 T@Field_53810_53811) (u@@177 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_13813 p@@184 v_1@@183 q@@177 w@@183) (InsidePredicate_13813_13853 q@@177 w@@183 r@@177 u@@177)) (InsidePredicate_13893_13853 p@@184 v_1@@183 r@@177 u@@177))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_13813 p@@184 v_1@@183 q@@177 w@@183) (InsidePredicate_13813_13853 q@@177 w@@183 r@@177 u@@177))
)))
(assert (forall ((p@@185 T@Field_55007_55008) (v_1@@184 T@FrameType) (q@@178 T@Field_38039_38040) (w@@184 T@FrameType) (r@@178 T@Field_38039_38040) (u@@178 T@FrameType) ) (!  (=> (and (InsidePredicate_13893_13813 p@@185 v_1@@184 q@@178 w@@184) (InsidePredicate_13813_13813 q@@178 w@@184 r@@178 u@@178)) (InsidePredicate_13893_13813 p@@185 v_1@@184 r@@178 u@@178))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13893_13813 p@@185 v_1@@184 q@@178 w@@184) (InsidePredicate_13813_13813 q@@178 w@@184 r@@178 u@@178))
)))
(assert (forall ((p@@186 T@Field_38039_38040) (v_1@@185 T@FrameType) (q@@179 T@Field_13755_13814) (w@@185 T@FrameType) (r@@179 T@Field_33516_33517) (u@@179 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_30093 p@@186 v_1@@185 q@@179 w@@185) (InsidePredicate_30093_33516 q@@179 w@@185 r@@179 u@@179)) (InsidePredicate_13813_33516 p@@186 v_1@@185 r@@179 u@@179))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_30093 p@@186 v_1@@185 q@@179 w@@185) (InsidePredicate_30093_33516 q@@179 w@@185 r@@179 u@@179))
)))
(assert (forall ((p@@187 T@Field_38039_38040) (v_1@@186 T@FrameType) (q@@180 T@Field_13755_13814) (w@@186 T@FrameType) (r@@180 T@Field_13755_13814) (u@@180 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_30093 p@@187 v_1@@186 q@@180 w@@186) (InsidePredicate_30093_30093 q@@180 w@@186 r@@180 u@@180)) (InsidePredicate_13813_30093 p@@187 v_1@@186 r@@180 u@@180))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_30093 p@@187 v_1@@186 q@@180 w@@186) (InsidePredicate_30093_30093 q@@180 w@@186 r@@180 u@@180))
)))
(assert (forall ((p@@188 T@Field_38039_38040) (v_1@@187 T@FrameType) (q@@181 T@Field_13755_13814) (w@@187 T@FrameType) (r@@181 T@Field_34511_34512) (u@@181 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_30093 p@@188 v_1@@187 q@@181 w@@187) (InsidePredicate_30093_13788 q@@181 w@@187 r@@181 u@@181)) (InsidePredicate_13813_13788 p@@188 v_1@@187 r@@181 u@@181))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_30093 p@@188 v_1@@187 q@@181 w@@187) (InsidePredicate_30093_13788 q@@181 w@@187 r@@181 u@@181))
)))
(assert (forall ((p@@189 T@Field_38039_38040) (v_1@@188 T@FrameType) (q@@182 T@Field_13755_13814) (w@@188 T@FrameType) (r@@182 T@Field_55007_55008) (u@@182 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_30093 p@@189 v_1@@188 q@@182 w@@188) (InsidePredicate_30093_13893 q@@182 w@@188 r@@182 u@@182)) (InsidePredicate_13813_13893 p@@189 v_1@@188 r@@182 u@@182))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_30093 p@@189 v_1@@188 q@@182 w@@188) (InsidePredicate_30093_13893 q@@182 w@@188 r@@182 u@@182))
)))
(assert (forall ((p@@190 T@Field_38039_38040) (v_1@@189 T@FrameType) (q@@183 T@Field_13755_13814) (w@@189 T@FrameType) (r@@183 T@Field_53810_53811) (u@@183 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_30093 p@@190 v_1@@189 q@@183 w@@189) (InsidePredicate_30093_13853 q@@183 w@@189 r@@183 u@@183)) (InsidePredicate_13813_13853 p@@190 v_1@@189 r@@183 u@@183))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_30093 p@@190 v_1@@189 q@@183 w@@189) (InsidePredicate_30093_13853 q@@183 w@@189 r@@183 u@@183))
)))
(assert (forall ((p@@191 T@Field_38039_38040) (v_1@@190 T@FrameType) (q@@184 T@Field_13755_13814) (w@@190 T@FrameType) (r@@184 T@Field_38039_38040) (u@@184 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_30093 p@@191 v_1@@190 q@@184 w@@190) (InsidePredicate_30093_13813 q@@184 w@@190 r@@184 u@@184)) (InsidePredicate_13813_13813 p@@191 v_1@@190 r@@184 u@@184))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_30093 p@@191 v_1@@190 q@@184 w@@190) (InsidePredicate_30093_13813 q@@184 w@@190 r@@184 u@@184))
)))
(assert (forall ((p@@192 T@Field_38039_38040) (v_1@@191 T@FrameType) (q@@185 T@Field_33516_33517) (w@@191 T@FrameType) (r@@185 T@Field_33516_33517) (u@@185 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_33516 p@@192 v_1@@191 q@@185 w@@191) (InsidePredicate_13759_33516 q@@185 w@@191 r@@185 u@@185)) (InsidePredicate_13813_33516 p@@192 v_1@@191 r@@185 u@@185))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_33516 p@@192 v_1@@191 q@@185 w@@191) (InsidePredicate_13759_33516 q@@185 w@@191 r@@185 u@@185))
)))
(assert (forall ((p@@193 T@Field_38039_38040) (v_1@@192 T@FrameType) (q@@186 T@Field_33516_33517) (w@@192 T@FrameType) (r@@186 T@Field_13755_13814) (u@@186 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_33516 p@@193 v_1@@192 q@@186 w@@192) (InsidePredicate_13759_30093 q@@186 w@@192 r@@186 u@@186)) (InsidePredicate_13813_30093 p@@193 v_1@@192 r@@186 u@@186))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_33516 p@@193 v_1@@192 q@@186 w@@192) (InsidePredicate_13759_30093 q@@186 w@@192 r@@186 u@@186))
)))
(assert (forall ((p@@194 T@Field_38039_38040) (v_1@@193 T@FrameType) (q@@187 T@Field_33516_33517) (w@@193 T@FrameType) (r@@187 T@Field_34511_34512) (u@@187 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_33516 p@@194 v_1@@193 q@@187 w@@193) (InsidePredicate_13759_13788 q@@187 w@@193 r@@187 u@@187)) (InsidePredicate_13813_13788 p@@194 v_1@@193 r@@187 u@@187))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_33516 p@@194 v_1@@193 q@@187 w@@193) (InsidePredicate_13759_13788 q@@187 w@@193 r@@187 u@@187))
)))
(assert (forall ((p@@195 T@Field_38039_38040) (v_1@@194 T@FrameType) (q@@188 T@Field_33516_33517) (w@@194 T@FrameType) (r@@188 T@Field_55007_55008) (u@@188 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_33516 p@@195 v_1@@194 q@@188 w@@194) (InsidePredicate_13759_13893 q@@188 w@@194 r@@188 u@@188)) (InsidePredicate_13813_13893 p@@195 v_1@@194 r@@188 u@@188))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_33516 p@@195 v_1@@194 q@@188 w@@194) (InsidePredicate_13759_13893 q@@188 w@@194 r@@188 u@@188))
)))
(assert (forall ((p@@196 T@Field_38039_38040) (v_1@@195 T@FrameType) (q@@189 T@Field_33516_33517) (w@@195 T@FrameType) (r@@189 T@Field_53810_53811) (u@@189 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_33516 p@@196 v_1@@195 q@@189 w@@195) (InsidePredicate_13759_13853 q@@189 w@@195 r@@189 u@@189)) (InsidePredicate_13813_13853 p@@196 v_1@@195 r@@189 u@@189))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_33516 p@@196 v_1@@195 q@@189 w@@195) (InsidePredicate_13759_13853 q@@189 w@@195 r@@189 u@@189))
)))
(assert (forall ((p@@197 T@Field_38039_38040) (v_1@@196 T@FrameType) (q@@190 T@Field_33516_33517) (w@@196 T@FrameType) (r@@190 T@Field_38039_38040) (u@@190 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_33516 p@@197 v_1@@196 q@@190 w@@196) (InsidePredicate_13759_13813 q@@190 w@@196 r@@190 u@@190)) (InsidePredicate_13813_13813 p@@197 v_1@@196 r@@190 u@@190))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_33516 p@@197 v_1@@196 q@@190 w@@196) (InsidePredicate_13759_13813 q@@190 w@@196 r@@190 u@@190))
)))
(assert (forall ((p@@198 T@Field_38039_38040) (v_1@@197 T@FrameType) (q@@191 T@Field_34511_34512) (w@@197 T@FrameType) (r@@191 T@Field_33516_33517) (u@@191 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_13788 p@@198 v_1@@197 q@@191 w@@197) (InsidePredicate_13788_33516 q@@191 w@@197 r@@191 u@@191)) (InsidePredicate_13813_33516 p@@198 v_1@@197 r@@191 u@@191))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_13788 p@@198 v_1@@197 q@@191 w@@197) (InsidePredicate_13788_33516 q@@191 w@@197 r@@191 u@@191))
)))
(assert (forall ((p@@199 T@Field_38039_38040) (v_1@@198 T@FrameType) (q@@192 T@Field_34511_34512) (w@@198 T@FrameType) (r@@192 T@Field_13755_13814) (u@@192 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_13788 p@@199 v_1@@198 q@@192 w@@198) (InsidePredicate_13788_30093 q@@192 w@@198 r@@192 u@@192)) (InsidePredicate_13813_30093 p@@199 v_1@@198 r@@192 u@@192))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_13788 p@@199 v_1@@198 q@@192 w@@198) (InsidePredicate_13788_30093 q@@192 w@@198 r@@192 u@@192))
)))
(assert (forall ((p@@200 T@Field_38039_38040) (v_1@@199 T@FrameType) (q@@193 T@Field_34511_34512) (w@@199 T@FrameType) (r@@193 T@Field_34511_34512) (u@@193 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_13788 p@@200 v_1@@199 q@@193 w@@199) (InsidePredicate_13788_13788 q@@193 w@@199 r@@193 u@@193)) (InsidePredicate_13813_13788 p@@200 v_1@@199 r@@193 u@@193))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_13788 p@@200 v_1@@199 q@@193 w@@199) (InsidePredicate_13788_13788 q@@193 w@@199 r@@193 u@@193))
)))
(assert (forall ((p@@201 T@Field_38039_38040) (v_1@@200 T@FrameType) (q@@194 T@Field_34511_34512) (w@@200 T@FrameType) (r@@194 T@Field_55007_55008) (u@@194 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_13788 p@@201 v_1@@200 q@@194 w@@200) (InsidePredicate_13788_13893 q@@194 w@@200 r@@194 u@@194)) (InsidePredicate_13813_13893 p@@201 v_1@@200 r@@194 u@@194))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_13788 p@@201 v_1@@200 q@@194 w@@200) (InsidePredicate_13788_13893 q@@194 w@@200 r@@194 u@@194))
)))
(assert (forall ((p@@202 T@Field_38039_38040) (v_1@@201 T@FrameType) (q@@195 T@Field_34511_34512) (w@@201 T@FrameType) (r@@195 T@Field_53810_53811) (u@@195 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_13788 p@@202 v_1@@201 q@@195 w@@201) (InsidePredicate_13788_13853 q@@195 w@@201 r@@195 u@@195)) (InsidePredicate_13813_13853 p@@202 v_1@@201 r@@195 u@@195))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_13788 p@@202 v_1@@201 q@@195 w@@201) (InsidePredicate_13788_13853 q@@195 w@@201 r@@195 u@@195))
)))
(assert (forall ((p@@203 T@Field_38039_38040) (v_1@@202 T@FrameType) (q@@196 T@Field_34511_34512) (w@@202 T@FrameType) (r@@196 T@Field_38039_38040) (u@@196 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_13788 p@@203 v_1@@202 q@@196 w@@202) (InsidePredicate_13788_13813 q@@196 w@@202 r@@196 u@@196)) (InsidePredicate_13813_13813 p@@203 v_1@@202 r@@196 u@@196))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_13788 p@@203 v_1@@202 q@@196 w@@202) (InsidePredicate_13788_13813 q@@196 w@@202 r@@196 u@@196))
)))
(assert (forall ((p@@204 T@Field_38039_38040) (v_1@@203 T@FrameType) (q@@197 T@Field_55007_55008) (w@@203 T@FrameType) (r@@197 T@Field_33516_33517) (u@@197 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_13893 p@@204 v_1@@203 q@@197 w@@203) (InsidePredicate_13893_33516 q@@197 w@@203 r@@197 u@@197)) (InsidePredicate_13813_33516 p@@204 v_1@@203 r@@197 u@@197))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_13893 p@@204 v_1@@203 q@@197 w@@203) (InsidePredicate_13893_33516 q@@197 w@@203 r@@197 u@@197))
)))
(assert (forall ((p@@205 T@Field_38039_38040) (v_1@@204 T@FrameType) (q@@198 T@Field_55007_55008) (w@@204 T@FrameType) (r@@198 T@Field_13755_13814) (u@@198 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_13893 p@@205 v_1@@204 q@@198 w@@204) (InsidePredicate_13893_30093 q@@198 w@@204 r@@198 u@@198)) (InsidePredicate_13813_30093 p@@205 v_1@@204 r@@198 u@@198))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_13893 p@@205 v_1@@204 q@@198 w@@204) (InsidePredicate_13893_30093 q@@198 w@@204 r@@198 u@@198))
)))
(assert (forall ((p@@206 T@Field_38039_38040) (v_1@@205 T@FrameType) (q@@199 T@Field_55007_55008) (w@@205 T@FrameType) (r@@199 T@Field_34511_34512) (u@@199 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_13893 p@@206 v_1@@205 q@@199 w@@205) (InsidePredicate_13893_13788 q@@199 w@@205 r@@199 u@@199)) (InsidePredicate_13813_13788 p@@206 v_1@@205 r@@199 u@@199))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_13893 p@@206 v_1@@205 q@@199 w@@205) (InsidePredicate_13893_13788 q@@199 w@@205 r@@199 u@@199))
)))
(assert (forall ((p@@207 T@Field_38039_38040) (v_1@@206 T@FrameType) (q@@200 T@Field_55007_55008) (w@@206 T@FrameType) (r@@200 T@Field_55007_55008) (u@@200 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_13893 p@@207 v_1@@206 q@@200 w@@206) (InsidePredicate_13893_13893 q@@200 w@@206 r@@200 u@@200)) (InsidePredicate_13813_13893 p@@207 v_1@@206 r@@200 u@@200))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_13893 p@@207 v_1@@206 q@@200 w@@206) (InsidePredicate_13893_13893 q@@200 w@@206 r@@200 u@@200))
)))
(assert (forall ((p@@208 T@Field_38039_38040) (v_1@@207 T@FrameType) (q@@201 T@Field_55007_55008) (w@@207 T@FrameType) (r@@201 T@Field_53810_53811) (u@@201 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_13893 p@@208 v_1@@207 q@@201 w@@207) (InsidePredicate_13893_13853 q@@201 w@@207 r@@201 u@@201)) (InsidePredicate_13813_13853 p@@208 v_1@@207 r@@201 u@@201))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_13893 p@@208 v_1@@207 q@@201 w@@207) (InsidePredicate_13893_13853 q@@201 w@@207 r@@201 u@@201))
)))
(assert (forall ((p@@209 T@Field_38039_38040) (v_1@@208 T@FrameType) (q@@202 T@Field_55007_55008) (w@@208 T@FrameType) (r@@202 T@Field_38039_38040) (u@@202 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_13893 p@@209 v_1@@208 q@@202 w@@208) (InsidePredicate_13893_13813 q@@202 w@@208 r@@202 u@@202)) (InsidePredicate_13813_13813 p@@209 v_1@@208 r@@202 u@@202))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_13893 p@@209 v_1@@208 q@@202 w@@208) (InsidePredicate_13893_13813 q@@202 w@@208 r@@202 u@@202))
)))
(assert (forall ((p@@210 T@Field_38039_38040) (v_1@@209 T@FrameType) (q@@203 T@Field_53810_53811) (w@@209 T@FrameType) (r@@203 T@Field_33516_33517) (u@@203 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_13853 p@@210 v_1@@209 q@@203 w@@209) (InsidePredicate_13853_33516 q@@203 w@@209 r@@203 u@@203)) (InsidePredicate_13813_33516 p@@210 v_1@@209 r@@203 u@@203))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_13853 p@@210 v_1@@209 q@@203 w@@209) (InsidePredicate_13853_33516 q@@203 w@@209 r@@203 u@@203))
)))
(assert (forall ((p@@211 T@Field_38039_38040) (v_1@@210 T@FrameType) (q@@204 T@Field_53810_53811) (w@@210 T@FrameType) (r@@204 T@Field_13755_13814) (u@@204 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_13853 p@@211 v_1@@210 q@@204 w@@210) (InsidePredicate_13853_30093 q@@204 w@@210 r@@204 u@@204)) (InsidePredicate_13813_30093 p@@211 v_1@@210 r@@204 u@@204))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_13853 p@@211 v_1@@210 q@@204 w@@210) (InsidePredicate_13853_30093 q@@204 w@@210 r@@204 u@@204))
)))
(assert (forall ((p@@212 T@Field_38039_38040) (v_1@@211 T@FrameType) (q@@205 T@Field_53810_53811) (w@@211 T@FrameType) (r@@205 T@Field_34511_34512) (u@@205 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_13853 p@@212 v_1@@211 q@@205 w@@211) (InsidePredicate_13853_13788 q@@205 w@@211 r@@205 u@@205)) (InsidePredicate_13813_13788 p@@212 v_1@@211 r@@205 u@@205))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_13853 p@@212 v_1@@211 q@@205 w@@211) (InsidePredicate_13853_13788 q@@205 w@@211 r@@205 u@@205))
)))
(assert (forall ((p@@213 T@Field_38039_38040) (v_1@@212 T@FrameType) (q@@206 T@Field_53810_53811) (w@@212 T@FrameType) (r@@206 T@Field_55007_55008) (u@@206 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_13853 p@@213 v_1@@212 q@@206 w@@212) (InsidePredicate_13853_13893 q@@206 w@@212 r@@206 u@@206)) (InsidePredicate_13813_13893 p@@213 v_1@@212 r@@206 u@@206))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_13853 p@@213 v_1@@212 q@@206 w@@212) (InsidePredicate_13853_13893 q@@206 w@@212 r@@206 u@@206))
)))
(assert (forall ((p@@214 T@Field_38039_38040) (v_1@@213 T@FrameType) (q@@207 T@Field_53810_53811) (w@@213 T@FrameType) (r@@207 T@Field_53810_53811) (u@@207 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_13853 p@@214 v_1@@213 q@@207 w@@213) (InsidePredicate_13853_13853 q@@207 w@@213 r@@207 u@@207)) (InsidePredicate_13813_13853 p@@214 v_1@@213 r@@207 u@@207))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_13853 p@@214 v_1@@213 q@@207 w@@213) (InsidePredicate_13853_13853 q@@207 w@@213 r@@207 u@@207))
)))
(assert (forall ((p@@215 T@Field_38039_38040) (v_1@@214 T@FrameType) (q@@208 T@Field_53810_53811) (w@@214 T@FrameType) (r@@208 T@Field_38039_38040) (u@@208 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_13853 p@@215 v_1@@214 q@@208 w@@214) (InsidePredicate_13853_13813 q@@208 w@@214 r@@208 u@@208)) (InsidePredicate_13813_13813 p@@215 v_1@@214 r@@208 u@@208))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_13853 p@@215 v_1@@214 q@@208 w@@214) (InsidePredicate_13853_13813 q@@208 w@@214 r@@208 u@@208))
)))
(assert (forall ((p@@216 T@Field_38039_38040) (v_1@@215 T@FrameType) (q@@209 T@Field_38039_38040) (w@@215 T@FrameType) (r@@209 T@Field_33516_33517) (u@@209 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_13813 p@@216 v_1@@215 q@@209 w@@215) (InsidePredicate_13813_33516 q@@209 w@@215 r@@209 u@@209)) (InsidePredicate_13813_33516 p@@216 v_1@@215 r@@209 u@@209))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_13813 p@@216 v_1@@215 q@@209 w@@215) (InsidePredicate_13813_33516 q@@209 w@@215 r@@209 u@@209))
)))
(assert (forall ((p@@217 T@Field_38039_38040) (v_1@@216 T@FrameType) (q@@210 T@Field_38039_38040) (w@@216 T@FrameType) (r@@210 T@Field_13755_13814) (u@@210 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_13813 p@@217 v_1@@216 q@@210 w@@216) (InsidePredicate_13813_30093 q@@210 w@@216 r@@210 u@@210)) (InsidePredicate_13813_30093 p@@217 v_1@@216 r@@210 u@@210))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_13813 p@@217 v_1@@216 q@@210 w@@216) (InsidePredicate_13813_30093 q@@210 w@@216 r@@210 u@@210))
)))
(assert (forall ((p@@218 T@Field_38039_38040) (v_1@@217 T@FrameType) (q@@211 T@Field_38039_38040) (w@@217 T@FrameType) (r@@211 T@Field_34511_34512) (u@@211 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_13813 p@@218 v_1@@217 q@@211 w@@217) (InsidePredicate_13813_13788 q@@211 w@@217 r@@211 u@@211)) (InsidePredicate_13813_13788 p@@218 v_1@@217 r@@211 u@@211))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_13813 p@@218 v_1@@217 q@@211 w@@217) (InsidePredicate_13813_13788 q@@211 w@@217 r@@211 u@@211))
)))
(assert (forall ((p@@219 T@Field_38039_38040) (v_1@@218 T@FrameType) (q@@212 T@Field_38039_38040) (w@@218 T@FrameType) (r@@212 T@Field_55007_55008) (u@@212 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_13813 p@@219 v_1@@218 q@@212 w@@218) (InsidePredicate_13813_13893 q@@212 w@@218 r@@212 u@@212)) (InsidePredicate_13813_13893 p@@219 v_1@@218 r@@212 u@@212))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_13813 p@@219 v_1@@218 q@@212 w@@218) (InsidePredicate_13813_13893 q@@212 w@@218 r@@212 u@@212))
)))
(assert (forall ((p@@220 T@Field_38039_38040) (v_1@@219 T@FrameType) (q@@213 T@Field_38039_38040) (w@@219 T@FrameType) (r@@213 T@Field_53810_53811) (u@@213 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_13813 p@@220 v_1@@219 q@@213 w@@219) (InsidePredicate_13813_13853 q@@213 w@@219 r@@213 u@@213)) (InsidePredicate_13813_13853 p@@220 v_1@@219 r@@213 u@@213))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_13813 p@@220 v_1@@219 q@@213 w@@219) (InsidePredicate_13813_13853 q@@213 w@@219 r@@213 u@@213))
)))
(assert (forall ((p@@221 T@Field_38039_38040) (v_1@@220 T@FrameType) (q@@214 T@Field_38039_38040) (w@@220 T@FrameType) (r@@214 T@Field_38039_38040) (u@@214 T@FrameType) ) (!  (=> (and (InsidePredicate_13813_13813 p@@221 v_1@@220 q@@214 w@@220) (InsidePredicate_13813_13813 q@@214 w@@220 r@@214 u@@214)) (InsidePredicate_13813_13813 p@@221 v_1@@220 r@@214 u@@214))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13813_13813 p@@221 v_1@@220 q@@214 w@@220) (InsidePredicate_13813_13813 q@@214 w@@220 r@@214 u@@214))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Unfolding1Mask@2 () T@PolymorphicMapType_30054)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_30054)
(declare-fun UnfoldingHeap@0 () T@PolymorphicMapType_30033)
(declare-fun x@@29 () T@Ref)
(declare-fun Unfolding1Mask@3 () T@PolymorphicMapType_30054)
(declare-fun Heap@@92 () T@PolymorphicMapType_30033)
(declare-fun Heap@0 () T@PolymorphicMapType_30033)
(declare-fun Mask@0 () T@PolymorphicMapType_30054)
(declare-fun Heap@1 () T@PolymorphicMapType_30033)
(declare-fun newPMask@0 () T@PolymorphicMapType_30582)
(declare-fun Heap@2 () T@PolymorphicMapType_30033)
(declare-fun Heap@3 () T@PolymorphicMapType_30033)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_30054)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_30054)
(declare-fun FrameFragment_1186 (Int) T@FrameType)
(declare-fun Unfolding1Mask@0 () T@PolymorphicMapType_30054)
(declare-fun Unfolding1Mask@1 () T@PolymorphicMapType_30054)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_13756 (T@Ref) T@FrameType)
(set-info :boogie-vc-id test01)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon4_correct  (=> (= Unfolding1Mask@2 (PolymorphicMapType_30054 (|PolymorphicMapType_30054_13755_13756#PolymorphicMapType_30054| UnfoldingMask@2) (store (|PolymorphicMapType_30054_13788_13789#PolymorphicMapType_30054| UnfoldingMask@2) null (Q (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| UnfoldingHeap@0) x@@29 g)) (- (select (|PolymorphicMapType_30054_13788_13789#PolymorphicMapType_30054| UnfoldingMask@2) null (Q (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| UnfoldingHeap@0) x@@29 g))) FullPerm)) (|PolymorphicMapType_30054_13753_1186#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13813_13814#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13893_13894#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13853_13854#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13759_13760#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13755_13789#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13755_53#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13755_155203#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13788_13756#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13788_1186#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13788_53#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13788_155614#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13813_13756#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13813_1186#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13813_53#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13813_156025#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13893_13756#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13893_1186#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13893_53#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13893_156436#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13853_13756#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13853_1186#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13853_53#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13853_156847#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13759_13756#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13759_1186#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13759_53#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13759_157258#PolymorphicMapType_30054| UnfoldingMask@2))) (=> (and (and (not (= (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| UnfoldingHeap@0) x@@29 g) null)) (= Unfolding1Mask@3 (PolymorphicMapType_30054 (|PolymorphicMapType_30054_13755_13756#PolymorphicMapType_30054| Unfolding1Mask@2) (|PolymorphicMapType_30054_13788_13789#PolymorphicMapType_30054| Unfolding1Mask@2) (store (|PolymorphicMapType_30054_13753_1186#PolymorphicMapType_30054| Unfolding1Mask@2) (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| UnfoldingHeap@0) x@@29 g) f_7 (+ (select (|PolymorphicMapType_30054_13753_1186#PolymorphicMapType_30054| Unfolding1Mask@2) (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| UnfoldingHeap@0) x@@29 g) f_7) FullPerm)) (|PolymorphicMapType_30054_13813_13814#PolymorphicMapType_30054| Unfolding1Mask@2) (|PolymorphicMapType_30054_13893_13894#PolymorphicMapType_30054| Unfolding1Mask@2) (|PolymorphicMapType_30054_13853_13854#PolymorphicMapType_30054| Unfolding1Mask@2) (|PolymorphicMapType_30054_13759_13760#PolymorphicMapType_30054| Unfolding1Mask@2) (|PolymorphicMapType_30054_13755_13789#PolymorphicMapType_30054| Unfolding1Mask@2) (|PolymorphicMapType_30054_13755_53#PolymorphicMapType_30054| Unfolding1Mask@2) (|PolymorphicMapType_30054_13755_155203#PolymorphicMapType_30054| Unfolding1Mask@2) (|PolymorphicMapType_30054_13788_13756#PolymorphicMapType_30054| Unfolding1Mask@2) (|PolymorphicMapType_30054_13788_1186#PolymorphicMapType_30054| Unfolding1Mask@2) (|PolymorphicMapType_30054_13788_53#PolymorphicMapType_30054| Unfolding1Mask@2) (|PolymorphicMapType_30054_13788_155614#PolymorphicMapType_30054| Unfolding1Mask@2) (|PolymorphicMapType_30054_13813_13756#PolymorphicMapType_30054| Unfolding1Mask@2) (|PolymorphicMapType_30054_13813_1186#PolymorphicMapType_30054| Unfolding1Mask@2) (|PolymorphicMapType_30054_13813_53#PolymorphicMapType_30054| Unfolding1Mask@2) (|PolymorphicMapType_30054_13813_156025#PolymorphicMapType_30054| Unfolding1Mask@2) (|PolymorphicMapType_30054_13893_13756#PolymorphicMapType_30054| Unfolding1Mask@2) (|PolymorphicMapType_30054_13893_1186#PolymorphicMapType_30054| Unfolding1Mask@2) (|PolymorphicMapType_30054_13893_53#PolymorphicMapType_30054| Unfolding1Mask@2) (|PolymorphicMapType_30054_13893_156436#PolymorphicMapType_30054| Unfolding1Mask@2) (|PolymorphicMapType_30054_13853_13756#PolymorphicMapType_30054| Unfolding1Mask@2) (|PolymorphicMapType_30054_13853_1186#PolymorphicMapType_30054| Unfolding1Mask@2) (|PolymorphicMapType_30054_13853_53#PolymorphicMapType_30054| Unfolding1Mask@2) (|PolymorphicMapType_30054_13853_156847#PolymorphicMapType_30054| Unfolding1Mask@2) (|PolymorphicMapType_30054_13759_13756#PolymorphicMapType_30054| Unfolding1Mask@2) (|PolymorphicMapType_30054_13759_1186#PolymorphicMapType_30054| Unfolding1Mask@2) (|PolymorphicMapType_30054_13759_53#PolymorphicMapType_30054| Unfolding1Mask@2) (|PolymorphicMapType_30054_13759_157258#PolymorphicMapType_30054| Unfolding1Mask@2)))) (and (state UnfoldingHeap@0 Unfolding1Mask@3) (state UnfoldingHeap@0 Unfolding1Mask@3))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (HasDirectPerm_13755_13756 Unfolding1Mask@3 x@@29 g)) (=> (HasDirectPerm_13755_13756 Unfolding1Mask@3 x@@29 g) (and (=> (= (ControlFlow 0 2) (- 0 4)) (HasDirectPerm_13755_13756 Unfolding1Mask@3 x@@29 g)) (=> (HasDirectPerm_13755_13756 Unfolding1Mask@3 x@@29 g) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_13753_1186 Unfolding1Mask@3 (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g) f_7)) (=> (HasDirectPerm_13753_1186 Unfolding1Mask@3 (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g) f_7) (=> (= Heap@0 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@92) (store (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)) (PolymorphicMapType_30582 (store (|PolymorphicMapType_30582_13753_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g) f_7 true) (|PolymorphicMapType_30582_13755_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_13753_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_13753_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_13753_134784#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_33516_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_33516_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_33516_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_33516_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_33516_135832#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_34511_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_34511_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_34511_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_34511_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_34511_136880#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_38039_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_38039_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_38039_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_38039_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_38039_137928#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_53810_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_53810_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_53810_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_53810_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_53810_138976#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_55007_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_55007_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_55007_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_55007_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_55007_140024#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))))) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@92))) (=> (and (state Heap@0 Mask@0) (= Heap@1 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@0) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@0) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@0) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@0) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@0) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@0) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@0) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@0) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@0) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@0) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@0) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@0) (store (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29) (PolymorphicMapType_30582 (|PolymorphicMapType_30582_13753_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29))) (store (|PolymorphicMapType_30582_13755_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29))) x@@29 g true) (|PolymorphicMapType_30582_13753_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29))) (|PolymorphicMapType_30582_13753_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29))) (|PolymorphicMapType_30582_13753_134784#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29))) (|PolymorphicMapType_30582_33516_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29))) (|PolymorphicMapType_30582_33516_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29))) (|PolymorphicMapType_30582_33516_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29))) (|PolymorphicMapType_30582_33516_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29))) (|PolymorphicMapType_30582_33516_135832#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29))) (|PolymorphicMapType_30582_34511_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29))) (|PolymorphicMapType_30582_34511_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29))) (|PolymorphicMapType_30582_34511_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29))) (|PolymorphicMapType_30582_34511_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29))) (|PolymorphicMapType_30582_34511_136880#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29))) (|PolymorphicMapType_30582_38039_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29))) (|PolymorphicMapType_30582_38039_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29))) (|PolymorphicMapType_30582_38039_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29))) (|PolymorphicMapType_30582_38039_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29))) (|PolymorphicMapType_30582_38039_137928#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29))) (|PolymorphicMapType_30582_53810_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29))) (|PolymorphicMapType_30582_53810_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29))) (|PolymorphicMapType_30582_53810_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29))) (|PolymorphicMapType_30582_53810_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29))) (|PolymorphicMapType_30582_53810_138976#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29))) (|PolymorphicMapType_30582_55007_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29))) (|PolymorphicMapType_30582_55007_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29))) (|PolymorphicMapType_30582_55007_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29))) (|PolymorphicMapType_30582_55007_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29))) (|PolymorphicMapType_30582_55007_140024#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@0) null (|P#sm| x@@29))))) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@0) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@0) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@0) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@0) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@0) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@0) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@0) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@0) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@0) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@0) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@0) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@0) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@0) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@0) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@0) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@0) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@0)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_41 T@Ref) (f_21 T@Field_33419_1186) ) (!  (=> (or (select (|PolymorphicMapType_30582_13753_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29))) o_41 f_21) (select (|PolymorphicMapType_30582_13753_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) x@@29 g)))) o_41 f_21)) (select (|PolymorphicMapType_30582_13753_1186#PolymorphicMapType_30582| newPMask@0) o_41 f_21))
 :qid |stdinbpl.1152:31|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_30582_13753_1186#PolymorphicMapType_30582| newPMask@0) o_41 f_21))
)) (forall ((o_41@@0 T@Ref) (f_21@@0 T@Field_30106_30107) ) (!  (=> (or (select (|PolymorphicMapType_30582_13755_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29))) o_41@@0 f_21@@0) (select (|PolymorphicMapType_30582_13755_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) x@@29 g)))) o_41@@0 f_21@@0)) (select (|PolymorphicMapType_30582_13755_13756#PolymorphicMapType_30582| newPMask@0) o_41@@0 f_21@@0))
 :qid |stdinbpl.1152:31|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_30582_13755_13756#PolymorphicMapType_30582| newPMask@0) o_41@@0 f_21@@0))
))) (forall ((o_41@@1 T@Ref) (f_21@@1 T@Field_30093_53) ) (!  (=> (or (select (|PolymorphicMapType_30582_13753_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29))) o_41@@1 f_21@@1) (select (|PolymorphicMapType_30582_13753_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) x@@29 g)))) o_41@@1 f_21@@1)) (select (|PolymorphicMapType_30582_13753_53#PolymorphicMapType_30582| newPMask@0) o_41@@1 f_21@@1))
 :qid |stdinbpl.1152:31|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_30582_13753_53#PolymorphicMapType_30582| newPMask@0) o_41@@1 f_21@@1))
))) (forall ((o_41@@2 T@Ref) (f_21@@2 T@Field_13755_13814) ) (!  (=> (or (select (|PolymorphicMapType_30582_13753_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29))) o_41@@2 f_21@@2) (select (|PolymorphicMapType_30582_13753_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) x@@29 g)))) o_41@@2 f_21@@2)) (select (|PolymorphicMapType_30582_13753_33517#PolymorphicMapType_30582| newPMask@0) o_41@@2 f_21@@2))
 :qid |stdinbpl.1152:31|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_30582_13753_33517#PolymorphicMapType_30582| newPMask@0) o_41@@2 f_21@@2))
))) (forall ((o_41@@3 T@Ref) (f_21@@3 T@Field_13755_33534) ) (!  (=> (or (select (|PolymorphicMapType_30582_13753_134784#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29))) o_41@@3 f_21@@3) (select (|PolymorphicMapType_30582_13753_134784#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) x@@29 g)))) o_41@@3 f_21@@3)) (select (|PolymorphicMapType_30582_13753_134784#PolymorphicMapType_30582| newPMask@0) o_41@@3 f_21@@3))
 :qid |stdinbpl.1152:31|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_30582_13753_134784#PolymorphicMapType_30582| newPMask@0) o_41@@3 f_21@@3))
))) (forall ((o_41@@4 T@Ref) (f_21@@4 T@Field_33516_1186) ) (!  (=> (or (select (|PolymorphicMapType_30582_33516_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29))) o_41@@4 f_21@@4) (select (|PolymorphicMapType_30582_33516_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) x@@29 g)))) o_41@@4 f_21@@4)) (select (|PolymorphicMapType_30582_33516_1186#PolymorphicMapType_30582| newPMask@0) o_41@@4 f_21@@4))
 :qid |stdinbpl.1152:31|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_30582_33516_1186#PolymorphicMapType_30582| newPMask@0) o_41@@4 f_21@@4))
))) (forall ((o_41@@5 T@Ref) (f_21@@5 T@Field_33516_13756) ) (!  (=> (or (select (|PolymorphicMapType_30582_33516_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29))) o_41@@5 f_21@@5) (select (|PolymorphicMapType_30582_33516_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) x@@29 g)))) o_41@@5 f_21@@5)) (select (|PolymorphicMapType_30582_33516_13756#PolymorphicMapType_30582| newPMask@0) o_41@@5 f_21@@5))
 :qid |stdinbpl.1152:31|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_30582_33516_13756#PolymorphicMapType_30582| newPMask@0) o_41@@5 f_21@@5))
))) (forall ((o_41@@6 T@Ref) (f_21@@6 T@Field_33516_53) ) (!  (=> (or (select (|PolymorphicMapType_30582_33516_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29))) o_41@@6 f_21@@6) (select (|PolymorphicMapType_30582_33516_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) x@@29 g)))) o_41@@6 f_21@@6)) (select (|PolymorphicMapType_30582_33516_53#PolymorphicMapType_30582| newPMask@0) o_41@@6 f_21@@6))
 :qid |stdinbpl.1152:31|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_30582_33516_53#PolymorphicMapType_30582| newPMask@0) o_41@@6 f_21@@6))
))) (forall ((o_41@@7 T@Ref) (f_21@@7 T@Field_33516_33517) ) (!  (=> (or (select (|PolymorphicMapType_30582_33516_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29))) o_41@@7 f_21@@7) (select (|PolymorphicMapType_30582_33516_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) x@@29 g)))) o_41@@7 f_21@@7)) (select (|PolymorphicMapType_30582_33516_33517#PolymorphicMapType_30582| newPMask@0) o_41@@7 f_21@@7))
 :qid |stdinbpl.1152:31|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_30582_33516_33517#PolymorphicMapType_30582| newPMask@0) o_41@@7 f_21@@7))
))) (forall ((o_41@@8 T@Ref) (f_21@@8 T@Field_33529_33534) ) (!  (=> (or (select (|PolymorphicMapType_30582_33516_135832#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29))) o_41@@8 f_21@@8) (select (|PolymorphicMapType_30582_33516_135832#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) x@@29 g)))) o_41@@8 f_21@@8)) (select (|PolymorphicMapType_30582_33516_135832#PolymorphicMapType_30582| newPMask@0) o_41@@8 f_21@@8))
 :qid |stdinbpl.1152:31|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_30582_33516_135832#PolymorphicMapType_30582| newPMask@0) o_41@@8 f_21@@8))
))) (forall ((o_41@@9 T@Ref) (f_21@@9 T@Field_34511_1186) ) (!  (=> (or (select (|PolymorphicMapType_30582_34511_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29))) o_41@@9 f_21@@9) (select (|PolymorphicMapType_30582_34511_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) x@@29 g)))) o_41@@9 f_21@@9)) (select (|PolymorphicMapType_30582_34511_1186#PolymorphicMapType_30582| newPMask@0) o_41@@9 f_21@@9))
 :qid |stdinbpl.1152:31|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_30582_34511_1186#PolymorphicMapType_30582| newPMask@0) o_41@@9 f_21@@9))
))) (forall ((o_41@@10 T@Ref) (f_21@@10 T@Field_34511_13756) ) (!  (=> (or (select (|PolymorphicMapType_30582_34511_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29))) o_41@@10 f_21@@10) (select (|PolymorphicMapType_30582_34511_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) x@@29 g)))) o_41@@10 f_21@@10)) (select (|PolymorphicMapType_30582_34511_13756#PolymorphicMapType_30582| newPMask@0) o_41@@10 f_21@@10))
 :qid |stdinbpl.1152:31|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_30582_34511_13756#PolymorphicMapType_30582| newPMask@0) o_41@@10 f_21@@10))
))) (forall ((o_41@@11 T@Ref) (f_21@@11 T@Field_34511_53) ) (!  (=> (or (select (|PolymorphicMapType_30582_34511_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29))) o_41@@11 f_21@@11) (select (|PolymorphicMapType_30582_34511_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) x@@29 g)))) o_41@@11 f_21@@11)) (select (|PolymorphicMapType_30582_34511_53#PolymorphicMapType_30582| newPMask@0) o_41@@11 f_21@@11))
 :qid |stdinbpl.1152:31|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_30582_34511_53#PolymorphicMapType_30582| newPMask@0) o_41@@11 f_21@@11))
))) (forall ((o_41@@12 T@Ref) (f_21@@12 T@Field_34511_34512) ) (!  (=> (or (select (|PolymorphicMapType_30582_34511_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29))) o_41@@12 f_21@@12) (select (|PolymorphicMapType_30582_34511_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) x@@29 g)))) o_41@@12 f_21@@12)) (select (|PolymorphicMapType_30582_34511_33517#PolymorphicMapType_30582| newPMask@0) o_41@@12 f_21@@12))
 :qid |stdinbpl.1152:31|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_30582_34511_33517#PolymorphicMapType_30582| newPMask@0) o_41@@12 f_21@@12))
))) (forall ((o_41@@13 T@Ref) (f_21@@13 T@Field_35892_35897) ) (!  (=> (or (select (|PolymorphicMapType_30582_34511_136880#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29))) o_41@@13 f_21@@13) (select (|PolymorphicMapType_30582_34511_136880#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) x@@29 g)))) o_41@@13 f_21@@13)) (select (|PolymorphicMapType_30582_34511_136880#PolymorphicMapType_30582| newPMask@0) o_41@@13 f_21@@13))
 :qid |stdinbpl.1152:31|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_30582_34511_136880#PolymorphicMapType_30582| newPMask@0) o_41@@13 f_21@@13))
))) (forall ((o_41@@14 T@Ref) (f_21@@14 T@Field_13813_1186) ) (!  (=> (or (select (|PolymorphicMapType_30582_38039_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29))) o_41@@14 f_21@@14) (select (|PolymorphicMapType_30582_38039_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) x@@29 g)))) o_41@@14 f_21@@14)) (select (|PolymorphicMapType_30582_38039_1186#PolymorphicMapType_30582| newPMask@0) o_41@@14 f_21@@14))
 :qid |stdinbpl.1152:31|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_30582_38039_1186#PolymorphicMapType_30582| newPMask@0) o_41@@14 f_21@@14))
))) (forall ((o_41@@15 T@Ref) (f_21@@15 T@Field_13813_13756) ) (!  (=> (or (select (|PolymorphicMapType_30582_38039_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29))) o_41@@15 f_21@@15) (select (|PolymorphicMapType_30582_38039_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) x@@29 g)))) o_41@@15 f_21@@15)) (select (|PolymorphicMapType_30582_38039_13756#PolymorphicMapType_30582| newPMask@0) o_41@@15 f_21@@15))
 :qid |stdinbpl.1152:31|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_30582_38039_13756#PolymorphicMapType_30582| newPMask@0) o_41@@15 f_21@@15))
))) (forall ((o_41@@16 T@Ref) (f_21@@16 T@Field_13813_53) ) (!  (=> (or (select (|PolymorphicMapType_30582_38039_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29))) o_41@@16 f_21@@16) (select (|PolymorphicMapType_30582_38039_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) x@@29 g)))) o_41@@16 f_21@@16)) (select (|PolymorphicMapType_30582_38039_53#PolymorphicMapType_30582| newPMask@0) o_41@@16 f_21@@16))
 :qid |stdinbpl.1152:31|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_30582_38039_53#PolymorphicMapType_30582| newPMask@0) o_41@@16 f_21@@16))
))) (forall ((o_41@@17 T@Ref) (f_21@@17 T@Field_38039_38040) ) (!  (=> (or (select (|PolymorphicMapType_30582_38039_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29))) o_41@@17 f_21@@17) (select (|PolymorphicMapType_30582_38039_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) x@@29 g)))) o_41@@17 f_21@@17)) (select (|PolymorphicMapType_30582_38039_33517#PolymorphicMapType_30582| newPMask@0) o_41@@17 f_21@@17))
 :qid |stdinbpl.1152:31|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_30582_38039_33517#PolymorphicMapType_30582| newPMask@0) o_41@@17 f_21@@17))
))) (forall ((o_41@@18 T@Ref) (f_21@@18 T@Field_38052_38057) ) (!  (=> (or (select (|PolymorphicMapType_30582_38039_137928#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29))) o_41@@18 f_21@@18) (select (|PolymorphicMapType_30582_38039_137928#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) x@@29 g)))) o_41@@18 f_21@@18)) (select (|PolymorphicMapType_30582_38039_137928#PolymorphicMapType_30582| newPMask@0) o_41@@18 f_21@@18))
 :qid |stdinbpl.1152:31|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_30582_38039_137928#PolymorphicMapType_30582| newPMask@0) o_41@@18 f_21@@18))
))) (forall ((o_41@@19 T@Ref) (f_21@@19 T@Field_13853_1186) ) (!  (=> (or (select (|PolymorphicMapType_30582_53810_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29))) o_41@@19 f_21@@19) (select (|PolymorphicMapType_30582_53810_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) x@@29 g)))) o_41@@19 f_21@@19)) (select (|PolymorphicMapType_30582_53810_1186#PolymorphicMapType_30582| newPMask@0) o_41@@19 f_21@@19))
 :qid |stdinbpl.1152:31|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_30582_53810_1186#PolymorphicMapType_30582| newPMask@0) o_41@@19 f_21@@19))
))) (forall ((o_41@@20 T@Ref) (f_21@@20 T@Field_13853_13756) ) (!  (=> (or (select (|PolymorphicMapType_30582_53810_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29))) o_41@@20 f_21@@20) (select (|PolymorphicMapType_30582_53810_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) x@@29 g)))) o_41@@20 f_21@@20)) (select (|PolymorphicMapType_30582_53810_13756#PolymorphicMapType_30582| newPMask@0) o_41@@20 f_21@@20))
 :qid |stdinbpl.1152:31|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_30582_53810_13756#PolymorphicMapType_30582| newPMask@0) o_41@@20 f_21@@20))
))) (forall ((o_41@@21 T@Ref) (f_21@@21 T@Field_13853_53) ) (!  (=> (or (select (|PolymorphicMapType_30582_53810_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29))) o_41@@21 f_21@@21) (select (|PolymorphicMapType_30582_53810_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) x@@29 g)))) o_41@@21 f_21@@21)) (select (|PolymorphicMapType_30582_53810_53#PolymorphicMapType_30582| newPMask@0) o_41@@21 f_21@@21))
 :qid |stdinbpl.1152:31|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_30582_53810_53#PolymorphicMapType_30582| newPMask@0) o_41@@21 f_21@@21))
))) (forall ((o_41@@22 T@Ref) (f_21@@22 T@Field_53810_53811) ) (!  (=> (or (select (|PolymorphicMapType_30582_53810_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29))) o_41@@22 f_21@@22) (select (|PolymorphicMapType_30582_53810_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) x@@29 g)))) o_41@@22 f_21@@22)) (select (|PolymorphicMapType_30582_53810_33517#PolymorphicMapType_30582| newPMask@0) o_41@@22 f_21@@22))
 :qid |stdinbpl.1152:31|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_30582_53810_33517#PolymorphicMapType_30582| newPMask@0) o_41@@22 f_21@@22))
))) (forall ((o_41@@23 T@Ref) (f_21@@23 T@Field_53823_53828) ) (!  (=> (or (select (|PolymorphicMapType_30582_53810_138976#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29))) o_41@@23 f_21@@23) (select (|PolymorphicMapType_30582_53810_138976#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) x@@29 g)))) o_41@@23 f_21@@23)) (select (|PolymorphicMapType_30582_53810_138976#PolymorphicMapType_30582| newPMask@0) o_41@@23 f_21@@23))
 :qid |stdinbpl.1152:31|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_30582_53810_138976#PolymorphicMapType_30582| newPMask@0) o_41@@23 f_21@@23))
))) (forall ((o_41@@24 T@Ref) (f_21@@24 T@Field_13893_1186) ) (!  (=> (or (select (|PolymorphicMapType_30582_55007_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29))) o_41@@24 f_21@@24) (select (|PolymorphicMapType_30582_55007_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) x@@29 g)))) o_41@@24 f_21@@24)) (select (|PolymorphicMapType_30582_55007_1186#PolymorphicMapType_30582| newPMask@0) o_41@@24 f_21@@24))
 :qid |stdinbpl.1152:31|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_30582_55007_1186#PolymorphicMapType_30582| newPMask@0) o_41@@24 f_21@@24))
))) (forall ((o_41@@25 T@Ref) (f_21@@25 T@Field_13893_13756) ) (!  (=> (or (select (|PolymorphicMapType_30582_55007_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29))) o_41@@25 f_21@@25) (select (|PolymorphicMapType_30582_55007_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) x@@29 g)))) o_41@@25 f_21@@25)) (select (|PolymorphicMapType_30582_55007_13756#PolymorphicMapType_30582| newPMask@0) o_41@@25 f_21@@25))
 :qid |stdinbpl.1152:31|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_30582_55007_13756#PolymorphicMapType_30582| newPMask@0) o_41@@25 f_21@@25))
))) (forall ((o_41@@26 T@Ref) (f_21@@26 T@Field_13893_53) ) (!  (=> (or (select (|PolymorphicMapType_30582_55007_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29))) o_41@@26 f_21@@26) (select (|PolymorphicMapType_30582_55007_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) x@@29 g)))) o_41@@26 f_21@@26)) (select (|PolymorphicMapType_30582_55007_53#PolymorphicMapType_30582| newPMask@0) o_41@@26 f_21@@26))
 :qid |stdinbpl.1152:31|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_30582_55007_53#PolymorphicMapType_30582| newPMask@0) o_41@@26 f_21@@26))
))) (forall ((o_41@@27 T@Ref) (f_21@@27 T@Field_55007_55008) ) (!  (=> (or (select (|PolymorphicMapType_30582_55007_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29))) o_41@@27 f_21@@27) (select (|PolymorphicMapType_30582_55007_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) x@@29 g)))) o_41@@27 f_21@@27)) (select (|PolymorphicMapType_30582_55007_33517#PolymorphicMapType_30582| newPMask@0) o_41@@27 f_21@@27))
 :qid |stdinbpl.1152:31|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_30582_55007_33517#PolymorphicMapType_30582| newPMask@0) o_41@@27 f_21@@27))
))) (forall ((o_41@@28 T@Ref) (f_21@@28 T@Field_60385_60390) ) (!  (=> (or (select (|PolymorphicMapType_30582_55007_140024#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29))) o_41@@28 f_21@@28) (select (|PolymorphicMapType_30582_55007_140024#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) x@@29 g)))) o_41@@28 f_21@@28)) (select (|PolymorphicMapType_30582_55007_140024#PolymorphicMapType_30582| newPMask@0) o_41@@28 f_21@@28))
 :qid |stdinbpl.1152:31|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_30582_55007_140024#PolymorphicMapType_30582| newPMask@0) o_41@@28 f_21@@28))
))) (= Heap@2 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@1) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@1) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@1) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@1) (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@1) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@1) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@1) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@1) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@1) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@1) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@1) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@1) (store (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@1) null (|P#sm| x@@29) newPMask@0) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@1) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@1) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@1) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@1) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@1) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@1) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@1) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@1) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@1) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@1) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@1) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@1) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@1) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@1) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@1) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@1) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@1)))) (and (and (state Heap@2 Mask@0) (= Heap@3 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@2) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@2) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@2) (store (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)) (PolymorphicMapType_30582 (store (|PolymorphicMapType_30582_13753_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)))) (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g) f_7 true) (|PolymorphicMapType_30582_13755_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)))) (|PolymorphicMapType_30582_13753_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)))) (|PolymorphicMapType_30582_13753_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)))) (|PolymorphicMapType_30582_13753_134784#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)))) (|PolymorphicMapType_30582_33516_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)))) (|PolymorphicMapType_30582_33516_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)))) (|PolymorphicMapType_30582_33516_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)))) (|PolymorphicMapType_30582_33516_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)))) (|PolymorphicMapType_30582_33516_135832#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)))) (|PolymorphicMapType_30582_34511_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)))) (|PolymorphicMapType_30582_34511_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)))) (|PolymorphicMapType_30582_34511_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)))) (|PolymorphicMapType_30582_34511_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)))) (|PolymorphicMapType_30582_34511_136880#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)))) (|PolymorphicMapType_30582_38039_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)))) (|PolymorphicMapType_30582_38039_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)))) (|PolymorphicMapType_30582_38039_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)))) (|PolymorphicMapType_30582_38039_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)))) (|PolymorphicMapType_30582_38039_137928#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)))) (|PolymorphicMapType_30582_53810_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)))) (|PolymorphicMapType_30582_53810_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)))) (|PolymorphicMapType_30582_53810_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)))) (|PolymorphicMapType_30582_53810_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)))) (|PolymorphicMapType_30582_53810_138976#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)))) (|PolymorphicMapType_30582_55007_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)))) (|PolymorphicMapType_30582_55007_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)))) (|PolymorphicMapType_30582_55007_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)))) (|PolymorphicMapType_30582_55007_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)))) (|PolymorphicMapType_30582_55007_140024#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@2) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@2) x@@29 g)))))) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@2) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@2) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@2) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@2) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@2) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@2) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@2) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@2) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@2) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@2) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@2) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@2) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@2) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@2) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@2) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@2) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@2) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@2) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@2) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@2) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@2) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@2) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@2) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@2) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@2)))) (and (state Heap@3 Mask@0) (= (ControlFlow 0 2) (- 0 1))))) (not (= (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@3) (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@3) x@@29 g) f_7) 0)))))))))))))))
(let ((anon6_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 8) 2)) anon4_correct)))
(let ((anon6_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (<= FullPerm (select (|PolymorphicMapType_30054_13788_13789#PolymorphicMapType_30054| UnfoldingMask@2) null (Q (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| UnfoldingHeap@0) x@@29 g))))) (=> (<= FullPerm (select (|PolymorphicMapType_30054_13788_13789#PolymorphicMapType_30054| UnfoldingMask@2) null (Q (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| UnfoldingHeap@0) x@@29 g)))) (=> (= (ControlFlow 0 6) 2) anon4_correct))))))
(let ((anon2_correct  (=> (and (and (= UnfoldingMask@0 (PolymorphicMapType_30054 (|PolymorphicMapType_30054_13755_13756#PolymorphicMapType_30054| Mask@0) (|PolymorphicMapType_30054_13788_13789#PolymorphicMapType_30054| Mask@0) (|PolymorphicMapType_30054_13753_1186#PolymorphicMapType_30054| Mask@0) (|PolymorphicMapType_30054_13813_13814#PolymorphicMapType_30054| Mask@0) (|PolymorphicMapType_30054_13893_13894#PolymorphicMapType_30054| Mask@0) (|PolymorphicMapType_30054_13853_13854#PolymorphicMapType_30054| Mask@0) (store (|PolymorphicMapType_30054_13759_13760#PolymorphicMapType_30054| Mask@0) null (P x@@29) (- (select (|PolymorphicMapType_30054_13759_13760#PolymorphicMapType_30054| Mask@0) null (P x@@29)) FullPerm)) (|PolymorphicMapType_30054_13755_13789#PolymorphicMapType_30054| Mask@0) (|PolymorphicMapType_30054_13755_53#PolymorphicMapType_30054| Mask@0) (|PolymorphicMapType_30054_13755_155203#PolymorphicMapType_30054| Mask@0) (|PolymorphicMapType_30054_13788_13756#PolymorphicMapType_30054| Mask@0) (|PolymorphicMapType_30054_13788_1186#PolymorphicMapType_30054| Mask@0) (|PolymorphicMapType_30054_13788_53#PolymorphicMapType_30054| Mask@0) (|PolymorphicMapType_30054_13788_155614#PolymorphicMapType_30054| Mask@0) (|PolymorphicMapType_30054_13813_13756#PolymorphicMapType_30054| Mask@0) (|PolymorphicMapType_30054_13813_1186#PolymorphicMapType_30054| Mask@0) (|PolymorphicMapType_30054_13813_53#PolymorphicMapType_30054| Mask@0) (|PolymorphicMapType_30054_13813_156025#PolymorphicMapType_30054| Mask@0) (|PolymorphicMapType_30054_13893_13756#PolymorphicMapType_30054| Mask@0) (|PolymorphicMapType_30054_13893_1186#PolymorphicMapType_30054| Mask@0) (|PolymorphicMapType_30054_13893_53#PolymorphicMapType_30054| Mask@0) (|PolymorphicMapType_30054_13893_156436#PolymorphicMapType_30054| Mask@0) (|PolymorphicMapType_30054_13853_13756#PolymorphicMapType_30054| Mask@0) (|PolymorphicMapType_30054_13853_1186#PolymorphicMapType_30054| Mask@0) (|PolymorphicMapType_30054_13853_53#PolymorphicMapType_30054| Mask@0) (|PolymorphicMapType_30054_13853_156847#PolymorphicMapType_30054| Mask@0) (|PolymorphicMapType_30054_13759_13756#PolymorphicMapType_30054| Mask@0) (|PolymorphicMapType_30054_13759_1186#PolymorphicMapType_30054| Mask@0) (|PolymorphicMapType_30054_13759_53#PolymorphicMapType_30054| Mask@0) (|PolymorphicMapType_30054_13759_157258#PolymorphicMapType_30054| Mask@0))) (not (= x@@29 null))) (and (= UnfoldingMask@1 (PolymorphicMapType_30054 (store (|PolymorphicMapType_30054_13755_13756#PolymorphicMapType_30054| UnfoldingMask@0) x@@29 g (+ (select (|PolymorphicMapType_30054_13755_13756#PolymorphicMapType_30054| UnfoldingMask@0) x@@29 g) FullPerm)) (|PolymorphicMapType_30054_13788_13789#PolymorphicMapType_30054| UnfoldingMask@0) (|PolymorphicMapType_30054_13753_1186#PolymorphicMapType_30054| UnfoldingMask@0) (|PolymorphicMapType_30054_13813_13814#PolymorphicMapType_30054| UnfoldingMask@0) (|PolymorphicMapType_30054_13893_13894#PolymorphicMapType_30054| UnfoldingMask@0) (|PolymorphicMapType_30054_13853_13854#PolymorphicMapType_30054| UnfoldingMask@0) (|PolymorphicMapType_30054_13759_13760#PolymorphicMapType_30054| UnfoldingMask@0) (|PolymorphicMapType_30054_13755_13789#PolymorphicMapType_30054| UnfoldingMask@0) (|PolymorphicMapType_30054_13755_53#PolymorphicMapType_30054| UnfoldingMask@0) (|PolymorphicMapType_30054_13755_155203#PolymorphicMapType_30054| UnfoldingMask@0) (|PolymorphicMapType_30054_13788_13756#PolymorphicMapType_30054| UnfoldingMask@0) (|PolymorphicMapType_30054_13788_1186#PolymorphicMapType_30054| UnfoldingMask@0) (|PolymorphicMapType_30054_13788_53#PolymorphicMapType_30054| UnfoldingMask@0) (|PolymorphicMapType_30054_13788_155614#PolymorphicMapType_30054| UnfoldingMask@0) (|PolymorphicMapType_30054_13813_13756#PolymorphicMapType_30054| UnfoldingMask@0) (|PolymorphicMapType_30054_13813_1186#PolymorphicMapType_30054| UnfoldingMask@0) (|PolymorphicMapType_30054_13813_53#PolymorphicMapType_30054| UnfoldingMask@0) (|PolymorphicMapType_30054_13813_156025#PolymorphicMapType_30054| UnfoldingMask@0) (|PolymorphicMapType_30054_13893_13756#PolymorphicMapType_30054| UnfoldingMask@0) (|PolymorphicMapType_30054_13893_1186#PolymorphicMapType_30054| UnfoldingMask@0) (|PolymorphicMapType_30054_13893_53#PolymorphicMapType_30054| UnfoldingMask@0) (|PolymorphicMapType_30054_13893_156436#PolymorphicMapType_30054| UnfoldingMask@0) (|PolymorphicMapType_30054_13853_13756#PolymorphicMapType_30054| UnfoldingMask@0) (|PolymorphicMapType_30054_13853_1186#PolymorphicMapType_30054| UnfoldingMask@0) (|PolymorphicMapType_30054_13853_53#PolymorphicMapType_30054| UnfoldingMask@0) (|PolymorphicMapType_30054_13853_156847#PolymorphicMapType_30054| UnfoldingMask@0) (|PolymorphicMapType_30054_13759_13756#PolymorphicMapType_30054| UnfoldingMask@0) (|PolymorphicMapType_30054_13759_1186#PolymorphicMapType_30054| UnfoldingMask@0) (|PolymorphicMapType_30054_13759_53#PolymorphicMapType_30054| UnfoldingMask@0) (|PolymorphicMapType_30054_13759_157258#PolymorphicMapType_30054| UnfoldingMask@0))) (state Heap@@92 UnfoldingMask@1))) (=> (and (and (and (and (= UnfoldingMask@2 (PolymorphicMapType_30054 (|PolymorphicMapType_30054_13755_13756#PolymorphicMapType_30054| UnfoldingMask@1) (store (|PolymorphicMapType_30054_13788_13789#PolymorphicMapType_30054| UnfoldingMask@1) null (Q (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)) (+ (select (|PolymorphicMapType_30054_13788_13789#PolymorphicMapType_30054| UnfoldingMask@1) null (Q (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g))) FullPerm)) (|PolymorphicMapType_30054_13753_1186#PolymorphicMapType_30054| UnfoldingMask@1) (|PolymorphicMapType_30054_13813_13814#PolymorphicMapType_30054| UnfoldingMask@1) (|PolymorphicMapType_30054_13893_13894#PolymorphicMapType_30054| UnfoldingMask@1) (|PolymorphicMapType_30054_13853_13854#PolymorphicMapType_30054| UnfoldingMask@1) (|PolymorphicMapType_30054_13759_13760#PolymorphicMapType_30054| UnfoldingMask@1) (|PolymorphicMapType_30054_13755_13789#PolymorphicMapType_30054| UnfoldingMask@1) (|PolymorphicMapType_30054_13755_53#PolymorphicMapType_30054| UnfoldingMask@1) (|PolymorphicMapType_30054_13755_155203#PolymorphicMapType_30054| UnfoldingMask@1) (|PolymorphicMapType_30054_13788_13756#PolymorphicMapType_30054| UnfoldingMask@1) (|PolymorphicMapType_30054_13788_1186#PolymorphicMapType_30054| UnfoldingMask@1) (|PolymorphicMapType_30054_13788_53#PolymorphicMapType_30054| UnfoldingMask@1) (|PolymorphicMapType_30054_13788_155614#PolymorphicMapType_30054| UnfoldingMask@1) (|PolymorphicMapType_30054_13813_13756#PolymorphicMapType_30054| UnfoldingMask@1) (|PolymorphicMapType_30054_13813_1186#PolymorphicMapType_30054| UnfoldingMask@1) (|PolymorphicMapType_30054_13813_53#PolymorphicMapType_30054| UnfoldingMask@1) (|PolymorphicMapType_30054_13813_156025#PolymorphicMapType_30054| UnfoldingMask@1) (|PolymorphicMapType_30054_13893_13756#PolymorphicMapType_30054| UnfoldingMask@1) (|PolymorphicMapType_30054_13893_1186#PolymorphicMapType_30054| UnfoldingMask@1) (|PolymorphicMapType_30054_13893_53#PolymorphicMapType_30054| UnfoldingMask@1) (|PolymorphicMapType_30054_13893_156436#PolymorphicMapType_30054| UnfoldingMask@1) (|PolymorphicMapType_30054_13853_13756#PolymorphicMapType_30054| UnfoldingMask@1) (|PolymorphicMapType_30054_13853_1186#PolymorphicMapType_30054| UnfoldingMask@1) (|PolymorphicMapType_30054_13853_53#PolymorphicMapType_30054| UnfoldingMask@1) (|PolymorphicMapType_30054_13853_156847#PolymorphicMapType_30054| UnfoldingMask@1) (|PolymorphicMapType_30054_13759_13756#PolymorphicMapType_30054| UnfoldingMask@1) (|PolymorphicMapType_30054_13759_1186#PolymorphicMapType_30054| UnfoldingMask@1) (|PolymorphicMapType_30054_13759_53#PolymorphicMapType_30054| UnfoldingMask@1) (|PolymorphicMapType_30054_13759_157258#PolymorphicMapType_30054| UnfoldingMask@1))) (InsidePredicate_13759_13788 (P x@@29) (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@92) null (P x@@29)) (Q (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)) (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@92) null (Q (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g))))) (and (state Heap@@92 UnfoldingMask@2) (|Q#trigger_13788| Heap@@92 (Q (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g))))) (and (and (= (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@92) null (Q (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g))) (FrameFragment_1186 (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@92) (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g) f_7))) (= Unfolding1Mask@0 (PolymorphicMapType_30054 (|PolymorphicMapType_30054_13755_13756#PolymorphicMapType_30054| UnfoldingMask@2) (store (|PolymorphicMapType_30054_13788_13789#PolymorphicMapType_30054| UnfoldingMask@2) null (Q (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)) (- (select (|PolymorphicMapType_30054_13788_13789#PolymorphicMapType_30054| UnfoldingMask@2) null (Q (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g))) FullPerm)) (|PolymorphicMapType_30054_13753_1186#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13813_13814#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13893_13894#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13853_13854#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13759_13760#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13755_13789#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13755_53#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13755_155203#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13788_13756#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13788_1186#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13788_53#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13788_155614#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13813_13756#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13813_1186#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13813_53#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13813_156025#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13893_13756#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13893_1186#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13893_53#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13893_156436#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13853_13756#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13853_1186#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13853_53#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13853_156847#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13759_13756#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13759_1186#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13759_53#PolymorphicMapType_30054| UnfoldingMask@2) (|PolymorphicMapType_30054_13759_157258#PolymorphicMapType_30054| UnfoldingMask@2)))) (and (not (= (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g) null)) (= Unfolding1Mask@1 (PolymorphicMapType_30054 (|PolymorphicMapType_30054_13755_13756#PolymorphicMapType_30054| Unfolding1Mask@0) (|PolymorphicMapType_30054_13788_13789#PolymorphicMapType_30054| Unfolding1Mask@0) (store (|PolymorphicMapType_30054_13753_1186#PolymorphicMapType_30054| Unfolding1Mask@0) (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g) f_7 (+ (select (|PolymorphicMapType_30054_13753_1186#PolymorphicMapType_30054| Unfolding1Mask@0) (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g) f_7) FullPerm)) (|PolymorphicMapType_30054_13813_13814#PolymorphicMapType_30054| Unfolding1Mask@0) (|PolymorphicMapType_30054_13893_13894#PolymorphicMapType_30054| Unfolding1Mask@0) (|PolymorphicMapType_30054_13853_13854#PolymorphicMapType_30054| Unfolding1Mask@0) (|PolymorphicMapType_30054_13759_13760#PolymorphicMapType_30054| Unfolding1Mask@0) (|PolymorphicMapType_30054_13755_13789#PolymorphicMapType_30054| Unfolding1Mask@0) (|PolymorphicMapType_30054_13755_53#PolymorphicMapType_30054| Unfolding1Mask@0) (|PolymorphicMapType_30054_13755_155203#PolymorphicMapType_30054| Unfolding1Mask@0) (|PolymorphicMapType_30054_13788_13756#PolymorphicMapType_30054| Unfolding1Mask@0) (|PolymorphicMapType_30054_13788_1186#PolymorphicMapType_30054| Unfolding1Mask@0) (|PolymorphicMapType_30054_13788_53#PolymorphicMapType_30054| Unfolding1Mask@0) (|PolymorphicMapType_30054_13788_155614#PolymorphicMapType_30054| Unfolding1Mask@0) (|PolymorphicMapType_30054_13813_13756#PolymorphicMapType_30054| Unfolding1Mask@0) (|PolymorphicMapType_30054_13813_1186#PolymorphicMapType_30054| Unfolding1Mask@0) (|PolymorphicMapType_30054_13813_53#PolymorphicMapType_30054| Unfolding1Mask@0) (|PolymorphicMapType_30054_13813_156025#PolymorphicMapType_30054| Unfolding1Mask@0) (|PolymorphicMapType_30054_13893_13756#PolymorphicMapType_30054| Unfolding1Mask@0) (|PolymorphicMapType_30054_13893_1186#PolymorphicMapType_30054| Unfolding1Mask@0) (|PolymorphicMapType_30054_13893_53#PolymorphicMapType_30054| Unfolding1Mask@0) (|PolymorphicMapType_30054_13893_156436#PolymorphicMapType_30054| Unfolding1Mask@0) (|PolymorphicMapType_30054_13853_13756#PolymorphicMapType_30054| Unfolding1Mask@0) (|PolymorphicMapType_30054_13853_1186#PolymorphicMapType_30054| Unfolding1Mask@0) (|PolymorphicMapType_30054_13853_53#PolymorphicMapType_30054| Unfolding1Mask@0) (|PolymorphicMapType_30054_13853_156847#PolymorphicMapType_30054| Unfolding1Mask@0) (|PolymorphicMapType_30054_13759_13756#PolymorphicMapType_30054| Unfolding1Mask@0) (|PolymorphicMapType_30054_13759_1186#PolymorphicMapType_30054| Unfolding1Mask@0) (|PolymorphicMapType_30054_13759_53#PolymorphicMapType_30054| Unfolding1Mask@0) (|PolymorphicMapType_30054_13759_157258#PolymorphicMapType_30054| Unfolding1Mask@0)))))) (and (and (and (state Heap@@92 Unfolding1Mask@1) (state Heap@@92 Unfolding1Mask@1)) (and (not (= (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@92) (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g) f_7) 0)) (= UnfoldingHeap@0 (PolymorphicMapType_30033 (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| Heap@@92) (store (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)) (PolymorphicMapType_30582 (store (|PolymorphicMapType_30582_13753_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g) f_7 true) (|PolymorphicMapType_30582_13755_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_13753_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_13753_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_13753_134784#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_33516_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_33516_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_33516_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_33516_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_33516_135832#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_34511_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_34511_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_34511_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_34511_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_34511_136880#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_38039_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_38039_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_38039_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_38039_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_38039_137928#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_53810_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_53810_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_53810_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_53810_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_53810_138976#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_55007_1186#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_55007_13756#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_55007_53#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_55007_33517#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))) (|PolymorphicMapType_30582_55007_140024#PolymorphicMapType_30582| (select (|PolymorphicMapType_30033_13792_36016#PolymorphicMapType_30033| Heap@@92) null (|Q#sm| (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))))) (|PolymorphicMapType_30033_13813_13814#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13817_44714#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13893_13894#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13853_13854#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13897_60573#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13857_61775#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13763_89686#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13755_13814#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13755_126251#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13813_13756#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13813_1186#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13813_53#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13853_13756#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13853_1186#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13853_53#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13893_13756#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13893_1186#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_13893_53#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_33516_13756#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_33516_1186#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_33516_53#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_34511_13756#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_34511_1186#PolymorphicMapType_30033| Heap@@92) (|PolymorphicMapType_30033_34511_53#PolymorphicMapType_30033| Heap@@92))))) (and (and (state UnfoldingHeap@0 UnfoldingMask@2) (state UnfoldingHeap@0 UnfoldingMask@2)) (and (|Q#trigger_13788| UnfoldingHeap@0 (Q (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| UnfoldingHeap@0) x@@29 g))) (= (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| UnfoldingHeap@0) null (Q (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| UnfoldingHeap@0) x@@29 g))) (FrameFragment_1186 (select (|PolymorphicMapType_30033_13753_1186#PolymorphicMapType_30033| UnfoldingHeap@0) (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| UnfoldingHeap@0) x@@29 g) f_7))))))) (and (=> (= (ControlFlow 0 9) 6) anon6_Then_correct) (=> (= (ControlFlow 0 9) 8) anon6_Else_correct))))))
(let ((anon5_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 12) 9)) anon2_correct)))
(let ((anon5_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (<= FullPerm (select (|PolymorphicMapType_30054_13759_13760#PolymorphicMapType_30054| Mask@0) null (P x@@29)))) (=> (<= FullPerm (select (|PolymorphicMapType_30054_13759_13760#PolymorphicMapType_30054| Mask@0) null (P x@@29))) (=> (= (ControlFlow 0 10) 9) anon2_correct))))))
(let ((anon0_correct  (=> (and (and (and (state Heap@@92 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_30033_13625_53#PolymorphicMapType_30033| Heap@@92) x@@29 $allocated) (= Mask@0 (PolymorphicMapType_30054 (|PolymorphicMapType_30054_13755_13756#PolymorphicMapType_30054| ZeroMask) (|PolymorphicMapType_30054_13788_13789#PolymorphicMapType_30054| ZeroMask) (|PolymorphicMapType_30054_13753_1186#PolymorphicMapType_30054| ZeroMask) (|PolymorphicMapType_30054_13813_13814#PolymorphicMapType_30054| ZeroMask) (|PolymorphicMapType_30054_13893_13894#PolymorphicMapType_30054| ZeroMask) (|PolymorphicMapType_30054_13853_13854#PolymorphicMapType_30054| ZeroMask) (store (|PolymorphicMapType_30054_13759_13760#PolymorphicMapType_30054| ZeroMask) null (P x@@29) (+ (select (|PolymorphicMapType_30054_13759_13760#PolymorphicMapType_30054| ZeroMask) null (P x@@29)) FullPerm)) (|PolymorphicMapType_30054_13755_13789#PolymorphicMapType_30054| ZeroMask) (|PolymorphicMapType_30054_13755_53#PolymorphicMapType_30054| ZeroMask) (|PolymorphicMapType_30054_13755_155203#PolymorphicMapType_30054| ZeroMask) (|PolymorphicMapType_30054_13788_13756#PolymorphicMapType_30054| ZeroMask) (|PolymorphicMapType_30054_13788_1186#PolymorphicMapType_30054| ZeroMask) (|PolymorphicMapType_30054_13788_53#PolymorphicMapType_30054| ZeroMask) (|PolymorphicMapType_30054_13788_155614#PolymorphicMapType_30054| ZeroMask) (|PolymorphicMapType_30054_13813_13756#PolymorphicMapType_30054| ZeroMask) (|PolymorphicMapType_30054_13813_1186#PolymorphicMapType_30054| ZeroMask) (|PolymorphicMapType_30054_13813_53#PolymorphicMapType_30054| ZeroMask) (|PolymorphicMapType_30054_13813_156025#PolymorphicMapType_30054| ZeroMask) (|PolymorphicMapType_30054_13893_13756#PolymorphicMapType_30054| ZeroMask) (|PolymorphicMapType_30054_13893_1186#PolymorphicMapType_30054| ZeroMask) (|PolymorphicMapType_30054_13893_53#PolymorphicMapType_30054| ZeroMask) (|PolymorphicMapType_30054_13893_156436#PolymorphicMapType_30054| ZeroMask) (|PolymorphicMapType_30054_13853_13756#PolymorphicMapType_30054| ZeroMask) (|PolymorphicMapType_30054_13853_1186#PolymorphicMapType_30054| ZeroMask) (|PolymorphicMapType_30054_13853_53#PolymorphicMapType_30054| ZeroMask) (|PolymorphicMapType_30054_13853_156847#PolymorphicMapType_30054| ZeroMask) (|PolymorphicMapType_30054_13759_13756#PolymorphicMapType_30054| ZeroMask) (|PolymorphicMapType_30054_13759_1186#PolymorphicMapType_30054| ZeroMask) (|PolymorphicMapType_30054_13759_53#PolymorphicMapType_30054| ZeroMask) (|PolymorphicMapType_30054_13759_157258#PolymorphicMapType_30054| ZeroMask))))) (and (and (state Heap@@92 Mask@0) (state Heap@@92 Mask@0)) (and (|P#trigger_13759| Heap@@92 (P x@@29)) (= (select (|PolymorphicMapType_30033_13759_13760#PolymorphicMapType_30033| Heap@@92) null (P x@@29)) (CombineFrames (FrameFragment_13756 (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)) (select (|PolymorphicMapType_30033_13788_13789#PolymorphicMapType_30033| Heap@@92) null (Q (select (|PolymorphicMapType_30033_13628_13629#PolymorphicMapType_30033| Heap@@92) x@@29 g)))))))) (and (=> (= (ControlFlow 0 13) 10) anon5_Then_correct) (=> (= (ControlFlow 0 13) 12) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 14) 13) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
