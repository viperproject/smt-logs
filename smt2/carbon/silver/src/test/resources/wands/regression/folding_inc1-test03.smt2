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
(declare-sort T@Field_13713_53 0)
(declare-sort T@Field_13726_13727 0)
(declare-sort T@Field_19293_2246 0)
(declare-sort T@Field_17050_17055 0)
(declare-sort T@Field_19426_19427 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_19439_19444 0)
(declare-sort T@Field_17522_17527 0)
(declare-sort T@Field_18106_18111 0)
(declare-sort T@Field_20346_20347 0)
(declare-sort T@Field_20359_20364 0)
(declare-sort T@Field_18664_18669 0)
(declare-sort T@Field_7937_53 0)
(declare-sort T@Field_7937_13727 0)
(declare-sort T@Field_7937_1195 0)
(declare-sort T@Field_7962_53 0)
(declare-sort T@Field_7962_13727 0)
(declare-sort T@Field_7962_1195 0)
(declare-sort T@Field_13713_7938 0)
(declare-sort T@Field_13713_17055 0)
(declare-sort T@Field_17064_17065 0)
(declare-sort T@Field_17039_53 0)
(declare-sort T@Field_17039_13727 0)
(declare-sort T@Field_17039_1195 0)
(declare-sort T@Field_17538_17539 0)
(declare-sort T@Field_17509_53 0)
(declare-sort T@Field_17509_13727 0)
(declare-sort T@Field_17509_1407 0)
(declare-sort T@Field_18121_18122 0)
(declare-sort T@Field_18094_53 0)
(declare-sort T@Field_18094_13727 0)
(declare-sort T@Field_18094_1672 0)
(declare-sort T@Field_18680_18681 0)
(declare-sort T@Field_18651_53 0)
(declare-sort T@Field_18651_13727 0)
(declare-sort T@Field_18651_1941 0)
(declare-datatypes ((T@PolymorphicMapType_13674 0)) (((PolymorphicMapType_13674 (|PolymorphicMapType_13674_7928_2246#PolymorphicMapType_13674| (Array T@Ref T@Field_19293_2246 Real)) (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| (Array T@Ref T@Field_19426_19427 Real)) (|PolymorphicMapType_13674_7797_1195#PolymorphicMapType_13674| (Array T@Ref T@Field_17039_1195 Real)) (|PolymorphicMapType_13674_7808_1407#PolymorphicMapType_13674| (Array T@Ref T@Field_17509_1407 Real)) (|PolymorphicMapType_13674_7962_7963#PolymorphicMapType_13674| (Array T@Ref T@Field_20346_20347 Real)) (|PolymorphicMapType_13674_7848_1672#PolymorphicMapType_13674| (Array T@Ref T@Field_18094_1672 Real)) (|PolymorphicMapType_13674_7880_1941#PolymorphicMapType_13674| (Array T@Ref T@Field_18651_1941 Real)) (|PolymorphicMapType_13674_7928_7938#PolymorphicMapType_13674| (Array T@Ref T@Field_13713_7938 Real)) (|PolymorphicMapType_13674_7928_53#PolymorphicMapType_13674| (Array T@Ref T@Field_13713_53 Real)) (|PolymorphicMapType_13674_7928_13727#PolymorphicMapType_13674| (Array T@Ref T@Field_13726_13727 Real)) (|PolymorphicMapType_13674_7928_78132#PolymorphicMapType_13674| (Array T@Ref T@Field_13713_17055 Real)) (|PolymorphicMapType_13674_7937_2246#PolymorphicMapType_13674| (Array T@Ref T@Field_7937_1195 Real)) (|PolymorphicMapType_13674_7937_53#PolymorphicMapType_13674| (Array T@Ref T@Field_7937_53 Real)) (|PolymorphicMapType_13674_7937_13727#PolymorphicMapType_13674| (Array T@Ref T@Field_7937_13727 Real)) (|PolymorphicMapType_13674_7937_78543#PolymorphicMapType_13674| (Array T@Ref T@Field_19439_19444 Real)) (|PolymorphicMapType_13674_7797_7938#PolymorphicMapType_13674| (Array T@Ref T@Field_17064_17065 Real)) (|PolymorphicMapType_13674_7797_53#PolymorphicMapType_13674| (Array T@Ref T@Field_17039_53 Real)) (|PolymorphicMapType_13674_7797_13727#PolymorphicMapType_13674| (Array T@Ref T@Field_17039_13727 Real)) (|PolymorphicMapType_13674_7797_78957#PolymorphicMapType_13674| (Array T@Ref T@Field_17050_17055 Real)) (|PolymorphicMapType_13674_7808_7938#PolymorphicMapType_13674| (Array T@Ref T@Field_17538_17539 Real)) (|PolymorphicMapType_13674_7808_53#PolymorphicMapType_13674| (Array T@Ref T@Field_17509_53 Real)) (|PolymorphicMapType_13674_7808_13727#PolymorphicMapType_13674| (Array T@Ref T@Field_17509_13727 Real)) (|PolymorphicMapType_13674_7808_79371#PolymorphicMapType_13674| (Array T@Ref T@Field_17522_17527 Real)) (|PolymorphicMapType_13674_7962_2246#PolymorphicMapType_13674| (Array T@Ref T@Field_7962_1195 Real)) (|PolymorphicMapType_13674_7962_53#PolymorphicMapType_13674| (Array T@Ref T@Field_7962_53 Real)) (|PolymorphicMapType_13674_7962_13727#PolymorphicMapType_13674| (Array T@Ref T@Field_7962_13727 Real)) (|PolymorphicMapType_13674_7962_79782#PolymorphicMapType_13674| (Array T@Ref T@Field_20359_20364 Real)) (|PolymorphicMapType_13674_7848_7938#PolymorphicMapType_13674| (Array T@Ref T@Field_18121_18122 Real)) (|PolymorphicMapType_13674_7848_53#PolymorphicMapType_13674| (Array T@Ref T@Field_18094_53 Real)) (|PolymorphicMapType_13674_7848_13727#PolymorphicMapType_13674| (Array T@Ref T@Field_18094_13727 Real)) (|PolymorphicMapType_13674_7848_80196#PolymorphicMapType_13674| (Array T@Ref T@Field_18106_18111 Real)) (|PolymorphicMapType_13674_7880_7938#PolymorphicMapType_13674| (Array T@Ref T@Field_18680_18681 Real)) (|PolymorphicMapType_13674_7880_53#PolymorphicMapType_13674| (Array T@Ref T@Field_18651_53 Real)) (|PolymorphicMapType_13674_7880_13727#PolymorphicMapType_13674| (Array T@Ref T@Field_18651_13727 Real)) (|PolymorphicMapType_13674_7880_80610#PolymorphicMapType_13674| (Array T@Ref T@Field_18664_18669 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_14202 0)) (((PolymorphicMapType_14202 (|PolymorphicMapType_14202_7928_2246#PolymorphicMapType_14202| (Array T@Ref T@Field_19293_2246 Bool)) (|PolymorphicMapType_14202_7928_53#PolymorphicMapType_14202| (Array T@Ref T@Field_13713_53 Bool)) (|PolymorphicMapType_14202_7928_13727#PolymorphicMapType_14202| (Array T@Ref T@Field_13726_13727 Bool)) (|PolymorphicMapType_14202_7928_54124#PolymorphicMapType_14202| (Array T@Ref T@Field_13713_17055 Bool)) (|PolymorphicMapType_14202_7928_17065#PolymorphicMapType_14202| (Array T@Ref T@Field_13713_7938 Bool)) (|PolymorphicMapType_14202_17039_2246#PolymorphicMapType_14202| (Array T@Ref T@Field_17039_1195 Bool)) (|PolymorphicMapType_14202_17039_53#PolymorphicMapType_14202| (Array T@Ref T@Field_17039_53 Bool)) (|PolymorphicMapType_14202_17039_13727#PolymorphicMapType_14202| (Array T@Ref T@Field_17039_13727 Bool)) (|PolymorphicMapType_14202_17039_55172#PolymorphicMapType_14202| (Array T@Ref T@Field_17050_17055 Bool)) (|PolymorphicMapType_14202_17039_17065#PolymorphicMapType_14202| (Array T@Ref T@Field_17064_17065 Bool)) (|PolymorphicMapType_14202_17509_2246#PolymorphicMapType_14202| (Array T@Ref T@Field_17509_1407 Bool)) (|PolymorphicMapType_14202_17509_53#PolymorphicMapType_14202| (Array T@Ref T@Field_17509_53 Bool)) (|PolymorphicMapType_14202_17509_13727#PolymorphicMapType_14202| (Array T@Ref T@Field_17509_13727 Bool)) (|PolymorphicMapType_14202_17509_56220#PolymorphicMapType_14202| (Array T@Ref T@Field_17522_17527 Bool)) (|PolymorphicMapType_14202_17509_17065#PolymorphicMapType_14202| (Array T@Ref T@Field_17538_17539 Bool)) (|PolymorphicMapType_14202_18094_2246#PolymorphicMapType_14202| (Array T@Ref T@Field_18094_1672 Bool)) (|PolymorphicMapType_14202_18094_53#PolymorphicMapType_14202| (Array T@Ref T@Field_18094_53 Bool)) (|PolymorphicMapType_14202_18094_13727#PolymorphicMapType_14202| (Array T@Ref T@Field_18094_13727 Bool)) (|PolymorphicMapType_14202_18094_57268#PolymorphicMapType_14202| (Array T@Ref T@Field_18106_18111 Bool)) (|PolymorphicMapType_14202_18094_17065#PolymorphicMapType_14202| (Array T@Ref T@Field_18121_18122 Bool)) (|PolymorphicMapType_14202_18651_2246#PolymorphicMapType_14202| (Array T@Ref T@Field_18651_1941 Bool)) (|PolymorphicMapType_14202_18651_53#PolymorphicMapType_14202| (Array T@Ref T@Field_18651_53 Bool)) (|PolymorphicMapType_14202_18651_13727#PolymorphicMapType_14202| (Array T@Ref T@Field_18651_13727 Bool)) (|PolymorphicMapType_14202_18651_58316#PolymorphicMapType_14202| (Array T@Ref T@Field_18664_18669 Bool)) (|PolymorphicMapType_14202_18651_17065#PolymorphicMapType_14202| (Array T@Ref T@Field_18680_18681 Bool)) (|PolymorphicMapType_14202_19426_2246#PolymorphicMapType_14202| (Array T@Ref T@Field_7937_1195 Bool)) (|PolymorphicMapType_14202_19426_53#PolymorphicMapType_14202| (Array T@Ref T@Field_7937_53 Bool)) (|PolymorphicMapType_14202_19426_13727#PolymorphicMapType_14202| (Array T@Ref T@Field_7937_13727 Bool)) (|PolymorphicMapType_14202_19426_59364#PolymorphicMapType_14202| (Array T@Ref T@Field_19439_19444 Bool)) (|PolymorphicMapType_14202_19426_17065#PolymorphicMapType_14202| (Array T@Ref T@Field_19426_19427 Bool)) (|PolymorphicMapType_14202_20346_2246#PolymorphicMapType_14202| (Array T@Ref T@Field_7962_1195 Bool)) (|PolymorphicMapType_14202_20346_53#PolymorphicMapType_14202| (Array T@Ref T@Field_7962_53 Bool)) (|PolymorphicMapType_14202_20346_13727#PolymorphicMapType_14202| (Array T@Ref T@Field_7962_13727 Bool)) (|PolymorphicMapType_14202_20346_60412#PolymorphicMapType_14202| (Array T@Ref T@Field_20359_20364 Bool)) (|PolymorphicMapType_14202_20346_17065#PolymorphicMapType_14202| (Array T@Ref T@Field_20346_20347 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13653 0)) (((PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| (Array T@Ref T@Field_13713_53 Bool)) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| (Array T@Ref T@Field_13726_13727 T@Ref)) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| (Array T@Ref T@Field_19293_2246 Int)) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| (Array T@Ref T@Field_17050_17055 T@PolymorphicMapType_14202)) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| (Array T@Ref T@Field_19426_19427 T@FrameType)) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| (Array T@Ref T@Field_19439_19444 T@PolymorphicMapType_14202)) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| (Array T@Ref T@Field_17522_17527 T@PolymorphicMapType_14202)) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| (Array T@Ref T@Field_18106_18111 T@PolymorphicMapType_14202)) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| (Array T@Ref T@Field_20346_20347 T@FrameType)) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| (Array T@Ref T@Field_20359_20364 T@PolymorphicMapType_14202)) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| (Array T@Ref T@Field_18664_18669 T@PolymorphicMapType_14202)) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| (Array T@Ref T@Field_7937_53 Bool)) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| (Array T@Ref T@Field_7937_13727 T@Ref)) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| (Array T@Ref T@Field_7937_1195 Int)) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| (Array T@Ref T@Field_7962_53 Bool)) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| (Array T@Ref T@Field_7962_13727 T@Ref)) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| (Array T@Ref T@Field_7962_1195 Int)) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| (Array T@Ref T@Field_13713_7938 T@FrameType)) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| (Array T@Ref T@Field_13713_17055 T@PolymorphicMapType_14202)) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| (Array T@Ref T@Field_17064_17065 T@FrameType)) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| (Array T@Ref T@Field_17039_53 Bool)) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| (Array T@Ref T@Field_17039_13727 T@Ref)) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| (Array T@Ref T@Field_17039_1195 Int)) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| (Array T@Ref T@Field_17538_17539 T@FrameType)) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| (Array T@Ref T@Field_17509_53 Bool)) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| (Array T@Ref T@Field_17509_13727 T@Ref)) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| (Array T@Ref T@Field_17509_1407 Int)) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| (Array T@Ref T@Field_18121_18122 T@FrameType)) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| (Array T@Ref T@Field_18094_53 Bool)) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| (Array T@Ref T@Field_18094_13727 T@Ref)) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| (Array T@Ref T@Field_18094_1672 Int)) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| (Array T@Ref T@Field_18680_18681 T@FrameType)) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| (Array T@Ref T@Field_18651_53 Bool)) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| (Array T@Ref T@Field_18651_13727 T@Ref)) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| (Array T@Ref T@Field_18651_1941 Int)) ) ) ))
(declare-fun $allocated () T@Field_13713_53)
(declare-fun f_7 () T@Field_19293_2246)
(declare-fun g () T@Field_13726_13727)
(declare-fun h () T@Field_13726_13727)
(declare-fun succHeap (T@PolymorphicMapType_13653 T@PolymorphicMapType_13653) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_13653 T@PolymorphicMapType_13653) Bool)
(declare-fun wand_3 (T@Ref Real T@Ref Real) T@Field_18651_1941)
(declare-fun getPredWandId_7880_1941 (T@Field_18651_1941) Int)
(declare-fun state (T@PolymorphicMapType_13653 T@PolymorphicMapType_13674) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_13674) Bool)
(declare-fun wand_1 (T@Ref Real T@Ref) T@Field_17509_1407)
(declare-fun IsWandField_7808_1407 (T@Field_17509_1407) Bool)
(declare-fun |wand_1#ft| (T@Ref Real T@Ref) T@Field_17538_17539)
(declare-fun IsWandField_7819_7820 (T@Field_17538_17539) Bool)
(declare-fun wand_2 (T@Ref Real Bool) T@Field_18094_1672)
(declare-fun IsWandField_7848_1672 (T@Field_18094_1672) Bool)
(declare-fun |wand_2#ft| (T@Ref Real Bool) T@Field_18121_18122)
(declare-fun IsWandField_7857_7858 (T@Field_18121_18122) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_14202)
(declare-fun getPredWandId_7808_1407 (T@Field_17509_1407) Int)
(declare-fun getPredWandId_7848_1672 (T@Field_18094_1672) Int)
(declare-fun IsPredicateField_7808_1407 (T@Field_17509_1407) Bool)
(declare-fun IsPredicateField_7819_7820 (T@Field_17538_17539) Bool)
(declare-fun IsPredicateField_7848_1672 (T@Field_18094_1672) Bool)
(declare-fun IsPredicateField_7857_7858 (T@Field_18121_18122) Bool)
(declare-fun wand (Bool Bool) T@Field_17039_1195)
(declare-fun IsWandField_7797_1195 (T@Field_17039_1195) Bool)
(declare-fun |wand#ft| (Bool Bool) T@Field_17064_17065)
(declare-fun IsWandField_7802_7803 (T@Field_17064_17065) Bool)
(declare-fun IsPredicateField_7797_1195 (T@Field_17039_1195) Bool)
(declare-fun IsPredicateField_7802_7803 (T@Field_17064_17065) Bool)
(declare-fun P (T@Ref) T@Field_19426_19427)
(declare-fun IsPredicateField_7937_7938 (T@Field_19426_19427) Bool)
(declare-fun Q (T@Ref) T@Field_20346_20347)
(declare-fun IsPredicateField_7962_7963 (T@Field_20346_20347) Bool)
(declare-fun |P#trigger_7937| (T@PolymorphicMapType_13653 T@Field_19426_19427) Bool)
(declare-fun |P#everUsed_7937| (T@Field_19426_19427) Bool)
(declare-fun |Q#trigger_7962| (T@PolymorphicMapType_13653 T@Field_20346_20347) Bool)
(declare-fun |Q#everUsed_7962| (T@Field_20346_20347) Bool)
(declare-fun WandMaskField_7819 (T@Field_17538_17539) T@Field_17522_17527)
(declare-fun |wand_1#sm| (T@Ref Real T@Ref) T@Field_17522_17527)
(declare-fun WandMaskField_7857 (T@Field_18121_18122) T@Field_18106_18111)
(declare-fun |wand_2#sm| (T@Ref Real Bool) T@Field_18106_18111)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_13653 T@PolymorphicMapType_13653 T@PolymorphicMapType_13674) Bool)
(declare-fun IsPredicateField_7893_7894 (T@Field_18680_18681) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_18651 (T@Field_18680_18681) T@Field_18664_18669)
(declare-fun HasDirectPerm_18651_7938 (T@PolymorphicMapType_13674 T@Ref T@Field_18680_18681) Bool)
(declare-fun PredicateMaskField_18094 (T@Field_18121_18122) T@Field_18106_18111)
(declare-fun HasDirectPerm_18094_7938 (T@PolymorphicMapType_13674 T@Ref T@Field_18121_18122) Bool)
(declare-fun PredicateMaskField_17509 (T@Field_17538_17539) T@Field_17522_17527)
(declare-fun HasDirectPerm_17509_7938 (T@PolymorphicMapType_13674 T@Ref T@Field_17538_17539) Bool)
(declare-fun PredicateMaskField_17039 (T@Field_17064_17065) T@Field_17050_17055)
(declare-fun HasDirectPerm_17039_7938 (T@PolymorphicMapType_13674 T@Ref T@Field_17064_17065) Bool)
(declare-fun IsPredicateField_13713_51781 (T@Field_13713_7938) Bool)
(declare-fun PredicateMaskField_13713 (T@Field_13713_7938) T@Field_13713_17055)
(declare-fun HasDirectPerm_13713_7938 (T@PolymorphicMapType_13674 T@Ref T@Field_13713_7938) Bool)
(declare-fun PredicateMaskField_7962 (T@Field_20346_20347) T@Field_20359_20364)
(declare-fun HasDirectPerm_7962_7963 (T@PolymorphicMapType_13674 T@Ref T@Field_20346_20347) Bool)
(declare-fun PredicateMaskField_7937 (T@Field_19426_19427) T@Field_19439_19444)
(declare-fun HasDirectPerm_7937_7938 (T@PolymorphicMapType_13674 T@Ref T@Field_19426_19427) Bool)
(declare-fun IsWandField_7893_7894 (T@Field_18680_18681) Bool)
(declare-fun WandMaskField_7893 (T@Field_18680_18681) T@Field_18664_18669)
(declare-fun WandMaskField_7802 (T@Field_17064_17065) T@Field_17050_17055)
(declare-fun IsWandField_13713_63543 (T@Field_13713_7938) Bool)
(declare-fun WandMaskField_13713 (T@Field_13713_7938) T@Field_13713_17055)
(declare-fun IsWandField_7962_63186 (T@Field_20346_20347) Bool)
(declare-fun WandMaskField_7962 (T@Field_20346_20347) T@Field_20359_20364)
(declare-fun IsWandField_7937_62829 (T@Field_19426_19427) Bool)
(declare-fun WandMaskField_7937 (T@Field_19426_19427) T@Field_19439_19444)
(declare-fun |P#sm| (T@Ref) T@Field_19439_19444)
(declare-fun |Q#sm| (T@Ref) T@Field_20359_20364)
(declare-fun dummyHeap () T@PolymorphicMapType_13653)
(declare-fun ZeroMask () T@PolymorphicMapType_13674)
(declare-fun InsidePredicate_20346_20346 (T@Field_20346_20347 T@FrameType T@Field_20346_20347 T@FrameType) Bool)
(declare-fun InsidePredicate_19426_19426 (T@Field_19426_19427 T@FrameType T@Field_19426_19427 T@FrameType) Bool)
(declare-fun InsidePredicate_18651_18651 (T@Field_18680_18681 T@FrameType T@Field_18680_18681 T@FrameType) Bool)
(declare-fun InsidePredicate_18094_18094 (T@Field_18121_18122 T@FrameType T@Field_18121_18122 T@FrameType) Bool)
(declare-fun InsidePredicate_17509_17509 (T@Field_17538_17539 T@FrameType T@Field_17538_17539 T@FrameType) Bool)
(declare-fun InsidePredicate_17039_17039 (T@Field_17064_17065 T@FrameType T@Field_17064_17065 T@FrameType) Bool)
(declare-fun InsidePredicate_13713_13713 (T@Field_13713_7938 T@FrameType T@Field_13713_7938 T@FrameType) Bool)
(declare-fun IsPredicateField_7928_2246 (T@Field_19293_2246) Bool)
(declare-fun IsWandField_7928_2246 (T@Field_19293_2246) Bool)
(declare-fun IsPredicateField_7930_7931 (T@Field_13726_13727) Bool)
(declare-fun IsWandField_7930_7931 (T@Field_13726_13727) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7880_88647 (T@Field_18664_18669) Bool)
(declare-fun IsWandField_7880_88663 (T@Field_18664_18669) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7880_13727 (T@Field_18651_13727) Bool)
(declare-fun IsWandField_7880_13727 (T@Field_18651_13727) Bool)
(declare-fun IsPredicateField_7880_53 (T@Field_18651_53) Bool)
(declare-fun IsWandField_7880_53 (T@Field_18651_53) Bool)
(declare-fun IsPredicateField_7880_1941 (T@Field_18651_1941) Bool)
(declare-fun IsWandField_7880_1941 (T@Field_18651_1941) Bool)
(declare-fun IsPredicateField_7848_87830 (T@Field_18106_18111) Bool)
(declare-fun IsWandField_7848_87846 (T@Field_18106_18111) Bool)
(declare-fun IsPredicateField_7848_13727 (T@Field_18094_13727) Bool)
(declare-fun IsWandField_7848_13727 (T@Field_18094_13727) Bool)
(declare-fun IsPredicateField_7848_53 (T@Field_18094_53) Bool)
(declare-fun IsWandField_7848_53 (T@Field_18094_53) Bool)
(declare-fun IsPredicateField_7962_87013 (T@Field_20359_20364) Bool)
(declare-fun IsWandField_7962_87029 (T@Field_20359_20364) Bool)
(declare-fun IsPredicateField_7962_13727 (T@Field_7962_13727) Bool)
(declare-fun IsWandField_7962_13727 (T@Field_7962_13727) Bool)
(declare-fun IsPredicateField_7962_53 (T@Field_7962_53) Bool)
(declare-fun IsWandField_7962_53 (T@Field_7962_53) Bool)
(declare-fun IsPredicateField_7962_2246 (T@Field_7962_1195) Bool)
(declare-fun IsWandField_7962_2246 (T@Field_7962_1195) Bool)
(declare-fun IsPredicateField_7808_86182 (T@Field_17522_17527) Bool)
(declare-fun IsWandField_7808_86198 (T@Field_17522_17527) Bool)
(declare-fun IsPredicateField_7808_13727 (T@Field_17509_13727) Bool)
(declare-fun IsWandField_7808_13727 (T@Field_17509_13727) Bool)
(declare-fun IsPredicateField_7808_53 (T@Field_17509_53) Bool)
(declare-fun IsWandField_7808_53 (T@Field_17509_53) Bool)
(declare-fun IsPredicateField_7797_85365 (T@Field_17050_17055) Bool)
(declare-fun IsWandField_7797_85381 (T@Field_17050_17055) Bool)
(declare-fun IsPredicateField_7797_13727 (T@Field_17039_13727) Bool)
(declare-fun IsWandField_7797_13727 (T@Field_17039_13727) Bool)
(declare-fun IsPredicateField_7797_53 (T@Field_17039_53) Bool)
(declare-fun IsWandField_7797_53 (T@Field_17039_53) Bool)
(declare-fun IsPredicateField_7937_84548 (T@Field_19439_19444) Bool)
(declare-fun IsWandField_7937_84564 (T@Field_19439_19444) Bool)
(declare-fun IsPredicateField_7937_13727 (T@Field_7937_13727) Bool)
(declare-fun IsWandField_7937_13727 (T@Field_7937_13727) Bool)
(declare-fun IsPredicateField_7937_53 (T@Field_7937_53) Bool)
(declare-fun IsWandField_7937_53 (T@Field_7937_53) Bool)
(declare-fun IsPredicateField_7937_2246 (T@Field_7937_1195) Bool)
(declare-fun IsWandField_7937_2246 (T@Field_7937_1195) Bool)
(declare-fun IsPredicateField_7928_83717 (T@Field_13713_17055) Bool)
(declare-fun IsWandField_7928_83733 (T@Field_13713_17055) Bool)
(declare-fun IsPredicateField_7928_53 (T@Field_13713_53) Bool)
(declare-fun IsWandField_7928_53 (T@Field_13713_53) Bool)
(declare-fun HasDirectPerm_18651_50886 (T@PolymorphicMapType_13674 T@Ref T@Field_18664_18669) Bool)
(declare-fun HasDirectPerm_18651_1195 (T@PolymorphicMapType_13674 T@Ref T@Field_18651_1941) Bool)
(declare-fun HasDirectPerm_18651_13727 (T@PolymorphicMapType_13674 T@Ref T@Field_18651_13727) Bool)
(declare-fun HasDirectPerm_18651_53 (T@PolymorphicMapType_13674 T@Ref T@Field_18651_53) Bool)
(declare-fun HasDirectPerm_18094_49752 (T@PolymorphicMapType_13674 T@Ref T@Field_18106_18111) Bool)
(declare-fun HasDirectPerm_18094_1195 (T@PolymorphicMapType_13674 T@Ref T@Field_18094_1672) Bool)
(declare-fun HasDirectPerm_18094_13727 (T@PolymorphicMapType_13674 T@Ref T@Field_18094_13727) Bool)
(declare-fun HasDirectPerm_18094_53 (T@PolymorphicMapType_13674 T@Ref T@Field_18094_53) Bool)
(declare-fun HasDirectPerm_17509_48618 (T@PolymorphicMapType_13674 T@Ref T@Field_17522_17527) Bool)
(declare-fun HasDirectPerm_17509_1195 (T@PolymorphicMapType_13674 T@Ref T@Field_17509_1407) Bool)
(declare-fun HasDirectPerm_17509_13727 (T@PolymorphicMapType_13674 T@Ref T@Field_17509_13727) Bool)
(declare-fun HasDirectPerm_17509_53 (T@PolymorphicMapType_13674 T@Ref T@Field_17509_53) Bool)
(declare-fun HasDirectPerm_17039_47484 (T@PolymorphicMapType_13674 T@Ref T@Field_17050_17055) Bool)
(declare-fun HasDirectPerm_17039_1195 (T@PolymorphicMapType_13674 T@Ref T@Field_17039_1195) Bool)
(declare-fun HasDirectPerm_17039_13727 (T@PolymorphicMapType_13674 T@Ref T@Field_17039_13727) Bool)
(declare-fun HasDirectPerm_17039_53 (T@PolymorphicMapType_13674 T@Ref T@Field_17039_53) Bool)
(declare-fun HasDirectPerm_13713_46307 (T@PolymorphicMapType_13674 T@Ref T@Field_13713_17055) Bool)
(declare-fun HasDirectPerm_13713_1195 (T@PolymorphicMapType_13674 T@Ref T@Field_19293_2246) Bool)
(declare-fun HasDirectPerm_13713_13727 (T@PolymorphicMapType_13674 T@Ref T@Field_13726_13727) Bool)
(declare-fun HasDirectPerm_13713_53 (T@PolymorphicMapType_13674 T@Ref T@Field_13713_53) Bool)
(declare-fun HasDirectPerm_7962_45214 (T@PolymorphicMapType_13674 T@Ref T@Field_20359_20364) Bool)
(declare-fun HasDirectPerm_7962_1195 (T@PolymorphicMapType_13674 T@Ref T@Field_7962_1195) Bool)
(declare-fun HasDirectPerm_7962_13727 (T@PolymorphicMapType_13674 T@Ref T@Field_7962_13727) Bool)
(declare-fun HasDirectPerm_7962_53 (T@PolymorphicMapType_13674 T@Ref T@Field_7962_53) Bool)
(declare-fun HasDirectPerm_7937_44116 (T@PolymorphicMapType_13674 T@Ref T@Field_19439_19444) Bool)
(declare-fun HasDirectPerm_7937_1195 (T@PolymorphicMapType_13674 T@Ref T@Field_7937_1195) Bool)
(declare-fun HasDirectPerm_7937_13727 (T@PolymorphicMapType_13674 T@Ref T@Field_7937_13727) Bool)
(declare-fun HasDirectPerm_7937_53 (T@PolymorphicMapType_13674 T@Ref T@Field_7937_53) Bool)
(declare-fun |wand_3#ft| (T@Ref Real T@Ref Real) T@Field_18680_18681)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |wand_3#sm| (T@Ref Real T@Ref Real) T@Field_18664_18669)
(declare-fun sumMask (T@PolymorphicMapType_13674 T@PolymorphicMapType_13674 T@PolymorphicMapType_13674) Bool)
(declare-fun getPredWandId_7797_1195 (T@Field_17039_1195) Int)
(declare-fun getPredWandId_7937_7938 (T@Field_19426_19427) Int)
(declare-fun getPredWandId_7962_7963 (T@Field_20346_20347) Int)
(declare-fun |wand#sm| (Bool Bool) T@Field_17050_17055)
(declare-fun InsidePredicate_20346_19426 (T@Field_20346_20347 T@FrameType T@Field_19426_19427 T@FrameType) Bool)
(declare-fun InsidePredicate_20346_18651 (T@Field_20346_20347 T@FrameType T@Field_18680_18681 T@FrameType) Bool)
(declare-fun InsidePredicate_20346_18094 (T@Field_20346_20347 T@FrameType T@Field_18121_18122 T@FrameType) Bool)
(declare-fun InsidePredicate_20346_17509 (T@Field_20346_20347 T@FrameType T@Field_17538_17539 T@FrameType) Bool)
(declare-fun InsidePredicate_20346_17039 (T@Field_20346_20347 T@FrameType T@Field_17064_17065 T@FrameType) Bool)
(declare-fun InsidePredicate_20346_13713 (T@Field_20346_20347 T@FrameType T@Field_13713_7938 T@FrameType) Bool)
(declare-fun InsidePredicate_19426_20346 (T@Field_19426_19427 T@FrameType T@Field_20346_20347 T@FrameType) Bool)
(declare-fun InsidePredicate_19426_18651 (T@Field_19426_19427 T@FrameType T@Field_18680_18681 T@FrameType) Bool)
(declare-fun InsidePredicate_19426_18094 (T@Field_19426_19427 T@FrameType T@Field_18121_18122 T@FrameType) Bool)
(declare-fun InsidePredicate_19426_17509 (T@Field_19426_19427 T@FrameType T@Field_17538_17539 T@FrameType) Bool)
(declare-fun InsidePredicate_19426_17039 (T@Field_19426_19427 T@FrameType T@Field_17064_17065 T@FrameType) Bool)
(declare-fun InsidePredicate_19426_13713 (T@Field_19426_19427 T@FrameType T@Field_13713_7938 T@FrameType) Bool)
(declare-fun InsidePredicate_18651_20346 (T@Field_18680_18681 T@FrameType T@Field_20346_20347 T@FrameType) Bool)
(declare-fun InsidePredicate_18651_19426 (T@Field_18680_18681 T@FrameType T@Field_19426_19427 T@FrameType) Bool)
(declare-fun InsidePredicate_18651_18094 (T@Field_18680_18681 T@FrameType T@Field_18121_18122 T@FrameType) Bool)
(declare-fun InsidePredicate_18651_17509 (T@Field_18680_18681 T@FrameType T@Field_17538_17539 T@FrameType) Bool)
(declare-fun InsidePredicate_18651_17039 (T@Field_18680_18681 T@FrameType T@Field_17064_17065 T@FrameType) Bool)
(declare-fun InsidePredicate_18651_13713 (T@Field_18680_18681 T@FrameType T@Field_13713_7938 T@FrameType) Bool)
(declare-fun InsidePredicate_18094_20346 (T@Field_18121_18122 T@FrameType T@Field_20346_20347 T@FrameType) Bool)
(declare-fun InsidePredicate_18094_19426 (T@Field_18121_18122 T@FrameType T@Field_19426_19427 T@FrameType) Bool)
(declare-fun InsidePredicate_18094_18651 (T@Field_18121_18122 T@FrameType T@Field_18680_18681 T@FrameType) Bool)
(declare-fun InsidePredicate_18094_17509 (T@Field_18121_18122 T@FrameType T@Field_17538_17539 T@FrameType) Bool)
(declare-fun InsidePredicate_18094_17039 (T@Field_18121_18122 T@FrameType T@Field_17064_17065 T@FrameType) Bool)
(declare-fun InsidePredicate_18094_13713 (T@Field_18121_18122 T@FrameType T@Field_13713_7938 T@FrameType) Bool)
(declare-fun InsidePredicate_17509_20346 (T@Field_17538_17539 T@FrameType T@Field_20346_20347 T@FrameType) Bool)
(declare-fun InsidePredicate_17509_19426 (T@Field_17538_17539 T@FrameType T@Field_19426_19427 T@FrameType) Bool)
(declare-fun InsidePredicate_17509_18651 (T@Field_17538_17539 T@FrameType T@Field_18680_18681 T@FrameType) Bool)
(declare-fun InsidePredicate_17509_18094 (T@Field_17538_17539 T@FrameType T@Field_18121_18122 T@FrameType) Bool)
(declare-fun InsidePredicate_17509_17039 (T@Field_17538_17539 T@FrameType T@Field_17064_17065 T@FrameType) Bool)
(declare-fun InsidePredicate_17509_13713 (T@Field_17538_17539 T@FrameType T@Field_13713_7938 T@FrameType) Bool)
(declare-fun InsidePredicate_17039_20346 (T@Field_17064_17065 T@FrameType T@Field_20346_20347 T@FrameType) Bool)
(declare-fun InsidePredicate_17039_19426 (T@Field_17064_17065 T@FrameType T@Field_19426_19427 T@FrameType) Bool)
(declare-fun InsidePredicate_17039_18651 (T@Field_17064_17065 T@FrameType T@Field_18680_18681 T@FrameType) Bool)
(declare-fun InsidePredicate_17039_18094 (T@Field_17064_17065 T@FrameType T@Field_18121_18122 T@FrameType) Bool)
(declare-fun InsidePredicate_17039_17509 (T@Field_17064_17065 T@FrameType T@Field_17538_17539 T@FrameType) Bool)
(declare-fun InsidePredicate_17039_13713 (T@Field_17064_17065 T@FrameType T@Field_13713_7938 T@FrameType) Bool)
(declare-fun InsidePredicate_13713_20346 (T@Field_13713_7938 T@FrameType T@Field_20346_20347 T@FrameType) Bool)
(declare-fun InsidePredicate_13713_19426 (T@Field_13713_7938 T@FrameType T@Field_19426_19427 T@FrameType) Bool)
(declare-fun InsidePredicate_13713_18651 (T@Field_13713_7938 T@FrameType T@Field_18680_18681 T@FrameType) Bool)
(declare-fun InsidePredicate_13713_18094 (T@Field_13713_7938 T@FrameType T@Field_18121_18122 T@FrameType) Bool)
(declare-fun InsidePredicate_13713_17509 (T@Field_13713_7938 T@FrameType T@Field_17538_17539 T@FrameType) Bool)
(declare-fun InsidePredicate_13713_17039 (T@Field_13713_7938 T@FrameType T@Field_17064_17065 T@FrameType) Bool)
(assert (distinct g h)
)
(assert (forall ((Heap0 T@PolymorphicMapType_13653) (Heap1 T@PolymorphicMapType_13653) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((arg1 T@Ref) (arg2 Real) (arg3 T@Ref) (arg4 Real) ) (! (= (getPredWandId_7880_1941 (wand_3 arg1 arg2 arg3 arg4)) 5)
 :qid |stdinbpl.300:15|
 :skolemid |48|
 :pattern ( (wand_3 arg1 arg2 arg3 arg4))
)))
(assert (forall ((Heap T@PolymorphicMapType_13653) (Mask T@PolymorphicMapType_13674) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_13653) (Heap1@@0 T@PolymorphicMapType_13653) (Heap2 T@PolymorphicMapType_13653) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 Real) (arg3@@0 T@Ref) ) (! (IsWandField_7808_1407 (wand_1 arg1@@0 arg2@@0 arg3@@0))
 :qid |stdinbpl.216:15|
 :skolemid |29|
 :pattern ( (wand_1 arg1@@0 arg2@@0 arg3@@0))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 Real) (arg3@@1 T@Ref) ) (! (IsWandField_7819_7820 (|wand_1#ft| arg1@@1 arg2@@1 arg3@@1))
 :qid |stdinbpl.220:15|
 :skolemid |30|
 :pattern ( (|wand_1#ft| arg1@@1 arg2@@1 arg3@@1))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 Real) (arg3@@2 Bool) ) (! (IsWandField_7848_1672 (wand_2 arg1@@2 arg2@@2 arg3@@2))
 :qid |stdinbpl.248:15|
 :skolemid |36|
 :pattern ( (wand_2 arg1@@2 arg2@@2 arg3@@2))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 Real) (arg3@@3 Bool) ) (! (IsWandField_7857_7858 (|wand_2#ft| arg1@@3 arg2@@3 arg3@@3))
 :qid |stdinbpl.252:15|
 :skolemid |37|
 :pattern ( (|wand_2#ft| arg1@@3 arg2@@3 arg3@@3))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_20346_20347) ) (!  (not (select (|PolymorphicMapType_14202_20346_17065#PolymorphicMapType_14202| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_20346_17065#PolymorphicMapType_14202| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_20359_20364) ) (!  (not (select (|PolymorphicMapType_14202_20346_60412#PolymorphicMapType_14202| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_20346_60412#PolymorphicMapType_14202| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_7962_13727) ) (!  (not (select (|PolymorphicMapType_14202_20346_13727#PolymorphicMapType_14202| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_20346_13727#PolymorphicMapType_14202| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7962_53) ) (!  (not (select (|PolymorphicMapType_14202_20346_53#PolymorphicMapType_14202| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_20346_53#PolymorphicMapType_14202| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7962_1195) ) (!  (not (select (|PolymorphicMapType_14202_20346_2246#PolymorphicMapType_14202| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_20346_2246#PolymorphicMapType_14202| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_19426_19427) ) (!  (not (select (|PolymorphicMapType_14202_19426_17065#PolymorphicMapType_14202| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_19426_17065#PolymorphicMapType_14202| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_19439_19444) ) (!  (not (select (|PolymorphicMapType_14202_19426_59364#PolymorphicMapType_14202| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_19426_59364#PolymorphicMapType_14202| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_7937_13727) ) (!  (not (select (|PolymorphicMapType_14202_19426_13727#PolymorphicMapType_14202| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_19426_13727#PolymorphicMapType_14202| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_7937_53) ) (!  (not (select (|PolymorphicMapType_14202_19426_53#PolymorphicMapType_14202| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_19426_53#PolymorphicMapType_14202| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_7937_1195) ) (!  (not (select (|PolymorphicMapType_14202_19426_2246#PolymorphicMapType_14202| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_19426_2246#PolymorphicMapType_14202| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_18680_18681) ) (!  (not (select (|PolymorphicMapType_14202_18651_17065#PolymorphicMapType_14202| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_18651_17065#PolymorphicMapType_14202| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_18664_18669) ) (!  (not (select (|PolymorphicMapType_14202_18651_58316#PolymorphicMapType_14202| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_18651_58316#PolymorphicMapType_14202| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_18651_13727) ) (!  (not (select (|PolymorphicMapType_14202_18651_13727#PolymorphicMapType_14202| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_18651_13727#PolymorphicMapType_14202| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_18651_53) ) (!  (not (select (|PolymorphicMapType_14202_18651_53#PolymorphicMapType_14202| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_18651_53#PolymorphicMapType_14202| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_18651_1941) ) (!  (not (select (|PolymorphicMapType_14202_18651_2246#PolymorphicMapType_14202| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_18651_2246#PolymorphicMapType_14202| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_18121_18122) ) (!  (not (select (|PolymorphicMapType_14202_18094_17065#PolymorphicMapType_14202| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_18094_17065#PolymorphicMapType_14202| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_18106_18111) ) (!  (not (select (|PolymorphicMapType_14202_18094_57268#PolymorphicMapType_14202| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_18094_57268#PolymorphicMapType_14202| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_18094_13727) ) (!  (not (select (|PolymorphicMapType_14202_18094_13727#PolymorphicMapType_14202| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_18094_13727#PolymorphicMapType_14202| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_18094_53) ) (!  (not (select (|PolymorphicMapType_14202_18094_53#PolymorphicMapType_14202| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_18094_53#PolymorphicMapType_14202| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_18094_1672) ) (!  (not (select (|PolymorphicMapType_14202_18094_2246#PolymorphicMapType_14202| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_18094_2246#PolymorphicMapType_14202| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_17538_17539) ) (!  (not (select (|PolymorphicMapType_14202_17509_17065#PolymorphicMapType_14202| ZeroPMask) o_2@@19 f_4@@19))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_17509_17065#PolymorphicMapType_14202| ZeroPMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_17522_17527) ) (!  (not (select (|PolymorphicMapType_14202_17509_56220#PolymorphicMapType_14202| ZeroPMask) o_2@@20 f_4@@20))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_17509_56220#PolymorphicMapType_14202| ZeroPMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_17509_13727) ) (!  (not (select (|PolymorphicMapType_14202_17509_13727#PolymorphicMapType_14202| ZeroPMask) o_2@@21 f_4@@21))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_17509_13727#PolymorphicMapType_14202| ZeroPMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_17509_53) ) (!  (not (select (|PolymorphicMapType_14202_17509_53#PolymorphicMapType_14202| ZeroPMask) o_2@@22 f_4@@22))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_17509_53#PolymorphicMapType_14202| ZeroPMask) o_2@@22 f_4@@22))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_17509_1407) ) (!  (not (select (|PolymorphicMapType_14202_17509_2246#PolymorphicMapType_14202| ZeroPMask) o_2@@23 f_4@@23))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_17509_2246#PolymorphicMapType_14202| ZeroPMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_17064_17065) ) (!  (not (select (|PolymorphicMapType_14202_17039_17065#PolymorphicMapType_14202| ZeroPMask) o_2@@24 f_4@@24))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_17039_17065#PolymorphicMapType_14202| ZeroPMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_17050_17055) ) (!  (not (select (|PolymorphicMapType_14202_17039_55172#PolymorphicMapType_14202| ZeroPMask) o_2@@25 f_4@@25))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_17039_55172#PolymorphicMapType_14202| ZeroPMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_17039_13727) ) (!  (not (select (|PolymorphicMapType_14202_17039_13727#PolymorphicMapType_14202| ZeroPMask) o_2@@26 f_4@@26))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_17039_13727#PolymorphicMapType_14202| ZeroPMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_17039_53) ) (!  (not (select (|PolymorphicMapType_14202_17039_53#PolymorphicMapType_14202| ZeroPMask) o_2@@27 f_4@@27))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_17039_53#PolymorphicMapType_14202| ZeroPMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_17039_1195) ) (!  (not (select (|PolymorphicMapType_14202_17039_2246#PolymorphicMapType_14202| ZeroPMask) o_2@@28 f_4@@28))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_17039_2246#PolymorphicMapType_14202| ZeroPMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_13713_7938) ) (!  (not (select (|PolymorphicMapType_14202_7928_17065#PolymorphicMapType_14202| ZeroPMask) o_2@@29 f_4@@29))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_7928_17065#PolymorphicMapType_14202| ZeroPMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_13713_17055) ) (!  (not (select (|PolymorphicMapType_14202_7928_54124#PolymorphicMapType_14202| ZeroPMask) o_2@@30 f_4@@30))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_7928_54124#PolymorphicMapType_14202| ZeroPMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_13726_13727) ) (!  (not (select (|PolymorphicMapType_14202_7928_13727#PolymorphicMapType_14202| ZeroPMask) o_2@@31 f_4@@31))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_7928_13727#PolymorphicMapType_14202| ZeroPMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_13713_53) ) (!  (not (select (|PolymorphicMapType_14202_7928_53#PolymorphicMapType_14202| ZeroPMask) o_2@@32 f_4@@32))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_7928_53#PolymorphicMapType_14202| ZeroPMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_19293_2246) ) (!  (not (select (|PolymorphicMapType_14202_7928_2246#PolymorphicMapType_14202| ZeroPMask) o_2@@33 f_4@@33))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14202_7928_2246#PolymorphicMapType_14202| ZeroPMask) o_2@@33 f_4@@33))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 Real) (arg3@@4 T@Ref) ) (! (= (getPredWandId_7808_1407 (wand_1 arg1@@4 arg2@@4 arg3@@4)) 3)
 :qid |stdinbpl.236:15|
 :skolemid |34|
 :pattern ( (wand_1 arg1@@4 arg2@@4 arg3@@4))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 Real) (arg3@@5 Bool) ) (! (= (getPredWandId_7848_1672 (wand_2 arg1@@5 arg2@@5 arg3@@5)) 4)
 :qid |stdinbpl.268:15|
 :skolemid |41|
 :pattern ( (wand_2 arg1@@5 arg2@@5 arg3@@5))
)))
(assert (forall ((arg1@@6 T@Ref) (arg2@@6 Real) (arg3@@6 T@Ref) ) (!  (not (IsPredicateField_7808_1407 (wand_1 arg1@@6 arg2@@6 arg3@@6)))
 :qid |stdinbpl.224:15|
 :skolemid |31|
 :pattern ( (wand_1 arg1@@6 arg2@@6 arg3@@6))
)))
(assert (forall ((arg1@@7 T@Ref) (arg2@@7 Real) (arg3@@7 T@Ref) ) (!  (not (IsPredicateField_7819_7820 (|wand_1#ft| arg1@@7 arg2@@7 arg3@@7)))
 :qid |stdinbpl.228:15|
 :skolemid |32|
 :pattern ( (|wand_1#ft| arg1@@7 arg2@@7 arg3@@7))
)))
(assert (forall ((arg1@@8 T@Ref) (arg2@@8 Real) (arg3@@8 Bool) ) (!  (not (IsPredicateField_7848_1672 (wand_2 arg1@@8 arg2@@8 arg3@@8)))
 :qid |stdinbpl.256:15|
 :skolemid |38|
 :pattern ( (wand_2 arg1@@8 arg2@@8 arg3@@8))
)))
(assert (forall ((arg1@@9 T@Ref) (arg2@@9 Real) (arg3@@9 Bool) ) (!  (not (IsPredicateField_7857_7858 (|wand_2#ft| arg1@@9 arg2@@9 arg3@@9)))
 :qid |stdinbpl.260:15|
 :skolemid |39|
 :pattern ( (|wand_2#ft| arg1@@9 arg2@@9 arg3@@9))
)))
(assert (forall ((arg1@@10 Bool) (arg2@@10 Bool) ) (! (IsWandField_7797_1195 (wand arg1@@10 arg2@@10))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (wand arg1@@10 arg2@@10))
)))
(assert (forall ((arg1@@11 Bool) (arg2@@11 Bool) ) (! (IsWandField_7802_7803 (|wand#ft| arg1@@11 arg2@@11))
 :qid |stdinbpl.188:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@11 arg2@@11))
)))
(assert (forall ((arg1@@12 Bool) (arg2@@12 Bool) ) (!  (not (IsPredicateField_7797_1195 (wand arg1@@12 arg2@@12)))
 :qid |stdinbpl.192:15|
 :skolemid |24|
 :pattern ( (wand arg1@@12 arg2@@12))
)))
(assert (forall ((arg1@@13 Bool) (arg2@@13 Bool) ) (!  (not (IsPredicateField_7802_7803 (|wand#ft| arg1@@13 arg2@@13)))
 :qid |stdinbpl.196:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@13 arg2@@13))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_7937_7938 (P x))
 :qid |stdinbpl.334:15|
 :skolemid |51|
 :pattern ( (P x))
)))
(assert (forall ((x@@0 T@Ref) ) (! (IsPredicateField_7962_7963 (Q x@@0))
 :qid |stdinbpl.388:15|
 :skolemid |57|
 :pattern ( (Q x@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_13653) (x@@1 T@Ref) ) (! (|P#everUsed_7937| (P x@@1))
 :qid |stdinbpl.353:15|
 :skolemid |55|
 :pattern ( (|P#trigger_7937| Heap@@0 (P x@@1)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_13653) (x@@2 T@Ref) ) (! (|Q#everUsed_7962| (Q x@@2))
 :qid |stdinbpl.407:15|
 :skolemid |61|
 :pattern ( (|Q#trigger_7962| Heap@@1 (Q x@@2)))
)))
(assert (forall ((arg1@@14 T@Ref) (arg2@@14 Real) (arg3@@10 Bool) (arg1_2 T@Ref) (arg2_2 Real) (arg3_2 Bool) ) (!  (=> (= (wand_2 arg1@@14 arg2@@14 arg3@@10) (wand_2 arg1_2 arg2_2 arg3_2)) (and (= arg1@@14 arg1_2) (and (= arg2@@14 arg2_2) (= arg3@@10 arg3_2))))
 :qid |stdinbpl.272:15|
 :skolemid |42|
 :pattern ( (wand_2 arg1@@14 arg2@@14 arg3@@10) (wand_2 arg1_2 arg2_2 arg3_2))
)))
(assert (forall ((arg1@@15 T@Ref) (arg2@@15 Real) (arg3@@11 T@Ref) ) (! (= (|wand_1#sm| arg1@@15 arg2@@15 arg3@@11) (WandMaskField_7819 (|wand_1#ft| arg1@@15 arg2@@15 arg3@@11)))
 :qid |stdinbpl.232:15|
 :skolemid |33|
 :pattern ( (WandMaskField_7819 (|wand_1#ft| arg1@@15 arg2@@15 arg3@@11)))
)))
(assert (forall ((arg1@@16 T@Ref) (arg2@@16 Real) (arg3@@12 Bool) ) (! (= (|wand_2#sm| arg1@@16 arg2@@16 arg3@@12) (WandMaskField_7857 (|wand_2#ft| arg1@@16 arg2@@16 arg3@@12)))
 :qid |stdinbpl.264:15|
 :skolemid |40|
 :pattern ( (WandMaskField_7857 (|wand_2#ft| arg1@@16 arg2@@16 arg3@@12)))
)))
(assert (forall ((arg1@@17 T@Ref) (arg2@@17 Real) (arg3@@13 T@Ref) (arg1_2@@0 T@Ref) (arg2_2@@0 Real) (arg3_2@@0 T@Ref) ) (!  (=> (= (wand_1 arg1@@17 arg2@@17 arg3@@13) (wand_1 arg1_2@@0 arg2_2@@0 arg3_2@@0)) (and (= arg1@@17 arg1_2@@0) (and (= arg2@@17 arg2_2@@0) (= arg3@@13 arg3_2@@0))))
 :qid |stdinbpl.240:15|
 :skolemid |35|
 :pattern ( (wand_1 arg1@@17 arg2@@17 arg3@@13) (wand_1 arg1_2@@0 arg2_2@@0 arg3_2@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_13653) (ExhaleHeap T@PolymorphicMapType_13653) (Mask@@0 T@PolymorphicMapType_13674) (pm_f_5 T@Field_18680_18681) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_18651_7938 Mask@@0 null pm_f_5) (IsPredicateField_7893_7894 pm_f_5)) (= (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@2) null (PredicateMaskField_18651 pm_f_5)) (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap) null (PredicateMaskField_18651 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_7893_7894 pm_f_5) (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap) null (PredicateMaskField_18651 pm_f_5)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_13653) (ExhaleHeap@@0 T@PolymorphicMapType_13653) (Mask@@1 T@PolymorphicMapType_13674) (pm_f_5@@0 T@Field_18121_18122) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_18094_7938 Mask@@1 null pm_f_5@@0) (IsPredicateField_7857_7858 pm_f_5@@0)) (= (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@3) null (PredicateMaskField_18094 pm_f_5@@0)) (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@0) null (PredicateMaskField_18094 pm_f_5@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_7857_7858 pm_f_5@@0) (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@0) null (PredicateMaskField_18094 pm_f_5@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_13653) (ExhaleHeap@@1 T@PolymorphicMapType_13653) (Mask@@2 T@PolymorphicMapType_13674) (pm_f_5@@1 T@Field_17538_17539) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_17509_7938 Mask@@2 null pm_f_5@@1) (IsPredicateField_7819_7820 pm_f_5@@1)) (= (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@4) null (PredicateMaskField_17509 pm_f_5@@1)) (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@1) null (PredicateMaskField_17509 pm_f_5@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_7819_7820 pm_f_5@@1) (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@1) null (PredicateMaskField_17509 pm_f_5@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_13653) (ExhaleHeap@@2 T@PolymorphicMapType_13653) (Mask@@3 T@PolymorphicMapType_13674) (pm_f_5@@2 T@Field_17064_17065) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_17039_7938 Mask@@3 null pm_f_5@@2) (IsPredicateField_7802_7803 pm_f_5@@2)) (= (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@5) null (PredicateMaskField_17039 pm_f_5@@2)) (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@2) null (PredicateMaskField_17039 pm_f_5@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsPredicateField_7802_7803 pm_f_5@@2) (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@2) null (PredicateMaskField_17039 pm_f_5@@2)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_13653) (ExhaleHeap@@3 T@PolymorphicMapType_13653) (Mask@@4 T@PolymorphicMapType_13674) (pm_f_5@@3 T@Field_13713_7938) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_13713_7938 Mask@@4 null pm_f_5@@3) (IsPredicateField_13713_51781 pm_f_5@@3)) (= (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@6) null (PredicateMaskField_13713 pm_f_5@@3)) (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@3) null (PredicateMaskField_13713 pm_f_5@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsPredicateField_13713_51781 pm_f_5@@3) (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@3) null (PredicateMaskField_13713 pm_f_5@@3)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_13653) (ExhaleHeap@@4 T@PolymorphicMapType_13653) (Mask@@5 T@PolymorphicMapType_13674) (pm_f_5@@4 T@Field_20346_20347) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_7962_7963 Mask@@5 null pm_f_5@@4) (IsPredicateField_7962_7963 pm_f_5@@4)) (= (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@7) null (PredicateMaskField_7962 pm_f_5@@4)) (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@4) null (PredicateMaskField_7962 pm_f_5@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsPredicateField_7962_7963 pm_f_5@@4) (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@4) null (PredicateMaskField_7962 pm_f_5@@4)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_13653) (ExhaleHeap@@5 T@PolymorphicMapType_13653) (Mask@@6 T@PolymorphicMapType_13674) (pm_f_5@@5 T@Field_19426_19427) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_7937_7938 Mask@@6 null pm_f_5@@5) (IsPredicateField_7937_7938 pm_f_5@@5)) (= (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@8) null (PredicateMaskField_7937 pm_f_5@@5)) (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@5) null (PredicateMaskField_7937 pm_f_5@@5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (IsPredicateField_7937_7938 pm_f_5@@5) (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@5) null (PredicateMaskField_7937 pm_f_5@@5)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_13653) (ExhaleHeap@@6 T@PolymorphicMapType_13653) (Mask@@7 T@PolymorphicMapType_13674) (pm_f_5@@6 T@Field_18680_18681) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_18651_7938 Mask@@7 null pm_f_5@@6) (IsWandField_7893_7894 pm_f_5@@6)) (= (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@9) null (WandMaskField_7893 pm_f_5@@6)) (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@6) null (WandMaskField_7893 pm_f_5@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (IsWandField_7893_7894 pm_f_5@@6) (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@6) null (WandMaskField_7893 pm_f_5@@6)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_13653) (ExhaleHeap@@7 T@PolymorphicMapType_13653) (Mask@@8 T@PolymorphicMapType_13674) (pm_f_5@@7 T@Field_18121_18122) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_18094_7938 Mask@@8 null pm_f_5@@7) (IsWandField_7857_7858 pm_f_5@@7)) (= (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@10) null (WandMaskField_7857 pm_f_5@@7)) (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@7) null (WandMaskField_7857 pm_f_5@@7)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (IsWandField_7857_7858 pm_f_5@@7) (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@7) null (WandMaskField_7857 pm_f_5@@7)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_13653) (ExhaleHeap@@8 T@PolymorphicMapType_13653) (Mask@@9 T@PolymorphicMapType_13674) (pm_f_5@@8 T@Field_17538_17539) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_17509_7938 Mask@@9 null pm_f_5@@8) (IsWandField_7819_7820 pm_f_5@@8)) (= (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@11) null (WandMaskField_7819 pm_f_5@@8)) (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@8) null (WandMaskField_7819 pm_f_5@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (IsWandField_7819_7820 pm_f_5@@8) (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@8) null (WandMaskField_7819 pm_f_5@@8)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_13653) (ExhaleHeap@@9 T@PolymorphicMapType_13653) (Mask@@10 T@PolymorphicMapType_13674) (pm_f_5@@9 T@Field_17064_17065) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_17039_7938 Mask@@10 null pm_f_5@@9) (IsWandField_7802_7803 pm_f_5@@9)) (= (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@12) null (WandMaskField_7802 pm_f_5@@9)) (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@9) null (WandMaskField_7802 pm_f_5@@9)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (IsWandField_7802_7803 pm_f_5@@9) (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@9) null (WandMaskField_7802 pm_f_5@@9)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_13653) (ExhaleHeap@@10 T@PolymorphicMapType_13653) (Mask@@11 T@PolymorphicMapType_13674) (pm_f_5@@10 T@Field_13713_7938) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_13713_7938 Mask@@11 null pm_f_5@@10) (IsWandField_13713_63543 pm_f_5@@10)) (= (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@13) null (WandMaskField_13713 pm_f_5@@10)) (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@10) null (WandMaskField_13713 pm_f_5@@10)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (IsWandField_13713_63543 pm_f_5@@10) (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@10) null (WandMaskField_13713 pm_f_5@@10)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_13653) (ExhaleHeap@@11 T@PolymorphicMapType_13653) (Mask@@12 T@PolymorphicMapType_13674) (pm_f_5@@11 T@Field_20346_20347) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (=> (and (HasDirectPerm_7962_7963 Mask@@12 null pm_f_5@@11) (IsWandField_7962_63186 pm_f_5@@11)) (= (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@14) null (WandMaskField_7962 pm_f_5@@11)) (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@11) null (WandMaskField_7962 pm_f_5@@11)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (IsWandField_7962_63186 pm_f_5@@11) (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@11) null (WandMaskField_7962 pm_f_5@@11)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_13653) (ExhaleHeap@@12 T@PolymorphicMapType_13653) (Mask@@13 T@PolymorphicMapType_13674) (pm_f_5@@12 T@Field_19426_19427) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13) (=> (and (HasDirectPerm_7937_7938 Mask@@13 null pm_f_5@@12) (IsWandField_7937_62829 pm_f_5@@12)) (= (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@15) null (WandMaskField_7937 pm_f_5@@12)) (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@12) null (WandMaskField_7937 pm_f_5@@12)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13) (IsWandField_7937_62829 pm_f_5@@12) (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@12) null (WandMaskField_7937 pm_f_5@@12)))
)))
(assert (forall ((x@@3 T@Ref) (x2 T@Ref) ) (!  (=> (= (P x@@3) (P x2)) (= x@@3 x2))
 :qid |stdinbpl.344:15|
 :skolemid |53|
 :pattern ( (P x@@3) (P x2))
)))
(assert (forall ((x@@4 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|P#sm| x@@4) (|P#sm| x2@@0)) (= x@@4 x2@@0))
 :qid |stdinbpl.348:15|
 :skolemid |54|
 :pattern ( (|P#sm| x@@4) (|P#sm| x2@@0))
)))
(assert (forall ((x@@5 T@Ref) (x2@@1 T@Ref) ) (!  (=> (= (Q x@@5) (Q x2@@1)) (= x@@5 x2@@1))
 :qid |stdinbpl.398:15|
 :skolemid |59|
 :pattern ( (Q x@@5) (Q x2@@1))
)))
(assert (forall ((x@@6 T@Ref) (x2@@2 T@Ref) ) (!  (=> (= (|Q#sm| x@@6) (|Q#sm| x2@@2)) (= x@@6 x2@@2))
 :qid |stdinbpl.402:15|
 :skolemid |60|
 :pattern ( (|Q#sm| x@@6) (|Q#sm| x2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@16 T@PolymorphicMapType_13653) (ExhaleHeap@@13 T@PolymorphicMapType_13653) (Mask@@14 T@PolymorphicMapType_13674) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@14) (=> (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@16) o_12 $allocated) (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@13) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@14) (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@13) o_12 $allocated))
)))
(assert (forall ((p T@Field_20346_20347) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_20346_20346 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_20346_20346 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_19426_19427) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_19426_19426 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_19426_19426 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_18680_18681) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_18651_18651 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_18651_18651 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_18121_18122) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_18094_18094 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_18094_18094 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((p@@3 T@Field_17538_17539) (v_1@@3 T@FrameType) (w@@3 T@FrameType) ) (!  (not (InsidePredicate_17509_17509 p@@3 v_1@@3 p@@3 w@@3))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_17509_17509 p@@3 v_1@@3 p@@3 w@@3))
)))
(assert (forall ((p@@4 T@Field_17064_17065) (v_1@@4 T@FrameType) (w@@4 T@FrameType) ) (!  (not (InsidePredicate_17039_17039 p@@4 v_1@@4 p@@4 w@@4))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_17039_17039 p@@4 v_1@@4 p@@4 w@@4))
)))
(assert (forall ((p@@5 T@Field_13713_7938) (v_1@@5 T@FrameType) (w@@5 T@FrameType) ) (!  (not (InsidePredicate_13713_13713 p@@5 v_1@@5 p@@5 w@@5))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13713_13713 p@@5 v_1@@5 p@@5 w@@5))
)))
(assert  (not (IsPredicateField_7928_2246 f_7)))
(assert  (not (IsWandField_7928_2246 f_7)))
(assert  (not (IsPredicateField_7930_7931 g)))
(assert  (not (IsWandField_7930_7931 g)))
(assert  (not (IsPredicateField_7930_7931 h)))
(assert  (not (IsWandField_7930_7931 h)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_13653) (ExhaleHeap@@14 T@PolymorphicMapType_13653) (Mask@@15 T@PolymorphicMapType_13674) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@15) (succHeap Heap@@17 ExhaleHeap@@14))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@15))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_13674) (o_2@@34 T@Ref) (f_4@@34 T@Field_18664_18669) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_13674_7880_80610#PolymorphicMapType_13674| Mask@@16) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_7880_88647 f_4@@34))) (not (IsWandField_7880_88663 f_4@@34))) (<= (select (|PolymorphicMapType_13674_7880_80610#PolymorphicMapType_13674| Mask@@16) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_13674_7880_80610#PolymorphicMapType_13674| Mask@@16) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_13674) (o_2@@35 T@Ref) (f_4@@35 T@Field_18651_13727) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_13674_7880_13727#PolymorphicMapType_13674| Mask@@17) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_7880_13727 f_4@@35))) (not (IsWandField_7880_13727 f_4@@35))) (<= (select (|PolymorphicMapType_13674_7880_13727#PolymorphicMapType_13674| Mask@@17) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_13674_7880_13727#PolymorphicMapType_13674| Mask@@17) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_13674) (o_2@@36 T@Ref) (f_4@@36 T@Field_18651_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_13674_7880_53#PolymorphicMapType_13674| Mask@@18) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_7880_53 f_4@@36))) (not (IsWandField_7880_53 f_4@@36))) (<= (select (|PolymorphicMapType_13674_7880_53#PolymorphicMapType_13674| Mask@@18) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_13674_7880_53#PolymorphicMapType_13674| Mask@@18) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_13674) (o_2@@37 T@Ref) (f_4@@37 T@Field_18680_18681) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_13674_7880_7938#PolymorphicMapType_13674| Mask@@19) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_7893_7894 f_4@@37))) (not (IsWandField_7893_7894 f_4@@37))) (<= (select (|PolymorphicMapType_13674_7880_7938#PolymorphicMapType_13674| Mask@@19) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_13674_7880_7938#PolymorphicMapType_13674| Mask@@19) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_13674) (o_2@@38 T@Ref) (f_4@@38 T@Field_18651_1941) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_13674_7880_1941#PolymorphicMapType_13674| Mask@@20) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_7880_1941 f_4@@38))) (not (IsWandField_7880_1941 f_4@@38))) (<= (select (|PolymorphicMapType_13674_7880_1941#PolymorphicMapType_13674| Mask@@20) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_13674_7880_1941#PolymorphicMapType_13674| Mask@@20) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_13674) (o_2@@39 T@Ref) (f_4@@39 T@Field_18106_18111) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_13674_7848_80196#PolymorphicMapType_13674| Mask@@21) o_2@@39 f_4@@39) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_7848_87830 f_4@@39))) (not (IsWandField_7848_87846 f_4@@39))) (<= (select (|PolymorphicMapType_13674_7848_80196#PolymorphicMapType_13674| Mask@@21) o_2@@39 f_4@@39) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_13674_7848_80196#PolymorphicMapType_13674| Mask@@21) o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_13674) (o_2@@40 T@Ref) (f_4@@40 T@Field_18094_13727) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_13674_7848_13727#PolymorphicMapType_13674| Mask@@22) o_2@@40 f_4@@40) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_7848_13727 f_4@@40))) (not (IsWandField_7848_13727 f_4@@40))) (<= (select (|PolymorphicMapType_13674_7848_13727#PolymorphicMapType_13674| Mask@@22) o_2@@40 f_4@@40) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_13674_7848_13727#PolymorphicMapType_13674| Mask@@22) o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_13674) (o_2@@41 T@Ref) (f_4@@41 T@Field_18094_53) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_13674_7848_53#PolymorphicMapType_13674| Mask@@23) o_2@@41 f_4@@41) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_7848_53 f_4@@41))) (not (IsWandField_7848_53 f_4@@41))) (<= (select (|PolymorphicMapType_13674_7848_53#PolymorphicMapType_13674| Mask@@23) o_2@@41 f_4@@41) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_13674_7848_53#PolymorphicMapType_13674| Mask@@23) o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_13674) (o_2@@42 T@Ref) (f_4@@42 T@Field_18121_18122) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_13674_7848_7938#PolymorphicMapType_13674| Mask@@24) o_2@@42 f_4@@42) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_7857_7858 f_4@@42))) (not (IsWandField_7857_7858 f_4@@42))) (<= (select (|PolymorphicMapType_13674_7848_7938#PolymorphicMapType_13674| Mask@@24) o_2@@42 f_4@@42) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_13674_7848_7938#PolymorphicMapType_13674| Mask@@24) o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_13674) (o_2@@43 T@Ref) (f_4@@43 T@Field_18094_1672) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_13674_7848_1672#PolymorphicMapType_13674| Mask@@25) o_2@@43 f_4@@43) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_7848_1672 f_4@@43))) (not (IsWandField_7848_1672 f_4@@43))) (<= (select (|PolymorphicMapType_13674_7848_1672#PolymorphicMapType_13674| Mask@@25) o_2@@43 f_4@@43) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_13674_7848_1672#PolymorphicMapType_13674| Mask@@25) o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_13674) (o_2@@44 T@Ref) (f_4@@44 T@Field_20359_20364) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_13674_7962_79782#PolymorphicMapType_13674| Mask@@26) o_2@@44 f_4@@44) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_7962_87013 f_4@@44))) (not (IsWandField_7962_87029 f_4@@44))) (<= (select (|PolymorphicMapType_13674_7962_79782#PolymorphicMapType_13674| Mask@@26) o_2@@44 f_4@@44) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_13674_7962_79782#PolymorphicMapType_13674| Mask@@26) o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_13674) (o_2@@45 T@Ref) (f_4@@45 T@Field_7962_13727) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_13674_7962_13727#PolymorphicMapType_13674| Mask@@27) o_2@@45 f_4@@45) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_7962_13727 f_4@@45))) (not (IsWandField_7962_13727 f_4@@45))) (<= (select (|PolymorphicMapType_13674_7962_13727#PolymorphicMapType_13674| Mask@@27) o_2@@45 f_4@@45) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_13674_7962_13727#PolymorphicMapType_13674| Mask@@27) o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_13674) (o_2@@46 T@Ref) (f_4@@46 T@Field_7962_53) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_13674_7962_53#PolymorphicMapType_13674| Mask@@28) o_2@@46 f_4@@46) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_7962_53 f_4@@46))) (not (IsWandField_7962_53 f_4@@46))) (<= (select (|PolymorphicMapType_13674_7962_53#PolymorphicMapType_13674| Mask@@28) o_2@@46 f_4@@46) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_13674_7962_53#PolymorphicMapType_13674| Mask@@28) o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_13674) (o_2@@47 T@Ref) (f_4@@47 T@Field_20346_20347) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_13674_7962_7963#PolymorphicMapType_13674| Mask@@29) o_2@@47 f_4@@47) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_7962_7963 f_4@@47))) (not (IsWandField_7962_63186 f_4@@47))) (<= (select (|PolymorphicMapType_13674_7962_7963#PolymorphicMapType_13674| Mask@@29) o_2@@47 f_4@@47) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_13674_7962_7963#PolymorphicMapType_13674| Mask@@29) o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_13674) (o_2@@48 T@Ref) (f_4@@48 T@Field_7962_1195) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_13674_7962_2246#PolymorphicMapType_13674| Mask@@30) o_2@@48 f_4@@48) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_7962_2246 f_4@@48))) (not (IsWandField_7962_2246 f_4@@48))) (<= (select (|PolymorphicMapType_13674_7962_2246#PolymorphicMapType_13674| Mask@@30) o_2@@48 f_4@@48) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_13674_7962_2246#PolymorphicMapType_13674| Mask@@30) o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_13674) (o_2@@49 T@Ref) (f_4@@49 T@Field_17522_17527) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_13674_7808_79371#PolymorphicMapType_13674| Mask@@31) o_2@@49 f_4@@49) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_7808_86182 f_4@@49))) (not (IsWandField_7808_86198 f_4@@49))) (<= (select (|PolymorphicMapType_13674_7808_79371#PolymorphicMapType_13674| Mask@@31) o_2@@49 f_4@@49) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_13674_7808_79371#PolymorphicMapType_13674| Mask@@31) o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_13674) (o_2@@50 T@Ref) (f_4@@50 T@Field_17509_13727) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_13674_7808_13727#PolymorphicMapType_13674| Mask@@32) o_2@@50 f_4@@50) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_7808_13727 f_4@@50))) (not (IsWandField_7808_13727 f_4@@50))) (<= (select (|PolymorphicMapType_13674_7808_13727#PolymorphicMapType_13674| Mask@@32) o_2@@50 f_4@@50) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_13674_7808_13727#PolymorphicMapType_13674| Mask@@32) o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_13674) (o_2@@51 T@Ref) (f_4@@51 T@Field_17509_53) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_13674_7808_53#PolymorphicMapType_13674| Mask@@33) o_2@@51 f_4@@51) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_7808_53 f_4@@51))) (not (IsWandField_7808_53 f_4@@51))) (<= (select (|PolymorphicMapType_13674_7808_53#PolymorphicMapType_13674| Mask@@33) o_2@@51 f_4@@51) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_13674_7808_53#PolymorphicMapType_13674| Mask@@33) o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_13674) (o_2@@52 T@Ref) (f_4@@52 T@Field_17538_17539) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_13674_7808_7938#PolymorphicMapType_13674| Mask@@34) o_2@@52 f_4@@52) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_7819_7820 f_4@@52))) (not (IsWandField_7819_7820 f_4@@52))) (<= (select (|PolymorphicMapType_13674_7808_7938#PolymorphicMapType_13674| Mask@@34) o_2@@52 f_4@@52) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_13674_7808_7938#PolymorphicMapType_13674| Mask@@34) o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_13674) (o_2@@53 T@Ref) (f_4@@53 T@Field_17509_1407) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_13674_7808_1407#PolymorphicMapType_13674| Mask@@35) o_2@@53 f_4@@53) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_7808_1407 f_4@@53))) (not (IsWandField_7808_1407 f_4@@53))) (<= (select (|PolymorphicMapType_13674_7808_1407#PolymorphicMapType_13674| Mask@@35) o_2@@53 f_4@@53) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_13674_7808_1407#PolymorphicMapType_13674| Mask@@35) o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_13674) (o_2@@54 T@Ref) (f_4@@54 T@Field_17050_17055) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_13674_7797_78957#PolymorphicMapType_13674| Mask@@36) o_2@@54 f_4@@54) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_7797_85365 f_4@@54))) (not (IsWandField_7797_85381 f_4@@54))) (<= (select (|PolymorphicMapType_13674_7797_78957#PolymorphicMapType_13674| Mask@@36) o_2@@54 f_4@@54) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_13674_7797_78957#PolymorphicMapType_13674| Mask@@36) o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_13674) (o_2@@55 T@Ref) (f_4@@55 T@Field_17039_13727) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_13674_7797_13727#PolymorphicMapType_13674| Mask@@37) o_2@@55 f_4@@55) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_7797_13727 f_4@@55))) (not (IsWandField_7797_13727 f_4@@55))) (<= (select (|PolymorphicMapType_13674_7797_13727#PolymorphicMapType_13674| Mask@@37) o_2@@55 f_4@@55) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_13674_7797_13727#PolymorphicMapType_13674| Mask@@37) o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_13674) (o_2@@56 T@Ref) (f_4@@56 T@Field_17039_53) ) (!  (=> (GoodMask Mask@@38) (and (>= (select (|PolymorphicMapType_13674_7797_53#PolymorphicMapType_13674| Mask@@38) o_2@@56 f_4@@56) NoPerm) (=> (and (and (and (GoodMask Mask@@38) AssumePermUpperBound) (not (IsPredicateField_7797_53 f_4@@56))) (not (IsWandField_7797_53 f_4@@56))) (<= (select (|PolymorphicMapType_13674_7797_53#PolymorphicMapType_13674| Mask@@38) o_2@@56 f_4@@56) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@38) (select (|PolymorphicMapType_13674_7797_53#PolymorphicMapType_13674| Mask@@38) o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_13674) (o_2@@57 T@Ref) (f_4@@57 T@Field_17064_17065) ) (!  (=> (GoodMask Mask@@39) (and (>= (select (|PolymorphicMapType_13674_7797_7938#PolymorphicMapType_13674| Mask@@39) o_2@@57 f_4@@57) NoPerm) (=> (and (and (and (GoodMask Mask@@39) AssumePermUpperBound) (not (IsPredicateField_7802_7803 f_4@@57))) (not (IsWandField_7802_7803 f_4@@57))) (<= (select (|PolymorphicMapType_13674_7797_7938#PolymorphicMapType_13674| Mask@@39) o_2@@57 f_4@@57) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@39) (select (|PolymorphicMapType_13674_7797_7938#PolymorphicMapType_13674| Mask@@39) o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_13674) (o_2@@58 T@Ref) (f_4@@58 T@Field_17039_1195) ) (!  (=> (GoodMask Mask@@40) (and (>= (select (|PolymorphicMapType_13674_7797_1195#PolymorphicMapType_13674| Mask@@40) o_2@@58 f_4@@58) NoPerm) (=> (and (and (and (GoodMask Mask@@40) AssumePermUpperBound) (not (IsPredicateField_7797_1195 f_4@@58))) (not (IsWandField_7797_1195 f_4@@58))) (<= (select (|PolymorphicMapType_13674_7797_1195#PolymorphicMapType_13674| Mask@@40) o_2@@58 f_4@@58) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@40) (select (|PolymorphicMapType_13674_7797_1195#PolymorphicMapType_13674| Mask@@40) o_2@@58 f_4@@58))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_13674) (o_2@@59 T@Ref) (f_4@@59 T@Field_19439_19444) ) (!  (=> (GoodMask Mask@@41) (and (>= (select (|PolymorphicMapType_13674_7937_78543#PolymorphicMapType_13674| Mask@@41) o_2@@59 f_4@@59) NoPerm) (=> (and (and (and (GoodMask Mask@@41) AssumePermUpperBound) (not (IsPredicateField_7937_84548 f_4@@59))) (not (IsWandField_7937_84564 f_4@@59))) (<= (select (|PolymorphicMapType_13674_7937_78543#PolymorphicMapType_13674| Mask@@41) o_2@@59 f_4@@59) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@41) (select (|PolymorphicMapType_13674_7937_78543#PolymorphicMapType_13674| Mask@@41) o_2@@59 f_4@@59))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_13674) (o_2@@60 T@Ref) (f_4@@60 T@Field_7937_13727) ) (!  (=> (GoodMask Mask@@42) (and (>= (select (|PolymorphicMapType_13674_7937_13727#PolymorphicMapType_13674| Mask@@42) o_2@@60 f_4@@60) NoPerm) (=> (and (and (and (GoodMask Mask@@42) AssumePermUpperBound) (not (IsPredicateField_7937_13727 f_4@@60))) (not (IsWandField_7937_13727 f_4@@60))) (<= (select (|PolymorphicMapType_13674_7937_13727#PolymorphicMapType_13674| Mask@@42) o_2@@60 f_4@@60) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@42) (select (|PolymorphicMapType_13674_7937_13727#PolymorphicMapType_13674| Mask@@42) o_2@@60 f_4@@60))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_13674) (o_2@@61 T@Ref) (f_4@@61 T@Field_7937_53) ) (!  (=> (GoodMask Mask@@43) (and (>= (select (|PolymorphicMapType_13674_7937_53#PolymorphicMapType_13674| Mask@@43) o_2@@61 f_4@@61) NoPerm) (=> (and (and (and (GoodMask Mask@@43) AssumePermUpperBound) (not (IsPredicateField_7937_53 f_4@@61))) (not (IsWandField_7937_53 f_4@@61))) (<= (select (|PolymorphicMapType_13674_7937_53#PolymorphicMapType_13674| Mask@@43) o_2@@61 f_4@@61) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@43) (select (|PolymorphicMapType_13674_7937_53#PolymorphicMapType_13674| Mask@@43) o_2@@61 f_4@@61))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_13674) (o_2@@62 T@Ref) (f_4@@62 T@Field_19426_19427) ) (!  (=> (GoodMask Mask@@44) (and (>= (select (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| Mask@@44) o_2@@62 f_4@@62) NoPerm) (=> (and (and (and (GoodMask Mask@@44) AssumePermUpperBound) (not (IsPredicateField_7937_7938 f_4@@62))) (not (IsWandField_7937_62829 f_4@@62))) (<= (select (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| Mask@@44) o_2@@62 f_4@@62) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@44) (select (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| Mask@@44) o_2@@62 f_4@@62))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_13674) (o_2@@63 T@Ref) (f_4@@63 T@Field_7937_1195) ) (!  (=> (GoodMask Mask@@45) (and (>= (select (|PolymorphicMapType_13674_7937_2246#PolymorphicMapType_13674| Mask@@45) o_2@@63 f_4@@63) NoPerm) (=> (and (and (and (GoodMask Mask@@45) AssumePermUpperBound) (not (IsPredicateField_7937_2246 f_4@@63))) (not (IsWandField_7937_2246 f_4@@63))) (<= (select (|PolymorphicMapType_13674_7937_2246#PolymorphicMapType_13674| Mask@@45) o_2@@63 f_4@@63) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@45) (select (|PolymorphicMapType_13674_7937_2246#PolymorphicMapType_13674| Mask@@45) o_2@@63 f_4@@63))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_13674) (o_2@@64 T@Ref) (f_4@@64 T@Field_13713_17055) ) (!  (=> (GoodMask Mask@@46) (and (>= (select (|PolymorphicMapType_13674_7928_78132#PolymorphicMapType_13674| Mask@@46) o_2@@64 f_4@@64) NoPerm) (=> (and (and (and (GoodMask Mask@@46) AssumePermUpperBound) (not (IsPredicateField_7928_83717 f_4@@64))) (not (IsWandField_7928_83733 f_4@@64))) (<= (select (|PolymorphicMapType_13674_7928_78132#PolymorphicMapType_13674| Mask@@46) o_2@@64 f_4@@64) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@46) (select (|PolymorphicMapType_13674_7928_78132#PolymorphicMapType_13674| Mask@@46) o_2@@64 f_4@@64))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_13674) (o_2@@65 T@Ref) (f_4@@65 T@Field_13726_13727) ) (!  (=> (GoodMask Mask@@47) (and (>= (select (|PolymorphicMapType_13674_7928_13727#PolymorphicMapType_13674| Mask@@47) o_2@@65 f_4@@65) NoPerm) (=> (and (and (and (GoodMask Mask@@47) AssumePermUpperBound) (not (IsPredicateField_7930_7931 f_4@@65))) (not (IsWandField_7930_7931 f_4@@65))) (<= (select (|PolymorphicMapType_13674_7928_13727#PolymorphicMapType_13674| Mask@@47) o_2@@65 f_4@@65) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@47) (select (|PolymorphicMapType_13674_7928_13727#PolymorphicMapType_13674| Mask@@47) o_2@@65 f_4@@65))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_13674) (o_2@@66 T@Ref) (f_4@@66 T@Field_13713_53) ) (!  (=> (GoodMask Mask@@48) (and (>= (select (|PolymorphicMapType_13674_7928_53#PolymorphicMapType_13674| Mask@@48) o_2@@66 f_4@@66) NoPerm) (=> (and (and (and (GoodMask Mask@@48) AssumePermUpperBound) (not (IsPredicateField_7928_53 f_4@@66))) (not (IsWandField_7928_53 f_4@@66))) (<= (select (|PolymorphicMapType_13674_7928_53#PolymorphicMapType_13674| Mask@@48) o_2@@66 f_4@@66) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@48) (select (|PolymorphicMapType_13674_7928_53#PolymorphicMapType_13674| Mask@@48) o_2@@66 f_4@@66))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_13674) (o_2@@67 T@Ref) (f_4@@67 T@Field_13713_7938) ) (!  (=> (GoodMask Mask@@49) (and (>= (select (|PolymorphicMapType_13674_7928_7938#PolymorphicMapType_13674| Mask@@49) o_2@@67 f_4@@67) NoPerm) (=> (and (and (and (GoodMask Mask@@49) AssumePermUpperBound) (not (IsPredicateField_13713_51781 f_4@@67))) (not (IsWandField_13713_63543 f_4@@67))) (<= (select (|PolymorphicMapType_13674_7928_7938#PolymorphicMapType_13674| Mask@@49) o_2@@67 f_4@@67) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@49) (select (|PolymorphicMapType_13674_7928_7938#PolymorphicMapType_13674| Mask@@49) o_2@@67 f_4@@67))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_13674) (o_2@@68 T@Ref) (f_4@@68 T@Field_19293_2246) ) (!  (=> (GoodMask Mask@@50) (and (>= (select (|PolymorphicMapType_13674_7928_2246#PolymorphicMapType_13674| Mask@@50) o_2@@68 f_4@@68) NoPerm) (=> (and (and (and (GoodMask Mask@@50) AssumePermUpperBound) (not (IsPredicateField_7928_2246 f_4@@68))) (not (IsWandField_7928_2246 f_4@@68))) (<= (select (|PolymorphicMapType_13674_7928_2246#PolymorphicMapType_13674| Mask@@50) o_2@@68 f_4@@68) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@50) (select (|PolymorphicMapType_13674_7928_2246#PolymorphicMapType_13674| Mask@@50) o_2@@68 f_4@@68))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_13674) (o_2@@69 T@Ref) (f_4@@69 T@Field_18664_18669) ) (! (= (HasDirectPerm_18651_50886 Mask@@51 o_2@@69 f_4@@69) (> (select (|PolymorphicMapType_13674_7880_80610#PolymorphicMapType_13674| Mask@@51) o_2@@69 f_4@@69) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18651_50886 Mask@@51 o_2@@69 f_4@@69))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_13674) (o_2@@70 T@Ref) (f_4@@70 T@Field_18651_1941) ) (! (= (HasDirectPerm_18651_1195 Mask@@52 o_2@@70 f_4@@70) (> (select (|PolymorphicMapType_13674_7880_1941#PolymorphicMapType_13674| Mask@@52) o_2@@70 f_4@@70) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18651_1195 Mask@@52 o_2@@70 f_4@@70))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_13674) (o_2@@71 T@Ref) (f_4@@71 T@Field_18651_13727) ) (! (= (HasDirectPerm_18651_13727 Mask@@53 o_2@@71 f_4@@71) (> (select (|PolymorphicMapType_13674_7880_13727#PolymorphicMapType_13674| Mask@@53) o_2@@71 f_4@@71) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18651_13727 Mask@@53 o_2@@71 f_4@@71))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_13674) (o_2@@72 T@Ref) (f_4@@72 T@Field_18651_53) ) (! (= (HasDirectPerm_18651_53 Mask@@54 o_2@@72 f_4@@72) (> (select (|PolymorphicMapType_13674_7880_53#PolymorphicMapType_13674| Mask@@54) o_2@@72 f_4@@72) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18651_53 Mask@@54 o_2@@72 f_4@@72))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_13674) (o_2@@73 T@Ref) (f_4@@73 T@Field_18680_18681) ) (! (= (HasDirectPerm_18651_7938 Mask@@55 o_2@@73 f_4@@73) (> (select (|PolymorphicMapType_13674_7880_7938#PolymorphicMapType_13674| Mask@@55) o_2@@73 f_4@@73) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18651_7938 Mask@@55 o_2@@73 f_4@@73))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_13674) (o_2@@74 T@Ref) (f_4@@74 T@Field_18106_18111) ) (! (= (HasDirectPerm_18094_49752 Mask@@56 o_2@@74 f_4@@74) (> (select (|PolymorphicMapType_13674_7848_80196#PolymorphicMapType_13674| Mask@@56) o_2@@74 f_4@@74) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18094_49752 Mask@@56 o_2@@74 f_4@@74))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_13674) (o_2@@75 T@Ref) (f_4@@75 T@Field_18094_1672) ) (! (= (HasDirectPerm_18094_1195 Mask@@57 o_2@@75 f_4@@75) (> (select (|PolymorphicMapType_13674_7848_1672#PolymorphicMapType_13674| Mask@@57) o_2@@75 f_4@@75) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18094_1195 Mask@@57 o_2@@75 f_4@@75))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_13674) (o_2@@76 T@Ref) (f_4@@76 T@Field_18094_13727) ) (! (= (HasDirectPerm_18094_13727 Mask@@58 o_2@@76 f_4@@76) (> (select (|PolymorphicMapType_13674_7848_13727#PolymorphicMapType_13674| Mask@@58) o_2@@76 f_4@@76) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18094_13727 Mask@@58 o_2@@76 f_4@@76))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_13674) (o_2@@77 T@Ref) (f_4@@77 T@Field_18094_53) ) (! (= (HasDirectPerm_18094_53 Mask@@59 o_2@@77 f_4@@77) (> (select (|PolymorphicMapType_13674_7848_53#PolymorphicMapType_13674| Mask@@59) o_2@@77 f_4@@77) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18094_53 Mask@@59 o_2@@77 f_4@@77))
)))
(assert (forall ((Mask@@60 T@PolymorphicMapType_13674) (o_2@@78 T@Ref) (f_4@@78 T@Field_18121_18122) ) (! (= (HasDirectPerm_18094_7938 Mask@@60 o_2@@78 f_4@@78) (> (select (|PolymorphicMapType_13674_7848_7938#PolymorphicMapType_13674| Mask@@60) o_2@@78 f_4@@78) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18094_7938 Mask@@60 o_2@@78 f_4@@78))
)))
(assert (forall ((Mask@@61 T@PolymorphicMapType_13674) (o_2@@79 T@Ref) (f_4@@79 T@Field_17522_17527) ) (! (= (HasDirectPerm_17509_48618 Mask@@61 o_2@@79 f_4@@79) (> (select (|PolymorphicMapType_13674_7808_79371#PolymorphicMapType_13674| Mask@@61) o_2@@79 f_4@@79) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17509_48618 Mask@@61 o_2@@79 f_4@@79))
)))
(assert (forall ((Mask@@62 T@PolymorphicMapType_13674) (o_2@@80 T@Ref) (f_4@@80 T@Field_17509_1407) ) (! (= (HasDirectPerm_17509_1195 Mask@@62 o_2@@80 f_4@@80) (> (select (|PolymorphicMapType_13674_7808_1407#PolymorphicMapType_13674| Mask@@62) o_2@@80 f_4@@80) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17509_1195 Mask@@62 o_2@@80 f_4@@80))
)))
(assert (forall ((Mask@@63 T@PolymorphicMapType_13674) (o_2@@81 T@Ref) (f_4@@81 T@Field_17509_13727) ) (! (= (HasDirectPerm_17509_13727 Mask@@63 o_2@@81 f_4@@81) (> (select (|PolymorphicMapType_13674_7808_13727#PolymorphicMapType_13674| Mask@@63) o_2@@81 f_4@@81) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17509_13727 Mask@@63 o_2@@81 f_4@@81))
)))
(assert (forall ((Mask@@64 T@PolymorphicMapType_13674) (o_2@@82 T@Ref) (f_4@@82 T@Field_17509_53) ) (! (= (HasDirectPerm_17509_53 Mask@@64 o_2@@82 f_4@@82) (> (select (|PolymorphicMapType_13674_7808_53#PolymorphicMapType_13674| Mask@@64) o_2@@82 f_4@@82) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17509_53 Mask@@64 o_2@@82 f_4@@82))
)))
(assert (forall ((Mask@@65 T@PolymorphicMapType_13674) (o_2@@83 T@Ref) (f_4@@83 T@Field_17538_17539) ) (! (= (HasDirectPerm_17509_7938 Mask@@65 o_2@@83 f_4@@83) (> (select (|PolymorphicMapType_13674_7808_7938#PolymorphicMapType_13674| Mask@@65) o_2@@83 f_4@@83) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17509_7938 Mask@@65 o_2@@83 f_4@@83))
)))
(assert (forall ((Mask@@66 T@PolymorphicMapType_13674) (o_2@@84 T@Ref) (f_4@@84 T@Field_17050_17055) ) (! (= (HasDirectPerm_17039_47484 Mask@@66 o_2@@84 f_4@@84) (> (select (|PolymorphicMapType_13674_7797_78957#PolymorphicMapType_13674| Mask@@66) o_2@@84 f_4@@84) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17039_47484 Mask@@66 o_2@@84 f_4@@84))
)))
(assert (forall ((Mask@@67 T@PolymorphicMapType_13674) (o_2@@85 T@Ref) (f_4@@85 T@Field_17039_1195) ) (! (= (HasDirectPerm_17039_1195 Mask@@67 o_2@@85 f_4@@85) (> (select (|PolymorphicMapType_13674_7797_1195#PolymorphicMapType_13674| Mask@@67) o_2@@85 f_4@@85) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17039_1195 Mask@@67 o_2@@85 f_4@@85))
)))
(assert (forall ((Mask@@68 T@PolymorphicMapType_13674) (o_2@@86 T@Ref) (f_4@@86 T@Field_17039_13727) ) (! (= (HasDirectPerm_17039_13727 Mask@@68 o_2@@86 f_4@@86) (> (select (|PolymorphicMapType_13674_7797_13727#PolymorphicMapType_13674| Mask@@68) o_2@@86 f_4@@86) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17039_13727 Mask@@68 o_2@@86 f_4@@86))
)))
(assert (forall ((Mask@@69 T@PolymorphicMapType_13674) (o_2@@87 T@Ref) (f_4@@87 T@Field_17039_53) ) (! (= (HasDirectPerm_17039_53 Mask@@69 o_2@@87 f_4@@87) (> (select (|PolymorphicMapType_13674_7797_53#PolymorphicMapType_13674| Mask@@69) o_2@@87 f_4@@87) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17039_53 Mask@@69 o_2@@87 f_4@@87))
)))
(assert (forall ((Mask@@70 T@PolymorphicMapType_13674) (o_2@@88 T@Ref) (f_4@@88 T@Field_17064_17065) ) (! (= (HasDirectPerm_17039_7938 Mask@@70 o_2@@88 f_4@@88) (> (select (|PolymorphicMapType_13674_7797_7938#PolymorphicMapType_13674| Mask@@70) o_2@@88 f_4@@88) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17039_7938 Mask@@70 o_2@@88 f_4@@88))
)))
(assert (forall ((Mask@@71 T@PolymorphicMapType_13674) (o_2@@89 T@Ref) (f_4@@89 T@Field_13713_17055) ) (! (= (HasDirectPerm_13713_46307 Mask@@71 o_2@@89 f_4@@89) (> (select (|PolymorphicMapType_13674_7928_78132#PolymorphicMapType_13674| Mask@@71) o_2@@89 f_4@@89) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13713_46307 Mask@@71 o_2@@89 f_4@@89))
)))
(assert (forall ((Mask@@72 T@PolymorphicMapType_13674) (o_2@@90 T@Ref) (f_4@@90 T@Field_19293_2246) ) (! (= (HasDirectPerm_13713_1195 Mask@@72 o_2@@90 f_4@@90) (> (select (|PolymorphicMapType_13674_7928_2246#PolymorphicMapType_13674| Mask@@72) o_2@@90 f_4@@90) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13713_1195 Mask@@72 o_2@@90 f_4@@90))
)))
(assert (forall ((Mask@@73 T@PolymorphicMapType_13674) (o_2@@91 T@Ref) (f_4@@91 T@Field_13726_13727) ) (! (= (HasDirectPerm_13713_13727 Mask@@73 o_2@@91 f_4@@91) (> (select (|PolymorphicMapType_13674_7928_13727#PolymorphicMapType_13674| Mask@@73) o_2@@91 f_4@@91) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13713_13727 Mask@@73 o_2@@91 f_4@@91))
)))
(assert (forall ((Mask@@74 T@PolymorphicMapType_13674) (o_2@@92 T@Ref) (f_4@@92 T@Field_13713_53) ) (! (= (HasDirectPerm_13713_53 Mask@@74 o_2@@92 f_4@@92) (> (select (|PolymorphicMapType_13674_7928_53#PolymorphicMapType_13674| Mask@@74) o_2@@92 f_4@@92) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13713_53 Mask@@74 o_2@@92 f_4@@92))
)))
(assert (forall ((Mask@@75 T@PolymorphicMapType_13674) (o_2@@93 T@Ref) (f_4@@93 T@Field_13713_7938) ) (! (= (HasDirectPerm_13713_7938 Mask@@75 o_2@@93 f_4@@93) (> (select (|PolymorphicMapType_13674_7928_7938#PolymorphicMapType_13674| Mask@@75) o_2@@93 f_4@@93) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13713_7938 Mask@@75 o_2@@93 f_4@@93))
)))
(assert (forall ((Mask@@76 T@PolymorphicMapType_13674) (o_2@@94 T@Ref) (f_4@@94 T@Field_20359_20364) ) (! (= (HasDirectPerm_7962_45214 Mask@@76 o_2@@94 f_4@@94) (> (select (|PolymorphicMapType_13674_7962_79782#PolymorphicMapType_13674| Mask@@76) o_2@@94 f_4@@94) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7962_45214 Mask@@76 o_2@@94 f_4@@94))
)))
(assert (forall ((Mask@@77 T@PolymorphicMapType_13674) (o_2@@95 T@Ref) (f_4@@95 T@Field_7962_1195) ) (! (= (HasDirectPerm_7962_1195 Mask@@77 o_2@@95 f_4@@95) (> (select (|PolymorphicMapType_13674_7962_2246#PolymorphicMapType_13674| Mask@@77) o_2@@95 f_4@@95) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7962_1195 Mask@@77 o_2@@95 f_4@@95))
)))
(assert (forall ((Mask@@78 T@PolymorphicMapType_13674) (o_2@@96 T@Ref) (f_4@@96 T@Field_7962_13727) ) (! (= (HasDirectPerm_7962_13727 Mask@@78 o_2@@96 f_4@@96) (> (select (|PolymorphicMapType_13674_7962_13727#PolymorphicMapType_13674| Mask@@78) o_2@@96 f_4@@96) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7962_13727 Mask@@78 o_2@@96 f_4@@96))
)))
(assert (forall ((Mask@@79 T@PolymorphicMapType_13674) (o_2@@97 T@Ref) (f_4@@97 T@Field_7962_53) ) (! (= (HasDirectPerm_7962_53 Mask@@79 o_2@@97 f_4@@97) (> (select (|PolymorphicMapType_13674_7962_53#PolymorphicMapType_13674| Mask@@79) o_2@@97 f_4@@97) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7962_53 Mask@@79 o_2@@97 f_4@@97))
)))
(assert (forall ((Mask@@80 T@PolymorphicMapType_13674) (o_2@@98 T@Ref) (f_4@@98 T@Field_20346_20347) ) (! (= (HasDirectPerm_7962_7963 Mask@@80 o_2@@98 f_4@@98) (> (select (|PolymorphicMapType_13674_7962_7963#PolymorphicMapType_13674| Mask@@80) o_2@@98 f_4@@98) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7962_7963 Mask@@80 o_2@@98 f_4@@98))
)))
(assert (forall ((Mask@@81 T@PolymorphicMapType_13674) (o_2@@99 T@Ref) (f_4@@99 T@Field_19439_19444) ) (! (= (HasDirectPerm_7937_44116 Mask@@81 o_2@@99 f_4@@99) (> (select (|PolymorphicMapType_13674_7937_78543#PolymorphicMapType_13674| Mask@@81) o_2@@99 f_4@@99) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7937_44116 Mask@@81 o_2@@99 f_4@@99))
)))
(assert (forall ((Mask@@82 T@PolymorphicMapType_13674) (o_2@@100 T@Ref) (f_4@@100 T@Field_7937_1195) ) (! (= (HasDirectPerm_7937_1195 Mask@@82 o_2@@100 f_4@@100) (> (select (|PolymorphicMapType_13674_7937_2246#PolymorphicMapType_13674| Mask@@82) o_2@@100 f_4@@100) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7937_1195 Mask@@82 o_2@@100 f_4@@100))
)))
(assert (forall ((Mask@@83 T@PolymorphicMapType_13674) (o_2@@101 T@Ref) (f_4@@101 T@Field_7937_13727) ) (! (= (HasDirectPerm_7937_13727 Mask@@83 o_2@@101 f_4@@101) (> (select (|PolymorphicMapType_13674_7937_13727#PolymorphicMapType_13674| Mask@@83) o_2@@101 f_4@@101) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7937_13727 Mask@@83 o_2@@101 f_4@@101))
)))
(assert (forall ((Mask@@84 T@PolymorphicMapType_13674) (o_2@@102 T@Ref) (f_4@@102 T@Field_7937_53) ) (! (= (HasDirectPerm_7937_53 Mask@@84 o_2@@102 f_4@@102) (> (select (|PolymorphicMapType_13674_7937_53#PolymorphicMapType_13674| Mask@@84) o_2@@102 f_4@@102) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7937_53 Mask@@84 o_2@@102 f_4@@102))
)))
(assert (forall ((Mask@@85 T@PolymorphicMapType_13674) (o_2@@103 T@Ref) (f_4@@103 T@Field_19426_19427) ) (! (= (HasDirectPerm_7937_7938 Mask@@85 o_2@@103 f_4@@103) (> (select (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| Mask@@85) o_2@@103 f_4@@103) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7937_7938 Mask@@85 o_2@@103 f_4@@103))
)))
(assert (forall ((arg1@@18 T@Ref) (arg2@@18 Real) (arg3@@14 T@Ref) (arg4@@0 Real) ) (! (IsWandField_7880_1941 (wand_3 arg1@@18 arg2@@18 arg3@@14 arg4@@0))
 :qid |stdinbpl.280:15|
 :skolemid |43|
 :pattern ( (wand_3 arg1@@18 arg2@@18 arg3@@14 arg4@@0))
)))
(assert (forall ((arg1@@19 T@Ref) (arg2@@19 Real) (arg3@@15 T@Ref) (arg4@@1 Real) ) (! (IsWandField_7893_7894 (|wand_3#ft| arg1@@19 arg2@@19 arg3@@15 arg4@@1))
 :qid |stdinbpl.284:15|
 :skolemid |44|
 :pattern ( (|wand_3#ft| arg1@@19 arg2@@19 arg3@@15 arg4@@1))
)))
(assert (forall ((p@@6 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@6 f_6) (ite (> p@@6 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@6 f_6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_13653) (ExhaleHeap@@15 T@PolymorphicMapType_13653) (Mask@@86 T@PolymorphicMapType_13674) (o_12@@0 T@Ref) (f_16 T@Field_18664_18669) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@86) (=> (HasDirectPerm_18651_50886 Mask@@86 o_12@@0 f_16) (= (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@18) o_12@@0 f_16) (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@15) o_12@@0 f_16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@86) (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@15) o_12@@0 f_16))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_13653) (ExhaleHeap@@16 T@PolymorphicMapType_13653) (Mask@@87 T@PolymorphicMapType_13674) (o_12@@1 T@Ref) (f_16@@0 T@Field_18651_1941) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@87) (=> (HasDirectPerm_18651_1195 Mask@@87 o_12@@1 f_16@@0) (= (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@19) o_12@@1 f_16@@0) (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| ExhaleHeap@@16) o_12@@1 f_16@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@87) (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| ExhaleHeap@@16) o_12@@1 f_16@@0))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_13653) (ExhaleHeap@@17 T@PolymorphicMapType_13653) (Mask@@88 T@PolymorphicMapType_13674) (o_12@@2 T@Ref) (f_16@@1 T@Field_18651_13727) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@88) (=> (HasDirectPerm_18651_13727 Mask@@88 o_12@@2 f_16@@1) (= (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@20) o_12@@2 f_16@@1) (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| ExhaleHeap@@17) o_12@@2 f_16@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@88) (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| ExhaleHeap@@17) o_12@@2 f_16@@1))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_13653) (ExhaleHeap@@18 T@PolymorphicMapType_13653) (Mask@@89 T@PolymorphicMapType_13674) (o_12@@3 T@Ref) (f_16@@2 T@Field_18651_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@89) (=> (HasDirectPerm_18651_53 Mask@@89 o_12@@3 f_16@@2) (= (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@21) o_12@@3 f_16@@2) (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| ExhaleHeap@@18) o_12@@3 f_16@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@89) (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| ExhaleHeap@@18) o_12@@3 f_16@@2))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_13653) (ExhaleHeap@@19 T@PolymorphicMapType_13653) (Mask@@90 T@PolymorphicMapType_13674) (o_12@@4 T@Ref) (f_16@@3 T@Field_18680_18681) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@90) (=> (HasDirectPerm_18651_7938 Mask@@90 o_12@@4 f_16@@3) (= (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@22) o_12@@4 f_16@@3) (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| ExhaleHeap@@19) o_12@@4 f_16@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@90) (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| ExhaleHeap@@19) o_12@@4 f_16@@3))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_13653) (ExhaleHeap@@20 T@PolymorphicMapType_13653) (Mask@@91 T@PolymorphicMapType_13674) (o_12@@5 T@Ref) (f_16@@4 T@Field_18106_18111) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@91) (=> (HasDirectPerm_18094_49752 Mask@@91 o_12@@5 f_16@@4) (= (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@23) o_12@@5 f_16@@4) (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@20) o_12@@5 f_16@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@91) (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@20) o_12@@5 f_16@@4))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_13653) (ExhaleHeap@@21 T@PolymorphicMapType_13653) (Mask@@92 T@PolymorphicMapType_13674) (o_12@@6 T@Ref) (f_16@@5 T@Field_18094_1672) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@92) (=> (HasDirectPerm_18094_1195 Mask@@92 o_12@@6 f_16@@5) (= (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@24) o_12@@6 f_16@@5) (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| ExhaleHeap@@21) o_12@@6 f_16@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@92) (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| ExhaleHeap@@21) o_12@@6 f_16@@5))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_13653) (ExhaleHeap@@22 T@PolymorphicMapType_13653) (Mask@@93 T@PolymorphicMapType_13674) (o_12@@7 T@Ref) (f_16@@6 T@Field_18094_13727) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@93) (=> (HasDirectPerm_18094_13727 Mask@@93 o_12@@7 f_16@@6) (= (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@25) o_12@@7 f_16@@6) (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| ExhaleHeap@@22) o_12@@7 f_16@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@93) (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| ExhaleHeap@@22) o_12@@7 f_16@@6))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_13653) (ExhaleHeap@@23 T@PolymorphicMapType_13653) (Mask@@94 T@PolymorphicMapType_13674) (o_12@@8 T@Ref) (f_16@@7 T@Field_18094_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@94) (=> (HasDirectPerm_18094_53 Mask@@94 o_12@@8 f_16@@7) (= (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@26) o_12@@8 f_16@@7) (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| ExhaleHeap@@23) o_12@@8 f_16@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@94) (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| ExhaleHeap@@23) o_12@@8 f_16@@7))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_13653) (ExhaleHeap@@24 T@PolymorphicMapType_13653) (Mask@@95 T@PolymorphicMapType_13674) (o_12@@9 T@Ref) (f_16@@8 T@Field_18121_18122) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@95) (=> (HasDirectPerm_18094_7938 Mask@@95 o_12@@9 f_16@@8) (= (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@27) o_12@@9 f_16@@8) (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| ExhaleHeap@@24) o_12@@9 f_16@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@95) (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| ExhaleHeap@@24) o_12@@9 f_16@@8))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_13653) (ExhaleHeap@@25 T@PolymorphicMapType_13653) (Mask@@96 T@PolymorphicMapType_13674) (o_12@@10 T@Ref) (f_16@@9 T@Field_17522_17527) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@96) (=> (HasDirectPerm_17509_48618 Mask@@96 o_12@@10 f_16@@9) (= (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@28) o_12@@10 f_16@@9) (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@25) o_12@@10 f_16@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@96) (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@25) o_12@@10 f_16@@9))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_13653) (ExhaleHeap@@26 T@PolymorphicMapType_13653) (Mask@@97 T@PolymorphicMapType_13674) (o_12@@11 T@Ref) (f_16@@10 T@Field_17509_1407) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@97) (=> (HasDirectPerm_17509_1195 Mask@@97 o_12@@11 f_16@@10) (= (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@29) o_12@@11 f_16@@10) (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| ExhaleHeap@@26) o_12@@11 f_16@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@97) (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| ExhaleHeap@@26) o_12@@11 f_16@@10))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_13653) (ExhaleHeap@@27 T@PolymorphicMapType_13653) (Mask@@98 T@PolymorphicMapType_13674) (o_12@@12 T@Ref) (f_16@@11 T@Field_17509_13727) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@98) (=> (HasDirectPerm_17509_13727 Mask@@98 o_12@@12 f_16@@11) (= (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@30) o_12@@12 f_16@@11) (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| ExhaleHeap@@27) o_12@@12 f_16@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@98) (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| ExhaleHeap@@27) o_12@@12 f_16@@11))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_13653) (ExhaleHeap@@28 T@PolymorphicMapType_13653) (Mask@@99 T@PolymorphicMapType_13674) (o_12@@13 T@Ref) (f_16@@12 T@Field_17509_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@99) (=> (HasDirectPerm_17509_53 Mask@@99 o_12@@13 f_16@@12) (= (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@31) o_12@@13 f_16@@12) (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| ExhaleHeap@@28) o_12@@13 f_16@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@99) (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| ExhaleHeap@@28) o_12@@13 f_16@@12))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_13653) (ExhaleHeap@@29 T@PolymorphicMapType_13653) (Mask@@100 T@PolymorphicMapType_13674) (o_12@@14 T@Ref) (f_16@@13 T@Field_17538_17539) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@100) (=> (HasDirectPerm_17509_7938 Mask@@100 o_12@@14 f_16@@13) (= (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@32) o_12@@14 f_16@@13) (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| ExhaleHeap@@29) o_12@@14 f_16@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@100) (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| ExhaleHeap@@29) o_12@@14 f_16@@13))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_13653) (ExhaleHeap@@30 T@PolymorphicMapType_13653) (Mask@@101 T@PolymorphicMapType_13674) (o_12@@15 T@Ref) (f_16@@14 T@Field_17050_17055) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@101) (=> (HasDirectPerm_17039_47484 Mask@@101 o_12@@15 f_16@@14) (= (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@33) o_12@@15 f_16@@14) (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@30) o_12@@15 f_16@@14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@101) (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@30) o_12@@15 f_16@@14))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_13653) (ExhaleHeap@@31 T@PolymorphicMapType_13653) (Mask@@102 T@PolymorphicMapType_13674) (o_12@@16 T@Ref) (f_16@@15 T@Field_17039_1195) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@31 Mask@@102) (=> (HasDirectPerm_17039_1195 Mask@@102 o_12@@16 f_16@@15) (= (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@34) o_12@@16 f_16@@15) (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| ExhaleHeap@@31) o_12@@16 f_16@@15))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@31 Mask@@102) (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| ExhaleHeap@@31) o_12@@16 f_16@@15))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_13653) (ExhaleHeap@@32 T@PolymorphicMapType_13653) (Mask@@103 T@PolymorphicMapType_13674) (o_12@@17 T@Ref) (f_16@@16 T@Field_17039_13727) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@32 Mask@@103) (=> (HasDirectPerm_17039_13727 Mask@@103 o_12@@17 f_16@@16) (= (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@35) o_12@@17 f_16@@16) (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| ExhaleHeap@@32) o_12@@17 f_16@@16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@32 Mask@@103) (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| ExhaleHeap@@32) o_12@@17 f_16@@16))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_13653) (ExhaleHeap@@33 T@PolymorphicMapType_13653) (Mask@@104 T@PolymorphicMapType_13674) (o_12@@18 T@Ref) (f_16@@17 T@Field_17039_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@33 Mask@@104) (=> (HasDirectPerm_17039_53 Mask@@104 o_12@@18 f_16@@17) (= (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@36) o_12@@18 f_16@@17) (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| ExhaleHeap@@33) o_12@@18 f_16@@17))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@33 Mask@@104) (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| ExhaleHeap@@33) o_12@@18 f_16@@17))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_13653) (ExhaleHeap@@34 T@PolymorphicMapType_13653) (Mask@@105 T@PolymorphicMapType_13674) (o_12@@19 T@Ref) (f_16@@18 T@Field_17064_17065) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@34 Mask@@105) (=> (HasDirectPerm_17039_7938 Mask@@105 o_12@@19 f_16@@18) (= (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@37) o_12@@19 f_16@@18) (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| ExhaleHeap@@34) o_12@@19 f_16@@18))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@34 Mask@@105) (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| ExhaleHeap@@34) o_12@@19 f_16@@18))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_13653) (ExhaleHeap@@35 T@PolymorphicMapType_13653) (Mask@@106 T@PolymorphicMapType_13674) (o_12@@20 T@Ref) (f_16@@19 T@Field_13713_17055) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@35 Mask@@106) (=> (HasDirectPerm_13713_46307 Mask@@106 o_12@@20 f_16@@19) (= (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@38) o_12@@20 f_16@@19) (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@35) o_12@@20 f_16@@19))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@35 Mask@@106) (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@35) o_12@@20 f_16@@19))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_13653) (ExhaleHeap@@36 T@PolymorphicMapType_13653) (Mask@@107 T@PolymorphicMapType_13674) (o_12@@21 T@Ref) (f_16@@20 T@Field_19293_2246) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@36 Mask@@107) (=> (HasDirectPerm_13713_1195 Mask@@107 o_12@@21 f_16@@20) (= (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@39) o_12@@21 f_16@@20) (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| ExhaleHeap@@36) o_12@@21 f_16@@20))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@36 Mask@@107) (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| ExhaleHeap@@36) o_12@@21 f_16@@20))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_13653) (ExhaleHeap@@37 T@PolymorphicMapType_13653) (Mask@@108 T@PolymorphicMapType_13674) (o_12@@22 T@Ref) (f_16@@21 T@Field_13726_13727) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@37 Mask@@108) (=> (HasDirectPerm_13713_13727 Mask@@108 o_12@@22 f_16@@21) (= (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@40) o_12@@22 f_16@@21) (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| ExhaleHeap@@37) o_12@@22 f_16@@21))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@37 Mask@@108) (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| ExhaleHeap@@37) o_12@@22 f_16@@21))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_13653) (ExhaleHeap@@38 T@PolymorphicMapType_13653) (Mask@@109 T@PolymorphicMapType_13674) (o_12@@23 T@Ref) (f_16@@22 T@Field_13713_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@38 Mask@@109) (=> (HasDirectPerm_13713_53 Mask@@109 o_12@@23 f_16@@22) (= (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@41) o_12@@23 f_16@@22) (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@38) o_12@@23 f_16@@22))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@38 Mask@@109) (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@38) o_12@@23 f_16@@22))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_13653) (ExhaleHeap@@39 T@PolymorphicMapType_13653) (Mask@@110 T@PolymorphicMapType_13674) (o_12@@24 T@Ref) (f_16@@23 T@Field_13713_7938) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@39 Mask@@110) (=> (HasDirectPerm_13713_7938 Mask@@110 o_12@@24 f_16@@23) (= (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@42) o_12@@24 f_16@@23) (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| ExhaleHeap@@39) o_12@@24 f_16@@23))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@39 Mask@@110) (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| ExhaleHeap@@39) o_12@@24 f_16@@23))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_13653) (ExhaleHeap@@40 T@PolymorphicMapType_13653) (Mask@@111 T@PolymorphicMapType_13674) (o_12@@25 T@Ref) (f_16@@24 T@Field_20359_20364) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@40 Mask@@111) (=> (HasDirectPerm_7962_45214 Mask@@111 o_12@@25 f_16@@24) (= (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@43) o_12@@25 f_16@@24) (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@40) o_12@@25 f_16@@24))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@40 Mask@@111) (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@40) o_12@@25 f_16@@24))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_13653) (ExhaleHeap@@41 T@PolymorphicMapType_13653) (Mask@@112 T@PolymorphicMapType_13674) (o_12@@26 T@Ref) (f_16@@25 T@Field_7962_1195) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@41 Mask@@112) (=> (HasDirectPerm_7962_1195 Mask@@112 o_12@@26 f_16@@25) (= (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@44) o_12@@26 f_16@@25) (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| ExhaleHeap@@41) o_12@@26 f_16@@25))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@41 Mask@@112) (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| ExhaleHeap@@41) o_12@@26 f_16@@25))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_13653) (ExhaleHeap@@42 T@PolymorphicMapType_13653) (Mask@@113 T@PolymorphicMapType_13674) (o_12@@27 T@Ref) (f_16@@26 T@Field_7962_13727) ) (!  (=> (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@42 Mask@@113) (=> (HasDirectPerm_7962_13727 Mask@@113 o_12@@27 f_16@@26) (= (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@45) o_12@@27 f_16@@26) (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| ExhaleHeap@@42) o_12@@27 f_16@@26))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@42 Mask@@113) (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| ExhaleHeap@@42) o_12@@27 f_16@@26))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_13653) (ExhaleHeap@@43 T@PolymorphicMapType_13653) (Mask@@114 T@PolymorphicMapType_13674) (o_12@@28 T@Ref) (f_16@@27 T@Field_7962_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@43 Mask@@114) (=> (HasDirectPerm_7962_53 Mask@@114 o_12@@28 f_16@@27) (= (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@46) o_12@@28 f_16@@27) (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| ExhaleHeap@@43) o_12@@28 f_16@@27))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@43 Mask@@114) (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| ExhaleHeap@@43) o_12@@28 f_16@@27))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_13653) (ExhaleHeap@@44 T@PolymorphicMapType_13653) (Mask@@115 T@PolymorphicMapType_13674) (o_12@@29 T@Ref) (f_16@@28 T@Field_20346_20347) ) (!  (=> (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@44 Mask@@115) (=> (HasDirectPerm_7962_7963 Mask@@115 o_12@@29 f_16@@28) (= (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@47) o_12@@29 f_16@@28) (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| ExhaleHeap@@44) o_12@@29 f_16@@28))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@44 Mask@@115) (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| ExhaleHeap@@44) o_12@@29 f_16@@28))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_13653) (ExhaleHeap@@45 T@PolymorphicMapType_13653) (Mask@@116 T@PolymorphicMapType_13674) (o_12@@30 T@Ref) (f_16@@29 T@Field_19439_19444) ) (!  (=> (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@45 Mask@@116) (=> (HasDirectPerm_7937_44116 Mask@@116 o_12@@30 f_16@@29) (= (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@48) o_12@@30 f_16@@29) (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@45) o_12@@30 f_16@@29))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@45 Mask@@116) (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@45) o_12@@30 f_16@@29))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_13653) (ExhaleHeap@@46 T@PolymorphicMapType_13653) (Mask@@117 T@PolymorphicMapType_13674) (o_12@@31 T@Ref) (f_16@@30 T@Field_7937_1195) ) (!  (=> (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@46 Mask@@117) (=> (HasDirectPerm_7937_1195 Mask@@117 o_12@@31 f_16@@30) (= (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@49) o_12@@31 f_16@@30) (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| ExhaleHeap@@46) o_12@@31 f_16@@30))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@46 Mask@@117) (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| ExhaleHeap@@46) o_12@@31 f_16@@30))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_13653) (ExhaleHeap@@47 T@PolymorphicMapType_13653) (Mask@@118 T@PolymorphicMapType_13674) (o_12@@32 T@Ref) (f_16@@31 T@Field_7937_13727) ) (!  (=> (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@47 Mask@@118) (=> (HasDirectPerm_7937_13727 Mask@@118 o_12@@32 f_16@@31) (= (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@50) o_12@@32 f_16@@31) (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| ExhaleHeap@@47) o_12@@32 f_16@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@47 Mask@@118) (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| ExhaleHeap@@47) o_12@@32 f_16@@31))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_13653) (ExhaleHeap@@48 T@PolymorphicMapType_13653) (Mask@@119 T@PolymorphicMapType_13674) (o_12@@33 T@Ref) (f_16@@32 T@Field_7937_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@48 Mask@@119) (=> (HasDirectPerm_7937_53 Mask@@119 o_12@@33 f_16@@32) (= (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@51) o_12@@33 f_16@@32) (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| ExhaleHeap@@48) o_12@@33 f_16@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@48 Mask@@119) (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| ExhaleHeap@@48) o_12@@33 f_16@@32))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_13653) (ExhaleHeap@@49 T@PolymorphicMapType_13653) (Mask@@120 T@PolymorphicMapType_13674) (o_12@@34 T@Ref) (f_16@@33 T@Field_19426_19427) ) (!  (=> (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@49 Mask@@120) (=> (HasDirectPerm_7937_7938 Mask@@120 o_12@@34 f_16@@33) (= (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@52) o_12@@34 f_16@@33) (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| ExhaleHeap@@49) o_12@@34 f_16@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@49 Mask@@120) (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| ExhaleHeap@@49) o_12@@34 f_16@@33))
)))
(assert (forall ((arg1@@20 T@Ref) (arg2@@20 Real) (arg3@@16 T@Ref) (arg4@@2 Real) ) (!  (not (IsPredicateField_7880_1941 (wand_3 arg1@@20 arg2@@20 arg3@@16 arg4@@2)))
 :qid |stdinbpl.288:15|
 :skolemid |45|
 :pattern ( (wand_3 arg1@@20 arg2@@20 arg3@@16 arg4@@2))
)))
(assert (forall ((arg1@@21 T@Ref) (arg2@@21 Real) (arg3@@17 T@Ref) (arg4@@3 Real) ) (!  (not (IsPredicateField_7893_7894 (|wand_3#ft| arg1@@21 arg2@@21 arg3@@17 arg4@@3)))
 :qid |stdinbpl.292:15|
 :skolemid |46|
 :pattern ( (|wand_3#ft| arg1@@21 arg2@@21 arg3@@17 arg4@@3))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_13653) (ExhaleHeap@@50 T@PolymorphicMapType_13653) (Mask@@121 T@PolymorphicMapType_13674) (pm_f_5@@13 T@Field_18680_18681) ) (!  (=> (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@50 Mask@@121) (=> (and (HasDirectPerm_18651_7938 Mask@@121 null pm_f_5@@13) (IsPredicateField_7893_7894 pm_f_5@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_16@@34 T@Field_19293_2246) ) (!  (=> (select (|PolymorphicMapType_14202_7928_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5 f_16@@34) (= (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@53) o2_5 f_16@@34) (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5 f_16@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5 f_16@@34))
)) (forall ((o2_5@@0 T@Ref) (f_16@@35 T@Field_13713_53) ) (!  (=> (select (|PolymorphicMapType_14202_7928_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@0 f_16@@35) (= (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@53) o2_5@@0 f_16@@35) (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@0 f_16@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@0 f_16@@35))
))) (forall ((o2_5@@1 T@Ref) (f_16@@36 T@Field_13726_13727) ) (!  (=> (select (|PolymorphicMapType_14202_7928_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@1 f_16@@36) (= (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@53) o2_5@@1 f_16@@36) (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@1 f_16@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@1 f_16@@36))
))) (forall ((o2_5@@2 T@Ref) (f_16@@37 T@Field_13713_17055) ) (!  (=> (select (|PolymorphicMapType_14202_7928_54124#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@2 f_16@@37) (= (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@53) o2_5@@2 f_16@@37) (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@2 f_16@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@2 f_16@@37))
))) (forall ((o2_5@@3 T@Ref) (f_16@@38 T@Field_13713_7938) ) (!  (=> (select (|PolymorphicMapType_14202_7928_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@3 f_16@@38) (= (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@53) o2_5@@3 f_16@@38) (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@3 f_16@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@3 f_16@@38))
))) (forall ((o2_5@@4 T@Ref) (f_16@@39 T@Field_17039_1195) ) (!  (=> (select (|PolymorphicMapType_14202_17039_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@4 f_16@@39) (= (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@53) o2_5@@4 f_16@@39) (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@4 f_16@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@4 f_16@@39))
))) (forall ((o2_5@@5 T@Ref) (f_16@@40 T@Field_17039_53) ) (!  (=> (select (|PolymorphicMapType_14202_17039_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@5 f_16@@40) (= (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@53) o2_5@@5 f_16@@40) (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@5 f_16@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@5 f_16@@40))
))) (forall ((o2_5@@6 T@Ref) (f_16@@41 T@Field_17039_13727) ) (!  (=> (select (|PolymorphicMapType_14202_17039_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@6 f_16@@41) (= (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@53) o2_5@@6 f_16@@41) (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@6 f_16@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@6 f_16@@41))
))) (forall ((o2_5@@7 T@Ref) (f_16@@42 T@Field_17050_17055) ) (!  (=> (select (|PolymorphicMapType_14202_17039_55172#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@7 f_16@@42) (= (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@53) o2_5@@7 f_16@@42) (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@7 f_16@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@7 f_16@@42))
))) (forall ((o2_5@@8 T@Ref) (f_16@@43 T@Field_17064_17065) ) (!  (=> (select (|PolymorphicMapType_14202_17039_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@8 f_16@@43) (= (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@53) o2_5@@8 f_16@@43) (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@8 f_16@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@8 f_16@@43))
))) (forall ((o2_5@@9 T@Ref) (f_16@@44 T@Field_17509_1407) ) (!  (=> (select (|PolymorphicMapType_14202_17509_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@9 f_16@@44) (= (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@53) o2_5@@9 f_16@@44) (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@9 f_16@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@9 f_16@@44))
))) (forall ((o2_5@@10 T@Ref) (f_16@@45 T@Field_17509_53) ) (!  (=> (select (|PolymorphicMapType_14202_17509_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@10 f_16@@45) (= (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@53) o2_5@@10 f_16@@45) (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@10 f_16@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@10 f_16@@45))
))) (forall ((o2_5@@11 T@Ref) (f_16@@46 T@Field_17509_13727) ) (!  (=> (select (|PolymorphicMapType_14202_17509_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@11 f_16@@46) (= (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@53) o2_5@@11 f_16@@46) (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@11 f_16@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@11 f_16@@46))
))) (forall ((o2_5@@12 T@Ref) (f_16@@47 T@Field_17522_17527) ) (!  (=> (select (|PolymorphicMapType_14202_17509_56220#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@12 f_16@@47) (= (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@53) o2_5@@12 f_16@@47) (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@12 f_16@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@12 f_16@@47))
))) (forall ((o2_5@@13 T@Ref) (f_16@@48 T@Field_17538_17539) ) (!  (=> (select (|PolymorphicMapType_14202_17509_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@13 f_16@@48) (= (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@53) o2_5@@13 f_16@@48) (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@13 f_16@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@13 f_16@@48))
))) (forall ((o2_5@@14 T@Ref) (f_16@@49 T@Field_18094_1672) ) (!  (=> (select (|PolymorphicMapType_14202_18094_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@14 f_16@@49) (= (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@53) o2_5@@14 f_16@@49) (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@14 f_16@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@14 f_16@@49))
))) (forall ((o2_5@@15 T@Ref) (f_16@@50 T@Field_18094_53) ) (!  (=> (select (|PolymorphicMapType_14202_18094_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@15 f_16@@50) (= (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@53) o2_5@@15 f_16@@50) (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@15 f_16@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@15 f_16@@50))
))) (forall ((o2_5@@16 T@Ref) (f_16@@51 T@Field_18094_13727) ) (!  (=> (select (|PolymorphicMapType_14202_18094_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@16 f_16@@51) (= (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@53) o2_5@@16 f_16@@51) (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@16 f_16@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@16 f_16@@51))
))) (forall ((o2_5@@17 T@Ref) (f_16@@52 T@Field_18106_18111) ) (!  (=> (select (|PolymorphicMapType_14202_18094_57268#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@17 f_16@@52) (= (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@53) o2_5@@17 f_16@@52) (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@17 f_16@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@17 f_16@@52))
))) (forall ((o2_5@@18 T@Ref) (f_16@@53 T@Field_18121_18122) ) (!  (=> (select (|PolymorphicMapType_14202_18094_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@18 f_16@@53) (= (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@53) o2_5@@18 f_16@@53) (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@18 f_16@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@18 f_16@@53))
))) (forall ((o2_5@@19 T@Ref) (f_16@@54 T@Field_18651_1941) ) (!  (=> (select (|PolymorphicMapType_14202_18651_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@19 f_16@@54) (= (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@53) o2_5@@19 f_16@@54) (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@19 f_16@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@19 f_16@@54))
))) (forall ((o2_5@@20 T@Ref) (f_16@@55 T@Field_18651_53) ) (!  (=> (select (|PolymorphicMapType_14202_18651_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@20 f_16@@55) (= (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@53) o2_5@@20 f_16@@55) (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@20 f_16@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@20 f_16@@55))
))) (forall ((o2_5@@21 T@Ref) (f_16@@56 T@Field_18651_13727) ) (!  (=> (select (|PolymorphicMapType_14202_18651_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@21 f_16@@56) (= (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@53) o2_5@@21 f_16@@56) (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@21 f_16@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@21 f_16@@56))
))) (forall ((o2_5@@22 T@Ref) (f_16@@57 T@Field_18664_18669) ) (!  (=> (select (|PolymorphicMapType_14202_18651_58316#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@22 f_16@@57) (= (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) o2_5@@22 f_16@@57) (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@22 f_16@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@22 f_16@@57))
))) (forall ((o2_5@@23 T@Ref) (f_16@@58 T@Field_18680_18681) ) (!  (=> (select (|PolymorphicMapType_14202_18651_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@23 f_16@@58) (= (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@53) o2_5@@23 f_16@@58) (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@23 f_16@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@23 f_16@@58))
))) (forall ((o2_5@@24 T@Ref) (f_16@@59 T@Field_7937_1195) ) (!  (=> (select (|PolymorphicMapType_14202_19426_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@24 f_16@@59) (= (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@53) o2_5@@24 f_16@@59) (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@24 f_16@@59)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@24 f_16@@59))
))) (forall ((o2_5@@25 T@Ref) (f_16@@60 T@Field_7937_53) ) (!  (=> (select (|PolymorphicMapType_14202_19426_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@25 f_16@@60) (= (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@53) o2_5@@25 f_16@@60) (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@25 f_16@@60)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@25 f_16@@60))
))) (forall ((o2_5@@26 T@Ref) (f_16@@61 T@Field_7937_13727) ) (!  (=> (select (|PolymorphicMapType_14202_19426_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@26 f_16@@61) (= (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@53) o2_5@@26 f_16@@61) (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@26 f_16@@61)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@26 f_16@@61))
))) (forall ((o2_5@@27 T@Ref) (f_16@@62 T@Field_19439_19444) ) (!  (=> (select (|PolymorphicMapType_14202_19426_59364#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@27 f_16@@62) (= (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@53) o2_5@@27 f_16@@62) (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@27 f_16@@62)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@27 f_16@@62))
))) (forall ((o2_5@@28 T@Ref) (f_16@@63 T@Field_19426_19427) ) (!  (=> (select (|PolymorphicMapType_14202_19426_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@28 f_16@@63) (= (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@53) o2_5@@28 f_16@@63) (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@28 f_16@@63)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@28 f_16@@63))
))) (forall ((o2_5@@29 T@Ref) (f_16@@64 T@Field_7962_1195) ) (!  (=> (select (|PolymorphicMapType_14202_20346_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@29 f_16@@64) (= (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@53) o2_5@@29 f_16@@64) (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@29 f_16@@64)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@29 f_16@@64))
))) (forall ((o2_5@@30 T@Ref) (f_16@@65 T@Field_7962_53) ) (!  (=> (select (|PolymorphicMapType_14202_20346_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@30 f_16@@65) (= (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@53) o2_5@@30 f_16@@65) (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@30 f_16@@65)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@30 f_16@@65))
))) (forall ((o2_5@@31 T@Ref) (f_16@@66 T@Field_7962_13727) ) (!  (=> (select (|PolymorphicMapType_14202_20346_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@31 f_16@@66) (= (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@53) o2_5@@31 f_16@@66) (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@31 f_16@@66)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@31 f_16@@66))
))) (forall ((o2_5@@32 T@Ref) (f_16@@67 T@Field_20359_20364) ) (!  (=> (select (|PolymorphicMapType_14202_20346_60412#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@32 f_16@@67) (= (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@53) o2_5@@32 f_16@@67) (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@32 f_16@@67)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@32 f_16@@67))
))) (forall ((o2_5@@33 T@Ref) (f_16@@68 T@Field_20346_20347) ) (!  (=> (select (|PolymorphicMapType_14202_20346_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@53) null (PredicateMaskField_18651 pm_f_5@@13))) o2_5@@33 f_16@@68) (= (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@53) o2_5@@33 f_16@@68) (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@33 f_16@@68)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| ExhaleHeap@@50) o2_5@@33 f_16@@68))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@50 Mask@@121) (IsPredicateField_7893_7894 pm_f_5@@13))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_13653) (ExhaleHeap@@51 T@PolymorphicMapType_13653) (Mask@@122 T@PolymorphicMapType_13674) (pm_f_5@@14 T@Field_18121_18122) ) (!  (=> (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@51 Mask@@122) (=> (and (HasDirectPerm_18094_7938 Mask@@122 null pm_f_5@@14) (IsPredicateField_7857_7858 pm_f_5@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@34 T@Ref) (f_16@@69 T@Field_19293_2246) ) (!  (=> (select (|PolymorphicMapType_14202_7928_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@34 f_16@@69) (= (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@54) o2_5@@34 f_16@@69) (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@34 f_16@@69)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@34 f_16@@69))
)) (forall ((o2_5@@35 T@Ref) (f_16@@70 T@Field_13713_53) ) (!  (=> (select (|PolymorphicMapType_14202_7928_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@35 f_16@@70) (= (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@54) o2_5@@35 f_16@@70) (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@35 f_16@@70)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@35 f_16@@70))
))) (forall ((o2_5@@36 T@Ref) (f_16@@71 T@Field_13726_13727) ) (!  (=> (select (|PolymorphicMapType_14202_7928_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@36 f_16@@71) (= (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@54) o2_5@@36 f_16@@71) (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@36 f_16@@71)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@36 f_16@@71))
))) (forall ((o2_5@@37 T@Ref) (f_16@@72 T@Field_13713_17055) ) (!  (=> (select (|PolymorphicMapType_14202_7928_54124#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@37 f_16@@72) (= (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@54) o2_5@@37 f_16@@72) (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@37 f_16@@72)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@37 f_16@@72))
))) (forall ((o2_5@@38 T@Ref) (f_16@@73 T@Field_13713_7938) ) (!  (=> (select (|PolymorphicMapType_14202_7928_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@38 f_16@@73) (= (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@54) o2_5@@38 f_16@@73) (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@38 f_16@@73)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@38 f_16@@73))
))) (forall ((o2_5@@39 T@Ref) (f_16@@74 T@Field_17039_1195) ) (!  (=> (select (|PolymorphicMapType_14202_17039_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@39 f_16@@74) (= (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@54) o2_5@@39 f_16@@74) (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@39 f_16@@74)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@39 f_16@@74))
))) (forall ((o2_5@@40 T@Ref) (f_16@@75 T@Field_17039_53) ) (!  (=> (select (|PolymorphicMapType_14202_17039_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@40 f_16@@75) (= (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@54) o2_5@@40 f_16@@75) (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@40 f_16@@75)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@40 f_16@@75))
))) (forall ((o2_5@@41 T@Ref) (f_16@@76 T@Field_17039_13727) ) (!  (=> (select (|PolymorphicMapType_14202_17039_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@41 f_16@@76) (= (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@54) o2_5@@41 f_16@@76) (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@41 f_16@@76)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@41 f_16@@76))
))) (forall ((o2_5@@42 T@Ref) (f_16@@77 T@Field_17050_17055) ) (!  (=> (select (|PolymorphicMapType_14202_17039_55172#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@42 f_16@@77) (= (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@54) o2_5@@42 f_16@@77) (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@42 f_16@@77)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@42 f_16@@77))
))) (forall ((o2_5@@43 T@Ref) (f_16@@78 T@Field_17064_17065) ) (!  (=> (select (|PolymorphicMapType_14202_17039_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@43 f_16@@78) (= (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@54) o2_5@@43 f_16@@78) (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@43 f_16@@78)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@43 f_16@@78))
))) (forall ((o2_5@@44 T@Ref) (f_16@@79 T@Field_17509_1407) ) (!  (=> (select (|PolymorphicMapType_14202_17509_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@44 f_16@@79) (= (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@54) o2_5@@44 f_16@@79) (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@44 f_16@@79)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@44 f_16@@79))
))) (forall ((o2_5@@45 T@Ref) (f_16@@80 T@Field_17509_53) ) (!  (=> (select (|PolymorphicMapType_14202_17509_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@45 f_16@@80) (= (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@54) o2_5@@45 f_16@@80) (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@45 f_16@@80)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@45 f_16@@80))
))) (forall ((o2_5@@46 T@Ref) (f_16@@81 T@Field_17509_13727) ) (!  (=> (select (|PolymorphicMapType_14202_17509_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@46 f_16@@81) (= (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@54) o2_5@@46 f_16@@81) (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@46 f_16@@81)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@46 f_16@@81))
))) (forall ((o2_5@@47 T@Ref) (f_16@@82 T@Field_17522_17527) ) (!  (=> (select (|PolymorphicMapType_14202_17509_56220#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@47 f_16@@82) (= (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@54) o2_5@@47 f_16@@82) (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@47 f_16@@82)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@47 f_16@@82))
))) (forall ((o2_5@@48 T@Ref) (f_16@@83 T@Field_17538_17539) ) (!  (=> (select (|PolymorphicMapType_14202_17509_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@48 f_16@@83) (= (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@54) o2_5@@48 f_16@@83) (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@48 f_16@@83)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@48 f_16@@83))
))) (forall ((o2_5@@49 T@Ref) (f_16@@84 T@Field_18094_1672) ) (!  (=> (select (|PolymorphicMapType_14202_18094_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@49 f_16@@84) (= (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@54) o2_5@@49 f_16@@84) (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@49 f_16@@84)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@49 f_16@@84))
))) (forall ((o2_5@@50 T@Ref) (f_16@@85 T@Field_18094_53) ) (!  (=> (select (|PolymorphicMapType_14202_18094_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@50 f_16@@85) (= (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@54) o2_5@@50 f_16@@85) (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@50 f_16@@85)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@50 f_16@@85))
))) (forall ((o2_5@@51 T@Ref) (f_16@@86 T@Field_18094_13727) ) (!  (=> (select (|PolymorphicMapType_14202_18094_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@51 f_16@@86) (= (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@54) o2_5@@51 f_16@@86) (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@51 f_16@@86)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@51 f_16@@86))
))) (forall ((o2_5@@52 T@Ref) (f_16@@87 T@Field_18106_18111) ) (!  (=> (select (|PolymorphicMapType_14202_18094_57268#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@52 f_16@@87) (= (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) o2_5@@52 f_16@@87) (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@52 f_16@@87)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@52 f_16@@87))
))) (forall ((o2_5@@53 T@Ref) (f_16@@88 T@Field_18121_18122) ) (!  (=> (select (|PolymorphicMapType_14202_18094_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@53 f_16@@88) (= (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@54) o2_5@@53 f_16@@88) (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@53 f_16@@88)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@53 f_16@@88))
))) (forall ((o2_5@@54 T@Ref) (f_16@@89 T@Field_18651_1941) ) (!  (=> (select (|PolymorphicMapType_14202_18651_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@54 f_16@@89) (= (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@54) o2_5@@54 f_16@@89) (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@54 f_16@@89)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@54 f_16@@89))
))) (forall ((o2_5@@55 T@Ref) (f_16@@90 T@Field_18651_53) ) (!  (=> (select (|PolymorphicMapType_14202_18651_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@55 f_16@@90) (= (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@54) o2_5@@55 f_16@@90) (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@55 f_16@@90)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@55 f_16@@90))
))) (forall ((o2_5@@56 T@Ref) (f_16@@91 T@Field_18651_13727) ) (!  (=> (select (|PolymorphicMapType_14202_18651_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@56 f_16@@91) (= (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@54) o2_5@@56 f_16@@91) (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@56 f_16@@91)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@56 f_16@@91))
))) (forall ((o2_5@@57 T@Ref) (f_16@@92 T@Field_18664_18669) ) (!  (=> (select (|PolymorphicMapType_14202_18651_58316#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@57 f_16@@92) (= (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@54) o2_5@@57 f_16@@92) (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@57 f_16@@92)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@57 f_16@@92))
))) (forall ((o2_5@@58 T@Ref) (f_16@@93 T@Field_18680_18681) ) (!  (=> (select (|PolymorphicMapType_14202_18651_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@58 f_16@@93) (= (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@54) o2_5@@58 f_16@@93) (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@58 f_16@@93)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@58 f_16@@93))
))) (forall ((o2_5@@59 T@Ref) (f_16@@94 T@Field_7937_1195) ) (!  (=> (select (|PolymorphicMapType_14202_19426_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@59 f_16@@94) (= (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@54) o2_5@@59 f_16@@94) (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@59 f_16@@94)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@59 f_16@@94))
))) (forall ((o2_5@@60 T@Ref) (f_16@@95 T@Field_7937_53) ) (!  (=> (select (|PolymorphicMapType_14202_19426_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@60 f_16@@95) (= (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@54) o2_5@@60 f_16@@95) (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@60 f_16@@95)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@60 f_16@@95))
))) (forall ((o2_5@@61 T@Ref) (f_16@@96 T@Field_7937_13727) ) (!  (=> (select (|PolymorphicMapType_14202_19426_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@61 f_16@@96) (= (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@54) o2_5@@61 f_16@@96) (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@61 f_16@@96)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@61 f_16@@96))
))) (forall ((o2_5@@62 T@Ref) (f_16@@97 T@Field_19439_19444) ) (!  (=> (select (|PolymorphicMapType_14202_19426_59364#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@62 f_16@@97) (= (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@54) o2_5@@62 f_16@@97) (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@62 f_16@@97)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@62 f_16@@97))
))) (forall ((o2_5@@63 T@Ref) (f_16@@98 T@Field_19426_19427) ) (!  (=> (select (|PolymorphicMapType_14202_19426_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@63 f_16@@98) (= (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@54) o2_5@@63 f_16@@98) (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@63 f_16@@98)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@63 f_16@@98))
))) (forall ((o2_5@@64 T@Ref) (f_16@@99 T@Field_7962_1195) ) (!  (=> (select (|PolymorphicMapType_14202_20346_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@64 f_16@@99) (= (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@54) o2_5@@64 f_16@@99) (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@64 f_16@@99)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@64 f_16@@99))
))) (forall ((o2_5@@65 T@Ref) (f_16@@100 T@Field_7962_53) ) (!  (=> (select (|PolymorphicMapType_14202_20346_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@65 f_16@@100) (= (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@54) o2_5@@65 f_16@@100) (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@65 f_16@@100)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@65 f_16@@100))
))) (forall ((o2_5@@66 T@Ref) (f_16@@101 T@Field_7962_13727) ) (!  (=> (select (|PolymorphicMapType_14202_20346_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@66 f_16@@101) (= (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@54) o2_5@@66 f_16@@101) (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@66 f_16@@101)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@66 f_16@@101))
))) (forall ((o2_5@@67 T@Ref) (f_16@@102 T@Field_20359_20364) ) (!  (=> (select (|PolymorphicMapType_14202_20346_60412#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@67 f_16@@102) (= (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@54) o2_5@@67 f_16@@102) (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@67 f_16@@102)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@67 f_16@@102))
))) (forall ((o2_5@@68 T@Ref) (f_16@@103 T@Field_20346_20347) ) (!  (=> (select (|PolymorphicMapType_14202_20346_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@54) null (PredicateMaskField_18094 pm_f_5@@14))) o2_5@@68 f_16@@103) (= (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@54) o2_5@@68 f_16@@103) (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@68 f_16@@103)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| ExhaleHeap@@51) o2_5@@68 f_16@@103))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@51 Mask@@122) (IsPredicateField_7857_7858 pm_f_5@@14))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_13653) (ExhaleHeap@@52 T@PolymorphicMapType_13653) (Mask@@123 T@PolymorphicMapType_13674) (pm_f_5@@15 T@Field_17538_17539) ) (!  (=> (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@52 Mask@@123) (=> (and (HasDirectPerm_17509_7938 Mask@@123 null pm_f_5@@15) (IsPredicateField_7819_7820 pm_f_5@@15)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@69 T@Ref) (f_16@@104 T@Field_19293_2246) ) (!  (=> (select (|PolymorphicMapType_14202_7928_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@69 f_16@@104) (= (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@55) o2_5@@69 f_16@@104) (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@69 f_16@@104)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@69 f_16@@104))
)) (forall ((o2_5@@70 T@Ref) (f_16@@105 T@Field_13713_53) ) (!  (=> (select (|PolymorphicMapType_14202_7928_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@70 f_16@@105) (= (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@55) o2_5@@70 f_16@@105) (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@70 f_16@@105)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@70 f_16@@105))
))) (forall ((o2_5@@71 T@Ref) (f_16@@106 T@Field_13726_13727) ) (!  (=> (select (|PolymorphicMapType_14202_7928_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@71 f_16@@106) (= (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@55) o2_5@@71 f_16@@106) (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@71 f_16@@106)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@71 f_16@@106))
))) (forall ((o2_5@@72 T@Ref) (f_16@@107 T@Field_13713_17055) ) (!  (=> (select (|PolymorphicMapType_14202_7928_54124#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@72 f_16@@107) (= (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@55) o2_5@@72 f_16@@107) (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@72 f_16@@107)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@72 f_16@@107))
))) (forall ((o2_5@@73 T@Ref) (f_16@@108 T@Field_13713_7938) ) (!  (=> (select (|PolymorphicMapType_14202_7928_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@73 f_16@@108) (= (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@55) o2_5@@73 f_16@@108) (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@73 f_16@@108)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@73 f_16@@108))
))) (forall ((o2_5@@74 T@Ref) (f_16@@109 T@Field_17039_1195) ) (!  (=> (select (|PolymorphicMapType_14202_17039_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@74 f_16@@109) (= (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@55) o2_5@@74 f_16@@109) (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@74 f_16@@109)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@74 f_16@@109))
))) (forall ((o2_5@@75 T@Ref) (f_16@@110 T@Field_17039_53) ) (!  (=> (select (|PolymorphicMapType_14202_17039_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@75 f_16@@110) (= (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@55) o2_5@@75 f_16@@110) (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@75 f_16@@110)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@75 f_16@@110))
))) (forall ((o2_5@@76 T@Ref) (f_16@@111 T@Field_17039_13727) ) (!  (=> (select (|PolymorphicMapType_14202_17039_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@76 f_16@@111) (= (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@55) o2_5@@76 f_16@@111) (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@76 f_16@@111)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@76 f_16@@111))
))) (forall ((o2_5@@77 T@Ref) (f_16@@112 T@Field_17050_17055) ) (!  (=> (select (|PolymorphicMapType_14202_17039_55172#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@77 f_16@@112) (= (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@55) o2_5@@77 f_16@@112) (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@77 f_16@@112)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@77 f_16@@112))
))) (forall ((o2_5@@78 T@Ref) (f_16@@113 T@Field_17064_17065) ) (!  (=> (select (|PolymorphicMapType_14202_17039_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@78 f_16@@113) (= (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@55) o2_5@@78 f_16@@113) (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@78 f_16@@113)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@78 f_16@@113))
))) (forall ((o2_5@@79 T@Ref) (f_16@@114 T@Field_17509_1407) ) (!  (=> (select (|PolymorphicMapType_14202_17509_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@79 f_16@@114) (= (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@55) o2_5@@79 f_16@@114) (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@79 f_16@@114)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@79 f_16@@114))
))) (forall ((o2_5@@80 T@Ref) (f_16@@115 T@Field_17509_53) ) (!  (=> (select (|PolymorphicMapType_14202_17509_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@80 f_16@@115) (= (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@55) o2_5@@80 f_16@@115) (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@80 f_16@@115)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@80 f_16@@115))
))) (forall ((o2_5@@81 T@Ref) (f_16@@116 T@Field_17509_13727) ) (!  (=> (select (|PolymorphicMapType_14202_17509_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@81 f_16@@116) (= (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@55) o2_5@@81 f_16@@116) (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@81 f_16@@116)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@81 f_16@@116))
))) (forall ((o2_5@@82 T@Ref) (f_16@@117 T@Field_17522_17527) ) (!  (=> (select (|PolymorphicMapType_14202_17509_56220#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@82 f_16@@117) (= (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) o2_5@@82 f_16@@117) (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@82 f_16@@117)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@82 f_16@@117))
))) (forall ((o2_5@@83 T@Ref) (f_16@@118 T@Field_17538_17539) ) (!  (=> (select (|PolymorphicMapType_14202_17509_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@83 f_16@@118) (= (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@55) o2_5@@83 f_16@@118) (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@83 f_16@@118)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@83 f_16@@118))
))) (forall ((o2_5@@84 T@Ref) (f_16@@119 T@Field_18094_1672) ) (!  (=> (select (|PolymorphicMapType_14202_18094_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@84 f_16@@119) (= (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@55) o2_5@@84 f_16@@119) (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@84 f_16@@119)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@84 f_16@@119))
))) (forall ((o2_5@@85 T@Ref) (f_16@@120 T@Field_18094_53) ) (!  (=> (select (|PolymorphicMapType_14202_18094_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@85 f_16@@120) (= (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@55) o2_5@@85 f_16@@120) (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@85 f_16@@120)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@85 f_16@@120))
))) (forall ((o2_5@@86 T@Ref) (f_16@@121 T@Field_18094_13727) ) (!  (=> (select (|PolymorphicMapType_14202_18094_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@86 f_16@@121) (= (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@55) o2_5@@86 f_16@@121) (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@86 f_16@@121)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@86 f_16@@121))
))) (forall ((o2_5@@87 T@Ref) (f_16@@122 T@Field_18106_18111) ) (!  (=> (select (|PolymorphicMapType_14202_18094_57268#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@87 f_16@@122) (= (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@55) o2_5@@87 f_16@@122) (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@87 f_16@@122)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@87 f_16@@122))
))) (forall ((o2_5@@88 T@Ref) (f_16@@123 T@Field_18121_18122) ) (!  (=> (select (|PolymorphicMapType_14202_18094_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@88 f_16@@123) (= (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@55) o2_5@@88 f_16@@123) (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@88 f_16@@123)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@88 f_16@@123))
))) (forall ((o2_5@@89 T@Ref) (f_16@@124 T@Field_18651_1941) ) (!  (=> (select (|PolymorphicMapType_14202_18651_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@89 f_16@@124) (= (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@55) o2_5@@89 f_16@@124) (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@89 f_16@@124)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@89 f_16@@124))
))) (forall ((o2_5@@90 T@Ref) (f_16@@125 T@Field_18651_53) ) (!  (=> (select (|PolymorphicMapType_14202_18651_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@90 f_16@@125) (= (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@55) o2_5@@90 f_16@@125) (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@90 f_16@@125)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@90 f_16@@125))
))) (forall ((o2_5@@91 T@Ref) (f_16@@126 T@Field_18651_13727) ) (!  (=> (select (|PolymorphicMapType_14202_18651_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@91 f_16@@126) (= (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@55) o2_5@@91 f_16@@126) (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@91 f_16@@126)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@91 f_16@@126))
))) (forall ((o2_5@@92 T@Ref) (f_16@@127 T@Field_18664_18669) ) (!  (=> (select (|PolymorphicMapType_14202_18651_58316#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@92 f_16@@127) (= (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@55) o2_5@@92 f_16@@127) (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@92 f_16@@127)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@92 f_16@@127))
))) (forall ((o2_5@@93 T@Ref) (f_16@@128 T@Field_18680_18681) ) (!  (=> (select (|PolymorphicMapType_14202_18651_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@93 f_16@@128) (= (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@55) o2_5@@93 f_16@@128) (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@93 f_16@@128)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@93 f_16@@128))
))) (forall ((o2_5@@94 T@Ref) (f_16@@129 T@Field_7937_1195) ) (!  (=> (select (|PolymorphicMapType_14202_19426_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@94 f_16@@129) (= (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@55) o2_5@@94 f_16@@129) (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@94 f_16@@129)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@94 f_16@@129))
))) (forall ((o2_5@@95 T@Ref) (f_16@@130 T@Field_7937_53) ) (!  (=> (select (|PolymorphicMapType_14202_19426_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@95 f_16@@130) (= (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@55) o2_5@@95 f_16@@130) (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@95 f_16@@130)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@95 f_16@@130))
))) (forall ((o2_5@@96 T@Ref) (f_16@@131 T@Field_7937_13727) ) (!  (=> (select (|PolymorphicMapType_14202_19426_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@96 f_16@@131) (= (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@55) o2_5@@96 f_16@@131) (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@96 f_16@@131)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@96 f_16@@131))
))) (forall ((o2_5@@97 T@Ref) (f_16@@132 T@Field_19439_19444) ) (!  (=> (select (|PolymorphicMapType_14202_19426_59364#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@97 f_16@@132) (= (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@55) o2_5@@97 f_16@@132) (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@97 f_16@@132)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@97 f_16@@132))
))) (forall ((o2_5@@98 T@Ref) (f_16@@133 T@Field_19426_19427) ) (!  (=> (select (|PolymorphicMapType_14202_19426_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@98 f_16@@133) (= (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@55) o2_5@@98 f_16@@133) (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@98 f_16@@133)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@98 f_16@@133))
))) (forall ((o2_5@@99 T@Ref) (f_16@@134 T@Field_7962_1195) ) (!  (=> (select (|PolymorphicMapType_14202_20346_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@99 f_16@@134) (= (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@55) o2_5@@99 f_16@@134) (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@99 f_16@@134)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@99 f_16@@134))
))) (forall ((o2_5@@100 T@Ref) (f_16@@135 T@Field_7962_53) ) (!  (=> (select (|PolymorphicMapType_14202_20346_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@100 f_16@@135) (= (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@55) o2_5@@100 f_16@@135) (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@100 f_16@@135)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@100 f_16@@135))
))) (forall ((o2_5@@101 T@Ref) (f_16@@136 T@Field_7962_13727) ) (!  (=> (select (|PolymorphicMapType_14202_20346_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@101 f_16@@136) (= (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@55) o2_5@@101 f_16@@136) (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@101 f_16@@136)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@101 f_16@@136))
))) (forall ((o2_5@@102 T@Ref) (f_16@@137 T@Field_20359_20364) ) (!  (=> (select (|PolymorphicMapType_14202_20346_60412#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@102 f_16@@137) (= (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@55) o2_5@@102 f_16@@137) (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@102 f_16@@137)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@102 f_16@@137))
))) (forall ((o2_5@@103 T@Ref) (f_16@@138 T@Field_20346_20347) ) (!  (=> (select (|PolymorphicMapType_14202_20346_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@55) null (PredicateMaskField_17509 pm_f_5@@15))) o2_5@@103 f_16@@138) (= (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@55) o2_5@@103 f_16@@138) (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@103 f_16@@138)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| ExhaleHeap@@52) o2_5@@103 f_16@@138))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@52 Mask@@123) (IsPredicateField_7819_7820 pm_f_5@@15))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_13653) (ExhaleHeap@@53 T@PolymorphicMapType_13653) (Mask@@124 T@PolymorphicMapType_13674) (pm_f_5@@16 T@Field_17064_17065) ) (!  (=> (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@53 Mask@@124) (=> (and (HasDirectPerm_17039_7938 Mask@@124 null pm_f_5@@16) (IsPredicateField_7802_7803 pm_f_5@@16)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@104 T@Ref) (f_16@@139 T@Field_19293_2246) ) (!  (=> (select (|PolymorphicMapType_14202_7928_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@104 f_16@@139) (= (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@56) o2_5@@104 f_16@@139) (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@104 f_16@@139)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@104 f_16@@139))
)) (forall ((o2_5@@105 T@Ref) (f_16@@140 T@Field_13713_53) ) (!  (=> (select (|PolymorphicMapType_14202_7928_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@105 f_16@@140) (= (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@56) o2_5@@105 f_16@@140) (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@105 f_16@@140)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@105 f_16@@140))
))) (forall ((o2_5@@106 T@Ref) (f_16@@141 T@Field_13726_13727) ) (!  (=> (select (|PolymorphicMapType_14202_7928_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@106 f_16@@141) (= (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@56) o2_5@@106 f_16@@141) (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@106 f_16@@141)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@106 f_16@@141))
))) (forall ((o2_5@@107 T@Ref) (f_16@@142 T@Field_13713_17055) ) (!  (=> (select (|PolymorphicMapType_14202_7928_54124#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@107 f_16@@142) (= (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@56) o2_5@@107 f_16@@142) (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@107 f_16@@142)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@107 f_16@@142))
))) (forall ((o2_5@@108 T@Ref) (f_16@@143 T@Field_13713_7938) ) (!  (=> (select (|PolymorphicMapType_14202_7928_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@108 f_16@@143) (= (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@56) o2_5@@108 f_16@@143) (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@108 f_16@@143)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@108 f_16@@143))
))) (forall ((o2_5@@109 T@Ref) (f_16@@144 T@Field_17039_1195) ) (!  (=> (select (|PolymorphicMapType_14202_17039_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@109 f_16@@144) (= (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@56) o2_5@@109 f_16@@144) (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@109 f_16@@144)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@109 f_16@@144))
))) (forall ((o2_5@@110 T@Ref) (f_16@@145 T@Field_17039_53) ) (!  (=> (select (|PolymorphicMapType_14202_17039_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@110 f_16@@145) (= (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@56) o2_5@@110 f_16@@145) (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@110 f_16@@145)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@110 f_16@@145))
))) (forall ((o2_5@@111 T@Ref) (f_16@@146 T@Field_17039_13727) ) (!  (=> (select (|PolymorphicMapType_14202_17039_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@111 f_16@@146) (= (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@56) o2_5@@111 f_16@@146) (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@111 f_16@@146)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@111 f_16@@146))
))) (forall ((o2_5@@112 T@Ref) (f_16@@147 T@Field_17050_17055) ) (!  (=> (select (|PolymorphicMapType_14202_17039_55172#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@112 f_16@@147) (= (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) o2_5@@112 f_16@@147) (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@112 f_16@@147)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@112 f_16@@147))
))) (forall ((o2_5@@113 T@Ref) (f_16@@148 T@Field_17064_17065) ) (!  (=> (select (|PolymorphicMapType_14202_17039_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@113 f_16@@148) (= (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@56) o2_5@@113 f_16@@148) (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@113 f_16@@148)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@113 f_16@@148))
))) (forall ((o2_5@@114 T@Ref) (f_16@@149 T@Field_17509_1407) ) (!  (=> (select (|PolymorphicMapType_14202_17509_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@114 f_16@@149) (= (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@56) o2_5@@114 f_16@@149) (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@114 f_16@@149)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@114 f_16@@149))
))) (forall ((o2_5@@115 T@Ref) (f_16@@150 T@Field_17509_53) ) (!  (=> (select (|PolymorphicMapType_14202_17509_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@115 f_16@@150) (= (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@56) o2_5@@115 f_16@@150) (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@115 f_16@@150)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@115 f_16@@150))
))) (forall ((o2_5@@116 T@Ref) (f_16@@151 T@Field_17509_13727) ) (!  (=> (select (|PolymorphicMapType_14202_17509_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@116 f_16@@151) (= (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@56) o2_5@@116 f_16@@151) (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@116 f_16@@151)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@116 f_16@@151))
))) (forall ((o2_5@@117 T@Ref) (f_16@@152 T@Field_17522_17527) ) (!  (=> (select (|PolymorphicMapType_14202_17509_56220#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@117 f_16@@152) (= (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@56) o2_5@@117 f_16@@152) (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@117 f_16@@152)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@117 f_16@@152))
))) (forall ((o2_5@@118 T@Ref) (f_16@@153 T@Field_17538_17539) ) (!  (=> (select (|PolymorphicMapType_14202_17509_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@118 f_16@@153) (= (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@56) o2_5@@118 f_16@@153) (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@118 f_16@@153)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@118 f_16@@153))
))) (forall ((o2_5@@119 T@Ref) (f_16@@154 T@Field_18094_1672) ) (!  (=> (select (|PolymorphicMapType_14202_18094_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@119 f_16@@154) (= (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@56) o2_5@@119 f_16@@154) (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@119 f_16@@154)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@119 f_16@@154))
))) (forall ((o2_5@@120 T@Ref) (f_16@@155 T@Field_18094_53) ) (!  (=> (select (|PolymorphicMapType_14202_18094_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@120 f_16@@155) (= (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@56) o2_5@@120 f_16@@155) (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@120 f_16@@155)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@120 f_16@@155))
))) (forall ((o2_5@@121 T@Ref) (f_16@@156 T@Field_18094_13727) ) (!  (=> (select (|PolymorphicMapType_14202_18094_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@121 f_16@@156) (= (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@56) o2_5@@121 f_16@@156) (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@121 f_16@@156)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@121 f_16@@156))
))) (forall ((o2_5@@122 T@Ref) (f_16@@157 T@Field_18106_18111) ) (!  (=> (select (|PolymorphicMapType_14202_18094_57268#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@122 f_16@@157) (= (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@56) o2_5@@122 f_16@@157) (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@122 f_16@@157)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@122 f_16@@157))
))) (forall ((o2_5@@123 T@Ref) (f_16@@158 T@Field_18121_18122) ) (!  (=> (select (|PolymorphicMapType_14202_18094_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@123 f_16@@158) (= (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@56) o2_5@@123 f_16@@158) (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@123 f_16@@158)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@123 f_16@@158))
))) (forall ((o2_5@@124 T@Ref) (f_16@@159 T@Field_18651_1941) ) (!  (=> (select (|PolymorphicMapType_14202_18651_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@124 f_16@@159) (= (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@56) o2_5@@124 f_16@@159) (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@124 f_16@@159)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@124 f_16@@159))
))) (forall ((o2_5@@125 T@Ref) (f_16@@160 T@Field_18651_53) ) (!  (=> (select (|PolymorphicMapType_14202_18651_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@125 f_16@@160) (= (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@56) o2_5@@125 f_16@@160) (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@125 f_16@@160)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@125 f_16@@160))
))) (forall ((o2_5@@126 T@Ref) (f_16@@161 T@Field_18651_13727) ) (!  (=> (select (|PolymorphicMapType_14202_18651_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@126 f_16@@161) (= (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@56) o2_5@@126 f_16@@161) (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@126 f_16@@161)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@126 f_16@@161))
))) (forall ((o2_5@@127 T@Ref) (f_16@@162 T@Field_18664_18669) ) (!  (=> (select (|PolymorphicMapType_14202_18651_58316#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@127 f_16@@162) (= (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@56) o2_5@@127 f_16@@162) (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@127 f_16@@162)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@127 f_16@@162))
))) (forall ((o2_5@@128 T@Ref) (f_16@@163 T@Field_18680_18681) ) (!  (=> (select (|PolymorphicMapType_14202_18651_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@128 f_16@@163) (= (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@56) o2_5@@128 f_16@@163) (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@128 f_16@@163)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@128 f_16@@163))
))) (forall ((o2_5@@129 T@Ref) (f_16@@164 T@Field_7937_1195) ) (!  (=> (select (|PolymorphicMapType_14202_19426_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@129 f_16@@164) (= (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@56) o2_5@@129 f_16@@164) (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@129 f_16@@164)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@129 f_16@@164))
))) (forall ((o2_5@@130 T@Ref) (f_16@@165 T@Field_7937_53) ) (!  (=> (select (|PolymorphicMapType_14202_19426_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@130 f_16@@165) (= (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@56) o2_5@@130 f_16@@165) (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@130 f_16@@165)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@130 f_16@@165))
))) (forall ((o2_5@@131 T@Ref) (f_16@@166 T@Field_7937_13727) ) (!  (=> (select (|PolymorphicMapType_14202_19426_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@131 f_16@@166) (= (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@56) o2_5@@131 f_16@@166) (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@131 f_16@@166)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@131 f_16@@166))
))) (forall ((o2_5@@132 T@Ref) (f_16@@167 T@Field_19439_19444) ) (!  (=> (select (|PolymorphicMapType_14202_19426_59364#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@132 f_16@@167) (= (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@56) o2_5@@132 f_16@@167) (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@132 f_16@@167)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@132 f_16@@167))
))) (forall ((o2_5@@133 T@Ref) (f_16@@168 T@Field_19426_19427) ) (!  (=> (select (|PolymorphicMapType_14202_19426_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@133 f_16@@168) (= (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@56) o2_5@@133 f_16@@168) (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@133 f_16@@168)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@133 f_16@@168))
))) (forall ((o2_5@@134 T@Ref) (f_16@@169 T@Field_7962_1195) ) (!  (=> (select (|PolymorphicMapType_14202_20346_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@134 f_16@@169) (= (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@56) o2_5@@134 f_16@@169) (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@134 f_16@@169)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@134 f_16@@169))
))) (forall ((o2_5@@135 T@Ref) (f_16@@170 T@Field_7962_53) ) (!  (=> (select (|PolymorphicMapType_14202_20346_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@135 f_16@@170) (= (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@56) o2_5@@135 f_16@@170) (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@135 f_16@@170)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@135 f_16@@170))
))) (forall ((o2_5@@136 T@Ref) (f_16@@171 T@Field_7962_13727) ) (!  (=> (select (|PolymorphicMapType_14202_20346_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@136 f_16@@171) (= (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@56) o2_5@@136 f_16@@171) (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@136 f_16@@171)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@136 f_16@@171))
))) (forall ((o2_5@@137 T@Ref) (f_16@@172 T@Field_20359_20364) ) (!  (=> (select (|PolymorphicMapType_14202_20346_60412#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@137 f_16@@172) (= (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@56) o2_5@@137 f_16@@172) (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@137 f_16@@172)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@137 f_16@@172))
))) (forall ((o2_5@@138 T@Ref) (f_16@@173 T@Field_20346_20347) ) (!  (=> (select (|PolymorphicMapType_14202_20346_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@56) null (PredicateMaskField_17039 pm_f_5@@16))) o2_5@@138 f_16@@173) (= (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@56) o2_5@@138 f_16@@173) (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@138 f_16@@173)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| ExhaleHeap@@53) o2_5@@138 f_16@@173))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@53 Mask@@124) (IsPredicateField_7802_7803 pm_f_5@@16))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_13653) (ExhaleHeap@@54 T@PolymorphicMapType_13653) (Mask@@125 T@PolymorphicMapType_13674) (pm_f_5@@17 T@Field_13713_7938) ) (!  (=> (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@54 Mask@@125) (=> (and (HasDirectPerm_13713_7938 Mask@@125 null pm_f_5@@17) (IsPredicateField_13713_51781 pm_f_5@@17)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@139 T@Ref) (f_16@@174 T@Field_19293_2246) ) (!  (=> (select (|PolymorphicMapType_14202_7928_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@139 f_16@@174) (= (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@57) o2_5@@139 f_16@@174) (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@139 f_16@@174)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@139 f_16@@174))
)) (forall ((o2_5@@140 T@Ref) (f_16@@175 T@Field_13713_53) ) (!  (=> (select (|PolymorphicMapType_14202_7928_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@140 f_16@@175) (= (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@57) o2_5@@140 f_16@@175) (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@140 f_16@@175)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@140 f_16@@175))
))) (forall ((o2_5@@141 T@Ref) (f_16@@176 T@Field_13726_13727) ) (!  (=> (select (|PolymorphicMapType_14202_7928_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@141 f_16@@176) (= (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@57) o2_5@@141 f_16@@176) (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@141 f_16@@176)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@141 f_16@@176))
))) (forall ((o2_5@@142 T@Ref) (f_16@@177 T@Field_13713_17055) ) (!  (=> (select (|PolymorphicMapType_14202_7928_54124#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@142 f_16@@177) (= (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) o2_5@@142 f_16@@177) (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@142 f_16@@177)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@142 f_16@@177))
))) (forall ((o2_5@@143 T@Ref) (f_16@@178 T@Field_13713_7938) ) (!  (=> (select (|PolymorphicMapType_14202_7928_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@143 f_16@@178) (= (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@57) o2_5@@143 f_16@@178) (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@143 f_16@@178)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@143 f_16@@178))
))) (forall ((o2_5@@144 T@Ref) (f_16@@179 T@Field_17039_1195) ) (!  (=> (select (|PolymorphicMapType_14202_17039_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@144 f_16@@179) (= (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@57) o2_5@@144 f_16@@179) (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@144 f_16@@179)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@144 f_16@@179))
))) (forall ((o2_5@@145 T@Ref) (f_16@@180 T@Field_17039_53) ) (!  (=> (select (|PolymorphicMapType_14202_17039_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@145 f_16@@180) (= (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@57) o2_5@@145 f_16@@180) (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@145 f_16@@180)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@145 f_16@@180))
))) (forall ((o2_5@@146 T@Ref) (f_16@@181 T@Field_17039_13727) ) (!  (=> (select (|PolymorphicMapType_14202_17039_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@146 f_16@@181) (= (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@57) o2_5@@146 f_16@@181) (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@146 f_16@@181)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@146 f_16@@181))
))) (forall ((o2_5@@147 T@Ref) (f_16@@182 T@Field_17050_17055) ) (!  (=> (select (|PolymorphicMapType_14202_17039_55172#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@147 f_16@@182) (= (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@57) o2_5@@147 f_16@@182) (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@147 f_16@@182)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@147 f_16@@182))
))) (forall ((o2_5@@148 T@Ref) (f_16@@183 T@Field_17064_17065) ) (!  (=> (select (|PolymorphicMapType_14202_17039_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@148 f_16@@183) (= (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@57) o2_5@@148 f_16@@183) (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@148 f_16@@183)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@148 f_16@@183))
))) (forall ((o2_5@@149 T@Ref) (f_16@@184 T@Field_17509_1407) ) (!  (=> (select (|PolymorphicMapType_14202_17509_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@149 f_16@@184) (= (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@57) o2_5@@149 f_16@@184) (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@149 f_16@@184)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@149 f_16@@184))
))) (forall ((o2_5@@150 T@Ref) (f_16@@185 T@Field_17509_53) ) (!  (=> (select (|PolymorphicMapType_14202_17509_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@150 f_16@@185) (= (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@57) o2_5@@150 f_16@@185) (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@150 f_16@@185)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@150 f_16@@185))
))) (forall ((o2_5@@151 T@Ref) (f_16@@186 T@Field_17509_13727) ) (!  (=> (select (|PolymorphicMapType_14202_17509_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@151 f_16@@186) (= (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@57) o2_5@@151 f_16@@186) (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@151 f_16@@186)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@151 f_16@@186))
))) (forall ((o2_5@@152 T@Ref) (f_16@@187 T@Field_17522_17527) ) (!  (=> (select (|PolymorphicMapType_14202_17509_56220#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@152 f_16@@187) (= (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@57) o2_5@@152 f_16@@187) (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@152 f_16@@187)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@152 f_16@@187))
))) (forall ((o2_5@@153 T@Ref) (f_16@@188 T@Field_17538_17539) ) (!  (=> (select (|PolymorphicMapType_14202_17509_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@153 f_16@@188) (= (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@57) o2_5@@153 f_16@@188) (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@153 f_16@@188)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@153 f_16@@188))
))) (forall ((o2_5@@154 T@Ref) (f_16@@189 T@Field_18094_1672) ) (!  (=> (select (|PolymorphicMapType_14202_18094_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@154 f_16@@189) (= (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@57) o2_5@@154 f_16@@189) (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@154 f_16@@189)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@154 f_16@@189))
))) (forall ((o2_5@@155 T@Ref) (f_16@@190 T@Field_18094_53) ) (!  (=> (select (|PolymorphicMapType_14202_18094_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@155 f_16@@190) (= (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@57) o2_5@@155 f_16@@190) (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@155 f_16@@190)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@155 f_16@@190))
))) (forall ((o2_5@@156 T@Ref) (f_16@@191 T@Field_18094_13727) ) (!  (=> (select (|PolymorphicMapType_14202_18094_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@156 f_16@@191) (= (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@57) o2_5@@156 f_16@@191) (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@156 f_16@@191)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@156 f_16@@191))
))) (forall ((o2_5@@157 T@Ref) (f_16@@192 T@Field_18106_18111) ) (!  (=> (select (|PolymorphicMapType_14202_18094_57268#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@157 f_16@@192) (= (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@57) o2_5@@157 f_16@@192) (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@157 f_16@@192)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@157 f_16@@192))
))) (forall ((o2_5@@158 T@Ref) (f_16@@193 T@Field_18121_18122) ) (!  (=> (select (|PolymorphicMapType_14202_18094_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@158 f_16@@193) (= (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@57) o2_5@@158 f_16@@193) (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@158 f_16@@193)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@158 f_16@@193))
))) (forall ((o2_5@@159 T@Ref) (f_16@@194 T@Field_18651_1941) ) (!  (=> (select (|PolymorphicMapType_14202_18651_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@159 f_16@@194) (= (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@57) o2_5@@159 f_16@@194) (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@159 f_16@@194)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@159 f_16@@194))
))) (forall ((o2_5@@160 T@Ref) (f_16@@195 T@Field_18651_53) ) (!  (=> (select (|PolymorphicMapType_14202_18651_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@160 f_16@@195) (= (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@57) o2_5@@160 f_16@@195) (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@160 f_16@@195)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@160 f_16@@195))
))) (forall ((o2_5@@161 T@Ref) (f_16@@196 T@Field_18651_13727) ) (!  (=> (select (|PolymorphicMapType_14202_18651_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@161 f_16@@196) (= (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@57) o2_5@@161 f_16@@196) (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@161 f_16@@196)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@161 f_16@@196))
))) (forall ((o2_5@@162 T@Ref) (f_16@@197 T@Field_18664_18669) ) (!  (=> (select (|PolymorphicMapType_14202_18651_58316#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@162 f_16@@197) (= (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@57) o2_5@@162 f_16@@197) (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@162 f_16@@197)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@162 f_16@@197))
))) (forall ((o2_5@@163 T@Ref) (f_16@@198 T@Field_18680_18681) ) (!  (=> (select (|PolymorphicMapType_14202_18651_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@163 f_16@@198) (= (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@57) o2_5@@163 f_16@@198) (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@163 f_16@@198)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@163 f_16@@198))
))) (forall ((o2_5@@164 T@Ref) (f_16@@199 T@Field_7937_1195) ) (!  (=> (select (|PolymorphicMapType_14202_19426_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@164 f_16@@199) (= (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@57) o2_5@@164 f_16@@199) (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@164 f_16@@199)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@164 f_16@@199))
))) (forall ((o2_5@@165 T@Ref) (f_16@@200 T@Field_7937_53) ) (!  (=> (select (|PolymorphicMapType_14202_19426_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@165 f_16@@200) (= (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@57) o2_5@@165 f_16@@200) (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@165 f_16@@200)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@165 f_16@@200))
))) (forall ((o2_5@@166 T@Ref) (f_16@@201 T@Field_7937_13727) ) (!  (=> (select (|PolymorphicMapType_14202_19426_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@166 f_16@@201) (= (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@57) o2_5@@166 f_16@@201) (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@166 f_16@@201)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@166 f_16@@201))
))) (forall ((o2_5@@167 T@Ref) (f_16@@202 T@Field_19439_19444) ) (!  (=> (select (|PolymorphicMapType_14202_19426_59364#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@167 f_16@@202) (= (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@57) o2_5@@167 f_16@@202) (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@167 f_16@@202)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@167 f_16@@202))
))) (forall ((o2_5@@168 T@Ref) (f_16@@203 T@Field_19426_19427) ) (!  (=> (select (|PolymorphicMapType_14202_19426_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@168 f_16@@203) (= (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@57) o2_5@@168 f_16@@203) (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@168 f_16@@203)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@168 f_16@@203))
))) (forall ((o2_5@@169 T@Ref) (f_16@@204 T@Field_7962_1195) ) (!  (=> (select (|PolymorphicMapType_14202_20346_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@169 f_16@@204) (= (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@57) o2_5@@169 f_16@@204) (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@169 f_16@@204)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@169 f_16@@204))
))) (forall ((o2_5@@170 T@Ref) (f_16@@205 T@Field_7962_53) ) (!  (=> (select (|PolymorphicMapType_14202_20346_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@170 f_16@@205) (= (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@57) o2_5@@170 f_16@@205) (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@170 f_16@@205)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@170 f_16@@205))
))) (forall ((o2_5@@171 T@Ref) (f_16@@206 T@Field_7962_13727) ) (!  (=> (select (|PolymorphicMapType_14202_20346_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@171 f_16@@206) (= (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@57) o2_5@@171 f_16@@206) (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@171 f_16@@206)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@171 f_16@@206))
))) (forall ((o2_5@@172 T@Ref) (f_16@@207 T@Field_20359_20364) ) (!  (=> (select (|PolymorphicMapType_14202_20346_60412#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@172 f_16@@207) (= (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@57) o2_5@@172 f_16@@207) (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@172 f_16@@207)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@172 f_16@@207))
))) (forall ((o2_5@@173 T@Ref) (f_16@@208 T@Field_20346_20347) ) (!  (=> (select (|PolymorphicMapType_14202_20346_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@57) null (PredicateMaskField_13713 pm_f_5@@17))) o2_5@@173 f_16@@208) (= (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@57) o2_5@@173 f_16@@208) (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@173 f_16@@208)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| ExhaleHeap@@54) o2_5@@173 f_16@@208))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@54 Mask@@125) (IsPredicateField_13713_51781 pm_f_5@@17))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_13653) (ExhaleHeap@@55 T@PolymorphicMapType_13653) (Mask@@126 T@PolymorphicMapType_13674) (pm_f_5@@18 T@Field_20346_20347) ) (!  (=> (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@55 Mask@@126) (=> (and (HasDirectPerm_7962_7963 Mask@@126 null pm_f_5@@18) (IsPredicateField_7962_7963 pm_f_5@@18)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@174 T@Ref) (f_16@@209 T@Field_19293_2246) ) (!  (=> (select (|PolymorphicMapType_14202_7928_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@174 f_16@@209) (= (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@58) o2_5@@174 f_16@@209) (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@174 f_16@@209)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@174 f_16@@209))
)) (forall ((o2_5@@175 T@Ref) (f_16@@210 T@Field_13713_53) ) (!  (=> (select (|PolymorphicMapType_14202_7928_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@175 f_16@@210) (= (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@58) o2_5@@175 f_16@@210) (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@175 f_16@@210)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@175 f_16@@210))
))) (forall ((o2_5@@176 T@Ref) (f_16@@211 T@Field_13726_13727) ) (!  (=> (select (|PolymorphicMapType_14202_7928_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@176 f_16@@211) (= (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@58) o2_5@@176 f_16@@211) (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@176 f_16@@211)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@176 f_16@@211))
))) (forall ((o2_5@@177 T@Ref) (f_16@@212 T@Field_13713_17055) ) (!  (=> (select (|PolymorphicMapType_14202_7928_54124#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@177 f_16@@212) (= (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@58) o2_5@@177 f_16@@212) (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@177 f_16@@212)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@177 f_16@@212))
))) (forall ((o2_5@@178 T@Ref) (f_16@@213 T@Field_13713_7938) ) (!  (=> (select (|PolymorphicMapType_14202_7928_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@178 f_16@@213) (= (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@58) o2_5@@178 f_16@@213) (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@178 f_16@@213)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@178 f_16@@213))
))) (forall ((o2_5@@179 T@Ref) (f_16@@214 T@Field_17039_1195) ) (!  (=> (select (|PolymorphicMapType_14202_17039_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@179 f_16@@214) (= (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@58) o2_5@@179 f_16@@214) (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@179 f_16@@214)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@179 f_16@@214))
))) (forall ((o2_5@@180 T@Ref) (f_16@@215 T@Field_17039_53) ) (!  (=> (select (|PolymorphicMapType_14202_17039_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@180 f_16@@215) (= (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@58) o2_5@@180 f_16@@215) (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@180 f_16@@215)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@180 f_16@@215))
))) (forall ((o2_5@@181 T@Ref) (f_16@@216 T@Field_17039_13727) ) (!  (=> (select (|PolymorphicMapType_14202_17039_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@181 f_16@@216) (= (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@58) o2_5@@181 f_16@@216) (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@181 f_16@@216)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@181 f_16@@216))
))) (forall ((o2_5@@182 T@Ref) (f_16@@217 T@Field_17050_17055) ) (!  (=> (select (|PolymorphicMapType_14202_17039_55172#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@182 f_16@@217) (= (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@58) o2_5@@182 f_16@@217) (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@182 f_16@@217)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@182 f_16@@217))
))) (forall ((o2_5@@183 T@Ref) (f_16@@218 T@Field_17064_17065) ) (!  (=> (select (|PolymorphicMapType_14202_17039_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@183 f_16@@218) (= (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@58) o2_5@@183 f_16@@218) (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@183 f_16@@218)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@183 f_16@@218))
))) (forall ((o2_5@@184 T@Ref) (f_16@@219 T@Field_17509_1407) ) (!  (=> (select (|PolymorphicMapType_14202_17509_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@184 f_16@@219) (= (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@58) o2_5@@184 f_16@@219) (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@184 f_16@@219)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@184 f_16@@219))
))) (forall ((o2_5@@185 T@Ref) (f_16@@220 T@Field_17509_53) ) (!  (=> (select (|PolymorphicMapType_14202_17509_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@185 f_16@@220) (= (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@58) o2_5@@185 f_16@@220) (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@185 f_16@@220)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@185 f_16@@220))
))) (forall ((o2_5@@186 T@Ref) (f_16@@221 T@Field_17509_13727) ) (!  (=> (select (|PolymorphicMapType_14202_17509_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@186 f_16@@221) (= (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@58) o2_5@@186 f_16@@221) (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@186 f_16@@221)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@186 f_16@@221))
))) (forall ((o2_5@@187 T@Ref) (f_16@@222 T@Field_17522_17527) ) (!  (=> (select (|PolymorphicMapType_14202_17509_56220#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@187 f_16@@222) (= (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@58) o2_5@@187 f_16@@222) (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@187 f_16@@222)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@187 f_16@@222))
))) (forall ((o2_5@@188 T@Ref) (f_16@@223 T@Field_17538_17539) ) (!  (=> (select (|PolymorphicMapType_14202_17509_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@188 f_16@@223) (= (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@58) o2_5@@188 f_16@@223) (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@188 f_16@@223)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@188 f_16@@223))
))) (forall ((o2_5@@189 T@Ref) (f_16@@224 T@Field_18094_1672) ) (!  (=> (select (|PolymorphicMapType_14202_18094_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@189 f_16@@224) (= (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@58) o2_5@@189 f_16@@224) (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@189 f_16@@224)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@189 f_16@@224))
))) (forall ((o2_5@@190 T@Ref) (f_16@@225 T@Field_18094_53) ) (!  (=> (select (|PolymorphicMapType_14202_18094_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@190 f_16@@225) (= (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@58) o2_5@@190 f_16@@225) (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@190 f_16@@225)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@190 f_16@@225))
))) (forall ((o2_5@@191 T@Ref) (f_16@@226 T@Field_18094_13727) ) (!  (=> (select (|PolymorphicMapType_14202_18094_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@191 f_16@@226) (= (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@58) o2_5@@191 f_16@@226) (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@191 f_16@@226)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@191 f_16@@226))
))) (forall ((o2_5@@192 T@Ref) (f_16@@227 T@Field_18106_18111) ) (!  (=> (select (|PolymorphicMapType_14202_18094_57268#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@192 f_16@@227) (= (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@58) o2_5@@192 f_16@@227) (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@192 f_16@@227)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@192 f_16@@227))
))) (forall ((o2_5@@193 T@Ref) (f_16@@228 T@Field_18121_18122) ) (!  (=> (select (|PolymorphicMapType_14202_18094_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@193 f_16@@228) (= (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@58) o2_5@@193 f_16@@228) (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@193 f_16@@228)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@193 f_16@@228))
))) (forall ((o2_5@@194 T@Ref) (f_16@@229 T@Field_18651_1941) ) (!  (=> (select (|PolymorphicMapType_14202_18651_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@194 f_16@@229) (= (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@58) o2_5@@194 f_16@@229) (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@194 f_16@@229)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@194 f_16@@229))
))) (forall ((o2_5@@195 T@Ref) (f_16@@230 T@Field_18651_53) ) (!  (=> (select (|PolymorphicMapType_14202_18651_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@195 f_16@@230) (= (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@58) o2_5@@195 f_16@@230) (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@195 f_16@@230)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@195 f_16@@230))
))) (forall ((o2_5@@196 T@Ref) (f_16@@231 T@Field_18651_13727) ) (!  (=> (select (|PolymorphicMapType_14202_18651_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@196 f_16@@231) (= (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@58) o2_5@@196 f_16@@231) (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@196 f_16@@231)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@196 f_16@@231))
))) (forall ((o2_5@@197 T@Ref) (f_16@@232 T@Field_18664_18669) ) (!  (=> (select (|PolymorphicMapType_14202_18651_58316#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@197 f_16@@232) (= (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@58) o2_5@@197 f_16@@232) (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@197 f_16@@232)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@197 f_16@@232))
))) (forall ((o2_5@@198 T@Ref) (f_16@@233 T@Field_18680_18681) ) (!  (=> (select (|PolymorphicMapType_14202_18651_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@198 f_16@@233) (= (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@58) o2_5@@198 f_16@@233) (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@198 f_16@@233)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@198 f_16@@233))
))) (forall ((o2_5@@199 T@Ref) (f_16@@234 T@Field_7937_1195) ) (!  (=> (select (|PolymorphicMapType_14202_19426_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@199 f_16@@234) (= (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@58) o2_5@@199 f_16@@234) (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@199 f_16@@234)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@199 f_16@@234))
))) (forall ((o2_5@@200 T@Ref) (f_16@@235 T@Field_7937_53) ) (!  (=> (select (|PolymorphicMapType_14202_19426_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@200 f_16@@235) (= (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@58) o2_5@@200 f_16@@235) (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@200 f_16@@235)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@200 f_16@@235))
))) (forall ((o2_5@@201 T@Ref) (f_16@@236 T@Field_7937_13727) ) (!  (=> (select (|PolymorphicMapType_14202_19426_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@201 f_16@@236) (= (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@58) o2_5@@201 f_16@@236) (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@201 f_16@@236)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@201 f_16@@236))
))) (forall ((o2_5@@202 T@Ref) (f_16@@237 T@Field_19439_19444) ) (!  (=> (select (|PolymorphicMapType_14202_19426_59364#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@202 f_16@@237) (= (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@58) o2_5@@202 f_16@@237) (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@202 f_16@@237)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@202 f_16@@237))
))) (forall ((o2_5@@203 T@Ref) (f_16@@238 T@Field_19426_19427) ) (!  (=> (select (|PolymorphicMapType_14202_19426_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@203 f_16@@238) (= (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@58) o2_5@@203 f_16@@238) (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@203 f_16@@238)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@203 f_16@@238))
))) (forall ((o2_5@@204 T@Ref) (f_16@@239 T@Field_7962_1195) ) (!  (=> (select (|PolymorphicMapType_14202_20346_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@204 f_16@@239) (= (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@58) o2_5@@204 f_16@@239) (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@204 f_16@@239)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@204 f_16@@239))
))) (forall ((o2_5@@205 T@Ref) (f_16@@240 T@Field_7962_53) ) (!  (=> (select (|PolymorphicMapType_14202_20346_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@205 f_16@@240) (= (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@58) o2_5@@205 f_16@@240) (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@205 f_16@@240)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@205 f_16@@240))
))) (forall ((o2_5@@206 T@Ref) (f_16@@241 T@Field_7962_13727) ) (!  (=> (select (|PolymorphicMapType_14202_20346_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@206 f_16@@241) (= (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@58) o2_5@@206 f_16@@241) (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@206 f_16@@241)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@206 f_16@@241))
))) (forall ((o2_5@@207 T@Ref) (f_16@@242 T@Field_20359_20364) ) (!  (=> (select (|PolymorphicMapType_14202_20346_60412#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@207 f_16@@242) (= (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) o2_5@@207 f_16@@242) (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@207 f_16@@242)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@207 f_16@@242))
))) (forall ((o2_5@@208 T@Ref) (f_16@@243 T@Field_20346_20347) ) (!  (=> (select (|PolymorphicMapType_14202_20346_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@58) null (PredicateMaskField_7962 pm_f_5@@18))) o2_5@@208 f_16@@243) (= (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@58) o2_5@@208 f_16@@243) (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@208 f_16@@243)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| ExhaleHeap@@55) o2_5@@208 f_16@@243))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@55 Mask@@126) (IsPredicateField_7962_7963 pm_f_5@@18))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_13653) (ExhaleHeap@@56 T@PolymorphicMapType_13653) (Mask@@127 T@PolymorphicMapType_13674) (pm_f_5@@19 T@Field_19426_19427) ) (!  (=> (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@56 Mask@@127) (=> (and (HasDirectPerm_7937_7938 Mask@@127 null pm_f_5@@19) (IsPredicateField_7937_7938 pm_f_5@@19)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@209 T@Ref) (f_16@@244 T@Field_19293_2246) ) (!  (=> (select (|PolymorphicMapType_14202_7928_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@209 f_16@@244) (= (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@59) o2_5@@209 f_16@@244) (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@209 f_16@@244)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@209 f_16@@244))
)) (forall ((o2_5@@210 T@Ref) (f_16@@245 T@Field_13713_53) ) (!  (=> (select (|PolymorphicMapType_14202_7928_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@210 f_16@@245) (= (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@59) o2_5@@210 f_16@@245) (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@210 f_16@@245)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@210 f_16@@245))
))) (forall ((o2_5@@211 T@Ref) (f_16@@246 T@Field_13726_13727) ) (!  (=> (select (|PolymorphicMapType_14202_7928_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@211 f_16@@246) (= (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@59) o2_5@@211 f_16@@246) (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@211 f_16@@246)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@211 f_16@@246))
))) (forall ((o2_5@@212 T@Ref) (f_16@@247 T@Field_13713_17055) ) (!  (=> (select (|PolymorphicMapType_14202_7928_54124#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@212 f_16@@247) (= (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@59) o2_5@@212 f_16@@247) (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@212 f_16@@247)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@212 f_16@@247))
))) (forall ((o2_5@@213 T@Ref) (f_16@@248 T@Field_13713_7938) ) (!  (=> (select (|PolymorphicMapType_14202_7928_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@213 f_16@@248) (= (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@59) o2_5@@213 f_16@@248) (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@213 f_16@@248)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@213 f_16@@248))
))) (forall ((o2_5@@214 T@Ref) (f_16@@249 T@Field_17039_1195) ) (!  (=> (select (|PolymorphicMapType_14202_17039_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@214 f_16@@249) (= (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@59) o2_5@@214 f_16@@249) (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@214 f_16@@249)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@214 f_16@@249))
))) (forall ((o2_5@@215 T@Ref) (f_16@@250 T@Field_17039_53) ) (!  (=> (select (|PolymorphicMapType_14202_17039_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@215 f_16@@250) (= (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@59) o2_5@@215 f_16@@250) (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@215 f_16@@250)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@215 f_16@@250))
))) (forall ((o2_5@@216 T@Ref) (f_16@@251 T@Field_17039_13727) ) (!  (=> (select (|PolymorphicMapType_14202_17039_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@216 f_16@@251) (= (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@59) o2_5@@216 f_16@@251) (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@216 f_16@@251)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@216 f_16@@251))
))) (forall ((o2_5@@217 T@Ref) (f_16@@252 T@Field_17050_17055) ) (!  (=> (select (|PolymorphicMapType_14202_17039_55172#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@217 f_16@@252) (= (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@59) o2_5@@217 f_16@@252) (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@217 f_16@@252)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@217 f_16@@252))
))) (forall ((o2_5@@218 T@Ref) (f_16@@253 T@Field_17064_17065) ) (!  (=> (select (|PolymorphicMapType_14202_17039_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@218 f_16@@253) (= (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@59) o2_5@@218 f_16@@253) (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@218 f_16@@253)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@218 f_16@@253))
))) (forall ((o2_5@@219 T@Ref) (f_16@@254 T@Field_17509_1407) ) (!  (=> (select (|PolymorphicMapType_14202_17509_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@219 f_16@@254) (= (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@59) o2_5@@219 f_16@@254) (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@219 f_16@@254)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@219 f_16@@254))
))) (forall ((o2_5@@220 T@Ref) (f_16@@255 T@Field_17509_53) ) (!  (=> (select (|PolymorphicMapType_14202_17509_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@220 f_16@@255) (= (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@59) o2_5@@220 f_16@@255) (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@220 f_16@@255)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@220 f_16@@255))
))) (forall ((o2_5@@221 T@Ref) (f_16@@256 T@Field_17509_13727) ) (!  (=> (select (|PolymorphicMapType_14202_17509_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@221 f_16@@256) (= (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@59) o2_5@@221 f_16@@256) (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@221 f_16@@256)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@221 f_16@@256))
))) (forall ((o2_5@@222 T@Ref) (f_16@@257 T@Field_17522_17527) ) (!  (=> (select (|PolymorphicMapType_14202_17509_56220#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@222 f_16@@257) (= (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@59) o2_5@@222 f_16@@257) (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@222 f_16@@257)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@222 f_16@@257))
))) (forall ((o2_5@@223 T@Ref) (f_16@@258 T@Field_17538_17539) ) (!  (=> (select (|PolymorphicMapType_14202_17509_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@223 f_16@@258) (= (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@59) o2_5@@223 f_16@@258) (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@223 f_16@@258)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@223 f_16@@258))
))) (forall ((o2_5@@224 T@Ref) (f_16@@259 T@Field_18094_1672) ) (!  (=> (select (|PolymorphicMapType_14202_18094_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@224 f_16@@259) (= (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@59) o2_5@@224 f_16@@259) (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@224 f_16@@259)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@224 f_16@@259))
))) (forall ((o2_5@@225 T@Ref) (f_16@@260 T@Field_18094_53) ) (!  (=> (select (|PolymorphicMapType_14202_18094_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@225 f_16@@260) (= (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@59) o2_5@@225 f_16@@260) (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@225 f_16@@260)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@225 f_16@@260))
))) (forall ((o2_5@@226 T@Ref) (f_16@@261 T@Field_18094_13727) ) (!  (=> (select (|PolymorphicMapType_14202_18094_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@226 f_16@@261) (= (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@59) o2_5@@226 f_16@@261) (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@226 f_16@@261)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@226 f_16@@261))
))) (forall ((o2_5@@227 T@Ref) (f_16@@262 T@Field_18106_18111) ) (!  (=> (select (|PolymorphicMapType_14202_18094_57268#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@227 f_16@@262) (= (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@59) o2_5@@227 f_16@@262) (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@227 f_16@@262)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@227 f_16@@262))
))) (forall ((o2_5@@228 T@Ref) (f_16@@263 T@Field_18121_18122) ) (!  (=> (select (|PolymorphicMapType_14202_18094_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@228 f_16@@263) (= (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@59) o2_5@@228 f_16@@263) (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@228 f_16@@263)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@228 f_16@@263))
))) (forall ((o2_5@@229 T@Ref) (f_16@@264 T@Field_18651_1941) ) (!  (=> (select (|PolymorphicMapType_14202_18651_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@229 f_16@@264) (= (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@59) o2_5@@229 f_16@@264) (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@229 f_16@@264)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@229 f_16@@264))
))) (forall ((o2_5@@230 T@Ref) (f_16@@265 T@Field_18651_53) ) (!  (=> (select (|PolymorphicMapType_14202_18651_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@230 f_16@@265) (= (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@59) o2_5@@230 f_16@@265) (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@230 f_16@@265)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@230 f_16@@265))
))) (forall ((o2_5@@231 T@Ref) (f_16@@266 T@Field_18651_13727) ) (!  (=> (select (|PolymorphicMapType_14202_18651_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@231 f_16@@266) (= (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@59) o2_5@@231 f_16@@266) (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@231 f_16@@266)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@231 f_16@@266))
))) (forall ((o2_5@@232 T@Ref) (f_16@@267 T@Field_18664_18669) ) (!  (=> (select (|PolymorphicMapType_14202_18651_58316#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@232 f_16@@267) (= (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@59) o2_5@@232 f_16@@267) (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@232 f_16@@267)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@232 f_16@@267))
))) (forall ((o2_5@@233 T@Ref) (f_16@@268 T@Field_18680_18681) ) (!  (=> (select (|PolymorphicMapType_14202_18651_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@233 f_16@@268) (= (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@59) o2_5@@233 f_16@@268) (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@233 f_16@@268)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@233 f_16@@268))
))) (forall ((o2_5@@234 T@Ref) (f_16@@269 T@Field_7937_1195) ) (!  (=> (select (|PolymorphicMapType_14202_19426_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@234 f_16@@269) (= (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@59) o2_5@@234 f_16@@269) (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@234 f_16@@269)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@234 f_16@@269))
))) (forall ((o2_5@@235 T@Ref) (f_16@@270 T@Field_7937_53) ) (!  (=> (select (|PolymorphicMapType_14202_19426_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@235 f_16@@270) (= (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@59) o2_5@@235 f_16@@270) (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@235 f_16@@270)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@235 f_16@@270))
))) (forall ((o2_5@@236 T@Ref) (f_16@@271 T@Field_7937_13727) ) (!  (=> (select (|PolymorphicMapType_14202_19426_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@236 f_16@@271) (= (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@59) o2_5@@236 f_16@@271) (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@236 f_16@@271)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@236 f_16@@271))
))) (forall ((o2_5@@237 T@Ref) (f_16@@272 T@Field_19439_19444) ) (!  (=> (select (|PolymorphicMapType_14202_19426_59364#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@237 f_16@@272) (= (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) o2_5@@237 f_16@@272) (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@237 f_16@@272)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@237 f_16@@272))
))) (forall ((o2_5@@238 T@Ref) (f_16@@273 T@Field_19426_19427) ) (!  (=> (select (|PolymorphicMapType_14202_19426_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@238 f_16@@273) (= (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@59) o2_5@@238 f_16@@273) (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@238 f_16@@273)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@238 f_16@@273))
))) (forall ((o2_5@@239 T@Ref) (f_16@@274 T@Field_7962_1195) ) (!  (=> (select (|PolymorphicMapType_14202_20346_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@239 f_16@@274) (= (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@59) o2_5@@239 f_16@@274) (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@239 f_16@@274)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@239 f_16@@274))
))) (forall ((o2_5@@240 T@Ref) (f_16@@275 T@Field_7962_53) ) (!  (=> (select (|PolymorphicMapType_14202_20346_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@240 f_16@@275) (= (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@59) o2_5@@240 f_16@@275) (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@240 f_16@@275)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@240 f_16@@275))
))) (forall ((o2_5@@241 T@Ref) (f_16@@276 T@Field_7962_13727) ) (!  (=> (select (|PolymorphicMapType_14202_20346_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@241 f_16@@276) (= (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@59) o2_5@@241 f_16@@276) (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@241 f_16@@276)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@241 f_16@@276))
))) (forall ((o2_5@@242 T@Ref) (f_16@@277 T@Field_20359_20364) ) (!  (=> (select (|PolymorphicMapType_14202_20346_60412#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@242 f_16@@277) (= (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@59) o2_5@@242 f_16@@277) (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@242 f_16@@277)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@242 f_16@@277))
))) (forall ((o2_5@@243 T@Ref) (f_16@@278 T@Field_20346_20347) ) (!  (=> (select (|PolymorphicMapType_14202_20346_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@59) null (PredicateMaskField_7937 pm_f_5@@19))) o2_5@@243 f_16@@278) (= (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@59) o2_5@@243 f_16@@278) (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@243 f_16@@278)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| ExhaleHeap@@56) o2_5@@243 f_16@@278))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@56 Mask@@127) (IsPredicateField_7937_7938 pm_f_5@@19))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_13653) (ExhaleHeap@@57 T@PolymorphicMapType_13653) (Mask@@128 T@PolymorphicMapType_13674) (pm_f_5@@20 T@Field_18680_18681) ) (!  (=> (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@57 Mask@@128) (=> (and (HasDirectPerm_18651_7938 Mask@@128 null pm_f_5@@20) (IsWandField_7893_7894 pm_f_5@@20)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@244 T@Ref) (f_16@@279 T@Field_19293_2246) ) (!  (=> (select (|PolymorphicMapType_14202_7928_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@244 f_16@@279) (= (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@60) o2_5@@244 f_16@@279) (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@244 f_16@@279)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@244 f_16@@279))
)) (forall ((o2_5@@245 T@Ref) (f_16@@280 T@Field_13713_53) ) (!  (=> (select (|PolymorphicMapType_14202_7928_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@245 f_16@@280) (= (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@60) o2_5@@245 f_16@@280) (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@245 f_16@@280)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@245 f_16@@280))
))) (forall ((o2_5@@246 T@Ref) (f_16@@281 T@Field_13726_13727) ) (!  (=> (select (|PolymorphicMapType_14202_7928_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@246 f_16@@281) (= (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@60) o2_5@@246 f_16@@281) (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@246 f_16@@281)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@246 f_16@@281))
))) (forall ((o2_5@@247 T@Ref) (f_16@@282 T@Field_13713_17055) ) (!  (=> (select (|PolymorphicMapType_14202_7928_54124#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@247 f_16@@282) (= (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@60) o2_5@@247 f_16@@282) (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@247 f_16@@282)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@247 f_16@@282))
))) (forall ((o2_5@@248 T@Ref) (f_16@@283 T@Field_13713_7938) ) (!  (=> (select (|PolymorphicMapType_14202_7928_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@248 f_16@@283) (= (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@60) o2_5@@248 f_16@@283) (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@248 f_16@@283)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@248 f_16@@283))
))) (forall ((o2_5@@249 T@Ref) (f_16@@284 T@Field_17039_1195) ) (!  (=> (select (|PolymorphicMapType_14202_17039_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@249 f_16@@284) (= (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@60) o2_5@@249 f_16@@284) (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@249 f_16@@284)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@249 f_16@@284))
))) (forall ((o2_5@@250 T@Ref) (f_16@@285 T@Field_17039_53) ) (!  (=> (select (|PolymorphicMapType_14202_17039_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@250 f_16@@285) (= (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@60) o2_5@@250 f_16@@285) (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@250 f_16@@285)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@250 f_16@@285))
))) (forall ((o2_5@@251 T@Ref) (f_16@@286 T@Field_17039_13727) ) (!  (=> (select (|PolymorphicMapType_14202_17039_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@251 f_16@@286) (= (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@60) o2_5@@251 f_16@@286) (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@251 f_16@@286)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@251 f_16@@286))
))) (forall ((o2_5@@252 T@Ref) (f_16@@287 T@Field_17050_17055) ) (!  (=> (select (|PolymorphicMapType_14202_17039_55172#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@252 f_16@@287) (= (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@60) o2_5@@252 f_16@@287) (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@252 f_16@@287)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@252 f_16@@287))
))) (forall ((o2_5@@253 T@Ref) (f_16@@288 T@Field_17064_17065) ) (!  (=> (select (|PolymorphicMapType_14202_17039_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@253 f_16@@288) (= (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@60) o2_5@@253 f_16@@288) (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@253 f_16@@288)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@253 f_16@@288))
))) (forall ((o2_5@@254 T@Ref) (f_16@@289 T@Field_17509_1407) ) (!  (=> (select (|PolymorphicMapType_14202_17509_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@254 f_16@@289) (= (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@60) o2_5@@254 f_16@@289) (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@254 f_16@@289)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@254 f_16@@289))
))) (forall ((o2_5@@255 T@Ref) (f_16@@290 T@Field_17509_53) ) (!  (=> (select (|PolymorphicMapType_14202_17509_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@255 f_16@@290) (= (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@60) o2_5@@255 f_16@@290) (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@255 f_16@@290)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@255 f_16@@290))
))) (forall ((o2_5@@256 T@Ref) (f_16@@291 T@Field_17509_13727) ) (!  (=> (select (|PolymorphicMapType_14202_17509_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@256 f_16@@291) (= (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@60) o2_5@@256 f_16@@291) (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@256 f_16@@291)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@256 f_16@@291))
))) (forall ((o2_5@@257 T@Ref) (f_16@@292 T@Field_17522_17527) ) (!  (=> (select (|PolymorphicMapType_14202_17509_56220#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@257 f_16@@292) (= (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@60) o2_5@@257 f_16@@292) (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@257 f_16@@292)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@257 f_16@@292))
))) (forall ((o2_5@@258 T@Ref) (f_16@@293 T@Field_17538_17539) ) (!  (=> (select (|PolymorphicMapType_14202_17509_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@258 f_16@@293) (= (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@60) o2_5@@258 f_16@@293) (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@258 f_16@@293)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@258 f_16@@293))
))) (forall ((o2_5@@259 T@Ref) (f_16@@294 T@Field_18094_1672) ) (!  (=> (select (|PolymorphicMapType_14202_18094_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@259 f_16@@294) (= (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@60) o2_5@@259 f_16@@294) (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@259 f_16@@294)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@259 f_16@@294))
))) (forall ((o2_5@@260 T@Ref) (f_16@@295 T@Field_18094_53) ) (!  (=> (select (|PolymorphicMapType_14202_18094_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@260 f_16@@295) (= (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@60) o2_5@@260 f_16@@295) (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@260 f_16@@295)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@260 f_16@@295))
))) (forall ((o2_5@@261 T@Ref) (f_16@@296 T@Field_18094_13727) ) (!  (=> (select (|PolymorphicMapType_14202_18094_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@261 f_16@@296) (= (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@60) o2_5@@261 f_16@@296) (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@261 f_16@@296)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@261 f_16@@296))
))) (forall ((o2_5@@262 T@Ref) (f_16@@297 T@Field_18106_18111) ) (!  (=> (select (|PolymorphicMapType_14202_18094_57268#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@262 f_16@@297) (= (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@60) o2_5@@262 f_16@@297) (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@262 f_16@@297)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@262 f_16@@297))
))) (forall ((o2_5@@263 T@Ref) (f_16@@298 T@Field_18121_18122) ) (!  (=> (select (|PolymorphicMapType_14202_18094_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@263 f_16@@298) (= (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@60) o2_5@@263 f_16@@298) (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@263 f_16@@298)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@263 f_16@@298))
))) (forall ((o2_5@@264 T@Ref) (f_16@@299 T@Field_18651_1941) ) (!  (=> (select (|PolymorphicMapType_14202_18651_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@264 f_16@@299) (= (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@60) o2_5@@264 f_16@@299) (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@264 f_16@@299)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@264 f_16@@299))
))) (forall ((o2_5@@265 T@Ref) (f_16@@300 T@Field_18651_53) ) (!  (=> (select (|PolymorphicMapType_14202_18651_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@265 f_16@@300) (= (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@60) o2_5@@265 f_16@@300) (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@265 f_16@@300)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@265 f_16@@300))
))) (forall ((o2_5@@266 T@Ref) (f_16@@301 T@Field_18651_13727) ) (!  (=> (select (|PolymorphicMapType_14202_18651_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@266 f_16@@301) (= (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@60) o2_5@@266 f_16@@301) (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@266 f_16@@301)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@266 f_16@@301))
))) (forall ((o2_5@@267 T@Ref) (f_16@@302 T@Field_18664_18669) ) (!  (=> (select (|PolymorphicMapType_14202_18651_58316#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@267 f_16@@302) (= (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) o2_5@@267 f_16@@302) (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@267 f_16@@302)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@267 f_16@@302))
))) (forall ((o2_5@@268 T@Ref) (f_16@@303 T@Field_18680_18681) ) (!  (=> (select (|PolymorphicMapType_14202_18651_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@268 f_16@@303) (= (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@60) o2_5@@268 f_16@@303) (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@268 f_16@@303)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@268 f_16@@303))
))) (forall ((o2_5@@269 T@Ref) (f_16@@304 T@Field_7937_1195) ) (!  (=> (select (|PolymorphicMapType_14202_19426_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@269 f_16@@304) (= (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@60) o2_5@@269 f_16@@304) (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@269 f_16@@304)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@269 f_16@@304))
))) (forall ((o2_5@@270 T@Ref) (f_16@@305 T@Field_7937_53) ) (!  (=> (select (|PolymorphicMapType_14202_19426_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@270 f_16@@305) (= (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@60) o2_5@@270 f_16@@305) (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@270 f_16@@305)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@270 f_16@@305))
))) (forall ((o2_5@@271 T@Ref) (f_16@@306 T@Field_7937_13727) ) (!  (=> (select (|PolymorphicMapType_14202_19426_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@271 f_16@@306) (= (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@60) o2_5@@271 f_16@@306) (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@271 f_16@@306)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@271 f_16@@306))
))) (forall ((o2_5@@272 T@Ref) (f_16@@307 T@Field_19439_19444) ) (!  (=> (select (|PolymorphicMapType_14202_19426_59364#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@272 f_16@@307) (= (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@60) o2_5@@272 f_16@@307) (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@272 f_16@@307)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@272 f_16@@307))
))) (forall ((o2_5@@273 T@Ref) (f_16@@308 T@Field_19426_19427) ) (!  (=> (select (|PolymorphicMapType_14202_19426_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@273 f_16@@308) (= (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@60) o2_5@@273 f_16@@308) (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@273 f_16@@308)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@273 f_16@@308))
))) (forall ((o2_5@@274 T@Ref) (f_16@@309 T@Field_7962_1195) ) (!  (=> (select (|PolymorphicMapType_14202_20346_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@274 f_16@@309) (= (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@60) o2_5@@274 f_16@@309) (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@274 f_16@@309)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@274 f_16@@309))
))) (forall ((o2_5@@275 T@Ref) (f_16@@310 T@Field_7962_53) ) (!  (=> (select (|PolymorphicMapType_14202_20346_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@275 f_16@@310) (= (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@60) o2_5@@275 f_16@@310) (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@275 f_16@@310)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@275 f_16@@310))
))) (forall ((o2_5@@276 T@Ref) (f_16@@311 T@Field_7962_13727) ) (!  (=> (select (|PolymorphicMapType_14202_20346_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@276 f_16@@311) (= (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@60) o2_5@@276 f_16@@311) (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@276 f_16@@311)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@276 f_16@@311))
))) (forall ((o2_5@@277 T@Ref) (f_16@@312 T@Field_20359_20364) ) (!  (=> (select (|PolymorphicMapType_14202_20346_60412#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@277 f_16@@312) (= (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@60) o2_5@@277 f_16@@312) (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@277 f_16@@312)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@277 f_16@@312))
))) (forall ((o2_5@@278 T@Ref) (f_16@@313 T@Field_20346_20347) ) (!  (=> (select (|PolymorphicMapType_14202_20346_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@60) null (WandMaskField_7893 pm_f_5@@20))) o2_5@@278 f_16@@313) (= (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@60) o2_5@@278 f_16@@313) (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@278 f_16@@313)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| ExhaleHeap@@57) o2_5@@278 f_16@@313))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@57 Mask@@128) (IsWandField_7893_7894 pm_f_5@@20))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_13653) (ExhaleHeap@@58 T@PolymorphicMapType_13653) (Mask@@129 T@PolymorphicMapType_13674) (pm_f_5@@21 T@Field_18121_18122) ) (!  (=> (IdenticalOnKnownLocations Heap@@61 ExhaleHeap@@58 Mask@@129) (=> (and (HasDirectPerm_18094_7938 Mask@@129 null pm_f_5@@21) (IsWandField_7857_7858 pm_f_5@@21)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@279 T@Ref) (f_16@@314 T@Field_19293_2246) ) (!  (=> (select (|PolymorphicMapType_14202_7928_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@279 f_16@@314) (= (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@61) o2_5@@279 f_16@@314) (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@279 f_16@@314)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@279 f_16@@314))
)) (forall ((o2_5@@280 T@Ref) (f_16@@315 T@Field_13713_53) ) (!  (=> (select (|PolymorphicMapType_14202_7928_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@280 f_16@@315) (= (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@61) o2_5@@280 f_16@@315) (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@280 f_16@@315)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@280 f_16@@315))
))) (forall ((o2_5@@281 T@Ref) (f_16@@316 T@Field_13726_13727) ) (!  (=> (select (|PolymorphicMapType_14202_7928_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@281 f_16@@316) (= (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@61) o2_5@@281 f_16@@316) (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@281 f_16@@316)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@281 f_16@@316))
))) (forall ((o2_5@@282 T@Ref) (f_16@@317 T@Field_13713_17055) ) (!  (=> (select (|PolymorphicMapType_14202_7928_54124#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@282 f_16@@317) (= (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@61) o2_5@@282 f_16@@317) (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@282 f_16@@317)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@282 f_16@@317))
))) (forall ((o2_5@@283 T@Ref) (f_16@@318 T@Field_13713_7938) ) (!  (=> (select (|PolymorphicMapType_14202_7928_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@283 f_16@@318) (= (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@61) o2_5@@283 f_16@@318) (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@283 f_16@@318)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@283 f_16@@318))
))) (forall ((o2_5@@284 T@Ref) (f_16@@319 T@Field_17039_1195) ) (!  (=> (select (|PolymorphicMapType_14202_17039_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@284 f_16@@319) (= (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@61) o2_5@@284 f_16@@319) (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@284 f_16@@319)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@284 f_16@@319))
))) (forall ((o2_5@@285 T@Ref) (f_16@@320 T@Field_17039_53) ) (!  (=> (select (|PolymorphicMapType_14202_17039_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@285 f_16@@320) (= (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@61) o2_5@@285 f_16@@320) (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@285 f_16@@320)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@285 f_16@@320))
))) (forall ((o2_5@@286 T@Ref) (f_16@@321 T@Field_17039_13727) ) (!  (=> (select (|PolymorphicMapType_14202_17039_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@286 f_16@@321) (= (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@61) o2_5@@286 f_16@@321) (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@286 f_16@@321)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@286 f_16@@321))
))) (forall ((o2_5@@287 T@Ref) (f_16@@322 T@Field_17050_17055) ) (!  (=> (select (|PolymorphicMapType_14202_17039_55172#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@287 f_16@@322) (= (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@61) o2_5@@287 f_16@@322) (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@287 f_16@@322)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@287 f_16@@322))
))) (forall ((o2_5@@288 T@Ref) (f_16@@323 T@Field_17064_17065) ) (!  (=> (select (|PolymorphicMapType_14202_17039_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@288 f_16@@323) (= (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@61) o2_5@@288 f_16@@323) (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@288 f_16@@323)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@288 f_16@@323))
))) (forall ((o2_5@@289 T@Ref) (f_16@@324 T@Field_17509_1407) ) (!  (=> (select (|PolymorphicMapType_14202_17509_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@289 f_16@@324) (= (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@61) o2_5@@289 f_16@@324) (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@289 f_16@@324)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@289 f_16@@324))
))) (forall ((o2_5@@290 T@Ref) (f_16@@325 T@Field_17509_53) ) (!  (=> (select (|PolymorphicMapType_14202_17509_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@290 f_16@@325) (= (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@61) o2_5@@290 f_16@@325) (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@290 f_16@@325)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@290 f_16@@325))
))) (forall ((o2_5@@291 T@Ref) (f_16@@326 T@Field_17509_13727) ) (!  (=> (select (|PolymorphicMapType_14202_17509_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@291 f_16@@326) (= (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@61) o2_5@@291 f_16@@326) (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@291 f_16@@326)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@291 f_16@@326))
))) (forall ((o2_5@@292 T@Ref) (f_16@@327 T@Field_17522_17527) ) (!  (=> (select (|PolymorphicMapType_14202_17509_56220#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@292 f_16@@327) (= (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@61) o2_5@@292 f_16@@327) (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@292 f_16@@327)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@292 f_16@@327))
))) (forall ((o2_5@@293 T@Ref) (f_16@@328 T@Field_17538_17539) ) (!  (=> (select (|PolymorphicMapType_14202_17509_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@293 f_16@@328) (= (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@61) o2_5@@293 f_16@@328) (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@293 f_16@@328)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@293 f_16@@328))
))) (forall ((o2_5@@294 T@Ref) (f_16@@329 T@Field_18094_1672) ) (!  (=> (select (|PolymorphicMapType_14202_18094_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@294 f_16@@329) (= (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@61) o2_5@@294 f_16@@329) (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@294 f_16@@329)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@294 f_16@@329))
))) (forall ((o2_5@@295 T@Ref) (f_16@@330 T@Field_18094_53) ) (!  (=> (select (|PolymorphicMapType_14202_18094_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@295 f_16@@330) (= (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@61) o2_5@@295 f_16@@330) (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@295 f_16@@330)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@295 f_16@@330))
))) (forall ((o2_5@@296 T@Ref) (f_16@@331 T@Field_18094_13727) ) (!  (=> (select (|PolymorphicMapType_14202_18094_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@296 f_16@@331) (= (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@61) o2_5@@296 f_16@@331) (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@296 f_16@@331)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@296 f_16@@331))
))) (forall ((o2_5@@297 T@Ref) (f_16@@332 T@Field_18106_18111) ) (!  (=> (select (|PolymorphicMapType_14202_18094_57268#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@297 f_16@@332) (= (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) o2_5@@297 f_16@@332) (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@297 f_16@@332)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@297 f_16@@332))
))) (forall ((o2_5@@298 T@Ref) (f_16@@333 T@Field_18121_18122) ) (!  (=> (select (|PolymorphicMapType_14202_18094_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@298 f_16@@333) (= (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@61) o2_5@@298 f_16@@333) (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@298 f_16@@333)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@298 f_16@@333))
))) (forall ((o2_5@@299 T@Ref) (f_16@@334 T@Field_18651_1941) ) (!  (=> (select (|PolymorphicMapType_14202_18651_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@299 f_16@@334) (= (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@61) o2_5@@299 f_16@@334) (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@299 f_16@@334)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@299 f_16@@334))
))) (forall ((o2_5@@300 T@Ref) (f_16@@335 T@Field_18651_53) ) (!  (=> (select (|PolymorphicMapType_14202_18651_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@300 f_16@@335) (= (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@61) o2_5@@300 f_16@@335) (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@300 f_16@@335)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@300 f_16@@335))
))) (forall ((o2_5@@301 T@Ref) (f_16@@336 T@Field_18651_13727) ) (!  (=> (select (|PolymorphicMapType_14202_18651_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@301 f_16@@336) (= (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@61) o2_5@@301 f_16@@336) (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@301 f_16@@336)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@301 f_16@@336))
))) (forall ((o2_5@@302 T@Ref) (f_16@@337 T@Field_18664_18669) ) (!  (=> (select (|PolymorphicMapType_14202_18651_58316#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@302 f_16@@337) (= (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@61) o2_5@@302 f_16@@337) (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@302 f_16@@337)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@302 f_16@@337))
))) (forall ((o2_5@@303 T@Ref) (f_16@@338 T@Field_18680_18681) ) (!  (=> (select (|PolymorphicMapType_14202_18651_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@303 f_16@@338) (= (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@61) o2_5@@303 f_16@@338) (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@303 f_16@@338)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@303 f_16@@338))
))) (forall ((o2_5@@304 T@Ref) (f_16@@339 T@Field_7937_1195) ) (!  (=> (select (|PolymorphicMapType_14202_19426_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@304 f_16@@339) (= (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@61) o2_5@@304 f_16@@339) (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@304 f_16@@339)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@304 f_16@@339))
))) (forall ((o2_5@@305 T@Ref) (f_16@@340 T@Field_7937_53) ) (!  (=> (select (|PolymorphicMapType_14202_19426_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@305 f_16@@340) (= (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@61) o2_5@@305 f_16@@340) (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@305 f_16@@340)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@305 f_16@@340))
))) (forall ((o2_5@@306 T@Ref) (f_16@@341 T@Field_7937_13727) ) (!  (=> (select (|PolymorphicMapType_14202_19426_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@306 f_16@@341) (= (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@61) o2_5@@306 f_16@@341) (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@306 f_16@@341)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@306 f_16@@341))
))) (forall ((o2_5@@307 T@Ref) (f_16@@342 T@Field_19439_19444) ) (!  (=> (select (|PolymorphicMapType_14202_19426_59364#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@307 f_16@@342) (= (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@61) o2_5@@307 f_16@@342) (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@307 f_16@@342)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@307 f_16@@342))
))) (forall ((o2_5@@308 T@Ref) (f_16@@343 T@Field_19426_19427) ) (!  (=> (select (|PolymorphicMapType_14202_19426_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@308 f_16@@343) (= (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@61) o2_5@@308 f_16@@343) (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@308 f_16@@343)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@308 f_16@@343))
))) (forall ((o2_5@@309 T@Ref) (f_16@@344 T@Field_7962_1195) ) (!  (=> (select (|PolymorphicMapType_14202_20346_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@309 f_16@@344) (= (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@61) o2_5@@309 f_16@@344) (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@309 f_16@@344)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@309 f_16@@344))
))) (forall ((o2_5@@310 T@Ref) (f_16@@345 T@Field_7962_53) ) (!  (=> (select (|PolymorphicMapType_14202_20346_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@310 f_16@@345) (= (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@61) o2_5@@310 f_16@@345) (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@310 f_16@@345)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@310 f_16@@345))
))) (forall ((o2_5@@311 T@Ref) (f_16@@346 T@Field_7962_13727) ) (!  (=> (select (|PolymorphicMapType_14202_20346_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@311 f_16@@346) (= (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@61) o2_5@@311 f_16@@346) (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@311 f_16@@346)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@311 f_16@@346))
))) (forall ((o2_5@@312 T@Ref) (f_16@@347 T@Field_20359_20364) ) (!  (=> (select (|PolymorphicMapType_14202_20346_60412#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@312 f_16@@347) (= (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@61) o2_5@@312 f_16@@347) (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@312 f_16@@347)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@312 f_16@@347))
))) (forall ((o2_5@@313 T@Ref) (f_16@@348 T@Field_20346_20347) ) (!  (=> (select (|PolymorphicMapType_14202_20346_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@61) null (WandMaskField_7857 pm_f_5@@21))) o2_5@@313 f_16@@348) (= (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@61) o2_5@@313 f_16@@348) (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@313 f_16@@348)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| ExhaleHeap@@58) o2_5@@313 f_16@@348))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@61 ExhaleHeap@@58 Mask@@129) (IsWandField_7857_7858 pm_f_5@@21))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_13653) (ExhaleHeap@@59 T@PolymorphicMapType_13653) (Mask@@130 T@PolymorphicMapType_13674) (pm_f_5@@22 T@Field_17538_17539) ) (!  (=> (IdenticalOnKnownLocations Heap@@62 ExhaleHeap@@59 Mask@@130) (=> (and (HasDirectPerm_17509_7938 Mask@@130 null pm_f_5@@22) (IsWandField_7819_7820 pm_f_5@@22)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@314 T@Ref) (f_16@@349 T@Field_19293_2246) ) (!  (=> (select (|PolymorphicMapType_14202_7928_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@314 f_16@@349) (= (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@62) o2_5@@314 f_16@@349) (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@314 f_16@@349)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@314 f_16@@349))
)) (forall ((o2_5@@315 T@Ref) (f_16@@350 T@Field_13713_53) ) (!  (=> (select (|PolymorphicMapType_14202_7928_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@315 f_16@@350) (= (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@62) o2_5@@315 f_16@@350) (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@315 f_16@@350)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@315 f_16@@350))
))) (forall ((o2_5@@316 T@Ref) (f_16@@351 T@Field_13726_13727) ) (!  (=> (select (|PolymorphicMapType_14202_7928_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@316 f_16@@351) (= (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@62) o2_5@@316 f_16@@351) (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@316 f_16@@351)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@316 f_16@@351))
))) (forall ((o2_5@@317 T@Ref) (f_16@@352 T@Field_13713_17055) ) (!  (=> (select (|PolymorphicMapType_14202_7928_54124#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@317 f_16@@352) (= (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@62) o2_5@@317 f_16@@352) (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@317 f_16@@352)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@317 f_16@@352))
))) (forall ((o2_5@@318 T@Ref) (f_16@@353 T@Field_13713_7938) ) (!  (=> (select (|PolymorphicMapType_14202_7928_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@318 f_16@@353) (= (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@62) o2_5@@318 f_16@@353) (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@318 f_16@@353)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@318 f_16@@353))
))) (forall ((o2_5@@319 T@Ref) (f_16@@354 T@Field_17039_1195) ) (!  (=> (select (|PolymorphicMapType_14202_17039_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@319 f_16@@354) (= (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@62) o2_5@@319 f_16@@354) (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@319 f_16@@354)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@319 f_16@@354))
))) (forall ((o2_5@@320 T@Ref) (f_16@@355 T@Field_17039_53) ) (!  (=> (select (|PolymorphicMapType_14202_17039_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@320 f_16@@355) (= (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@62) o2_5@@320 f_16@@355) (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@320 f_16@@355)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@320 f_16@@355))
))) (forall ((o2_5@@321 T@Ref) (f_16@@356 T@Field_17039_13727) ) (!  (=> (select (|PolymorphicMapType_14202_17039_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@321 f_16@@356) (= (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@62) o2_5@@321 f_16@@356) (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@321 f_16@@356)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@321 f_16@@356))
))) (forall ((o2_5@@322 T@Ref) (f_16@@357 T@Field_17050_17055) ) (!  (=> (select (|PolymorphicMapType_14202_17039_55172#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@322 f_16@@357) (= (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@62) o2_5@@322 f_16@@357) (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@322 f_16@@357)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@322 f_16@@357))
))) (forall ((o2_5@@323 T@Ref) (f_16@@358 T@Field_17064_17065) ) (!  (=> (select (|PolymorphicMapType_14202_17039_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@323 f_16@@358) (= (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@62) o2_5@@323 f_16@@358) (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@323 f_16@@358)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@323 f_16@@358))
))) (forall ((o2_5@@324 T@Ref) (f_16@@359 T@Field_17509_1407) ) (!  (=> (select (|PolymorphicMapType_14202_17509_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@324 f_16@@359) (= (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@62) o2_5@@324 f_16@@359) (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@324 f_16@@359)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@324 f_16@@359))
))) (forall ((o2_5@@325 T@Ref) (f_16@@360 T@Field_17509_53) ) (!  (=> (select (|PolymorphicMapType_14202_17509_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@325 f_16@@360) (= (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@62) o2_5@@325 f_16@@360) (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@325 f_16@@360)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@325 f_16@@360))
))) (forall ((o2_5@@326 T@Ref) (f_16@@361 T@Field_17509_13727) ) (!  (=> (select (|PolymorphicMapType_14202_17509_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@326 f_16@@361) (= (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@62) o2_5@@326 f_16@@361) (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@326 f_16@@361)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@326 f_16@@361))
))) (forall ((o2_5@@327 T@Ref) (f_16@@362 T@Field_17522_17527) ) (!  (=> (select (|PolymorphicMapType_14202_17509_56220#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@327 f_16@@362) (= (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) o2_5@@327 f_16@@362) (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@327 f_16@@362)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@327 f_16@@362))
))) (forall ((o2_5@@328 T@Ref) (f_16@@363 T@Field_17538_17539) ) (!  (=> (select (|PolymorphicMapType_14202_17509_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@328 f_16@@363) (= (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@62) o2_5@@328 f_16@@363) (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@328 f_16@@363)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@328 f_16@@363))
))) (forall ((o2_5@@329 T@Ref) (f_16@@364 T@Field_18094_1672) ) (!  (=> (select (|PolymorphicMapType_14202_18094_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@329 f_16@@364) (= (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@62) o2_5@@329 f_16@@364) (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@329 f_16@@364)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@329 f_16@@364))
))) (forall ((o2_5@@330 T@Ref) (f_16@@365 T@Field_18094_53) ) (!  (=> (select (|PolymorphicMapType_14202_18094_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@330 f_16@@365) (= (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@62) o2_5@@330 f_16@@365) (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@330 f_16@@365)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@330 f_16@@365))
))) (forall ((o2_5@@331 T@Ref) (f_16@@366 T@Field_18094_13727) ) (!  (=> (select (|PolymorphicMapType_14202_18094_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@331 f_16@@366) (= (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@62) o2_5@@331 f_16@@366) (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@331 f_16@@366)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@331 f_16@@366))
))) (forall ((o2_5@@332 T@Ref) (f_16@@367 T@Field_18106_18111) ) (!  (=> (select (|PolymorphicMapType_14202_18094_57268#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@332 f_16@@367) (= (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@62) o2_5@@332 f_16@@367) (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@332 f_16@@367)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@332 f_16@@367))
))) (forall ((o2_5@@333 T@Ref) (f_16@@368 T@Field_18121_18122) ) (!  (=> (select (|PolymorphicMapType_14202_18094_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@333 f_16@@368) (= (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@62) o2_5@@333 f_16@@368) (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@333 f_16@@368)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@333 f_16@@368))
))) (forall ((o2_5@@334 T@Ref) (f_16@@369 T@Field_18651_1941) ) (!  (=> (select (|PolymorphicMapType_14202_18651_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@334 f_16@@369) (= (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@62) o2_5@@334 f_16@@369) (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@334 f_16@@369)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@334 f_16@@369))
))) (forall ((o2_5@@335 T@Ref) (f_16@@370 T@Field_18651_53) ) (!  (=> (select (|PolymorphicMapType_14202_18651_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@335 f_16@@370) (= (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@62) o2_5@@335 f_16@@370) (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@335 f_16@@370)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@335 f_16@@370))
))) (forall ((o2_5@@336 T@Ref) (f_16@@371 T@Field_18651_13727) ) (!  (=> (select (|PolymorphicMapType_14202_18651_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@336 f_16@@371) (= (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@62) o2_5@@336 f_16@@371) (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@336 f_16@@371)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@336 f_16@@371))
))) (forall ((o2_5@@337 T@Ref) (f_16@@372 T@Field_18664_18669) ) (!  (=> (select (|PolymorphicMapType_14202_18651_58316#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@337 f_16@@372) (= (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@62) o2_5@@337 f_16@@372) (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@337 f_16@@372)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@337 f_16@@372))
))) (forall ((o2_5@@338 T@Ref) (f_16@@373 T@Field_18680_18681) ) (!  (=> (select (|PolymorphicMapType_14202_18651_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@338 f_16@@373) (= (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@62) o2_5@@338 f_16@@373) (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@338 f_16@@373)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@338 f_16@@373))
))) (forall ((o2_5@@339 T@Ref) (f_16@@374 T@Field_7937_1195) ) (!  (=> (select (|PolymorphicMapType_14202_19426_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@339 f_16@@374) (= (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@62) o2_5@@339 f_16@@374) (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@339 f_16@@374)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@339 f_16@@374))
))) (forall ((o2_5@@340 T@Ref) (f_16@@375 T@Field_7937_53) ) (!  (=> (select (|PolymorphicMapType_14202_19426_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@340 f_16@@375) (= (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@62) o2_5@@340 f_16@@375) (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@340 f_16@@375)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@340 f_16@@375))
))) (forall ((o2_5@@341 T@Ref) (f_16@@376 T@Field_7937_13727) ) (!  (=> (select (|PolymorphicMapType_14202_19426_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@341 f_16@@376) (= (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@62) o2_5@@341 f_16@@376) (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@341 f_16@@376)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@341 f_16@@376))
))) (forall ((o2_5@@342 T@Ref) (f_16@@377 T@Field_19439_19444) ) (!  (=> (select (|PolymorphicMapType_14202_19426_59364#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@342 f_16@@377) (= (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@62) o2_5@@342 f_16@@377) (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@342 f_16@@377)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@342 f_16@@377))
))) (forall ((o2_5@@343 T@Ref) (f_16@@378 T@Field_19426_19427) ) (!  (=> (select (|PolymorphicMapType_14202_19426_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@343 f_16@@378) (= (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@62) o2_5@@343 f_16@@378) (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@343 f_16@@378)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@343 f_16@@378))
))) (forall ((o2_5@@344 T@Ref) (f_16@@379 T@Field_7962_1195) ) (!  (=> (select (|PolymorphicMapType_14202_20346_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@344 f_16@@379) (= (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@62) o2_5@@344 f_16@@379) (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@344 f_16@@379)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@344 f_16@@379))
))) (forall ((o2_5@@345 T@Ref) (f_16@@380 T@Field_7962_53) ) (!  (=> (select (|PolymorphicMapType_14202_20346_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@345 f_16@@380) (= (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@62) o2_5@@345 f_16@@380) (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@345 f_16@@380)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@345 f_16@@380))
))) (forall ((o2_5@@346 T@Ref) (f_16@@381 T@Field_7962_13727) ) (!  (=> (select (|PolymorphicMapType_14202_20346_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@346 f_16@@381) (= (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@62) o2_5@@346 f_16@@381) (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@346 f_16@@381)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@346 f_16@@381))
))) (forall ((o2_5@@347 T@Ref) (f_16@@382 T@Field_20359_20364) ) (!  (=> (select (|PolymorphicMapType_14202_20346_60412#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@347 f_16@@382) (= (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@62) o2_5@@347 f_16@@382) (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@347 f_16@@382)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@347 f_16@@382))
))) (forall ((o2_5@@348 T@Ref) (f_16@@383 T@Field_20346_20347) ) (!  (=> (select (|PolymorphicMapType_14202_20346_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@62) null (WandMaskField_7819 pm_f_5@@22))) o2_5@@348 f_16@@383) (= (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@62) o2_5@@348 f_16@@383) (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@348 f_16@@383)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| ExhaleHeap@@59) o2_5@@348 f_16@@383))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@62 ExhaleHeap@@59 Mask@@130) (IsWandField_7819_7820 pm_f_5@@22))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_13653) (ExhaleHeap@@60 T@PolymorphicMapType_13653) (Mask@@131 T@PolymorphicMapType_13674) (pm_f_5@@23 T@Field_17064_17065) ) (!  (=> (IdenticalOnKnownLocations Heap@@63 ExhaleHeap@@60 Mask@@131) (=> (and (HasDirectPerm_17039_7938 Mask@@131 null pm_f_5@@23) (IsWandField_7802_7803 pm_f_5@@23)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@349 T@Ref) (f_16@@384 T@Field_19293_2246) ) (!  (=> (select (|PolymorphicMapType_14202_7928_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@349 f_16@@384) (= (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@63) o2_5@@349 f_16@@384) (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@349 f_16@@384)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@349 f_16@@384))
)) (forall ((o2_5@@350 T@Ref) (f_16@@385 T@Field_13713_53) ) (!  (=> (select (|PolymorphicMapType_14202_7928_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@350 f_16@@385) (= (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@63) o2_5@@350 f_16@@385) (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@350 f_16@@385)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@350 f_16@@385))
))) (forall ((o2_5@@351 T@Ref) (f_16@@386 T@Field_13726_13727) ) (!  (=> (select (|PolymorphicMapType_14202_7928_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@351 f_16@@386) (= (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@63) o2_5@@351 f_16@@386) (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@351 f_16@@386)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@351 f_16@@386))
))) (forall ((o2_5@@352 T@Ref) (f_16@@387 T@Field_13713_17055) ) (!  (=> (select (|PolymorphicMapType_14202_7928_54124#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@352 f_16@@387) (= (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@63) o2_5@@352 f_16@@387) (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@352 f_16@@387)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@352 f_16@@387))
))) (forall ((o2_5@@353 T@Ref) (f_16@@388 T@Field_13713_7938) ) (!  (=> (select (|PolymorphicMapType_14202_7928_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@353 f_16@@388) (= (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@63) o2_5@@353 f_16@@388) (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@353 f_16@@388)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@353 f_16@@388))
))) (forall ((o2_5@@354 T@Ref) (f_16@@389 T@Field_17039_1195) ) (!  (=> (select (|PolymorphicMapType_14202_17039_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@354 f_16@@389) (= (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@63) o2_5@@354 f_16@@389) (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@354 f_16@@389)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@354 f_16@@389))
))) (forall ((o2_5@@355 T@Ref) (f_16@@390 T@Field_17039_53) ) (!  (=> (select (|PolymorphicMapType_14202_17039_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@355 f_16@@390) (= (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@63) o2_5@@355 f_16@@390) (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@355 f_16@@390)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@355 f_16@@390))
))) (forall ((o2_5@@356 T@Ref) (f_16@@391 T@Field_17039_13727) ) (!  (=> (select (|PolymorphicMapType_14202_17039_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@356 f_16@@391) (= (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@63) o2_5@@356 f_16@@391) (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@356 f_16@@391)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@356 f_16@@391))
))) (forall ((o2_5@@357 T@Ref) (f_16@@392 T@Field_17050_17055) ) (!  (=> (select (|PolymorphicMapType_14202_17039_55172#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@357 f_16@@392) (= (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) o2_5@@357 f_16@@392) (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@357 f_16@@392)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@357 f_16@@392))
))) (forall ((o2_5@@358 T@Ref) (f_16@@393 T@Field_17064_17065) ) (!  (=> (select (|PolymorphicMapType_14202_17039_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@358 f_16@@393) (= (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@63) o2_5@@358 f_16@@393) (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@358 f_16@@393)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@358 f_16@@393))
))) (forall ((o2_5@@359 T@Ref) (f_16@@394 T@Field_17509_1407) ) (!  (=> (select (|PolymorphicMapType_14202_17509_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@359 f_16@@394) (= (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@63) o2_5@@359 f_16@@394) (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@359 f_16@@394)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@359 f_16@@394))
))) (forall ((o2_5@@360 T@Ref) (f_16@@395 T@Field_17509_53) ) (!  (=> (select (|PolymorphicMapType_14202_17509_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@360 f_16@@395) (= (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@63) o2_5@@360 f_16@@395) (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@360 f_16@@395)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@360 f_16@@395))
))) (forall ((o2_5@@361 T@Ref) (f_16@@396 T@Field_17509_13727) ) (!  (=> (select (|PolymorphicMapType_14202_17509_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@361 f_16@@396) (= (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@63) o2_5@@361 f_16@@396) (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@361 f_16@@396)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@361 f_16@@396))
))) (forall ((o2_5@@362 T@Ref) (f_16@@397 T@Field_17522_17527) ) (!  (=> (select (|PolymorphicMapType_14202_17509_56220#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@362 f_16@@397) (= (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@63) o2_5@@362 f_16@@397) (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@362 f_16@@397)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@362 f_16@@397))
))) (forall ((o2_5@@363 T@Ref) (f_16@@398 T@Field_17538_17539) ) (!  (=> (select (|PolymorphicMapType_14202_17509_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@363 f_16@@398) (= (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@63) o2_5@@363 f_16@@398) (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@363 f_16@@398)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@363 f_16@@398))
))) (forall ((o2_5@@364 T@Ref) (f_16@@399 T@Field_18094_1672) ) (!  (=> (select (|PolymorphicMapType_14202_18094_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@364 f_16@@399) (= (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@63) o2_5@@364 f_16@@399) (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@364 f_16@@399)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@364 f_16@@399))
))) (forall ((o2_5@@365 T@Ref) (f_16@@400 T@Field_18094_53) ) (!  (=> (select (|PolymorphicMapType_14202_18094_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@365 f_16@@400) (= (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@63) o2_5@@365 f_16@@400) (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@365 f_16@@400)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@365 f_16@@400))
))) (forall ((o2_5@@366 T@Ref) (f_16@@401 T@Field_18094_13727) ) (!  (=> (select (|PolymorphicMapType_14202_18094_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@366 f_16@@401) (= (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@63) o2_5@@366 f_16@@401) (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@366 f_16@@401)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@366 f_16@@401))
))) (forall ((o2_5@@367 T@Ref) (f_16@@402 T@Field_18106_18111) ) (!  (=> (select (|PolymorphicMapType_14202_18094_57268#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@367 f_16@@402) (= (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@63) o2_5@@367 f_16@@402) (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@367 f_16@@402)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@367 f_16@@402))
))) (forall ((o2_5@@368 T@Ref) (f_16@@403 T@Field_18121_18122) ) (!  (=> (select (|PolymorphicMapType_14202_18094_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@368 f_16@@403) (= (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@63) o2_5@@368 f_16@@403) (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@368 f_16@@403)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@368 f_16@@403))
))) (forall ((o2_5@@369 T@Ref) (f_16@@404 T@Field_18651_1941) ) (!  (=> (select (|PolymorphicMapType_14202_18651_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@369 f_16@@404) (= (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@63) o2_5@@369 f_16@@404) (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@369 f_16@@404)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@369 f_16@@404))
))) (forall ((o2_5@@370 T@Ref) (f_16@@405 T@Field_18651_53) ) (!  (=> (select (|PolymorphicMapType_14202_18651_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@370 f_16@@405) (= (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@63) o2_5@@370 f_16@@405) (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@370 f_16@@405)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@370 f_16@@405))
))) (forall ((o2_5@@371 T@Ref) (f_16@@406 T@Field_18651_13727) ) (!  (=> (select (|PolymorphicMapType_14202_18651_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@371 f_16@@406) (= (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@63) o2_5@@371 f_16@@406) (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@371 f_16@@406)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@371 f_16@@406))
))) (forall ((o2_5@@372 T@Ref) (f_16@@407 T@Field_18664_18669) ) (!  (=> (select (|PolymorphicMapType_14202_18651_58316#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@372 f_16@@407) (= (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@63) o2_5@@372 f_16@@407) (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@372 f_16@@407)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@372 f_16@@407))
))) (forall ((o2_5@@373 T@Ref) (f_16@@408 T@Field_18680_18681) ) (!  (=> (select (|PolymorphicMapType_14202_18651_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@373 f_16@@408) (= (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@63) o2_5@@373 f_16@@408) (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@373 f_16@@408)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@373 f_16@@408))
))) (forall ((o2_5@@374 T@Ref) (f_16@@409 T@Field_7937_1195) ) (!  (=> (select (|PolymorphicMapType_14202_19426_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@374 f_16@@409) (= (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@63) o2_5@@374 f_16@@409) (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@374 f_16@@409)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@374 f_16@@409))
))) (forall ((o2_5@@375 T@Ref) (f_16@@410 T@Field_7937_53) ) (!  (=> (select (|PolymorphicMapType_14202_19426_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@375 f_16@@410) (= (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@63) o2_5@@375 f_16@@410) (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@375 f_16@@410)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@375 f_16@@410))
))) (forall ((o2_5@@376 T@Ref) (f_16@@411 T@Field_7937_13727) ) (!  (=> (select (|PolymorphicMapType_14202_19426_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@376 f_16@@411) (= (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@63) o2_5@@376 f_16@@411) (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@376 f_16@@411)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@376 f_16@@411))
))) (forall ((o2_5@@377 T@Ref) (f_16@@412 T@Field_19439_19444) ) (!  (=> (select (|PolymorphicMapType_14202_19426_59364#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@377 f_16@@412) (= (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@63) o2_5@@377 f_16@@412) (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@377 f_16@@412)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@377 f_16@@412))
))) (forall ((o2_5@@378 T@Ref) (f_16@@413 T@Field_19426_19427) ) (!  (=> (select (|PolymorphicMapType_14202_19426_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@378 f_16@@413) (= (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@63) o2_5@@378 f_16@@413) (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@378 f_16@@413)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@378 f_16@@413))
))) (forall ((o2_5@@379 T@Ref) (f_16@@414 T@Field_7962_1195) ) (!  (=> (select (|PolymorphicMapType_14202_20346_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@379 f_16@@414) (= (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@63) o2_5@@379 f_16@@414) (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@379 f_16@@414)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@379 f_16@@414))
))) (forall ((o2_5@@380 T@Ref) (f_16@@415 T@Field_7962_53) ) (!  (=> (select (|PolymorphicMapType_14202_20346_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@380 f_16@@415) (= (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@63) o2_5@@380 f_16@@415) (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@380 f_16@@415)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@380 f_16@@415))
))) (forall ((o2_5@@381 T@Ref) (f_16@@416 T@Field_7962_13727) ) (!  (=> (select (|PolymorphicMapType_14202_20346_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@381 f_16@@416) (= (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@63) o2_5@@381 f_16@@416) (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@381 f_16@@416)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@381 f_16@@416))
))) (forall ((o2_5@@382 T@Ref) (f_16@@417 T@Field_20359_20364) ) (!  (=> (select (|PolymorphicMapType_14202_20346_60412#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@382 f_16@@417) (= (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@63) o2_5@@382 f_16@@417) (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@382 f_16@@417)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@382 f_16@@417))
))) (forall ((o2_5@@383 T@Ref) (f_16@@418 T@Field_20346_20347) ) (!  (=> (select (|PolymorphicMapType_14202_20346_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@63) null (WandMaskField_7802 pm_f_5@@23))) o2_5@@383 f_16@@418) (= (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@63) o2_5@@383 f_16@@418) (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@383 f_16@@418)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| ExhaleHeap@@60) o2_5@@383 f_16@@418))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@63 ExhaleHeap@@60 Mask@@131) (IsWandField_7802_7803 pm_f_5@@23))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_13653) (ExhaleHeap@@61 T@PolymorphicMapType_13653) (Mask@@132 T@PolymorphicMapType_13674) (pm_f_5@@24 T@Field_13713_7938) ) (!  (=> (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@61 Mask@@132) (=> (and (HasDirectPerm_13713_7938 Mask@@132 null pm_f_5@@24) (IsWandField_13713_63543 pm_f_5@@24)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@384 T@Ref) (f_16@@419 T@Field_19293_2246) ) (!  (=> (select (|PolymorphicMapType_14202_7928_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@384 f_16@@419) (= (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@64) o2_5@@384 f_16@@419) (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@384 f_16@@419)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@384 f_16@@419))
)) (forall ((o2_5@@385 T@Ref) (f_16@@420 T@Field_13713_53) ) (!  (=> (select (|PolymorphicMapType_14202_7928_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@385 f_16@@420) (= (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@64) o2_5@@385 f_16@@420) (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@385 f_16@@420)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@385 f_16@@420))
))) (forall ((o2_5@@386 T@Ref) (f_16@@421 T@Field_13726_13727) ) (!  (=> (select (|PolymorphicMapType_14202_7928_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@386 f_16@@421) (= (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@64) o2_5@@386 f_16@@421) (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@386 f_16@@421)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@386 f_16@@421))
))) (forall ((o2_5@@387 T@Ref) (f_16@@422 T@Field_13713_17055) ) (!  (=> (select (|PolymorphicMapType_14202_7928_54124#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@387 f_16@@422) (= (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) o2_5@@387 f_16@@422) (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@387 f_16@@422)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@387 f_16@@422))
))) (forall ((o2_5@@388 T@Ref) (f_16@@423 T@Field_13713_7938) ) (!  (=> (select (|PolymorphicMapType_14202_7928_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@388 f_16@@423) (= (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@64) o2_5@@388 f_16@@423) (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@388 f_16@@423)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@388 f_16@@423))
))) (forall ((o2_5@@389 T@Ref) (f_16@@424 T@Field_17039_1195) ) (!  (=> (select (|PolymorphicMapType_14202_17039_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@389 f_16@@424) (= (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@64) o2_5@@389 f_16@@424) (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@389 f_16@@424)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@389 f_16@@424))
))) (forall ((o2_5@@390 T@Ref) (f_16@@425 T@Field_17039_53) ) (!  (=> (select (|PolymorphicMapType_14202_17039_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@390 f_16@@425) (= (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@64) o2_5@@390 f_16@@425) (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@390 f_16@@425)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@390 f_16@@425))
))) (forall ((o2_5@@391 T@Ref) (f_16@@426 T@Field_17039_13727) ) (!  (=> (select (|PolymorphicMapType_14202_17039_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@391 f_16@@426) (= (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@64) o2_5@@391 f_16@@426) (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@391 f_16@@426)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@391 f_16@@426))
))) (forall ((o2_5@@392 T@Ref) (f_16@@427 T@Field_17050_17055) ) (!  (=> (select (|PolymorphicMapType_14202_17039_55172#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@392 f_16@@427) (= (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@64) o2_5@@392 f_16@@427) (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@392 f_16@@427)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@392 f_16@@427))
))) (forall ((o2_5@@393 T@Ref) (f_16@@428 T@Field_17064_17065) ) (!  (=> (select (|PolymorphicMapType_14202_17039_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@393 f_16@@428) (= (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@64) o2_5@@393 f_16@@428) (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@393 f_16@@428)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@393 f_16@@428))
))) (forall ((o2_5@@394 T@Ref) (f_16@@429 T@Field_17509_1407) ) (!  (=> (select (|PolymorphicMapType_14202_17509_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@394 f_16@@429) (= (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@64) o2_5@@394 f_16@@429) (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@394 f_16@@429)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@394 f_16@@429))
))) (forall ((o2_5@@395 T@Ref) (f_16@@430 T@Field_17509_53) ) (!  (=> (select (|PolymorphicMapType_14202_17509_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@395 f_16@@430) (= (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@64) o2_5@@395 f_16@@430) (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@395 f_16@@430)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@395 f_16@@430))
))) (forall ((o2_5@@396 T@Ref) (f_16@@431 T@Field_17509_13727) ) (!  (=> (select (|PolymorphicMapType_14202_17509_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@396 f_16@@431) (= (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@64) o2_5@@396 f_16@@431) (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@396 f_16@@431)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@396 f_16@@431))
))) (forall ((o2_5@@397 T@Ref) (f_16@@432 T@Field_17522_17527) ) (!  (=> (select (|PolymorphicMapType_14202_17509_56220#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@397 f_16@@432) (= (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@64) o2_5@@397 f_16@@432) (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@397 f_16@@432)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@397 f_16@@432))
))) (forall ((o2_5@@398 T@Ref) (f_16@@433 T@Field_17538_17539) ) (!  (=> (select (|PolymorphicMapType_14202_17509_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@398 f_16@@433) (= (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@64) o2_5@@398 f_16@@433) (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@398 f_16@@433)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@398 f_16@@433))
))) (forall ((o2_5@@399 T@Ref) (f_16@@434 T@Field_18094_1672) ) (!  (=> (select (|PolymorphicMapType_14202_18094_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@399 f_16@@434) (= (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@64) o2_5@@399 f_16@@434) (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@399 f_16@@434)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@399 f_16@@434))
))) (forall ((o2_5@@400 T@Ref) (f_16@@435 T@Field_18094_53) ) (!  (=> (select (|PolymorphicMapType_14202_18094_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@400 f_16@@435) (= (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@64) o2_5@@400 f_16@@435) (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@400 f_16@@435)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@400 f_16@@435))
))) (forall ((o2_5@@401 T@Ref) (f_16@@436 T@Field_18094_13727) ) (!  (=> (select (|PolymorphicMapType_14202_18094_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@401 f_16@@436) (= (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@64) o2_5@@401 f_16@@436) (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@401 f_16@@436)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@401 f_16@@436))
))) (forall ((o2_5@@402 T@Ref) (f_16@@437 T@Field_18106_18111) ) (!  (=> (select (|PolymorphicMapType_14202_18094_57268#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@402 f_16@@437) (= (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@64) o2_5@@402 f_16@@437) (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@402 f_16@@437)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@402 f_16@@437))
))) (forall ((o2_5@@403 T@Ref) (f_16@@438 T@Field_18121_18122) ) (!  (=> (select (|PolymorphicMapType_14202_18094_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@403 f_16@@438) (= (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@64) o2_5@@403 f_16@@438) (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@403 f_16@@438)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@403 f_16@@438))
))) (forall ((o2_5@@404 T@Ref) (f_16@@439 T@Field_18651_1941) ) (!  (=> (select (|PolymorphicMapType_14202_18651_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@404 f_16@@439) (= (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@64) o2_5@@404 f_16@@439) (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@404 f_16@@439)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@404 f_16@@439))
))) (forall ((o2_5@@405 T@Ref) (f_16@@440 T@Field_18651_53) ) (!  (=> (select (|PolymorphicMapType_14202_18651_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@405 f_16@@440) (= (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@64) o2_5@@405 f_16@@440) (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@405 f_16@@440)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@405 f_16@@440))
))) (forall ((o2_5@@406 T@Ref) (f_16@@441 T@Field_18651_13727) ) (!  (=> (select (|PolymorphicMapType_14202_18651_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@406 f_16@@441) (= (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@64) o2_5@@406 f_16@@441) (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@406 f_16@@441)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@406 f_16@@441))
))) (forall ((o2_5@@407 T@Ref) (f_16@@442 T@Field_18664_18669) ) (!  (=> (select (|PolymorphicMapType_14202_18651_58316#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@407 f_16@@442) (= (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@64) o2_5@@407 f_16@@442) (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@407 f_16@@442)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@407 f_16@@442))
))) (forall ((o2_5@@408 T@Ref) (f_16@@443 T@Field_18680_18681) ) (!  (=> (select (|PolymorphicMapType_14202_18651_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@408 f_16@@443) (= (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@64) o2_5@@408 f_16@@443) (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@408 f_16@@443)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@408 f_16@@443))
))) (forall ((o2_5@@409 T@Ref) (f_16@@444 T@Field_7937_1195) ) (!  (=> (select (|PolymorphicMapType_14202_19426_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@409 f_16@@444) (= (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@64) o2_5@@409 f_16@@444) (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@409 f_16@@444)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@409 f_16@@444))
))) (forall ((o2_5@@410 T@Ref) (f_16@@445 T@Field_7937_53) ) (!  (=> (select (|PolymorphicMapType_14202_19426_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@410 f_16@@445) (= (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@64) o2_5@@410 f_16@@445) (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@410 f_16@@445)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@410 f_16@@445))
))) (forall ((o2_5@@411 T@Ref) (f_16@@446 T@Field_7937_13727) ) (!  (=> (select (|PolymorphicMapType_14202_19426_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@411 f_16@@446) (= (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@64) o2_5@@411 f_16@@446) (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@411 f_16@@446)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@411 f_16@@446))
))) (forall ((o2_5@@412 T@Ref) (f_16@@447 T@Field_19439_19444) ) (!  (=> (select (|PolymorphicMapType_14202_19426_59364#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@412 f_16@@447) (= (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@64) o2_5@@412 f_16@@447) (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@412 f_16@@447)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@412 f_16@@447))
))) (forall ((o2_5@@413 T@Ref) (f_16@@448 T@Field_19426_19427) ) (!  (=> (select (|PolymorphicMapType_14202_19426_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@413 f_16@@448) (= (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@64) o2_5@@413 f_16@@448) (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@413 f_16@@448)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@413 f_16@@448))
))) (forall ((o2_5@@414 T@Ref) (f_16@@449 T@Field_7962_1195) ) (!  (=> (select (|PolymorphicMapType_14202_20346_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@414 f_16@@449) (= (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@64) o2_5@@414 f_16@@449) (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@414 f_16@@449)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@414 f_16@@449))
))) (forall ((o2_5@@415 T@Ref) (f_16@@450 T@Field_7962_53) ) (!  (=> (select (|PolymorphicMapType_14202_20346_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@415 f_16@@450) (= (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@64) o2_5@@415 f_16@@450) (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@415 f_16@@450)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@415 f_16@@450))
))) (forall ((o2_5@@416 T@Ref) (f_16@@451 T@Field_7962_13727) ) (!  (=> (select (|PolymorphicMapType_14202_20346_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@416 f_16@@451) (= (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@64) o2_5@@416 f_16@@451) (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@416 f_16@@451)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@416 f_16@@451))
))) (forall ((o2_5@@417 T@Ref) (f_16@@452 T@Field_20359_20364) ) (!  (=> (select (|PolymorphicMapType_14202_20346_60412#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@417 f_16@@452) (= (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@64) o2_5@@417 f_16@@452) (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@417 f_16@@452)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@417 f_16@@452))
))) (forall ((o2_5@@418 T@Ref) (f_16@@453 T@Field_20346_20347) ) (!  (=> (select (|PolymorphicMapType_14202_20346_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@64) null (WandMaskField_13713 pm_f_5@@24))) o2_5@@418 f_16@@453) (= (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@64) o2_5@@418 f_16@@453) (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@418 f_16@@453)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| ExhaleHeap@@61) o2_5@@418 f_16@@453))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@61 Mask@@132) (IsWandField_13713_63543 pm_f_5@@24))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_13653) (ExhaleHeap@@62 T@PolymorphicMapType_13653) (Mask@@133 T@PolymorphicMapType_13674) (pm_f_5@@25 T@Field_20346_20347) ) (!  (=> (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@62 Mask@@133) (=> (and (HasDirectPerm_7962_7963 Mask@@133 null pm_f_5@@25) (IsWandField_7962_63186 pm_f_5@@25)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@419 T@Ref) (f_16@@454 T@Field_19293_2246) ) (!  (=> (select (|PolymorphicMapType_14202_7928_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@419 f_16@@454) (= (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@65) o2_5@@419 f_16@@454) (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@419 f_16@@454)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@419 f_16@@454))
)) (forall ((o2_5@@420 T@Ref) (f_16@@455 T@Field_13713_53) ) (!  (=> (select (|PolymorphicMapType_14202_7928_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@420 f_16@@455) (= (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@65) o2_5@@420 f_16@@455) (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@420 f_16@@455)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@420 f_16@@455))
))) (forall ((o2_5@@421 T@Ref) (f_16@@456 T@Field_13726_13727) ) (!  (=> (select (|PolymorphicMapType_14202_7928_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@421 f_16@@456) (= (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@65) o2_5@@421 f_16@@456) (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@421 f_16@@456)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@421 f_16@@456))
))) (forall ((o2_5@@422 T@Ref) (f_16@@457 T@Field_13713_17055) ) (!  (=> (select (|PolymorphicMapType_14202_7928_54124#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@422 f_16@@457) (= (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@65) o2_5@@422 f_16@@457) (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@422 f_16@@457)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@422 f_16@@457))
))) (forall ((o2_5@@423 T@Ref) (f_16@@458 T@Field_13713_7938) ) (!  (=> (select (|PolymorphicMapType_14202_7928_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@423 f_16@@458) (= (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@65) o2_5@@423 f_16@@458) (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@423 f_16@@458)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@423 f_16@@458))
))) (forall ((o2_5@@424 T@Ref) (f_16@@459 T@Field_17039_1195) ) (!  (=> (select (|PolymorphicMapType_14202_17039_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@424 f_16@@459) (= (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@65) o2_5@@424 f_16@@459) (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@424 f_16@@459)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@424 f_16@@459))
))) (forall ((o2_5@@425 T@Ref) (f_16@@460 T@Field_17039_53) ) (!  (=> (select (|PolymorphicMapType_14202_17039_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@425 f_16@@460) (= (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@65) o2_5@@425 f_16@@460) (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@425 f_16@@460)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@425 f_16@@460))
))) (forall ((o2_5@@426 T@Ref) (f_16@@461 T@Field_17039_13727) ) (!  (=> (select (|PolymorphicMapType_14202_17039_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@426 f_16@@461) (= (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@65) o2_5@@426 f_16@@461) (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@426 f_16@@461)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@426 f_16@@461))
))) (forall ((o2_5@@427 T@Ref) (f_16@@462 T@Field_17050_17055) ) (!  (=> (select (|PolymorphicMapType_14202_17039_55172#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@427 f_16@@462) (= (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@65) o2_5@@427 f_16@@462) (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@427 f_16@@462)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@427 f_16@@462))
))) (forall ((o2_5@@428 T@Ref) (f_16@@463 T@Field_17064_17065) ) (!  (=> (select (|PolymorphicMapType_14202_17039_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@428 f_16@@463) (= (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@65) o2_5@@428 f_16@@463) (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@428 f_16@@463)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@428 f_16@@463))
))) (forall ((o2_5@@429 T@Ref) (f_16@@464 T@Field_17509_1407) ) (!  (=> (select (|PolymorphicMapType_14202_17509_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@429 f_16@@464) (= (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@65) o2_5@@429 f_16@@464) (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@429 f_16@@464)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@429 f_16@@464))
))) (forall ((o2_5@@430 T@Ref) (f_16@@465 T@Field_17509_53) ) (!  (=> (select (|PolymorphicMapType_14202_17509_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@430 f_16@@465) (= (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@65) o2_5@@430 f_16@@465) (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@430 f_16@@465)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@430 f_16@@465))
))) (forall ((o2_5@@431 T@Ref) (f_16@@466 T@Field_17509_13727) ) (!  (=> (select (|PolymorphicMapType_14202_17509_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@431 f_16@@466) (= (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@65) o2_5@@431 f_16@@466) (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@431 f_16@@466)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@431 f_16@@466))
))) (forall ((o2_5@@432 T@Ref) (f_16@@467 T@Field_17522_17527) ) (!  (=> (select (|PolymorphicMapType_14202_17509_56220#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@432 f_16@@467) (= (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@65) o2_5@@432 f_16@@467) (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@432 f_16@@467)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@432 f_16@@467))
))) (forall ((o2_5@@433 T@Ref) (f_16@@468 T@Field_17538_17539) ) (!  (=> (select (|PolymorphicMapType_14202_17509_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@433 f_16@@468) (= (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@65) o2_5@@433 f_16@@468) (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@433 f_16@@468)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@433 f_16@@468))
))) (forall ((o2_5@@434 T@Ref) (f_16@@469 T@Field_18094_1672) ) (!  (=> (select (|PolymorphicMapType_14202_18094_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@434 f_16@@469) (= (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@65) o2_5@@434 f_16@@469) (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@434 f_16@@469)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@434 f_16@@469))
))) (forall ((o2_5@@435 T@Ref) (f_16@@470 T@Field_18094_53) ) (!  (=> (select (|PolymorphicMapType_14202_18094_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@435 f_16@@470) (= (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@65) o2_5@@435 f_16@@470) (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@435 f_16@@470)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@435 f_16@@470))
))) (forall ((o2_5@@436 T@Ref) (f_16@@471 T@Field_18094_13727) ) (!  (=> (select (|PolymorphicMapType_14202_18094_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@436 f_16@@471) (= (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@65) o2_5@@436 f_16@@471) (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@436 f_16@@471)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@436 f_16@@471))
))) (forall ((o2_5@@437 T@Ref) (f_16@@472 T@Field_18106_18111) ) (!  (=> (select (|PolymorphicMapType_14202_18094_57268#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@437 f_16@@472) (= (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@65) o2_5@@437 f_16@@472) (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@437 f_16@@472)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@437 f_16@@472))
))) (forall ((o2_5@@438 T@Ref) (f_16@@473 T@Field_18121_18122) ) (!  (=> (select (|PolymorphicMapType_14202_18094_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@438 f_16@@473) (= (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@65) o2_5@@438 f_16@@473) (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@438 f_16@@473)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@438 f_16@@473))
))) (forall ((o2_5@@439 T@Ref) (f_16@@474 T@Field_18651_1941) ) (!  (=> (select (|PolymorphicMapType_14202_18651_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@439 f_16@@474) (= (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@65) o2_5@@439 f_16@@474) (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@439 f_16@@474)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@439 f_16@@474))
))) (forall ((o2_5@@440 T@Ref) (f_16@@475 T@Field_18651_53) ) (!  (=> (select (|PolymorphicMapType_14202_18651_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@440 f_16@@475) (= (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@65) o2_5@@440 f_16@@475) (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@440 f_16@@475)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@440 f_16@@475))
))) (forall ((o2_5@@441 T@Ref) (f_16@@476 T@Field_18651_13727) ) (!  (=> (select (|PolymorphicMapType_14202_18651_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@441 f_16@@476) (= (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@65) o2_5@@441 f_16@@476) (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@441 f_16@@476)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@441 f_16@@476))
))) (forall ((o2_5@@442 T@Ref) (f_16@@477 T@Field_18664_18669) ) (!  (=> (select (|PolymorphicMapType_14202_18651_58316#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@442 f_16@@477) (= (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@65) o2_5@@442 f_16@@477) (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@442 f_16@@477)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@442 f_16@@477))
))) (forall ((o2_5@@443 T@Ref) (f_16@@478 T@Field_18680_18681) ) (!  (=> (select (|PolymorphicMapType_14202_18651_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@443 f_16@@478) (= (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@65) o2_5@@443 f_16@@478) (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@443 f_16@@478)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@443 f_16@@478))
))) (forall ((o2_5@@444 T@Ref) (f_16@@479 T@Field_7937_1195) ) (!  (=> (select (|PolymorphicMapType_14202_19426_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@444 f_16@@479) (= (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@65) o2_5@@444 f_16@@479) (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@444 f_16@@479)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@444 f_16@@479))
))) (forall ((o2_5@@445 T@Ref) (f_16@@480 T@Field_7937_53) ) (!  (=> (select (|PolymorphicMapType_14202_19426_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@445 f_16@@480) (= (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@65) o2_5@@445 f_16@@480) (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@445 f_16@@480)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@445 f_16@@480))
))) (forall ((o2_5@@446 T@Ref) (f_16@@481 T@Field_7937_13727) ) (!  (=> (select (|PolymorphicMapType_14202_19426_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@446 f_16@@481) (= (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@65) o2_5@@446 f_16@@481) (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@446 f_16@@481)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@446 f_16@@481))
))) (forall ((o2_5@@447 T@Ref) (f_16@@482 T@Field_19439_19444) ) (!  (=> (select (|PolymorphicMapType_14202_19426_59364#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@447 f_16@@482) (= (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@65) o2_5@@447 f_16@@482) (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@447 f_16@@482)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@447 f_16@@482))
))) (forall ((o2_5@@448 T@Ref) (f_16@@483 T@Field_19426_19427) ) (!  (=> (select (|PolymorphicMapType_14202_19426_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@448 f_16@@483) (= (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@65) o2_5@@448 f_16@@483) (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@448 f_16@@483)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@448 f_16@@483))
))) (forall ((o2_5@@449 T@Ref) (f_16@@484 T@Field_7962_1195) ) (!  (=> (select (|PolymorphicMapType_14202_20346_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@449 f_16@@484) (= (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@65) o2_5@@449 f_16@@484) (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@449 f_16@@484)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@449 f_16@@484))
))) (forall ((o2_5@@450 T@Ref) (f_16@@485 T@Field_7962_53) ) (!  (=> (select (|PolymorphicMapType_14202_20346_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@450 f_16@@485) (= (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@65) o2_5@@450 f_16@@485) (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@450 f_16@@485)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@450 f_16@@485))
))) (forall ((o2_5@@451 T@Ref) (f_16@@486 T@Field_7962_13727) ) (!  (=> (select (|PolymorphicMapType_14202_20346_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@451 f_16@@486) (= (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@65) o2_5@@451 f_16@@486) (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@451 f_16@@486)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@451 f_16@@486))
))) (forall ((o2_5@@452 T@Ref) (f_16@@487 T@Field_20359_20364) ) (!  (=> (select (|PolymorphicMapType_14202_20346_60412#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@452 f_16@@487) (= (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) o2_5@@452 f_16@@487) (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@452 f_16@@487)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@452 f_16@@487))
))) (forall ((o2_5@@453 T@Ref) (f_16@@488 T@Field_20346_20347) ) (!  (=> (select (|PolymorphicMapType_14202_20346_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@65) null (WandMaskField_7962 pm_f_5@@25))) o2_5@@453 f_16@@488) (= (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@65) o2_5@@453 f_16@@488) (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@453 f_16@@488)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| ExhaleHeap@@62) o2_5@@453 f_16@@488))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@62 Mask@@133) (IsWandField_7962_63186 pm_f_5@@25))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_13653) (ExhaleHeap@@63 T@PolymorphicMapType_13653) (Mask@@134 T@PolymorphicMapType_13674) (pm_f_5@@26 T@Field_19426_19427) ) (!  (=> (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@63 Mask@@134) (=> (and (HasDirectPerm_7937_7938 Mask@@134 null pm_f_5@@26) (IsWandField_7937_62829 pm_f_5@@26)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@454 T@Ref) (f_16@@489 T@Field_19293_2246) ) (!  (=> (select (|PolymorphicMapType_14202_7928_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@454 f_16@@489) (= (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@66) o2_5@@454 f_16@@489) (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@454 f_16@@489)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@454 f_16@@489))
)) (forall ((o2_5@@455 T@Ref) (f_16@@490 T@Field_13713_53) ) (!  (=> (select (|PolymorphicMapType_14202_7928_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@455 f_16@@490) (= (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@66) o2_5@@455 f_16@@490) (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@455 f_16@@490)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@455 f_16@@490))
))) (forall ((o2_5@@456 T@Ref) (f_16@@491 T@Field_13726_13727) ) (!  (=> (select (|PolymorphicMapType_14202_7928_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@456 f_16@@491) (= (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@66) o2_5@@456 f_16@@491) (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@456 f_16@@491)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@456 f_16@@491))
))) (forall ((o2_5@@457 T@Ref) (f_16@@492 T@Field_13713_17055) ) (!  (=> (select (|PolymorphicMapType_14202_7928_54124#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@457 f_16@@492) (= (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@66) o2_5@@457 f_16@@492) (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@457 f_16@@492)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@457 f_16@@492))
))) (forall ((o2_5@@458 T@Ref) (f_16@@493 T@Field_13713_7938) ) (!  (=> (select (|PolymorphicMapType_14202_7928_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@458 f_16@@493) (= (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@66) o2_5@@458 f_16@@493) (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@458 f_16@@493)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@458 f_16@@493))
))) (forall ((o2_5@@459 T@Ref) (f_16@@494 T@Field_17039_1195) ) (!  (=> (select (|PolymorphicMapType_14202_17039_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@459 f_16@@494) (= (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@66) o2_5@@459 f_16@@494) (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@459 f_16@@494)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@459 f_16@@494))
))) (forall ((o2_5@@460 T@Ref) (f_16@@495 T@Field_17039_53) ) (!  (=> (select (|PolymorphicMapType_14202_17039_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@460 f_16@@495) (= (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@66) o2_5@@460 f_16@@495) (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@460 f_16@@495)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@460 f_16@@495))
))) (forall ((o2_5@@461 T@Ref) (f_16@@496 T@Field_17039_13727) ) (!  (=> (select (|PolymorphicMapType_14202_17039_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@461 f_16@@496) (= (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@66) o2_5@@461 f_16@@496) (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@461 f_16@@496)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@461 f_16@@496))
))) (forall ((o2_5@@462 T@Ref) (f_16@@497 T@Field_17050_17055) ) (!  (=> (select (|PolymorphicMapType_14202_17039_55172#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@462 f_16@@497) (= (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@66) o2_5@@462 f_16@@497) (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@462 f_16@@497)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@462 f_16@@497))
))) (forall ((o2_5@@463 T@Ref) (f_16@@498 T@Field_17064_17065) ) (!  (=> (select (|PolymorphicMapType_14202_17039_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@463 f_16@@498) (= (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@66) o2_5@@463 f_16@@498) (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@463 f_16@@498)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@463 f_16@@498))
))) (forall ((o2_5@@464 T@Ref) (f_16@@499 T@Field_17509_1407) ) (!  (=> (select (|PolymorphicMapType_14202_17509_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@464 f_16@@499) (= (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@66) o2_5@@464 f_16@@499) (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@464 f_16@@499)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@464 f_16@@499))
))) (forall ((o2_5@@465 T@Ref) (f_16@@500 T@Field_17509_53) ) (!  (=> (select (|PolymorphicMapType_14202_17509_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@465 f_16@@500) (= (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@66) o2_5@@465 f_16@@500) (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@465 f_16@@500)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@465 f_16@@500))
))) (forall ((o2_5@@466 T@Ref) (f_16@@501 T@Field_17509_13727) ) (!  (=> (select (|PolymorphicMapType_14202_17509_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@466 f_16@@501) (= (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@66) o2_5@@466 f_16@@501) (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@466 f_16@@501)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@466 f_16@@501))
))) (forall ((o2_5@@467 T@Ref) (f_16@@502 T@Field_17522_17527) ) (!  (=> (select (|PolymorphicMapType_14202_17509_56220#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@467 f_16@@502) (= (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@66) o2_5@@467 f_16@@502) (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@467 f_16@@502)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@467 f_16@@502))
))) (forall ((o2_5@@468 T@Ref) (f_16@@503 T@Field_17538_17539) ) (!  (=> (select (|PolymorphicMapType_14202_17509_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@468 f_16@@503) (= (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@66) o2_5@@468 f_16@@503) (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@468 f_16@@503)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@468 f_16@@503))
))) (forall ((o2_5@@469 T@Ref) (f_16@@504 T@Field_18094_1672) ) (!  (=> (select (|PolymorphicMapType_14202_18094_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@469 f_16@@504) (= (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@66) o2_5@@469 f_16@@504) (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@469 f_16@@504)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@469 f_16@@504))
))) (forall ((o2_5@@470 T@Ref) (f_16@@505 T@Field_18094_53) ) (!  (=> (select (|PolymorphicMapType_14202_18094_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@470 f_16@@505) (= (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@66) o2_5@@470 f_16@@505) (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@470 f_16@@505)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@470 f_16@@505))
))) (forall ((o2_5@@471 T@Ref) (f_16@@506 T@Field_18094_13727) ) (!  (=> (select (|PolymorphicMapType_14202_18094_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@471 f_16@@506) (= (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@66) o2_5@@471 f_16@@506) (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@471 f_16@@506)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@471 f_16@@506))
))) (forall ((o2_5@@472 T@Ref) (f_16@@507 T@Field_18106_18111) ) (!  (=> (select (|PolymorphicMapType_14202_18094_57268#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@472 f_16@@507) (= (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@66) o2_5@@472 f_16@@507) (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@472 f_16@@507)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@472 f_16@@507))
))) (forall ((o2_5@@473 T@Ref) (f_16@@508 T@Field_18121_18122) ) (!  (=> (select (|PolymorphicMapType_14202_18094_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@473 f_16@@508) (= (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@66) o2_5@@473 f_16@@508) (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@473 f_16@@508)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@473 f_16@@508))
))) (forall ((o2_5@@474 T@Ref) (f_16@@509 T@Field_18651_1941) ) (!  (=> (select (|PolymorphicMapType_14202_18651_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@474 f_16@@509) (= (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@66) o2_5@@474 f_16@@509) (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@474 f_16@@509)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@474 f_16@@509))
))) (forall ((o2_5@@475 T@Ref) (f_16@@510 T@Field_18651_53) ) (!  (=> (select (|PolymorphicMapType_14202_18651_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@475 f_16@@510) (= (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@66) o2_5@@475 f_16@@510) (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@475 f_16@@510)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@475 f_16@@510))
))) (forall ((o2_5@@476 T@Ref) (f_16@@511 T@Field_18651_13727) ) (!  (=> (select (|PolymorphicMapType_14202_18651_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@476 f_16@@511) (= (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@66) o2_5@@476 f_16@@511) (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@476 f_16@@511)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@476 f_16@@511))
))) (forall ((o2_5@@477 T@Ref) (f_16@@512 T@Field_18664_18669) ) (!  (=> (select (|PolymorphicMapType_14202_18651_58316#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@477 f_16@@512) (= (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@66) o2_5@@477 f_16@@512) (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@477 f_16@@512)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@477 f_16@@512))
))) (forall ((o2_5@@478 T@Ref) (f_16@@513 T@Field_18680_18681) ) (!  (=> (select (|PolymorphicMapType_14202_18651_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@478 f_16@@513) (= (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@66) o2_5@@478 f_16@@513) (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@478 f_16@@513)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@478 f_16@@513))
))) (forall ((o2_5@@479 T@Ref) (f_16@@514 T@Field_7937_1195) ) (!  (=> (select (|PolymorphicMapType_14202_19426_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@479 f_16@@514) (= (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@66) o2_5@@479 f_16@@514) (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@479 f_16@@514)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@479 f_16@@514))
))) (forall ((o2_5@@480 T@Ref) (f_16@@515 T@Field_7937_53) ) (!  (=> (select (|PolymorphicMapType_14202_19426_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@480 f_16@@515) (= (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@66) o2_5@@480 f_16@@515) (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@480 f_16@@515)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@480 f_16@@515))
))) (forall ((o2_5@@481 T@Ref) (f_16@@516 T@Field_7937_13727) ) (!  (=> (select (|PolymorphicMapType_14202_19426_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@481 f_16@@516) (= (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@66) o2_5@@481 f_16@@516) (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@481 f_16@@516)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@481 f_16@@516))
))) (forall ((o2_5@@482 T@Ref) (f_16@@517 T@Field_19439_19444) ) (!  (=> (select (|PolymorphicMapType_14202_19426_59364#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@482 f_16@@517) (= (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) o2_5@@482 f_16@@517) (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@482 f_16@@517)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@482 f_16@@517))
))) (forall ((o2_5@@483 T@Ref) (f_16@@518 T@Field_19426_19427) ) (!  (=> (select (|PolymorphicMapType_14202_19426_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@483 f_16@@518) (= (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@66) o2_5@@483 f_16@@518) (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@483 f_16@@518)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@483 f_16@@518))
))) (forall ((o2_5@@484 T@Ref) (f_16@@519 T@Field_7962_1195) ) (!  (=> (select (|PolymorphicMapType_14202_20346_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@484 f_16@@519) (= (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@66) o2_5@@484 f_16@@519) (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@484 f_16@@519)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@484 f_16@@519))
))) (forall ((o2_5@@485 T@Ref) (f_16@@520 T@Field_7962_53) ) (!  (=> (select (|PolymorphicMapType_14202_20346_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@485 f_16@@520) (= (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@66) o2_5@@485 f_16@@520) (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@485 f_16@@520)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@485 f_16@@520))
))) (forall ((o2_5@@486 T@Ref) (f_16@@521 T@Field_7962_13727) ) (!  (=> (select (|PolymorphicMapType_14202_20346_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@486 f_16@@521) (= (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@66) o2_5@@486 f_16@@521) (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@486 f_16@@521)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@486 f_16@@521))
))) (forall ((o2_5@@487 T@Ref) (f_16@@522 T@Field_20359_20364) ) (!  (=> (select (|PolymorphicMapType_14202_20346_60412#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@487 f_16@@522) (= (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@66) o2_5@@487 f_16@@522) (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@487 f_16@@522)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@487 f_16@@522))
))) (forall ((o2_5@@488 T@Ref) (f_16@@523 T@Field_20346_20347) ) (!  (=> (select (|PolymorphicMapType_14202_20346_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@66) null (WandMaskField_7937 pm_f_5@@26))) o2_5@@488 f_16@@523) (= (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@66) o2_5@@488 f_16@@523) (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@488 f_16@@523)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| ExhaleHeap@@63) o2_5@@488 f_16@@523))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@63 Mask@@134) (IsWandField_7937_62829 pm_f_5@@26))
)))
(assert (forall ((arg1@@22 T@Ref) (arg2@@22 Real) (arg3@@18 T@Ref) (arg4@@4 Real) ) (! (= (|wand_3#sm| arg1@@22 arg2@@22 arg3@@18 arg4@@4) (WandMaskField_7893 (|wand_3#ft| arg1@@22 arg2@@22 arg3@@18 arg4@@4)))
 :qid |stdinbpl.296:15|
 :skolemid |47|
 :pattern ( (WandMaskField_7893 (|wand_3#ft| arg1@@22 arg2@@22 arg3@@18 arg4@@4)))
)))
(assert (forall ((o_2@@104 T@Ref) (f_4@@104 T@Field_18664_18669) ) (! (= (select (|PolymorphicMapType_13674_7880_80610#PolymorphicMapType_13674| ZeroMask) o_2@@104 f_4@@104) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7880_80610#PolymorphicMapType_13674| ZeroMask) o_2@@104 f_4@@104))
)))
(assert (forall ((o_2@@105 T@Ref) (f_4@@105 T@Field_18651_13727) ) (! (= (select (|PolymorphicMapType_13674_7880_13727#PolymorphicMapType_13674| ZeroMask) o_2@@105 f_4@@105) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7880_13727#PolymorphicMapType_13674| ZeroMask) o_2@@105 f_4@@105))
)))
(assert (forall ((o_2@@106 T@Ref) (f_4@@106 T@Field_18651_53) ) (! (= (select (|PolymorphicMapType_13674_7880_53#PolymorphicMapType_13674| ZeroMask) o_2@@106 f_4@@106) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7880_53#PolymorphicMapType_13674| ZeroMask) o_2@@106 f_4@@106))
)))
(assert (forall ((o_2@@107 T@Ref) (f_4@@107 T@Field_18680_18681) ) (! (= (select (|PolymorphicMapType_13674_7880_7938#PolymorphicMapType_13674| ZeroMask) o_2@@107 f_4@@107) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7880_7938#PolymorphicMapType_13674| ZeroMask) o_2@@107 f_4@@107))
)))
(assert (forall ((o_2@@108 T@Ref) (f_4@@108 T@Field_18651_1941) ) (! (= (select (|PolymorphicMapType_13674_7880_1941#PolymorphicMapType_13674| ZeroMask) o_2@@108 f_4@@108) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7880_1941#PolymorphicMapType_13674| ZeroMask) o_2@@108 f_4@@108))
)))
(assert (forall ((o_2@@109 T@Ref) (f_4@@109 T@Field_18106_18111) ) (! (= (select (|PolymorphicMapType_13674_7848_80196#PolymorphicMapType_13674| ZeroMask) o_2@@109 f_4@@109) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7848_80196#PolymorphicMapType_13674| ZeroMask) o_2@@109 f_4@@109))
)))
(assert (forall ((o_2@@110 T@Ref) (f_4@@110 T@Field_18094_13727) ) (! (= (select (|PolymorphicMapType_13674_7848_13727#PolymorphicMapType_13674| ZeroMask) o_2@@110 f_4@@110) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7848_13727#PolymorphicMapType_13674| ZeroMask) o_2@@110 f_4@@110))
)))
(assert (forall ((o_2@@111 T@Ref) (f_4@@111 T@Field_18094_53) ) (! (= (select (|PolymorphicMapType_13674_7848_53#PolymorphicMapType_13674| ZeroMask) o_2@@111 f_4@@111) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7848_53#PolymorphicMapType_13674| ZeroMask) o_2@@111 f_4@@111))
)))
(assert (forall ((o_2@@112 T@Ref) (f_4@@112 T@Field_18121_18122) ) (! (= (select (|PolymorphicMapType_13674_7848_7938#PolymorphicMapType_13674| ZeroMask) o_2@@112 f_4@@112) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7848_7938#PolymorphicMapType_13674| ZeroMask) o_2@@112 f_4@@112))
)))
(assert (forall ((o_2@@113 T@Ref) (f_4@@113 T@Field_18094_1672) ) (! (= (select (|PolymorphicMapType_13674_7848_1672#PolymorphicMapType_13674| ZeroMask) o_2@@113 f_4@@113) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7848_1672#PolymorphicMapType_13674| ZeroMask) o_2@@113 f_4@@113))
)))
(assert (forall ((o_2@@114 T@Ref) (f_4@@114 T@Field_20359_20364) ) (! (= (select (|PolymorphicMapType_13674_7962_79782#PolymorphicMapType_13674| ZeroMask) o_2@@114 f_4@@114) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7962_79782#PolymorphicMapType_13674| ZeroMask) o_2@@114 f_4@@114))
)))
(assert (forall ((o_2@@115 T@Ref) (f_4@@115 T@Field_7962_13727) ) (! (= (select (|PolymorphicMapType_13674_7962_13727#PolymorphicMapType_13674| ZeroMask) o_2@@115 f_4@@115) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7962_13727#PolymorphicMapType_13674| ZeroMask) o_2@@115 f_4@@115))
)))
(assert (forall ((o_2@@116 T@Ref) (f_4@@116 T@Field_7962_53) ) (! (= (select (|PolymorphicMapType_13674_7962_53#PolymorphicMapType_13674| ZeroMask) o_2@@116 f_4@@116) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7962_53#PolymorphicMapType_13674| ZeroMask) o_2@@116 f_4@@116))
)))
(assert (forall ((o_2@@117 T@Ref) (f_4@@117 T@Field_20346_20347) ) (! (= (select (|PolymorphicMapType_13674_7962_7963#PolymorphicMapType_13674| ZeroMask) o_2@@117 f_4@@117) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7962_7963#PolymorphicMapType_13674| ZeroMask) o_2@@117 f_4@@117))
)))
(assert (forall ((o_2@@118 T@Ref) (f_4@@118 T@Field_7962_1195) ) (! (= (select (|PolymorphicMapType_13674_7962_2246#PolymorphicMapType_13674| ZeroMask) o_2@@118 f_4@@118) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7962_2246#PolymorphicMapType_13674| ZeroMask) o_2@@118 f_4@@118))
)))
(assert (forall ((o_2@@119 T@Ref) (f_4@@119 T@Field_17522_17527) ) (! (= (select (|PolymorphicMapType_13674_7808_79371#PolymorphicMapType_13674| ZeroMask) o_2@@119 f_4@@119) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7808_79371#PolymorphicMapType_13674| ZeroMask) o_2@@119 f_4@@119))
)))
(assert (forall ((o_2@@120 T@Ref) (f_4@@120 T@Field_17509_13727) ) (! (= (select (|PolymorphicMapType_13674_7808_13727#PolymorphicMapType_13674| ZeroMask) o_2@@120 f_4@@120) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7808_13727#PolymorphicMapType_13674| ZeroMask) o_2@@120 f_4@@120))
)))
(assert (forall ((o_2@@121 T@Ref) (f_4@@121 T@Field_17509_53) ) (! (= (select (|PolymorphicMapType_13674_7808_53#PolymorphicMapType_13674| ZeroMask) o_2@@121 f_4@@121) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7808_53#PolymorphicMapType_13674| ZeroMask) o_2@@121 f_4@@121))
)))
(assert (forall ((o_2@@122 T@Ref) (f_4@@122 T@Field_17538_17539) ) (! (= (select (|PolymorphicMapType_13674_7808_7938#PolymorphicMapType_13674| ZeroMask) o_2@@122 f_4@@122) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7808_7938#PolymorphicMapType_13674| ZeroMask) o_2@@122 f_4@@122))
)))
(assert (forall ((o_2@@123 T@Ref) (f_4@@123 T@Field_17509_1407) ) (! (= (select (|PolymorphicMapType_13674_7808_1407#PolymorphicMapType_13674| ZeroMask) o_2@@123 f_4@@123) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7808_1407#PolymorphicMapType_13674| ZeroMask) o_2@@123 f_4@@123))
)))
(assert (forall ((o_2@@124 T@Ref) (f_4@@124 T@Field_17050_17055) ) (! (= (select (|PolymorphicMapType_13674_7797_78957#PolymorphicMapType_13674| ZeroMask) o_2@@124 f_4@@124) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7797_78957#PolymorphicMapType_13674| ZeroMask) o_2@@124 f_4@@124))
)))
(assert (forall ((o_2@@125 T@Ref) (f_4@@125 T@Field_17039_13727) ) (! (= (select (|PolymorphicMapType_13674_7797_13727#PolymorphicMapType_13674| ZeroMask) o_2@@125 f_4@@125) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7797_13727#PolymorphicMapType_13674| ZeroMask) o_2@@125 f_4@@125))
)))
(assert (forall ((o_2@@126 T@Ref) (f_4@@126 T@Field_17039_53) ) (! (= (select (|PolymorphicMapType_13674_7797_53#PolymorphicMapType_13674| ZeroMask) o_2@@126 f_4@@126) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7797_53#PolymorphicMapType_13674| ZeroMask) o_2@@126 f_4@@126))
)))
(assert (forall ((o_2@@127 T@Ref) (f_4@@127 T@Field_17064_17065) ) (! (= (select (|PolymorphicMapType_13674_7797_7938#PolymorphicMapType_13674| ZeroMask) o_2@@127 f_4@@127) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7797_7938#PolymorphicMapType_13674| ZeroMask) o_2@@127 f_4@@127))
)))
(assert (forall ((o_2@@128 T@Ref) (f_4@@128 T@Field_17039_1195) ) (! (= (select (|PolymorphicMapType_13674_7797_1195#PolymorphicMapType_13674| ZeroMask) o_2@@128 f_4@@128) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7797_1195#PolymorphicMapType_13674| ZeroMask) o_2@@128 f_4@@128))
)))
(assert (forall ((o_2@@129 T@Ref) (f_4@@129 T@Field_19439_19444) ) (! (= (select (|PolymorphicMapType_13674_7937_78543#PolymorphicMapType_13674| ZeroMask) o_2@@129 f_4@@129) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7937_78543#PolymorphicMapType_13674| ZeroMask) o_2@@129 f_4@@129))
)))
(assert (forall ((o_2@@130 T@Ref) (f_4@@130 T@Field_7937_13727) ) (! (= (select (|PolymorphicMapType_13674_7937_13727#PolymorphicMapType_13674| ZeroMask) o_2@@130 f_4@@130) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7937_13727#PolymorphicMapType_13674| ZeroMask) o_2@@130 f_4@@130))
)))
(assert (forall ((o_2@@131 T@Ref) (f_4@@131 T@Field_7937_53) ) (! (= (select (|PolymorphicMapType_13674_7937_53#PolymorphicMapType_13674| ZeroMask) o_2@@131 f_4@@131) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7937_53#PolymorphicMapType_13674| ZeroMask) o_2@@131 f_4@@131))
)))
(assert (forall ((o_2@@132 T@Ref) (f_4@@132 T@Field_19426_19427) ) (! (= (select (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| ZeroMask) o_2@@132 f_4@@132) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| ZeroMask) o_2@@132 f_4@@132))
)))
(assert (forall ((o_2@@133 T@Ref) (f_4@@133 T@Field_7937_1195) ) (! (= (select (|PolymorphicMapType_13674_7937_2246#PolymorphicMapType_13674| ZeroMask) o_2@@133 f_4@@133) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7937_2246#PolymorphicMapType_13674| ZeroMask) o_2@@133 f_4@@133))
)))
(assert (forall ((o_2@@134 T@Ref) (f_4@@134 T@Field_13713_17055) ) (! (= (select (|PolymorphicMapType_13674_7928_78132#PolymorphicMapType_13674| ZeroMask) o_2@@134 f_4@@134) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7928_78132#PolymorphicMapType_13674| ZeroMask) o_2@@134 f_4@@134))
)))
(assert (forall ((o_2@@135 T@Ref) (f_4@@135 T@Field_13726_13727) ) (! (= (select (|PolymorphicMapType_13674_7928_13727#PolymorphicMapType_13674| ZeroMask) o_2@@135 f_4@@135) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7928_13727#PolymorphicMapType_13674| ZeroMask) o_2@@135 f_4@@135))
)))
(assert (forall ((o_2@@136 T@Ref) (f_4@@136 T@Field_13713_53) ) (! (= (select (|PolymorphicMapType_13674_7928_53#PolymorphicMapType_13674| ZeroMask) o_2@@136 f_4@@136) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7928_53#PolymorphicMapType_13674| ZeroMask) o_2@@136 f_4@@136))
)))
(assert (forall ((o_2@@137 T@Ref) (f_4@@137 T@Field_13713_7938) ) (! (= (select (|PolymorphicMapType_13674_7928_7938#PolymorphicMapType_13674| ZeroMask) o_2@@137 f_4@@137) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7928_7938#PolymorphicMapType_13674| ZeroMask) o_2@@137 f_4@@137))
)))
(assert (forall ((o_2@@138 T@Ref) (f_4@@138 T@Field_19293_2246) ) (! (= (select (|PolymorphicMapType_13674_7928_2246#PolymorphicMapType_13674| ZeroMask) o_2@@138 f_4@@138) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13674_7928_2246#PolymorphicMapType_13674| ZeroMask) o_2@@138 f_4@@138))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_13674) (SummandMask1 T@PolymorphicMapType_13674) (SummandMask2 T@PolymorphicMapType_13674) (o_2@@139 T@Ref) (f_4@@139 T@Field_18664_18669) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_13674_7880_80610#PolymorphicMapType_13674| ResultMask) o_2@@139 f_4@@139) (+ (select (|PolymorphicMapType_13674_7880_80610#PolymorphicMapType_13674| SummandMask1) o_2@@139 f_4@@139) (select (|PolymorphicMapType_13674_7880_80610#PolymorphicMapType_13674| SummandMask2) o_2@@139 f_4@@139))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13674_7880_80610#PolymorphicMapType_13674| ResultMask) o_2@@139 f_4@@139))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13674_7880_80610#PolymorphicMapType_13674| SummandMask1) o_2@@139 f_4@@139))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13674_7880_80610#PolymorphicMapType_13674| SummandMask2) o_2@@139 f_4@@139))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_13674) (SummandMask1@@0 T@PolymorphicMapType_13674) (SummandMask2@@0 T@PolymorphicMapType_13674) (o_2@@140 T@Ref) (f_4@@140 T@Field_18651_13727) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_13674_7880_13727#PolymorphicMapType_13674| ResultMask@@0) o_2@@140 f_4@@140) (+ (select (|PolymorphicMapType_13674_7880_13727#PolymorphicMapType_13674| SummandMask1@@0) o_2@@140 f_4@@140) (select (|PolymorphicMapType_13674_7880_13727#PolymorphicMapType_13674| SummandMask2@@0) o_2@@140 f_4@@140))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13674_7880_13727#PolymorphicMapType_13674| ResultMask@@0) o_2@@140 f_4@@140))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13674_7880_13727#PolymorphicMapType_13674| SummandMask1@@0) o_2@@140 f_4@@140))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13674_7880_13727#PolymorphicMapType_13674| SummandMask2@@0) o_2@@140 f_4@@140))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_13674) (SummandMask1@@1 T@PolymorphicMapType_13674) (SummandMask2@@1 T@PolymorphicMapType_13674) (o_2@@141 T@Ref) (f_4@@141 T@Field_18651_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_13674_7880_53#PolymorphicMapType_13674| ResultMask@@1) o_2@@141 f_4@@141) (+ (select (|PolymorphicMapType_13674_7880_53#PolymorphicMapType_13674| SummandMask1@@1) o_2@@141 f_4@@141) (select (|PolymorphicMapType_13674_7880_53#PolymorphicMapType_13674| SummandMask2@@1) o_2@@141 f_4@@141))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13674_7880_53#PolymorphicMapType_13674| ResultMask@@1) o_2@@141 f_4@@141))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13674_7880_53#PolymorphicMapType_13674| SummandMask1@@1) o_2@@141 f_4@@141))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13674_7880_53#PolymorphicMapType_13674| SummandMask2@@1) o_2@@141 f_4@@141))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_13674) (SummandMask1@@2 T@PolymorphicMapType_13674) (SummandMask2@@2 T@PolymorphicMapType_13674) (o_2@@142 T@Ref) (f_4@@142 T@Field_18680_18681) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_13674_7880_7938#PolymorphicMapType_13674| ResultMask@@2) o_2@@142 f_4@@142) (+ (select (|PolymorphicMapType_13674_7880_7938#PolymorphicMapType_13674| SummandMask1@@2) o_2@@142 f_4@@142) (select (|PolymorphicMapType_13674_7880_7938#PolymorphicMapType_13674| SummandMask2@@2) o_2@@142 f_4@@142))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13674_7880_7938#PolymorphicMapType_13674| ResultMask@@2) o_2@@142 f_4@@142))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13674_7880_7938#PolymorphicMapType_13674| SummandMask1@@2) o_2@@142 f_4@@142))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13674_7880_7938#PolymorphicMapType_13674| SummandMask2@@2) o_2@@142 f_4@@142))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_13674) (SummandMask1@@3 T@PolymorphicMapType_13674) (SummandMask2@@3 T@PolymorphicMapType_13674) (o_2@@143 T@Ref) (f_4@@143 T@Field_18651_1941) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_13674_7880_1941#PolymorphicMapType_13674| ResultMask@@3) o_2@@143 f_4@@143) (+ (select (|PolymorphicMapType_13674_7880_1941#PolymorphicMapType_13674| SummandMask1@@3) o_2@@143 f_4@@143) (select (|PolymorphicMapType_13674_7880_1941#PolymorphicMapType_13674| SummandMask2@@3) o_2@@143 f_4@@143))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13674_7880_1941#PolymorphicMapType_13674| ResultMask@@3) o_2@@143 f_4@@143))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13674_7880_1941#PolymorphicMapType_13674| SummandMask1@@3) o_2@@143 f_4@@143))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13674_7880_1941#PolymorphicMapType_13674| SummandMask2@@3) o_2@@143 f_4@@143))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_13674) (SummandMask1@@4 T@PolymorphicMapType_13674) (SummandMask2@@4 T@PolymorphicMapType_13674) (o_2@@144 T@Ref) (f_4@@144 T@Field_18106_18111) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_13674_7848_80196#PolymorphicMapType_13674| ResultMask@@4) o_2@@144 f_4@@144) (+ (select (|PolymorphicMapType_13674_7848_80196#PolymorphicMapType_13674| SummandMask1@@4) o_2@@144 f_4@@144) (select (|PolymorphicMapType_13674_7848_80196#PolymorphicMapType_13674| SummandMask2@@4) o_2@@144 f_4@@144))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13674_7848_80196#PolymorphicMapType_13674| ResultMask@@4) o_2@@144 f_4@@144))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13674_7848_80196#PolymorphicMapType_13674| SummandMask1@@4) o_2@@144 f_4@@144))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13674_7848_80196#PolymorphicMapType_13674| SummandMask2@@4) o_2@@144 f_4@@144))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_13674) (SummandMask1@@5 T@PolymorphicMapType_13674) (SummandMask2@@5 T@PolymorphicMapType_13674) (o_2@@145 T@Ref) (f_4@@145 T@Field_18094_13727) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_13674_7848_13727#PolymorphicMapType_13674| ResultMask@@5) o_2@@145 f_4@@145) (+ (select (|PolymorphicMapType_13674_7848_13727#PolymorphicMapType_13674| SummandMask1@@5) o_2@@145 f_4@@145) (select (|PolymorphicMapType_13674_7848_13727#PolymorphicMapType_13674| SummandMask2@@5) o_2@@145 f_4@@145))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_13674_7848_13727#PolymorphicMapType_13674| ResultMask@@5) o_2@@145 f_4@@145))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_13674_7848_13727#PolymorphicMapType_13674| SummandMask1@@5) o_2@@145 f_4@@145))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_13674_7848_13727#PolymorphicMapType_13674| SummandMask2@@5) o_2@@145 f_4@@145))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_13674) (SummandMask1@@6 T@PolymorphicMapType_13674) (SummandMask2@@6 T@PolymorphicMapType_13674) (o_2@@146 T@Ref) (f_4@@146 T@Field_18094_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_13674_7848_53#PolymorphicMapType_13674| ResultMask@@6) o_2@@146 f_4@@146) (+ (select (|PolymorphicMapType_13674_7848_53#PolymorphicMapType_13674| SummandMask1@@6) o_2@@146 f_4@@146) (select (|PolymorphicMapType_13674_7848_53#PolymorphicMapType_13674| SummandMask2@@6) o_2@@146 f_4@@146))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_13674_7848_53#PolymorphicMapType_13674| ResultMask@@6) o_2@@146 f_4@@146))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_13674_7848_53#PolymorphicMapType_13674| SummandMask1@@6) o_2@@146 f_4@@146))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_13674_7848_53#PolymorphicMapType_13674| SummandMask2@@6) o_2@@146 f_4@@146))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_13674) (SummandMask1@@7 T@PolymorphicMapType_13674) (SummandMask2@@7 T@PolymorphicMapType_13674) (o_2@@147 T@Ref) (f_4@@147 T@Field_18121_18122) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_13674_7848_7938#PolymorphicMapType_13674| ResultMask@@7) o_2@@147 f_4@@147) (+ (select (|PolymorphicMapType_13674_7848_7938#PolymorphicMapType_13674| SummandMask1@@7) o_2@@147 f_4@@147) (select (|PolymorphicMapType_13674_7848_7938#PolymorphicMapType_13674| SummandMask2@@7) o_2@@147 f_4@@147))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_13674_7848_7938#PolymorphicMapType_13674| ResultMask@@7) o_2@@147 f_4@@147))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_13674_7848_7938#PolymorphicMapType_13674| SummandMask1@@7) o_2@@147 f_4@@147))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_13674_7848_7938#PolymorphicMapType_13674| SummandMask2@@7) o_2@@147 f_4@@147))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_13674) (SummandMask1@@8 T@PolymorphicMapType_13674) (SummandMask2@@8 T@PolymorphicMapType_13674) (o_2@@148 T@Ref) (f_4@@148 T@Field_18094_1672) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_13674_7848_1672#PolymorphicMapType_13674| ResultMask@@8) o_2@@148 f_4@@148) (+ (select (|PolymorphicMapType_13674_7848_1672#PolymorphicMapType_13674| SummandMask1@@8) o_2@@148 f_4@@148) (select (|PolymorphicMapType_13674_7848_1672#PolymorphicMapType_13674| SummandMask2@@8) o_2@@148 f_4@@148))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_13674_7848_1672#PolymorphicMapType_13674| ResultMask@@8) o_2@@148 f_4@@148))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_13674_7848_1672#PolymorphicMapType_13674| SummandMask1@@8) o_2@@148 f_4@@148))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_13674_7848_1672#PolymorphicMapType_13674| SummandMask2@@8) o_2@@148 f_4@@148))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_13674) (SummandMask1@@9 T@PolymorphicMapType_13674) (SummandMask2@@9 T@PolymorphicMapType_13674) (o_2@@149 T@Ref) (f_4@@149 T@Field_20359_20364) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_13674_7962_79782#PolymorphicMapType_13674| ResultMask@@9) o_2@@149 f_4@@149) (+ (select (|PolymorphicMapType_13674_7962_79782#PolymorphicMapType_13674| SummandMask1@@9) o_2@@149 f_4@@149) (select (|PolymorphicMapType_13674_7962_79782#PolymorphicMapType_13674| SummandMask2@@9) o_2@@149 f_4@@149))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_13674_7962_79782#PolymorphicMapType_13674| ResultMask@@9) o_2@@149 f_4@@149))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_13674_7962_79782#PolymorphicMapType_13674| SummandMask1@@9) o_2@@149 f_4@@149))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_13674_7962_79782#PolymorphicMapType_13674| SummandMask2@@9) o_2@@149 f_4@@149))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_13674) (SummandMask1@@10 T@PolymorphicMapType_13674) (SummandMask2@@10 T@PolymorphicMapType_13674) (o_2@@150 T@Ref) (f_4@@150 T@Field_7962_13727) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_13674_7962_13727#PolymorphicMapType_13674| ResultMask@@10) o_2@@150 f_4@@150) (+ (select (|PolymorphicMapType_13674_7962_13727#PolymorphicMapType_13674| SummandMask1@@10) o_2@@150 f_4@@150) (select (|PolymorphicMapType_13674_7962_13727#PolymorphicMapType_13674| SummandMask2@@10) o_2@@150 f_4@@150))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_13674_7962_13727#PolymorphicMapType_13674| ResultMask@@10) o_2@@150 f_4@@150))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_13674_7962_13727#PolymorphicMapType_13674| SummandMask1@@10) o_2@@150 f_4@@150))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_13674_7962_13727#PolymorphicMapType_13674| SummandMask2@@10) o_2@@150 f_4@@150))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_13674) (SummandMask1@@11 T@PolymorphicMapType_13674) (SummandMask2@@11 T@PolymorphicMapType_13674) (o_2@@151 T@Ref) (f_4@@151 T@Field_7962_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_13674_7962_53#PolymorphicMapType_13674| ResultMask@@11) o_2@@151 f_4@@151) (+ (select (|PolymorphicMapType_13674_7962_53#PolymorphicMapType_13674| SummandMask1@@11) o_2@@151 f_4@@151) (select (|PolymorphicMapType_13674_7962_53#PolymorphicMapType_13674| SummandMask2@@11) o_2@@151 f_4@@151))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_13674_7962_53#PolymorphicMapType_13674| ResultMask@@11) o_2@@151 f_4@@151))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_13674_7962_53#PolymorphicMapType_13674| SummandMask1@@11) o_2@@151 f_4@@151))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_13674_7962_53#PolymorphicMapType_13674| SummandMask2@@11) o_2@@151 f_4@@151))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_13674) (SummandMask1@@12 T@PolymorphicMapType_13674) (SummandMask2@@12 T@PolymorphicMapType_13674) (o_2@@152 T@Ref) (f_4@@152 T@Field_20346_20347) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_13674_7962_7963#PolymorphicMapType_13674| ResultMask@@12) o_2@@152 f_4@@152) (+ (select (|PolymorphicMapType_13674_7962_7963#PolymorphicMapType_13674| SummandMask1@@12) o_2@@152 f_4@@152) (select (|PolymorphicMapType_13674_7962_7963#PolymorphicMapType_13674| SummandMask2@@12) o_2@@152 f_4@@152))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_13674_7962_7963#PolymorphicMapType_13674| ResultMask@@12) o_2@@152 f_4@@152))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_13674_7962_7963#PolymorphicMapType_13674| SummandMask1@@12) o_2@@152 f_4@@152))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_13674_7962_7963#PolymorphicMapType_13674| SummandMask2@@12) o_2@@152 f_4@@152))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_13674) (SummandMask1@@13 T@PolymorphicMapType_13674) (SummandMask2@@13 T@PolymorphicMapType_13674) (o_2@@153 T@Ref) (f_4@@153 T@Field_7962_1195) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_13674_7962_2246#PolymorphicMapType_13674| ResultMask@@13) o_2@@153 f_4@@153) (+ (select (|PolymorphicMapType_13674_7962_2246#PolymorphicMapType_13674| SummandMask1@@13) o_2@@153 f_4@@153) (select (|PolymorphicMapType_13674_7962_2246#PolymorphicMapType_13674| SummandMask2@@13) o_2@@153 f_4@@153))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_13674_7962_2246#PolymorphicMapType_13674| ResultMask@@13) o_2@@153 f_4@@153))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_13674_7962_2246#PolymorphicMapType_13674| SummandMask1@@13) o_2@@153 f_4@@153))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_13674_7962_2246#PolymorphicMapType_13674| SummandMask2@@13) o_2@@153 f_4@@153))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_13674) (SummandMask1@@14 T@PolymorphicMapType_13674) (SummandMask2@@14 T@PolymorphicMapType_13674) (o_2@@154 T@Ref) (f_4@@154 T@Field_17522_17527) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_13674_7808_79371#PolymorphicMapType_13674| ResultMask@@14) o_2@@154 f_4@@154) (+ (select (|PolymorphicMapType_13674_7808_79371#PolymorphicMapType_13674| SummandMask1@@14) o_2@@154 f_4@@154) (select (|PolymorphicMapType_13674_7808_79371#PolymorphicMapType_13674| SummandMask2@@14) o_2@@154 f_4@@154))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_13674_7808_79371#PolymorphicMapType_13674| ResultMask@@14) o_2@@154 f_4@@154))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_13674_7808_79371#PolymorphicMapType_13674| SummandMask1@@14) o_2@@154 f_4@@154))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_13674_7808_79371#PolymorphicMapType_13674| SummandMask2@@14) o_2@@154 f_4@@154))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_13674) (SummandMask1@@15 T@PolymorphicMapType_13674) (SummandMask2@@15 T@PolymorphicMapType_13674) (o_2@@155 T@Ref) (f_4@@155 T@Field_17509_13727) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_13674_7808_13727#PolymorphicMapType_13674| ResultMask@@15) o_2@@155 f_4@@155) (+ (select (|PolymorphicMapType_13674_7808_13727#PolymorphicMapType_13674| SummandMask1@@15) o_2@@155 f_4@@155) (select (|PolymorphicMapType_13674_7808_13727#PolymorphicMapType_13674| SummandMask2@@15) o_2@@155 f_4@@155))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_13674_7808_13727#PolymorphicMapType_13674| ResultMask@@15) o_2@@155 f_4@@155))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_13674_7808_13727#PolymorphicMapType_13674| SummandMask1@@15) o_2@@155 f_4@@155))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_13674_7808_13727#PolymorphicMapType_13674| SummandMask2@@15) o_2@@155 f_4@@155))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_13674) (SummandMask1@@16 T@PolymorphicMapType_13674) (SummandMask2@@16 T@PolymorphicMapType_13674) (o_2@@156 T@Ref) (f_4@@156 T@Field_17509_53) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_13674_7808_53#PolymorphicMapType_13674| ResultMask@@16) o_2@@156 f_4@@156) (+ (select (|PolymorphicMapType_13674_7808_53#PolymorphicMapType_13674| SummandMask1@@16) o_2@@156 f_4@@156) (select (|PolymorphicMapType_13674_7808_53#PolymorphicMapType_13674| SummandMask2@@16) o_2@@156 f_4@@156))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_13674_7808_53#PolymorphicMapType_13674| ResultMask@@16) o_2@@156 f_4@@156))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_13674_7808_53#PolymorphicMapType_13674| SummandMask1@@16) o_2@@156 f_4@@156))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_13674_7808_53#PolymorphicMapType_13674| SummandMask2@@16) o_2@@156 f_4@@156))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_13674) (SummandMask1@@17 T@PolymorphicMapType_13674) (SummandMask2@@17 T@PolymorphicMapType_13674) (o_2@@157 T@Ref) (f_4@@157 T@Field_17538_17539) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_13674_7808_7938#PolymorphicMapType_13674| ResultMask@@17) o_2@@157 f_4@@157) (+ (select (|PolymorphicMapType_13674_7808_7938#PolymorphicMapType_13674| SummandMask1@@17) o_2@@157 f_4@@157) (select (|PolymorphicMapType_13674_7808_7938#PolymorphicMapType_13674| SummandMask2@@17) o_2@@157 f_4@@157))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_13674_7808_7938#PolymorphicMapType_13674| ResultMask@@17) o_2@@157 f_4@@157))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_13674_7808_7938#PolymorphicMapType_13674| SummandMask1@@17) o_2@@157 f_4@@157))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_13674_7808_7938#PolymorphicMapType_13674| SummandMask2@@17) o_2@@157 f_4@@157))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_13674) (SummandMask1@@18 T@PolymorphicMapType_13674) (SummandMask2@@18 T@PolymorphicMapType_13674) (o_2@@158 T@Ref) (f_4@@158 T@Field_17509_1407) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_13674_7808_1407#PolymorphicMapType_13674| ResultMask@@18) o_2@@158 f_4@@158) (+ (select (|PolymorphicMapType_13674_7808_1407#PolymorphicMapType_13674| SummandMask1@@18) o_2@@158 f_4@@158) (select (|PolymorphicMapType_13674_7808_1407#PolymorphicMapType_13674| SummandMask2@@18) o_2@@158 f_4@@158))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_13674_7808_1407#PolymorphicMapType_13674| ResultMask@@18) o_2@@158 f_4@@158))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_13674_7808_1407#PolymorphicMapType_13674| SummandMask1@@18) o_2@@158 f_4@@158))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_13674_7808_1407#PolymorphicMapType_13674| SummandMask2@@18) o_2@@158 f_4@@158))
)))
(assert (forall ((ResultMask@@19 T@PolymorphicMapType_13674) (SummandMask1@@19 T@PolymorphicMapType_13674) (SummandMask2@@19 T@PolymorphicMapType_13674) (o_2@@159 T@Ref) (f_4@@159 T@Field_17050_17055) ) (!  (=> (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (= (select (|PolymorphicMapType_13674_7797_78957#PolymorphicMapType_13674| ResultMask@@19) o_2@@159 f_4@@159) (+ (select (|PolymorphicMapType_13674_7797_78957#PolymorphicMapType_13674| SummandMask1@@19) o_2@@159 f_4@@159) (select (|PolymorphicMapType_13674_7797_78957#PolymorphicMapType_13674| SummandMask2@@19) o_2@@159 f_4@@159))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_13674_7797_78957#PolymorphicMapType_13674| ResultMask@@19) o_2@@159 f_4@@159))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_13674_7797_78957#PolymorphicMapType_13674| SummandMask1@@19) o_2@@159 f_4@@159))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_13674_7797_78957#PolymorphicMapType_13674| SummandMask2@@19) o_2@@159 f_4@@159))
)))
(assert (forall ((ResultMask@@20 T@PolymorphicMapType_13674) (SummandMask1@@20 T@PolymorphicMapType_13674) (SummandMask2@@20 T@PolymorphicMapType_13674) (o_2@@160 T@Ref) (f_4@@160 T@Field_17039_13727) ) (!  (=> (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (= (select (|PolymorphicMapType_13674_7797_13727#PolymorphicMapType_13674| ResultMask@@20) o_2@@160 f_4@@160) (+ (select (|PolymorphicMapType_13674_7797_13727#PolymorphicMapType_13674| SummandMask1@@20) o_2@@160 f_4@@160) (select (|PolymorphicMapType_13674_7797_13727#PolymorphicMapType_13674| SummandMask2@@20) o_2@@160 f_4@@160))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_13674_7797_13727#PolymorphicMapType_13674| ResultMask@@20) o_2@@160 f_4@@160))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_13674_7797_13727#PolymorphicMapType_13674| SummandMask1@@20) o_2@@160 f_4@@160))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_13674_7797_13727#PolymorphicMapType_13674| SummandMask2@@20) o_2@@160 f_4@@160))
)))
(assert (forall ((ResultMask@@21 T@PolymorphicMapType_13674) (SummandMask1@@21 T@PolymorphicMapType_13674) (SummandMask2@@21 T@PolymorphicMapType_13674) (o_2@@161 T@Ref) (f_4@@161 T@Field_17039_53) ) (!  (=> (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (= (select (|PolymorphicMapType_13674_7797_53#PolymorphicMapType_13674| ResultMask@@21) o_2@@161 f_4@@161) (+ (select (|PolymorphicMapType_13674_7797_53#PolymorphicMapType_13674| SummandMask1@@21) o_2@@161 f_4@@161) (select (|PolymorphicMapType_13674_7797_53#PolymorphicMapType_13674| SummandMask2@@21) o_2@@161 f_4@@161))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_13674_7797_53#PolymorphicMapType_13674| ResultMask@@21) o_2@@161 f_4@@161))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_13674_7797_53#PolymorphicMapType_13674| SummandMask1@@21) o_2@@161 f_4@@161))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_13674_7797_53#PolymorphicMapType_13674| SummandMask2@@21) o_2@@161 f_4@@161))
)))
(assert (forall ((ResultMask@@22 T@PolymorphicMapType_13674) (SummandMask1@@22 T@PolymorphicMapType_13674) (SummandMask2@@22 T@PolymorphicMapType_13674) (o_2@@162 T@Ref) (f_4@@162 T@Field_17064_17065) ) (!  (=> (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (= (select (|PolymorphicMapType_13674_7797_7938#PolymorphicMapType_13674| ResultMask@@22) o_2@@162 f_4@@162) (+ (select (|PolymorphicMapType_13674_7797_7938#PolymorphicMapType_13674| SummandMask1@@22) o_2@@162 f_4@@162) (select (|PolymorphicMapType_13674_7797_7938#PolymorphicMapType_13674| SummandMask2@@22) o_2@@162 f_4@@162))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_13674_7797_7938#PolymorphicMapType_13674| ResultMask@@22) o_2@@162 f_4@@162))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_13674_7797_7938#PolymorphicMapType_13674| SummandMask1@@22) o_2@@162 f_4@@162))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_13674_7797_7938#PolymorphicMapType_13674| SummandMask2@@22) o_2@@162 f_4@@162))
)))
(assert (forall ((ResultMask@@23 T@PolymorphicMapType_13674) (SummandMask1@@23 T@PolymorphicMapType_13674) (SummandMask2@@23 T@PolymorphicMapType_13674) (o_2@@163 T@Ref) (f_4@@163 T@Field_17039_1195) ) (!  (=> (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (= (select (|PolymorphicMapType_13674_7797_1195#PolymorphicMapType_13674| ResultMask@@23) o_2@@163 f_4@@163) (+ (select (|PolymorphicMapType_13674_7797_1195#PolymorphicMapType_13674| SummandMask1@@23) o_2@@163 f_4@@163) (select (|PolymorphicMapType_13674_7797_1195#PolymorphicMapType_13674| SummandMask2@@23) o_2@@163 f_4@@163))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_13674_7797_1195#PolymorphicMapType_13674| ResultMask@@23) o_2@@163 f_4@@163))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_13674_7797_1195#PolymorphicMapType_13674| SummandMask1@@23) o_2@@163 f_4@@163))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_13674_7797_1195#PolymorphicMapType_13674| SummandMask2@@23) o_2@@163 f_4@@163))
)))
(assert (forall ((ResultMask@@24 T@PolymorphicMapType_13674) (SummandMask1@@24 T@PolymorphicMapType_13674) (SummandMask2@@24 T@PolymorphicMapType_13674) (o_2@@164 T@Ref) (f_4@@164 T@Field_19439_19444) ) (!  (=> (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (= (select (|PolymorphicMapType_13674_7937_78543#PolymorphicMapType_13674| ResultMask@@24) o_2@@164 f_4@@164) (+ (select (|PolymorphicMapType_13674_7937_78543#PolymorphicMapType_13674| SummandMask1@@24) o_2@@164 f_4@@164) (select (|PolymorphicMapType_13674_7937_78543#PolymorphicMapType_13674| SummandMask2@@24) o_2@@164 f_4@@164))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (select (|PolymorphicMapType_13674_7937_78543#PolymorphicMapType_13674| ResultMask@@24) o_2@@164 f_4@@164))
 :pattern ( (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (select (|PolymorphicMapType_13674_7937_78543#PolymorphicMapType_13674| SummandMask1@@24) o_2@@164 f_4@@164))
 :pattern ( (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (select (|PolymorphicMapType_13674_7937_78543#PolymorphicMapType_13674| SummandMask2@@24) o_2@@164 f_4@@164))
)))
(assert (forall ((ResultMask@@25 T@PolymorphicMapType_13674) (SummandMask1@@25 T@PolymorphicMapType_13674) (SummandMask2@@25 T@PolymorphicMapType_13674) (o_2@@165 T@Ref) (f_4@@165 T@Field_7937_13727) ) (!  (=> (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (= (select (|PolymorphicMapType_13674_7937_13727#PolymorphicMapType_13674| ResultMask@@25) o_2@@165 f_4@@165) (+ (select (|PolymorphicMapType_13674_7937_13727#PolymorphicMapType_13674| SummandMask1@@25) o_2@@165 f_4@@165) (select (|PolymorphicMapType_13674_7937_13727#PolymorphicMapType_13674| SummandMask2@@25) o_2@@165 f_4@@165))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (select (|PolymorphicMapType_13674_7937_13727#PolymorphicMapType_13674| ResultMask@@25) o_2@@165 f_4@@165))
 :pattern ( (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (select (|PolymorphicMapType_13674_7937_13727#PolymorphicMapType_13674| SummandMask1@@25) o_2@@165 f_4@@165))
 :pattern ( (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (select (|PolymorphicMapType_13674_7937_13727#PolymorphicMapType_13674| SummandMask2@@25) o_2@@165 f_4@@165))
)))
(assert (forall ((ResultMask@@26 T@PolymorphicMapType_13674) (SummandMask1@@26 T@PolymorphicMapType_13674) (SummandMask2@@26 T@PolymorphicMapType_13674) (o_2@@166 T@Ref) (f_4@@166 T@Field_7937_53) ) (!  (=> (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (= (select (|PolymorphicMapType_13674_7937_53#PolymorphicMapType_13674| ResultMask@@26) o_2@@166 f_4@@166) (+ (select (|PolymorphicMapType_13674_7937_53#PolymorphicMapType_13674| SummandMask1@@26) o_2@@166 f_4@@166) (select (|PolymorphicMapType_13674_7937_53#PolymorphicMapType_13674| SummandMask2@@26) o_2@@166 f_4@@166))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (select (|PolymorphicMapType_13674_7937_53#PolymorphicMapType_13674| ResultMask@@26) o_2@@166 f_4@@166))
 :pattern ( (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (select (|PolymorphicMapType_13674_7937_53#PolymorphicMapType_13674| SummandMask1@@26) o_2@@166 f_4@@166))
 :pattern ( (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (select (|PolymorphicMapType_13674_7937_53#PolymorphicMapType_13674| SummandMask2@@26) o_2@@166 f_4@@166))
)))
(assert (forall ((ResultMask@@27 T@PolymorphicMapType_13674) (SummandMask1@@27 T@PolymorphicMapType_13674) (SummandMask2@@27 T@PolymorphicMapType_13674) (o_2@@167 T@Ref) (f_4@@167 T@Field_19426_19427) ) (!  (=> (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (= (select (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| ResultMask@@27) o_2@@167 f_4@@167) (+ (select (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| SummandMask1@@27) o_2@@167 f_4@@167) (select (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| SummandMask2@@27) o_2@@167 f_4@@167))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (select (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| ResultMask@@27) o_2@@167 f_4@@167))
 :pattern ( (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (select (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| SummandMask1@@27) o_2@@167 f_4@@167))
 :pattern ( (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (select (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| SummandMask2@@27) o_2@@167 f_4@@167))
)))
(assert (forall ((ResultMask@@28 T@PolymorphicMapType_13674) (SummandMask1@@28 T@PolymorphicMapType_13674) (SummandMask2@@28 T@PolymorphicMapType_13674) (o_2@@168 T@Ref) (f_4@@168 T@Field_7937_1195) ) (!  (=> (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (= (select (|PolymorphicMapType_13674_7937_2246#PolymorphicMapType_13674| ResultMask@@28) o_2@@168 f_4@@168) (+ (select (|PolymorphicMapType_13674_7937_2246#PolymorphicMapType_13674| SummandMask1@@28) o_2@@168 f_4@@168) (select (|PolymorphicMapType_13674_7937_2246#PolymorphicMapType_13674| SummandMask2@@28) o_2@@168 f_4@@168))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (select (|PolymorphicMapType_13674_7937_2246#PolymorphicMapType_13674| ResultMask@@28) o_2@@168 f_4@@168))
 :pattern ( (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (select (|PolymorphicMapType_13674_7937_2246#PolymorphicMapType_13674| SummandMask1@@28) o_2@@168 f_4@@168))
 :pattern ( (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (select (|PolymorphicMapType_13674_7937_2246#PolymorphicMapType_13674| SummandMask2@@28) o_2@@168 f_4@@168))
)))
(assert (forall ((ResultMask@@29 T@PolymorphicMapType_13674) (SummandMask1@@29 T@PolymorphicMapType_13674) (SummandMask2@@29 T@PolymorphicMapType_13674) (o_2@@169 T@Ref) (f_4@@169 T@Field_13713_17055) ) (!  (=> (sumMask ResultMask@@29 SummandMask1@@29 SummandMask2@@29) (= (select (|PolymorphicMapType_13674_7928_78132#PolymorphicMapType_13674| ResultMask@@29) o_2@@169 f_4@@169) (+ (select (|PolymorphicMapType_13674_7928_78132#PolymorphicMapType_13674| SummandMask1@@29) o_2@@169 f_4@@169) (select (|PolymorphicMapType_13674_7928_78132#PolymorphicMapType_13674| SummandMask2@@29) o_2@@169 f_4@@169))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@29 SummandMask1@@29 SummandMask2@@29) (select (|PolymorphicMapType_13674_7928_78132#PolymorphicMapType_13674| ResultMask@@29) o_2@@169 f_4@@169))
 :pattern ( (sumMask ResultMask@@29 SummandMask1@@29 SummandMask2@@29) (select (|PolymorphicMapType_13674_7928_78132#PolymorphicMapType_13674| SummandMask1@@29) o_2@@169 f_4@@169))
 :pattern ( (sumMask ResultMask@@29 SummandMask1@@29 SummandMask2@@29) (select (|PolymorphicMapType_13674_7928_78132#PolymorphicMapType_13674| SummandMask2@@29) o_2@@169 f_4@@169))
)))
(assert (forall ((ResultMask@@30 T@PolymorphicMapType_13674) (SummandMask1@@30 T@PolymorphicMapType_13674) (SummandMask2@@30 T@PolymorphicMapType_13674) (o_2@@170 T@Ref) (f_4@@170 T@Field_13726_13727) ) (!  (=> (sumMask ResultMask@@30 SummandMask1@@30 SummandMask2@@30) (= (select (|PolymorphicMapType_13674_7928_13727#PolymorphicMapType_13674| ResultMask@@30) o_2@@170 f_4@@170) (+ (select (|PolymorphicMapType_13674_7928_13727#PolymorphicMapType_13674| SummandMask1@@30) o_2@@170 f_4@@170) (select (|PolymorphicMapType_13674_7928_13727#PolymorphicMapType_13674| SummandMask2@@30) o_2@@170 f_4@@170))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@30 SummandMask1@@30 SummandMask2@@30) (select (|PolymorphicMapType_13674_7928_13727#PolymorphicMapType_13674| ResultMask@@30) o_2@@170 f_4@@170))
 :pattern ( (sumMask ResultMask@@30 SummandMask1@@30 SummandMask2@@30) (select (|PolymorphicMapType_13674_7928_13727#PolymorphicMapType_13674| SummandMask1@@30) o_2@@170 f_4@@170))
 :pattern ( (sumMask ResultMask@@30 SummandMask1@@30 SummandMask2@@30) (select (|PolymorphicMapType_13674_7928_13727#PolymorphicMapType_13674| SummandMask2@@30) o_2@@170 f_4@@170))
)))
(assert (forall ((ResultMask@@31 T@PolymorphicMapType_13674) (SummandMask1@@31 T@PolymorphicMapType_13674) (SummandMask2@@31 T@PolymorphicMapType_13674) (o_2@@171 T@Ref) (f_4@@171 T@Field_13713_53) ) (!  (=> (sumMask ResultMask@@31 SummandMask1@@31 SummandMask2@@31) (= (select (|PolymorphicMapType_13674_7928_53#PolymorphicMapType_13674| ResultMask@@31) o_2@@171 f_4@@171) (+ (select (|PolymorphicMapType_13674_7928_53#PolymorphicMapType_13674| SummandMask1@@31) o_2@@171 f_4@@171) (select (|PolymorphicMapType_13674_7928_53#PolymorphicMapType_13674| SummandMask2@@31) o_2@@171 f_4@@171))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@31 SummandMask1@@31 SummandMask2@@31) (select (|PolymorphicMapType_13674_7928_53#PolymorphicMapType_13674| ResultMask@@31) o_2@@171 f_4@@171))
 :pattern ( (sumMask ResultMask@@31 SummandMask1@@31 SummandMask2@@31) (select (|PolymorphicMapType_13674_7928_53#PolymorphicMapType_13674| SummandMask1@@31) o_2@@171 f_4@@171))
 :pattern ( (sumMask ResultMask@@31 SummandMask1@@31 SummandMask2@@31) (select (|PolymorphicMapType_13674_7928_53#PolymorphicMapType_13674| SummandMask2@@31) o_2@@171 f_4@@171))
)))
(assert (forall ((ResultMask@@32 T@PolymorphicMapType_13674) (SummandMask1@@32 T@PolymorphicMapType_13674) (SummandMask2@@32 T@PolymorphicMapType_13674) (o_2@@172 T@Ref) (f_4@@172 T@Field_13713_7938) ) (!  (=> (sumMask ResultMask@@32 SummandMask1@@32 SummandMask2@@32) (= (select (|PolymorphicMapType_13674_7928_7938#PolymorphicMapType_13674| ResultMask@@32) o_2@@172 f_4@@172) (+ (select (|PolymorphicMapType_13674_7928_7938#PolymorphicMapType_13674| SummandMask1@@32) o_2@@172 f_4@@172) (select (|PolymorphicMapType_13674_7928_7938#PolymorphicMapType_13674| SummandMask2@@32) o_2@@172 f_4@@172))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@32 SummandMask1@@32 SummandMask2@@32) (select (|PolymorphicMapType_13674_7928_7938#PolymorphicMapType_13674| ResultMask@@32) o_2@@172 f_4@@172))
 :pattern ( (sumMask ResultMask@@32 SummandMask1@@32 SummandMask2@@32) (select (|PolymorphicMapType_13674_7928_7938#PolymorphicMapType_13674| SummandMask1@@32) o_2@@172 f_4@@172))
 :pattern ( (sumMask ResultMask@@32 SummandMask1@@32 SummandMask2@@32) (select (|PolymorphicMapType_13674_7928_7938#PolymorphicMapType_13674| SummandMask2@@32) o_2@@172 f_4@@172))
)))
(assert (forall ((ResultMask@@33 T@PolymorphicMapType_13674) (SummandMask1@@33 T@PolymorphicMapType_13674) (SummandMask2@@33 T@PolymorphicMapType_13674) (o_2@@173 T@Ref) (f_4@@173 T@Field_19293_2246) ) (!  (=> (sumMask ResultMask@@33 SummandMask1@@33 SummandMask2@@33) (= (select (|PolymorphicMapType_13674_7928_2246#PolymorphicMapType_13674| ResultMask@@33) o_2@@173 f_4@@173) (+ (select (|PolymorphicMapType_13674_7928_2246#PolymorphicMapType_13674| SummandMask1@@33) o_2@@173 f_4@@173) (select (|PolymorphicMapType_13674_7928_2246#PolymorphicMapType_13674| SummandMask2@@33) o_2@@173 f_4@@173))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@33 SummandMask1@@33 SummandMask2@@33) (select (|PolymorphicMapType_13674_7928_2246#PolymorphicMapType_13674| ResultMask@@33) o_2@@173 f_4@@173))
 :pattern ( (sumMask ResultMask@@33 SummandMask1@@33 SummandMask2@@33) (select (|PolymorphicMapType_13674_7928_2246#PolymorphicMapType_13674| SummandMask1@@33) o_2@@173 f_4@@173))
 :pattern ( (sumMask ResultMask@@33 SummandMask1@@33 SummandMask2@@33) (select (|PolymorphicMapType_13674_7928_2246#PolymorphicMapType_13674| SummandMask2@@33) o_2@@173 f_4@@173))
)))
(assert (forall ((arg1@@23 Bool) (arg2@@23 Bool) (arg1_2@@1 Bool) (arg2_2@@1 Bool) ) (!  (=> (= (wand arg1@@23 arg2@@23) (wand arg1_2@@1 arg2_2@@1)) (and (= arg1@@23 arg1_2@@1) (= arg2@@23 arg2_2@@1)))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand arg1@@23 arg2@@23) (wand arg1_2@@1 arg2_2@@1))
)))
(assert (forall ((arg1@@24 Bool) (arg2@@24 Bool) ) (! (= (getPredWandId_7797_1195 (wand arg1@@24 arg2@@24)) 2)
 :qid |stdinbpl.204:15|
 :skolemid |27|
 :pattern ( (wand arg1@@24 arg2@@24))
)))
(assert (forall ((x@@7 T@Ref) ) (! (= (getPredWandId_7937_7938 (P x@@7)) 0)
 :qid |stdinbpl.338:15|
 :skolemid |52|
 :pattern ( (P x@@7))
)))
(assert (forall ((x@@8 T@Ref) ) (! (= (getPredWandId_7962_7963 (Q x@@8)) 1)
 :qid |stdinbpl.392:15|
 :skolemid |58|
 :pattern ( (Q x@@8))
)))
(assert (forall ((arg1@@25 Bool) (arg2@@25 Bool) ) (! (= (|wand#sm| arg1@@25 arg2@@25) (WandMaskField_7802 (|wand#ft| arg1@@25 arg2@@25)))
 :qid |stdinbpl.200:15|
 :skolemid |26|
 :pattern ( (WandMaskField_7802 (|wand#ft| arg1@@25 arg2@@25)))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_13653) (o_11 T@Ref) (f_17 T@Field_18680_18681) (v T@FrameType) ) (! (succHeap Heap@@67 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@67) (store (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@67) o_11 f_17 v) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@67)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@67) (store (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@67) o_11 f_17 v) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@67) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@67)))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_13653) (o_11@@0 T@Ref) (f_17@@0 T@Field_18664_18669) (v@@0 T@PolymorphicMapType_14202) ) (! (succHeap Heap@@68 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@68) (store (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@68) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@68)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@68) (store (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@68) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@68) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@68)))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_13653) (o_11@@1 T@Ref) (f_17@@1 T@Field_18651_1941) (v@@1 Int) ) (! (succHeap Heap@@69 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@69) (store (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@69) o_11@@1 f_17@@1 v@@1)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@69) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@69) (store (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@69) o_11@@1 f_17@@1 v@@1)))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_13653) (o_11@@2 T@Ref) (f_17@@2 T@Field_18651_13727) (v@@2 T@Ref) ) (! (succHeap Heap@@70 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@70) (store (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@70) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@70)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@70) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@70) (store (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@70) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@70)))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_13653) (o_11@@3 T@Ref) (f_17@@3 T@Field_18651_53) (v@@3 Bool) ) (! (succHeap Heap@@71 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@71) (store (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@71) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@71)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@71) (store (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@71) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@71) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@71)))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_13653) (o_11@@4 T@Ref) (f_17@@4 T@Field_20346_20347) (v@@4 T@FrameType) ) (! (succHeap Heap@@72 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@72) (store (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@72) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@72)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@72) (store (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@72) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@72) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@72)))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_13653) (o_11@@5 T@Ref) (f_17@@5 T@Field_20359_20364) (v@@5 T@PolymorphicMapType_14202) ) (! (succHeap Heap@@73 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@73) (store (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@73) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@73)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@73) (store (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@73) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@73) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@73)))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_13653) (o_11@@6 T@Ref) (f_17@@6 T@Field_7962_1195) (v@@6 Int) ) (! (succHeap Heap@@74 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@74) (store (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@74) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@74)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@74) (store (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@74) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@74) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@74)))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_13653) (o_11@@7 T@Ref) (f_17@@7 T@Field_7962_13727) (v@@7 T@Ref) ) (! (succHeap Heap@@75 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@75) (store (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@75) o_11@@7 f_17@@7 v@@7) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@75)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@75) (store (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@75) o_11@@7 f_17@@7 v@@7) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@75) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@75)))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_13653) (o_11@@8 T@Ref) (f_17@@8 T@Field_7962_53) (v@@8 Bool) ) (! (succHeap Heap@@76 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@76) (store (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@76) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@76)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@76) (store (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@76) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@76) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@76)))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_13653) (o_11@@9 T@Ref) (f_17@@9 T@Field_18121_18122) (v@@9 T@FrameType) ) (! (succHeap Heap@@77 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@77) (store (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@77) o_11@@9 f_17@@9 v@@9) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@77)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@77) (store (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@77) o_11@@9 f_17@@9 v@@9) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@77) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@77)))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_13653) (o_11@@10 T@Ref) (f_17@@10 T@Field_18106_18111) (v@@10 T@PolymorphicMapType_14202) ) (! (succHeap Heap@@78 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@78) (store (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@78) o_11@@10 f_17@@10 v@@10) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@78)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@78) (store (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@78) o_11@@10 f_17@@10 v@@10) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@78) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@78)))
)))
(assert (forall ((Heap@@79 T@PolymorphicMapType_13653) (o_11@@11 T@Ref) (f_17@@11 T@Field_18094_1672) (v@@11 Int) ) (! (succHeap Heap@@79 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@79) (store (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@79) o_11@@11 f_17@@11 v@@11) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@79)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@79) (store (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@79) o_11@@11 f_17@@11 v@@11) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@79) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@79)))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_13653) (o_11@@12 T@Ref) (f_17@@12 T@Field_18094_13727) (v@@12 T@Ref) ) (! (succHeap Heap@@80 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@80) (store (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@80) o_11@@12 f_17@@12 v@@12) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@80)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@80) (store (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@80) o_11@@12 f_17@@12 v@@12) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@80) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@80)))
)))
(assert (forall ((Heap@@81 T@PolymorphicMapType_13653) (o_11@@13 T@Ref) (f_17@@13 T@Field_18094_53) (v@@13 Bool) ) (! (succHeap Heap@@81 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@81) (store (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@81) o_11@@13 f_17@@13 v@@13) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@81)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@81) (store (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@81) o_11@@13 f_17@@13 v@@13) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@81) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@81)))
)))
(assert (forall ((Heap@@82 T@PolymorphicMapType_13653) (o_11@@14 T@Ref) (f_17@@14 T@Field_17538_17539) (v@@14 T@FrameType) ) (! (succHeap Heap@@82 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@82) (store (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@82) o_11@@14 f_17@@14 v@@14) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@82)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@82) (store (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@82) o_11@@14 f_17@@14 v@@14) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@82) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@82)))
)))
(assert (forall ((Heap@@83 T@PolymorphicMapType_13653) (o_11@@15 T@Ref) (f_17@@15 T@Field_17522_17527) (v@@15 T@PolymorphicMapType_14202) ) (! (succHeap Heap@@83 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@83) (store (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@83) o_11@@15 f_17@@15 v@@15) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@83)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@83) (store (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@83) o_11@@15 f_17@@15 v@@15) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@83) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@83)))
)))
(assert (forall ((Heap@@84 T@PolymorphicMapType_13653) (o_11@@16 T@Ref) (f_17@@16 T@Field_17509_1407) (v@@16 Int) ) (! (succHeap Heap@@84 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@84) (store (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@84) o_11@@16 f_17@@16 v@@16) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@84)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@84) (store (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@84) o_11@@16 f_17@@16 v@@16) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@84) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@84)))
)))
(assert (forall ((Heap@@85 T@PolymorphicMapType_13653) (o_11@@17 T@Ref) (f_17@@17 T@Field_17509_13727) (v@@17 T@Ref) ) (! (succHeap Heap@@85 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@85) (store (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@85) o_11@@17 f_17@@17 v@@17) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@85)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@85) (store (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@85) o_11@@17 f_17@@17 v@@17) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@85) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@85)))
)))
(assert (forall ((Heap@@86 T@PolymorphicMapType_13653) (o_11@@18 T@Ref) (f_17@@18 T@Field_17509_53) (v@@18 Bool) ) (! (succHeap Heap@@86 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@86) (store (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@86) o_11@@18 f_17@@18 v@@18) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@86)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@86) (store (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@86) o_11@@18 f_17@@18 v@@18) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@86) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@86)))
)))
(assert (forall ((Heap@@87 T@PolymorphicMapType_13653) (o_11@@19 T@Ref) (f_17@@19 T@Field_19426_19427) (v@@19 T@FrameType) ) (! (succHeap Heap@@87 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@87) (store (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@87) o_11@@19 f_17@@19 v@@19) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@87)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@87) (store (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@87) o_11@@19 f_17@@19 v@@19) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@87) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@87)))
)))
(assert (forall ((Heap@@88 T@PolymorphicMapType_13653) (o_11@@20 T@Ref) (f_17@@20 T@Field_19439_19444) (v@@20 T@PolymorphicMapType_14202) ) (! (succHeap Heap@@88 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@88) (store (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@88) o_11@@20 f_17@@20 v@@20) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@88)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@88) (store (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@88) o_11@@20 f_17@@20 v@@20) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@88) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@88)))
)))
(assert (forall ((Heap@@89 T@PolymorphicMapType_13653) (o_11@@21 T@Ref) (f_17@@21 T@Field_7937_1195) (v@@21 Int) ) (! (succHeap Heap@@89 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@89) (store (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@89) o_11@@21 f_17@@21 v@@21) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@89)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@89) (store (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@89) o_11@@21 f_17@@21 v@@21) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@89) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@89)))
)))
(assert (forall ((Heap@@90 T@PolymorphicMapType_13653) (o_11@@22 T@Ref) (f_17@@22 T@Field_7937_13727) (v@@22 T@Ref) ) (! (succHeap Heap@@90 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@90) (store (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@90) o_11@@22 f_17@@22 v@@22) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@90)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@90) (store (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@90) o_11@@22 f_17@@22 v@@22) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@90) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@90)))
)))
(assert (forall ((Heap@@91 T@PolymorphicMapType_13653) (o_11@@23 T@Ref) (f_17@@23 T@Field_7937_53) (v@@23 Bool) ) (! (succHeap Heap@@91 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@91) (store (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@91) o_11@@23 f_17@@23 v@@23) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@91)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@91) (store (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@91) o_11@@23 f_17@@23 v@@23) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@91) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@91)))
)))
(assert (forall ((Heap@@92 T@PolymorphicMapType_13653) (o_11@@24 T@Ref) (f_17@@24 T@Field_17064_17065) (v@@24 T@FrameType) ) (! (succHeap Heap@@92 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@92) (store (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@92) o_11@@24 f_17@@24 v@@24) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@92)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@92) (store (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@92) o_11@@24 f_17@@24 v@@24) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@92) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@92)))
)))
(assert (forall ((Heap@@93 T@PolymorphicMapType_13653) (o_11@@25 T@Ref) (f_17@@25 T@Field_17050_17055) (v@@25 T@PolymorphicMapType_14202) ) (! (succHeap Heap@@93 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@93) (store (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@93) o_11@@25 f_17@@25 v@@25) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@93)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@93) (store (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@93) o_11@@25 f_17@@25 v@@25) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@93) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@93)))
)))
(assert (forall ((Heap@@94 T@PolymorphicMapType_13653) (o_11@@26 T@Ref) (f_17@@26 T@Field_17039_1195) (v@@26 Int) ) (! (succHeap Heap@@94 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@94) (store (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@94) o_11@@26 f_17@@26 v@@26) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@94)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@94) (store (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@94) o_11@@26 f_17@@26 v@@26) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@94) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@94)))
)))
(assert (forall ((Heap@@95 T@PolymorphicMapType_13653) (o_11@@27 T@Ref) (f_17@@27 T@Field_17039_13727) (v@@27 T@Ref) ) (! (succHeap Heap@@95 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@95) (store (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@95) o_11@@27 f_17@@27 v@@27) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@95)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@95) (store (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@95) o_11@@27 f_17@@27 v@@27) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@95) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@95)))
)))
(assert (forall ((Heap@@96 T@PolymorphicMapType_13653) (o_11@@28 T@Ref) (f_17@@28 T@Field_17039_53) (v@@28 Bool) ) (! (succHeap Heap@@96 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@96) (store (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@96) o_11@@28 f_17@@28 v@@28) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@96)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@96) (store (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@96) o_11@@28 f_17@@28 v@@28) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@96) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@96)))
)))
(assert (forall ((Heap@@97 T@PolymorphicMapType_13653) (o_11@@29 T@Ref) (f_17@@29 T@Field_13713_7938) (v@@29 T@FrameType) ) (! (succHeap Heap@@97 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@97) (store (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@97) o_11@@29 f_17@@29 v@@29) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@97)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@97) (store (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@97) o_11@@29 f_17@@29 v@@29) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@97) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@97)))
)))
(assert (forall ((Heap@@98 T@PolymorphicMapType_13653) (o_11@@30 T@Ref) (f_17@@30 T@Field_13713_17055) (v@@30 T@PolymorphicMapType_14202) ) (! (succHeap Heap@@98 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@98) (store (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@98) o_11@@30 f_17@@30 v@@30) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@98)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@98) (store (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@98) o_11@@30 f_17@@30 v@@30) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@98) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@98)))
)))
(assert (forall ((Heap@@99 T@PolymorphicMapType_13653) (o_11@@31 T@Ref) (f_17@@31 T@Field_19293_2246) (v@@31 Int) ) (! (succHeap Heap@@99 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@99) (store (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@99) o_11@@31 f_17@@31 v@@31) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@99)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@99) (store (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@99) o_11@@31 f_17@@31 v@@31) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@99) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@99)))
)))
(assert (forall ((Heap@@100 T@PolymorphicMapType_13653) (o_11@@32 T@Ref) (f_17@@32 T@Field_13726_13727) (v@@32 T@Ref) ) (! (succHeap Heap@@100 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@100) (store (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@100) o_11@@32 f_17@@32 v@@32) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@100)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@100) (store (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@100) o_11@@32 f_17@@32 v@@32) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@100) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@100)))
)))
(assert (forall ((Heap@@101 T@PolymorphicMapType_13653) (o_11@@33 T@Ref) (f_17@@33 T@Field_13713_53) (v@@33 Bool) ) (! (succHeap Heap@@101 (PolymorphicMapType_13653 (store (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@101) o_11@@33 f_17@@33 v@@33) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@101)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13653 (store (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@101) o_11@@33 f_17@@33 v@@33) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@101) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@101)))
)))
(assert (forall ((x@@9 T@Ref) ) (! (= (PredicateMaskField_7937 (P x@@9)) (|P#sm| x@@9))
 :qid |stdinbpl.330:15|
 :skolemid |50|
 :pattern ( (PredicateMaskField_7937 (P x@@9)))
)))
(assert (forall ((x@@10 T@Ref) ) (! (= (PredicateMaskField_7962 (Q x@@10)) (|Q#sm| x@@10))
 :qid |stdinbpl.384:15|
 :skolemid |56|
 :pattern ( (PredicateMaskField_7962 (Q x@@10)))
)))
(assert (forall ((o_11@@34 T@Ref) (f_10 T@Field_13726_13727) (Heap@@102 T@PolymorphicMapType_13653) ) (!  (=> (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@102) o_11@@34 $allocated) (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@102) (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@102) o_11@@34 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@102) o_11@@34 f_10))
)))
(assert (forall ((p@@7 T@Field_20346_20347) (v_1@@6 T@FrameType) (q T@Field_20346_20347) (w@@6 T@FrameType) (r T@Field_20346_20347) (u T@FrameType) ) (!  (=> (and (InsidePredicate_20346_20346 p@@7 v_1@@6 q w@@6) (InsidePredicate_20346_20346 q w@@6 r u)) (InsidePredicate_20346_20346 p@@7 v_1@@6 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_20346 p@@7 v_1@@6 q w@@6) (InsidePredicate_20346_20346 q w@@6 r u))
)))
(assert (forall ((p@@8 T@Field_20346_20347) (v_1@@7 T@FrameType) (q@@0 T@Field_20346_20347) (w@@7 T@FrameType) (r@@0 T@Field_19426_19427) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_20346 p@@8 v_1@@7 q@@0 w@@7) (InsidePredicate_20346_19426 q@@0 w@@7 r@@0 u@@0)) (InsidePredicate_20346_19426 p@@8 v_1@@7 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_20346 p@@8 v_1@@7 q@@0 w@@7) (InsidePredicate_20346_19426 q@@0 w@@7 r@@0 u@@0))
)))
(assert (forall ((p@@9 T@Field_20346_20347) (v_1@@8 T@FrameType) (q@@1 T@Field_20346_20347) (w@@8 T@FrameType) (r@@1 T@Field_18680_18681) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_20346 p@@9 v_1@@8 q@@1 w@@8) (InsidePredicate_20346_18651 q@@1 w@@8 r@@1 u@@1)) (InsidePredicate_20346_18651 p@@9 v_1@@8 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_20346 p@@9 v_1@@8 q@@1 w@@8) (InsidePredicate_20346_18651 q@@1 w@@8 r@@1 u@@1))
)))
(assert (forall ((p@@10 T@Field_20346_20347) (v_1@@9 T@FrameType) (q@@2 T@Field_20346_20347) (w@@9 T@FrameType) (r@@2 T@Field_18121_18122) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_20346 p@@10 v_1@@9 q@@2 w@@9) (InsidePredicate_20346_18094 q@@2 w@@9 r@@2 u@@2)) (InsidePredicate_20346_18094 p@@10 v_1@@9 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_20346 p@@10 v_1@@9 q@@2 w@@9) (InsidePredicate_20346_18094 q@@2 w@@9 r@@2 u@@2))
)))
(assert (forall ((p@@11 T@Field_20346_20347) (v_1@@10 T@FrameType) (q@@3 T@Field_20346_20347) (w@@10 T@FrameType) (r@@3 T@Field_17538_17539) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_20346 p@@11 v_1@@10 q@@3 w@@10) (InsidePredicate_20346_17509 q@@3 w@@10 r@@3 u@@3)) (InsidePredicate_20346_17509 p@@11 v_1@@10 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_20346 p@@11 v_1@@10 q@@3 w@@10) (InsidePredicate_20346_17509 q@@3 w@@10 r@@3 u@@3))
)))
(assert (forall ((p@@12 T@Field_20346_20347) (v_1@@11 T@FrameType) (q@@4 T@Field_20346_20347) (w@@11 T@FrameType) (r@@4 T@Field_17064_17065) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_20346 p@@12 v_1@@11 q@@4 w@@11) (InsidePredicate_20346_17039 q@@4 w@@11 r@@4 u@@4)) (InsidePredicate_20346_17039 p@@12 v_1@@11 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_20346 p@@12 v_1@@11 q@@4 w@@11) (InsidePredicate_20346_17039 q@@4 w@@11 r@@4 u@@4))
)))
(assert (forall ((p@@13 T@Field_20346_20347) (v_1@@12 T@FrameType) (q@@5 T@Field_20346_20347) (w@@12 T@FrameType) (r@@5 T@Field_13713_7938) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_20346 p@@13 v_1@@12 q@@5 w@@12) (InsidePredicate_20346_13713 q@@5 w@@12 r@@5 u@@5)) (InsidePredicate_20346_13713 p@@13 v_1@@12 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_20346 p@@13 v_1@@12 q@@5 w@@12) (InsidePredicate_20346_13713 q@@5 w@@12 r@@5 u@@5))
)))
(assert (forall ((p@@14 T@Field_20346_20347) (v_1@@13 T@FrameType) (q@@6 T@Field_19426_19427) (w@@13 T@FrameType) (r@@6 T@Field_20346_20347) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_19426 p@@14 v_1@@13 q@@6 w@@13) (InsidePredicate_19426_20346 q@@6 w@@13 r@@6 u@@6)) (InsidePredicate_20346_20346 p@@14 v_1@@13 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_19426 p@@14 v_1@@13 q@@6 w@@13) (InsidePredicate_19426_20346 q@@6 w@@13 r@@6 u@@6))
)))
(assert (forall ((p@@15 T@Field_20346_20347) (v_1@@14 T@FrameType) (q@@7 T@Field_19426_19427) (w@@14 T@FrameType) (r@@7 T@Field_19426_19427) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_19426 p@@15 v_1@@14 q@@7 w@@14) (InsidePredicate_19426_19426 q@@7 w@@14 r@@7 u@@7)) (InsidePredicate_20346_19426 p@@15 v_1@@14 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_19426 p@@15 v_1@@14 q@@7 w@@14) (InsidePredicate_19426_19426 q@@7 w@@14 r@@7 u@@7))
)))
(assert (forall ((p@@16 T@Field_20346_20347) (v_1@@15 T@FrameType) (q@@8 T@Field_19426_19427) (w@@15 T@FrameType) (r@@8 T@Field_18680_18681) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_19426 p@@16 v_1@@15 q@@8 w@@15) (InsidePredicate_19426_18651 q@@8 w@@15 r@@8 u@@8)) (InsidePredicate_20346_18651 p@@16 v_1@@15 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_19426 p@@16 v_1@@15 q@@8 w@@15) (InsidePredicate_19426_18651 q@@8 w@@15 r@@8 u@@8))
)))
(assert (forall ((p@@17 T@Field_20346_20347) (v_1@@16 T@FrameType) (q@@9 T@Field_19426_19427) (w@@16 T@FrameType) (r@@9 T@Field_18121_18122) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_19426 p@@17 v_1@@16 q@@9 w@@16) (InsidePredicate_19426_18094 q@@9 w@@16 r@@9 u@@9)) (InsidePredicate_20346_18094 p@@17 v_1@@16 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_19426 p@@17 v_1@@16 q@@9 w@@16) (InsidePredicate_19426_18094 q@@9 w@@16 r@@9 u@@9))
)))
(assert (forall ((p@@18 T@Field_20346_20347) (v_1@@17 T@FrameType) (q@@10 T@Field_19426_19427) (w@@17 T@FrameType) (r@@10 T@Field_17538_17539) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_19426 p@@18 v_1@@17 q@@10 w@@17) (InsidePredicate_19426_17509 q@@10 w@@17 r@@10 u@@10)) (InsidePredicate_20346_17509 p@@18 v_1@@17 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_19426 p@@18 v_1@@17 q@@10 w@@17) (InsidePredicate_19426_17509 q@@10 w@@17 r@@10 u@@10))
)))
(assert (forall ((p@@19 T@Field_20346_20347) (v_1@@18 T@FrameType) (q@@11 T@Field_19426_19427) (w@@18 T@FrameType) (r@@11 T@Field_17064_17065) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_19426 p@@19 v_1@@18 q@@11 w@@18) (InsidePredicate_19426_17039 q@@11 w@@18 r@@11 u@@11)) (InsidePredicate_20346_17039 p@@19 v_1@@18 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_19426 p@@19 v_1@@18 q@@11 w@@18) (InsidePredicate_19426_17039 q@@11 w@@18 r@@11 u@@11))
)))
(assert (forall ((p@@20 T@Field_20346_20347) (v_1@@19 T@FrameType) (q@@12 T@Field_19426_19427) (w@@19 T@FrameType) (r@@12 T@Field_13713_7938) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_19426 p@@20 v_1@@19 q@@12 w@@19) (InsidePredicate_19426_13713 q@@12 w@@19 r@@12 u@@12)) (InsidePredicate_20346_13713 p@@20 v_1@@19 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_19426 p@@20 v_1@@19 q@@12 w@@19) (InsidePredicate_19426_13713 q@@12 w@@19 r@@12 u@@12))
)))
(assert (forall ((p@@21 T@Field_20346_20347) (v_1@@20 T@FrameType) (q@@13 T@Field_18680_18681) (w@@20 T@FrameType) (r@@13 T@Field_20346_20347) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_18651 p@@21 v_1@@20 q@@13 w@@20) (InsidePredicate_18651_20346 q@@13 w@@20 r@@13 u@@13)) (InsidePredicate_20346_20346 p@@21 v_1@@20 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_18651 p@@21 v_1@@20 q@@13 w@@20) (InsidePredicate_18651_20346 q@@13 w@@20 r@@13 u@@13))
)))
(assert (forall ((p@@22 T@Field_20346_20347) (v_1@@21 T@FrameType) (q@@14 T@Field_18680_18681) (w@@21 T@FrameType) (r@@14 T@Field_19426_19427) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_18651 p@@22 v_1@@21 q@@14 w@@21) (InsidePredicate_18651_19426 q@@14 w@@21 r@@14 u@@14)) (InsidePredicate_20346_19426 p@@22 v_1@@21 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_18651 p@@22 v_1@@21 q@@14 w@@21) (InsidePredicate_18651_19426 q@@14 w@@21 r@@14 u@@14))
)))
(assert (forall ((p@@23 T@Field_20346_20347) (v_1@@22 T@FrameType) (q@@15 T@Field_18680_18681) (w@@22 T@FrameType) (r@@15 T@Field_18680_18681) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_18651 p@@23 v_1@@22 q@@15 w@@22) (InsidePredicate_18651_18651 q@@15 w@@22 r@@15 u@@15)) (InsidePredicate_20346_18651 p@@23 v_1@@22 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_18651 p@@23 v_1@@22 q@@15 w@@22) (InsidePredicate_18651_18651 q@@15 w@@22 r@@15 u@@15))
)))
(assert (forall ((p@@24 T@Field_20346_20347) (v_1@@23 T@FrameType) (q@@16 T@Field_18680_18681) (w@@23 T@FrameType) (r@@16 T@Field_18121_18122) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_18651 p@@24 v_1@@23 q@@16 w@@23) (InsidePredicate_18651_18094 q@@16 w@@23 r@@16 u@@16)) (InsidePredicate_20346_18094 p@@24 v_1@@23 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_18651 p@@24 v_1@@23 q@@16 w@@23) (InsidePredicate_18651_18094 q@@16 w@@23 r@@16 u@@16))
)))
(assert (forall ((p@@25 T@Field_20346_20347) (v_1@@24 T@FrameType) (q@@17 T@Field_18680_18681) (w@@24 T@FrameType) (r@@17 T@Field_17538_17539) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_18651 p@@25 v_1@@24 q@@17 w@@24) (InsidePredicate_18651_17509 q@@17 w@@24 r@@17 u@@17)) (InsidePredicate_20346_17509 p@@25 v_1@@24 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_18651 p@@25 v_1@@24 q@@17 w@@24) (InsidePredicate_18651_17509 q@@17 w@@24 r@@17 u@@17))
)))
(assert (forall ((p@@26 T@Field_20346_20347) (v_1@@25 T@FrameType) (q@@18 T@Field_18680_18681) (w@@25 T@FrameType) (r@@18 T@Field_17064_17065) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_18651 p@@26 v_1@@25 q@@18 w@@25) (InsidePredicate_18651_17039 q@@18 w@@25 r@@18 u@@18)) (InsidePredicate_20346_17039 p@@26 v_1@@25 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_18651 p@@26 v_1@@25 q@@18 w@@25) (InsidePredicate_18651_17039 q@@18 w@@25 r@@18 u@@18))
)))
(assert (forall ((p@@27 T@Field_20346_20347) (v_1@@26 T@FrameType) (q@@19 T@Field_18680_18681) (w@@26 T@FrameType) (r@@19 T@Field_13713_7938) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_18651 p@@27 v_1@@26 q@@19 w@@26) (InsidePredicate_18651_13713 q@@19 w@@26 r@@19 u@@19)) (InsidePredicate_20346_13713 p@@27 v_1@@26 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_18651 p@@27 v_1@@26 q@@19 w@@26) (InsidePredicate_18651_13713 q@@19 w@@26 r@@19 u@@19))
)))
(assert (forall ((p@@28 T@Field_20346_20347) (v_1@@27 T@FrameType) (q@@20 T@Field_18121_18122) (w@@27 T@FrameType) (r@@20 T@Field_20346_20347) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_18094 p@@28 v_1@@27 q@@20 w@@27) (InsidePredicate_18094_20346 q@@20 w@@27 r@@20 u@@20)) (InsidePredicate_20346_20346 p@@28 v_1@@27 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_18094 p@@28 v_1@@27 q@@20 w@@27) (InsidePredicate_18094_20346 q@@20 w@@27 r@@20 u@@20))
)))
(assert (forall ((p@@29 T@Field_20346_20347) (v_1@@28 T@FrameType) (q@@21 T@Field_18121_18122) (w@@28 T@FrameType) (r@@21 T@Field_19426_19427) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_18094 p@@29 v_1@@28 q@@21 w@@28) (InsidePredicate_18094_19426 q@@21 w@@28 r@@21 u@@21)) (InsidePredicate_20346_19426 p@@29 v_1@@28 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_18094 p@@29 v_1@@28 q@@21 w@@28) (InsidePredicate_18094_19426 q@@21 w@@28 r@@21 u@@21))
)))
(assert (forall ((p@@30 T@Field_20346_20347) (v_1@@29 T@FrameType) (q@@22 T@Field_18121_18122) (w@@29 T@FrameType) (r@@22 T@Field_18680_18681) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_18094 p@@30 v_1@@29 q@@22 w@@29) (InsidePredicate_18094_18651 q@@22 w@@29 r@@22 u@@22)) (InsidePredicate_20346_18651 p@@30 v_1@@29 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_18094 p@@30 v_1@@29 q@@22 w@@29) (InsidePredicate_18094_18651 q@@22 w@@29 r@@22 u@@22))
)))
(assert (forall ((p@@31 T@Field_20346_20347) (v_1@@30 T@FrameType) (q@@23 T@Field_18121_18122) (w@@30 T@FrameType) (r@@23 T@Field_18121_18122) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_18094 p@@31 v_1@@30 q@@23 w@@30) (InsidePredicate_18094_18094 q@@23 w@@30 r@@23 u@@23)) (InsidePredicate_20346_18094 p@@31 v_1@@30 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_18094 p@@31 v_1@@30 q@@23 w@@30) (InsidePredicate_18094_18094 q@@23 w@@30 r@@23 u@@23))
)))
(assert (forall ((p@@32 T@Field_20346_20347) (v_1@@31 T@FrameType) (q@@24 T@Field_18121_18122) (w@@31 T@FrameType) (r@@24 T@Field_17538_17539) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_18094 p@@32 v_1@@31 q@@24 w@@31) (InsidePredicate_18094_17509 q@@24 w@@31 r@@24 u@@24)) (InsidePredicate_20346_17509 p@@32 v_1@@31 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_18094 p@@32 v_1@@31 q@@24 w@@31) (InsidePredicate_18094_17509 q@@24 w@@31 r@@24 u@@24))
)))
(assert (forall ((p@@33 T@Field_20346_20347) (v_1@@32 T@FrameType) (q@@25 T@Field_18121_18122) (w@@32 T@FrameType) (r@@25 T@Field_17064_17065) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_18094 p@@33 v_1@@32 q@@25 w@@32) (InsidePredicate_18094_17039 q@@25 w@@32 r@@25 u@@25)) (InsidePredicate_20346_17039 p@@33 v_1@@32 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_18094 p@@33 v_1@@32 q@@25 w@@32) (InsidePredicate_18094_17039 q@@25 w@@32 r@@25 u@@25))
)))
(assert (forall ((p@@34 T@Field_20346_20347) (v_1@@33 T@FrameType) (q@@26 T@Field_18121_18122) (w@@33 T@FrameType) (r@@26 T@Field_13713_7938) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_18094 p@@34 v_1@@33 q@@26 w@@33) (InsidePredicate_18094_13713 q@@26 w@@33 r@@26 u@@26)) (InsidePredicate_20346_13713 p@@34 v_1@@33 r@@26 u@@26))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_18094 p@@34 v_1@@33 q@@26 w@@33) (InsidePredicate_18094_13713 q@@26 w@@33 r@@26 u@@26))
)))
(assert (forall ((p@@35 T@Field_20346_20347) (v_1@@34 T@FrameType) (q@@27 T@Field_17538_17539) (w@@34 T@FrameType) (r@@27 T@Field_20346_20347) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_17509 p@@35 v_1@@34 q@@27 w@@34) (InsidePredicate_17509_20346 q@@27 w@@34 r@@27 u@@27)) (InsidePredicate_20346_20346 p@@35 v_1@@34 r@@27 u@@27))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_17509 p@@35 v_1@@34 q@@27 w@@34) (InsidePredicate_17509_20346 q@@27 w@@34 r@@27 u@@27))
)))
(assert (forall ((p@@36 T@Field_20346_20347) (v_1@@35 T@FrameType) (q@@28 T@Field_17538_17539) (w@@35 T@FrameType) (r@@28 T@Field_19426_19427) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_17509 p@@36 v_1@@35 q@@28 w@@35) (InsidePredicate_17509_19426 q@@28 w@@35 r@@28 u@@28)) (InsidePredicate_20346_19426 p@@36 v_1@@35 r@@28 u@@28))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_17509 p@@36 v_1@@35 q@@28 w@@35) (InsidePredicate_17509_19426 q@@28 w@@35 r@@28 u@@28))
)))
(assert (forall ((p@@37 T@Field_20346_20347) (v_1@@36 T@FrameType) (q@@29 T@Field_17538_17539) (w@@36 T@FrameType) (r@@29 T@Field_18680_18681) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_17509 p@@37 v_1@@36 q@@29 w@@36) (InsidePredicate_17509_18651 q@@29 w@@36 r@@29 u@@29)) (InsidePredicate_20346_18651 p@@37 v_1@@36 r@@29 u@@29))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_17509 p@@37 v_1@@36 q@@29 w@@36) (InsidePredicate_17509_18651 q@@29 w@@36 r@@29 u@@29))
)))
(assert (forall ((p@@38 T@Field_20346_20347) (v_1@@37 T@FrameType) (q@@30 T@Field_17538_17539) (w@@37 T@FrameType) (r@@30 T@Field_18121_18122) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_17509 p@@38 v_1@@37 q@@30 w@@37) (InsidePredicate_17509_18094 q@@30 w@@37 r@@30 u@@30)) (InsidePredicate_20346_18094 p@@38 v_1@@37 r@@30 u@@30))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_17509 p@@38 v_1@@37 q@@30 w@@37) (InsidePredicate_17509_18094 q@@30 w@@37 r@@30 u@@30))
)))
(assert (forall ((p@@39 T@Field_20346_20347) (v_1@@38 T@FrameType) (q@@31 T@Field_17538_17539) (w@@38 T@FrameType) (r@@31 T@Field_17538_17539) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_17509 p@@39 v_1@@38 q@@31 w@@38) (InsidePredicate_17509_17509 q@@31 w@@38 r@@31 u@@31)) (InsidePredicate_20346_17509 p@@39 v_1@@38 r@@31 u@@31))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_17509 p@@39 v_1@@38 q@@31 w@@38) (InsidePredicate_17509_17509 q@@31 w@@38 r@@31 u@@31))
)))
(assert (forall ((p@@40 T@Field_20346_20347) (v_1@@39 T@FrameType) (q@@32 T@Field_17538_17539) (w@@39 T@FrameType) (r@@32 T@Field_17064_17065) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_17509 p@@40 v_1@@39 q@@32 w@@39) (InsidePredicate_17509_17039 q@@32 w@@39 r@@32 u@@32)) (InsidePredicate_20346_17039 p@@40 v_1@@39 r@@32 u@@32))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_17509 p@@40 v_1@@39 q@@32 w@@39) (InsidePredicate_17509_17039 q@@32 w@@39 r@@32 u@@32))
)))
(assert (forall ((p@@41 T@Field_20346_20347) (v_1@@40 T@FrameType) (q@@33 T@Field_17538_17539) (w@@40 T@FrameType) (r@@33 T@Field_13713_7938) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_17509 p@@41 v_1@@40 q@@33 w@@40) (InsidePredicate_17509_13713 q@@33 w@@40 r@@33 u@@33)) (InsidePredicate_20346_13713 p@@41 v_1@@40 r@@33 u@@33))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_17509 p@@41 v_1@@40 q@@33 w@@40) (InsidePredicate_17509_13713 q@@33 w@@40 r@@33 u@@33))
)))
(assert (forall ((p@@42 T@Field_20346_20347) (v_1@@41 T@FrameType) (q@@34 T@Field_17064_17065) (w@@41 T@FrameType) (r@@34 T@Field_20346_20347) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_17039 p@@42 v_1@@41 q@@34 w@@41) (InsidePredicate_17039_20346 q@@34 w@@41 r@@34 u@@34)) (InsidePredicate_20346_20346 p@@42 v_1@@41 r@@34 u@@34))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_17039 p@@42 v_1@@41 q@@34 w@@41) (InsidePredicate_17039_20346 q@@34 w@@41 r@@34 u@@34))
)))
(assert (forall ((p@@43 T@Field_20346_20347) (v_1@@42 T@FrameType) (q@@35 T@Field_17064_17065) (w@@42 T@FrameType) (r@@35 T@Field_19426_19427) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_17039 p@@43 v_1@@42 q@@35 w@@42) (InsidePredicate_17039_19426 q@@35 w@@42 r@@35 u@@35)) (InsidePredicate_20346_19426 p@@43 v_1@@42 r@@35 u@@35))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_17039 p@@43 v_1@@42 q@@35 w@@42) (InsidePredicate_17039_19426 q@@35 w@@42 r@@35 u@@35))
)))
(assert (forall ((p@@44 T@Field_20346_20347) (v_1@@43 T@FrameType) (q@@36 T@Field_17064_17065) (w@@43 T@FrameType) (r@@36 T@Field_18680_18681) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_17039 p@@44 v_1@@43 q@@36 w@@43) (InsidePredicate_17039_18651 q@@36 w@@43 r@@36 u@@36)) (InsidePredicate_20346_18651 p@@44 v_1@@43 r@@36 u@@36))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_17039 p@@44 v_1@@43 q@@36 w@@43) (InsidePredicate_17039_18651 q@@36 w@@43 r@@36 u@@36))
)))
(assert (forall ((p@@45 T@Field_20346_20347) (v_1@@44 T@FrameType) (q@@37 T@Field_17064_17065) (w@@44 T@FrameType) (r@@37 T@Field_18121_18122) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_17039 p@@45 v_1@@44 q@@37 w@@44) (InsidePredicate_17039_18094 q@@37 w@@44 r@@37 u@@37)) (InsidePredicate_20346_18094 p@@45 v_1@@44 r@@37 u@@37))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_17039 p@@45 v_1@@44 q@@37 w@@44) (InsidePredicate_17039_18094 q@@37 w@@44 r@@37 u@@37))
)))
(assert (forall ((p@@46 T@Field_20346_20347) (v_1@@45 T@FrameType) (q@@38 T@Field_17064_17065) (w@@45 T@FrameType) (r@@38 T@Field_17538_17539) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_17039 p@@46 v_1@@45 q@@38 w@@45) (InsidePredicate_17039_17509 q@@38 w@@45 r@@38 u@@38)) (InsidePredicate_20346_17509 p@@46 v_1@@45 r@@38 u@@38))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_17039 p@@46 v_1@@45 q@@38 w@@45) (InsidePredicate_17039_17509 q@@38 w@@45 r@@38 u@@38))
)))
(assert (forall ((p@@47 T@Field_20346_20347) (v_1@@46 T@FrameType) (q@@39 T@Field_17064_17065) (w@@46 T@FrameType) (r@@39 T@Field_17064_17065) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_17039 p@@47 v_1@@46 q@@39 w@@46) (InsidePredicate_17039_17039 q@@39 w@@46 r@@39 u@@39)) (InsidePredicate_20346_17039 p@@47 v_1@@46 r@@39 u@@39))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_17039 p@@47 v_1@@46 q@@39 w@@46) (InsidePredicate_17039_17039 q@@39 w@@46 r@@39 u@@39))
)))
(assert (forall ((p@@48 T@Field_20346_20347) (v_1@@47 T@FrameType) (q@@40 T@Field_17064_17065) (w@@47 T@FrameType) (r@@40 T@Field_13713_7938) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_17039 p@@48 v_1@@47 q@@40 w@@47) (InsidePredicate_17039_13713 q@@40 w@@47 r@@40 u@@40)) (InsidePredicate_20346_13713 p@@48 v_1@@47 r@@40 u@@40))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_17039 p@@48 v_1@@47 q@@40 w@@47) (InsidePredicate_17039_13713 q@@40 w@@47 r@@40 u@@40))
)))
(assert (forall ((p@@49 T@Field_20346_20347) (v_1@@48 T@FrameType) (q@@41 T@Field_13713_7938) (w@@48 T@FrameType) (r@@41 T@Field_20346_20347) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_13713 p@@49 v_1@@48 q@@41 w@@48) (InsidePredicate_13713_20346 q@@41 w@@48 r@@41 u@@41)) (InsidePredicate_20346_20346 p@@49 v_1@@48 r@@41 u@@41))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_13713 p@@49 v_1@@48 q@@41 w@@48) (InsidePredicate_13713_20346 q@@41 w@@48 r@@41 u@@41))
)))
(assert (forall ((p@@50 T@Field_20346_20347) (v_1@@49 T@FrameType) (q@@42 T@Field_13713_7938) (w@@49 T@FrameType) (r@@42 T@Field_19426_19427) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_13713 p@@50 v_1@@49 q@@42 w@@49) (InsidePredicate_13713_19426 q@@42 w@@49 r@@42 u@@42)) (InsidePredicate_20346_19426 p@@50 v_1@@49 r@@42 u@@42))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_13713 p@@50 v_1@@49 q@@42 w@@49) (InsidePredicate_13713_19426 q@@42 w@@49 r@@42 u@@42))
)))
(assert (forall ((p@@51 T@Field_20346_20347) (v_1@@50 T@FrameType) (q@@43 T@Field_13713_7938) (w@@50 T@FrameType) (r@@43 T@Field_18680_18681) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_13713 p@@51 v_1@@50 q@@43 w@@50) (InsidePredicate_13713_18651 q@@43 w@@50 r@@43 u@@43)) (InsidePredicate_20346_18651 p@@51 v_1@@50 r@@43 u@@43))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_13713 p@@51 v_1@@50 q@@43 w@@50) (InsidePredicate_13713_18651 q@@43 w@@50 r@@43 u@@43))
)))
(assert (forall ((p@@52 T@Field_20346_20347) (v_1@@51 T@FrameType) (q@@44 T@Field_13713_7938) (w@@51 T@FrameType) (r@@44 T@Field_18121_18122) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_13713 p@@52 v_1@@51 q@@44 w@@51) (InsidePredicate_13713_18094 q@@44 w@@51 r@@44 u@@44)) (InsidePredicate_20346_18094 p@@52 v_1@@51 r@@44 u@@44))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_13713 p@@52 v_1@@51 q@@44 w@@51) (InsidePredicate_13713_18094 q@@44 w@@51 r@@44 u@@44))
)))
(assert (forall ((p@@53 T@Field_20346_20347) (v_1@@52 T@FrameType) (q@@45 T@Field_13713_7938) (w@@52 T@FrameType) (r@@45 T@Field_17538_17539) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_13713 p@@53 v_1@@52 q@@45 w@@52) (InsidePredicate_13713_17509 q@@45 w@@52 r@@45 u@@45)) (InsidePredicate_20346_17509 p@@53 v_1@@52 r@@45 u@@45))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_13713 p@@53 v_1@@52 q@@45 w@@52) (InsidePredicate_13713_17509 q@@45 w@@52 r@@45 u@@45))
)))
(assert (forall ((p@@54 T@Field_20346_20347) (v_1@@53 T@FrameType) (q@@46 T@Field_13713_7938) (w@@53 T@FrameType) (r@@46 T@Field_17064_17065) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_13713 p@@54 v_1@@53 q@@46 w@@53) (InsidePredicate_13713_17039 q@@46 w@@53 r@@46 u@@46)) (InsidePredicate_20346_17039 p@@54 v_1@@53 r@@46 u@@46))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_13713 p@@54 v_1@@53 q@@46 w@@53) (InsidePredicate_13713_17039 q@@46 w@@53 r@@46 u@@46))
)))
(assert (forall ((p@@55 T@Field_20346_20347) (v_1@@54 T@FrameType) (q@@47 T@Field_13713_7938) (w@@54 T@FrameType) (r@@47 T@Field_13713_7938) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_20346_13713 p@@55 v_1@@54 q@@47 w@@54) (InsidePredicate_13713_13713 q@@47 w@@54 r@@47 u@@47)) (InsidePredicate_20346_13713 p@@55 v_1@@54 r@@47 u@@47))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20346_13713 p@@55 v_1@@54 q@@47 w@@54) (InsidePredicate_13713_13713 q@@47 w@@54 r@@47 u@@47))
)))
(assert (forall ((p@@56 T@Field_19426_19427) (v_1@@55 T@FrameType) (q@@48 T@Field_20346_20347) (w@@55 T@FrameType) (r@@48 T@Field_20346_20347) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_20346 p@@56 v_1@@55 q@@48 w@@55) (InsidePredicate_20346_20346 q@@48 w@@55 r@@48 u@@48)) (InsidePredicate_19426_20346 p@@56 v_1@@55 r@@48 u@@48))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_20346 p@@56 v_1@@55 q@@48 w@@55) (InsidePredicate_20346_20346 q@@48 w@@55 r@@48 u@@48))
)))
(assert (forall ((p@@57 T@Field_19426_19427) (v_1@@56 T@FrameType) (q@@49 T@Field_20346_20347) (w@@56 T@FrameType) (r@@49 T@Field_19426_19427) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_20346 p@@57 v_1@@56 q@@49 w@@56) (InsidePredicate_20346_19426 q@@49 w@@56 r@@49 u@@49)) (InsidePredicate_19426_19426 p@@57 v_1@@56 r@@49 u@@49))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_20346 p@@57 v_1@@56 q@@49 w@@56) (InsidePredicate_20346_19426 q@@49 w@@56 r@@49 u@@49))
)))
(assert (forall ((p@@58 T@Field_19426_19427) (v_1@@57 T@FrameType) (q@@50 T@Field_20346_20347) (w@@57 T@FrameType) (r@@50 T@Field_18680_18681) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_20346 p@@58 v_1@@57 q@@50 w@@57) (InsidePredicate_20346_18651 q@@50 w@@57 r@@50 u@@50)) (InsidePredicate_19426_18651 p@@58 v_1@@57 r@@50 u@@50))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_20346 p@@58 v_1@@57 q@@50 w@@57) (InsidePredicate_20346_18651 q@@50 w@@57 r@@50 u@@50))
)))
(assert (forall ((p@@59 T@Field_19426_19427) (v_1@@58 T@FrameType) (q@@51 T@Field_20346_20347) (w@@58 T@FrameType) (r@@51 T@Field_18121_18122) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_20346 p@@59 v_1@@58 q@@51 w@@58) (InsidePredicate_20346_18094 q@@51 w@@58 r@@51 u@@51)) (InsidePredicate_19426_18094 p@@59 v_1@@58 r@@51 u@@51))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_20346 p@@59 v_1@@58 q@@51 w@@58) (InsidePredicate_20346_18094 q@@51 w@@58 r@@51 u@@51))
)))
(assert (forall ((p@@60 T@Field_19426_19427) (v_1@@59 T@FrameType) (q@@52 T@Field_20346_20347) (w@@59 T@FrameType) (r@@52 T@Field_17538_17539) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_20346 p@@60 v_1@@59 q@@52 w@@59) (InsidePredicate_20346_17509 q@@52 w@@59 r@@52 u@@52)) (InsidePredicate_19426_17509 p@@60 v_1@@59 r@@52 u@@52))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_20346 p@@60 v_1@@59 q@@52 w@@59) (InsidePredicate_20346_17509 q@@52 w@@59 r@@52 u@@52))
)))
(assert (forall ((p@@61 T@Field_19426_19427) (v_1@@60 T@FrameType) (q@@53 T@Field_20346_20347) (w@@60 T@FrameType) (r@@53 T@Field_17064_17065) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_20346 p@@61 v_1@@60 q@@53 w@@60) (InsidePredicate_20346_17039 q@@53 w@@60 r@@53 u@@53)) (InsidePredicate_19426_17039 p@@61 v_1@@60 r@@53 u@@53))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_20346 p@@61 v_1@@60 q@@53 w@@60) (InsidePredicate_20346_17039 q@@53 w@@60 r@@53 u@@53))
)))
(assert (forall ((p@@62 T@Field_19426_19427) (v_1@@61 T@FrameType) (q@@54 T@Field_20346_20347) (w@@61 T@FrameType) (r@@54 T@Field_13713_7938) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_20346 p@@62 v_1@@61 q@@54 w@@61) (InsidePredicate_20346_13713 q@@54 w@@61 r@@54 u@@54)) (InsidePredicate_19426_13713 p@@62 v_1@@61 r@@54 u@@54))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_20346 p@@62 v_1@@61 q@@54 w@@61) (InsidePredicate_20346_13713 q@@54 w@@61 r@@54 u@@54))
)))
(assert (forall ((p@@63 T@Field_19426_19427) (v_1@@62 T@FrameType) (q@@55 T@Field_19426_19427) (w@@62 T@FrameType) (r@@55 T@Field_20346_20347) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_19426 p@@63 v_1@@62 q@@55 w@@62) (InsidePredicate_19426_20346 q@@55 w@@62 r@@55 u@@55)) (InsidePredicate_19426_20346 p@@63 v_1@@62 r@@55 u@@55))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_19426 p@@63 v_1@@62 q@@55 w@@62) (InsidePredicate_19426_20346 q@@55 w@@62 r@@55 u@@55))
)))
(assert (forall ((p@@64 T@Field_19426_19427) (v_1@@63 T@FrameType) (q@@56 T@Field_19426_19427) (w@@63 T@FrameType) (r@@56 T@Field_19426_19427) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_19426 p@@64 v_1@@63 q@@56 w@@63) (InsidePredicate_19426_19426 q@@56 w@@63 r@@56 u@@56)) (InsidePredicate_19426_19426 p@@64 v_1@@63 r@@56 u@@56))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_19426 p@@64 v_1@@63 q@@56 w@@63) (InsidePredicate_19426_19426 q@@56 w@@63 r@@56 u@@56))
)))
(assert (forall ((p@@65 T@Field_19426_19427) (v_1@@64 T@FrameType) (q@@57 T@Field_19426_19427) (w@@64 T@FrameType) (r@@57 T@Field_18680_18681) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_19426 p@@65 v_1@@64 q@@57 w@@64) (InsidePredicate_19426_18651 q@@57 w@@64 r@@57 u@@57)) (InsidePredicate_19426_18651 p@@65 v_1@@64 r@@57 u@@57))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_19426 p@@65 v_1@@64 q@@57 w@@64) (InsidePredicate_19426_18651 q@@57 w@@64 r@@57 u@@57))
)))
(assert (forall ((p@@66 T@Field_19426_19427) (v_1@@65 T@FrameType) (q@@58 T@Field_19426_19427) (w@@65 T@FrameType) (r@@58 T@Field_18121_18122) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_19426 p@@66 v_1@@65 q@@58 w@@65) (InsidePredicate_19426_18094 q@@58 w@@65 r@@58 u@@58)) (InsidePredicate_19426_18094 p@@66 v_1@@65 r@@58 u@@58))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_19426 p@@66 v_1@@65 q@@58 w@@65) (InsidePredicate_19426_18094 q@@58 w@@65 r@@58 u@@58))
)))
(assert (forall ((p@@67 T@Field_19426_19427) (v_1@@66 T@FrameType) (q@@59 T@Field_19426_19427) (w@@66 T@FrameType) (r@@59 T@Field_17538_17539) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_19426 p@@67 v_1@@66 q@@59 w@@66) (InsidePredicate_19426_17509 q@@59 w@@66 r@@59 u@@59)) (InsidePredicate_19426_17509 p@@67 v_1@@66 r@@59 u@@59))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_19426 p@@67 v_1@@66 q@@59 w@@66) (InsidePredicate_19426_17509 q@@59 w@@66 r@@59 u@@59))
)))
(assert (forall ((p@@68 T@Field_19426_19427) (v_1@@67 T@FrameType) (q@@60 T@Field_19426_19427) (w@@67 T@FrameType) (r@@60 T@Field_17064_17065) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_19426 p@@68 v_1@@67 q@@60 w@@67) (InsidePredicate_19426_17039 q@@60 w@@67 r@@60 u@@60)) (InsidePredicate_19426_17039 p@@68 v_1@@67 r@@60 u@@60))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_19426 p@@68 v_1@@67 q@@60 w@@67) (InsidePredicate_19426_17039 q@@60 w@@67 r@@60 u@@60))
)))
(assert (forall ((p@@69 T@Field_19426_19427) (v_1@@68 T@FrameType) (q@@61 T@Field_19426_19427) (w@@68 T@FrameType) (r@@61 T@Field_13713_7938) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_19426 p@@69 v_1@@68 q@@61 w@@68) (InsidePredicate_19426_13713 q@@61 w@@68 r@@61 u@@61)) (InsidePredicate_19426_13713 p@@69 v_1@@68 r@@61 u@@61))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_19426 p@@69 v_1@@68 q@@61 w@@68) (InsidePredicate_19426_13713 q@@61 w@@68 r@@61 u@@61))
)))
(assert (forall ((p@@70 T@Field_19426_19427) (v_1@@69 T@FrameType) (q@@62 T@Field_18680_18681) (w@@69 T@FrameType) (r@@62 T@Field_20346_20347) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_18651 p@@70 v_1@@69 q@@62 w@@69) (InsidePredicate_18651_20346 q@@62 w@@69 r@@62 u@@62)) (InsidePredicate_19426_20346 p@@70 v_1@@69 r@@62 u@@62))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_18651 p@@70 v_1@@69 q@@62 w@@69) (InsidePredicate_18651_20346 q@@62 w@@69 r@@62 u@@62))
)))
(assert (forall ((p@@71 T@Field_19426_19427) (v_1@@70 T@FrameType) (q@@63 T@Field_18680_18681) (w@@70 T@FrameType) (r@@63 T@Field_19426_19427) (u@@63 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_18651 p@@71 v_1@@70 q@@63 w@@70) (InsidePredicate_18651_19426 q@@63 w@@70 r@@63 u@@63)) (InsidePredicate_19426_19426 p@@71 v_1@@70 r@@63 u@@63))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_18651 p@@71 v_1@@70 q@@63 w@@70) (InsidePredicate_18651_19426 q@@63 w@@70 r@@63 u@@63))
)))
(assert (forall ((p@@72 T@Field_19426_19427) (v_1@@71 T@FrameType) (q@@64 T@Field_18680_18681) (w@@71 T@FrameType) (r@@64 T@Field_18680_18681) (u@@64 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_18651 p@@72 v_1@@71 q@@64 w@@71) (InsidePredicate_18651_18651 q@@64 w@@71 r@@64 u@@64)) (InsidePredicate_19426_18651 p@@72 v_1@@71 r@@64 u@@64))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_18651 p@@72 v_1@@71 q@@64 w@@71) (InsidePredicate_18651_18651 q@@64 w@@71 r@@64 u@@64))
)))
(assert (forall ((p@@73 T@Field_19426_19427) (v_1@@72 T@FrameType) (q@@65 T@Field_18680_18681) (w@@72 T@FrameType) (r@@65 T@Field_18121_18122) (u@@65 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_18651 p@@73 v_1@@72 q@@65 w@@72) (InsidePredicate_18651_18094 q@@65 w@@72 r@@65 u@@65)) (InsidePredicate_19426_18094 p@@73 v_1@@72 r@@65 u@@65))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_18651 p@@73 v_1@@72 q@@65 w@@72) (InsidePredicate_18651_18094 q@@65 w@@72 r@@65 u@@65))
)))
(assert (forall ((p@@74 T@Field_19426_19427) (v_1@@73 T@FrameType) (q@@66 T@Field_18680_18681) (w@@73 T@FrameType) (r@@66 T@Field_17538_17539) (u@@66 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_18651 p@@74 v_1@@73 q@@66 w@@73) (InsidePredicate_18651_17509 q@@66 w@@73 r@@66 u@@66)) (InsidePredicate_19426_17509 p@@74 v_1@@73 r@@66 u@@66))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_18651 p@@74 v_1@@73 q@@66 w@@73) (InsidePredicate_18651_17509 q@@66 w@@73 r@@66 u@@66))
)))
(assert (forall ((p@@75 T@Field_19426_19427) (v_1@@74 T@FrameType) (q@@67 T@Field_18680_18681) (w@@74 T@FrameType) (r@@67 T@Field_17064_17065) (u@@67 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_18651 p@@75 v_1@@74 q@@67 w@@74) (InsidePredicate_18651_17039 q@@67 w@@74 r@@67 u@@67)) (InsidePredicate_19426_17039 p@@75 v_1@@74 r@@67 u@@67))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_18651 p@@75 v_1@@74 q@@67 w@@74) (InsidePredicate_18651_17039 q@@67 w@@74 r@@67 u@@67))
)))
(assert (forall ((p@@76 T@Field_19426_19427) (v_1@@75 T@FrameType) (q@@68 T@Field_18680_18681) (w@@75 T@FrameType) (r@@68 T@Field_13713_7938) (u@@68 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_18651 p@@76 v_1@@75 q@@68 w@@75) (InsidePredicate_18651_13713 q@@68 w@@75 r@@68 u@@68)) (InsidePredicate_19426_13713 p@@76 v_1@@75 r@@68 u@@68))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_18651 p@@76 v_1@@75 q@@68 w@@75) (InsidePredicate_18651_13713 q@@68 w@@75 r@@68 u@@68))
)))
(assert (forall ((p@@77 T@Field_19426_19427) (v_1@@76 T@FrameType) (q@@69 T@Field_18121_18122) (w@@76 T@FrameType) (r@@69 T@Field_20346_20347) (u@@69 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_18094 p@@77 v_1@@76 q@@69 w@@76) (InsidePredicate_18094_20346 q@@69 w@@76 r@@69 u@@69)) (InsidePredicate_19426_20346 p@@77 v_1@@76 r@@69 u@@69))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_18094 p@@77 v_1@@76 q@@69 w@@76) (InsidePredicate_18094_20346 q@@69 w@@76 r@@69 u@@69))
)))
(assert (forall ((p@@78 T@Field_19426_19427) (v_1@@77 T@FrameType) (q@@70 T@Field_18121_18122) (w@@77 T@FrameType) (r@@70 T@Field_19426_19427) (u@@70 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_18094 p@@78 v_1@@77 q@@70 w@@77) (InsidePredicate_18094_19426 q@@70 w@@77 r@@70 u@@70)) (InsidePredicate_19426_19426 p@@78 v_1@@77 r@@70 u@@70))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_18094 p@@78 v_1@@77 q@@70 w@@77) (InsidePredicate_18094_19426 q@@70 w@@77 r@@70 u@@70))
)))
(assert (forall ((p@@79 T@Field_19426_19427) (v_1@@78 T@FrameType) (q@@71 T@Field_18121_18122) (w@@78 T@FrameType) (r@@71 T@Field_18680_18681) (u@@71 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_18094 p@@79 v_1@@78 q@@71 w@@78) (InsidePredicate_18094_18651 q@@71 w@@78 r@@71 u@@71)) (InsidePredicate_19426_18651 p@@79 v_1@@78 r@@71 u@@71))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_18094 p@@79 v_1@@78 q@@71 w@@78) (InsidePredicate_18094_18651 q@@71 w@@78 r@@71 u@@71))
)))
(assert (forall ((p@@80 T@Field_19426_19427) (v_1@@79 T@FrameType) (q@@72 T@Field_18121_18122) (w@@79 T@FrameType) (r@@72 T@Field_18121_18122) (u@@72 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_18094 p@@80 v_1@@79 q@@72 w@@79) (InsidePredicate_18094_18094 q@@72 w@@79 r@@72 u@@72)) (InsidePredicate_19426_18094 p@@80 v_1@@79 r@@72 u@@72))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_18094 p@@80 v_1@@79 q@@72 w@@79) (InsidePredicate_18094_18094 q@@72 w@@79 r@@72 u@@72))
)))
(assert (forall ((p@@81 T@Field_19426_19427) (v_1@@80 T@FrameType) (q@@73 T@Field_18121_18122) (w@@80 T@FrameType) (r@@73 T@Field_17538_17539) (u@@73 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_18094 p@@81 v_1@@80 q@@73 w@@80) (InsidePredicate_18094_17509 q@@73 w@@80 r@@73 u@@73)) (InsidePredicate_19426_17509 p@@81 v_1@@80 r@@73 u@@73))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_18094 p@@81 v_1@@80 q@@73 w@@80) (InsidePredicate_18094_17509 q@@73 w@@80 r@@73 u@@73))
)))
(assert (forall ((p@@82 T@Field_19426_19427) (v_1@@81 T@FrameType) (q@@74 T@Field_18121_18122) (w@@81 T@FrameType) (r@@74 T@Field_17064_17065) (u@@74 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_18094 p@@82 v_1@@81 q@@74 w@@81) (InsidePredicate_18094_17039 q@@74 w@@81 r@@74 u@@74)) (InsidePredicate_19426_17039 p@@82 v_1@@81 r@@74 u@@74))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_18094 p@@82 v_1@@81 q@@74 w@@81) (InsidePredicate_18094_17039 q@@74 w@@81 r@@74 u@@74))
)))
(assert (forall ((p@@83 T@Field_19426_19427) (v_1@@82 T@FrameType) (q@@75 T@Field_18121_18122) (w@@82 T@FrameType) (r@@75 T@Field_13713_7938) (u@@75 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_18094 p@@83 v_1@@82 q@@75 w@@82) (InsidePredicate_18094_13713 q@@75 w@@82 r@@75 u@@75)) (InsidePredicate_19426_13713 p@@83 v_1@@82 r@@75 u@@75))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_18094 p@@83 v_1@@82 q@@75 w@@82) (InsidePredicate_18094_13713 q@@75 w@@82 r@@75 u@@75))
)))
(assert (forall ((p@@84 T@Field_19426_19427) (v_1@@83 T@FrameType) (q@@76 T@Field_17538_17539) (w@@83 T@FrameType) (r@@76 T@Field_20346_20347) (u@@76 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_17509 p@@84 v_1@@83 q@@76 w@@83) (InsidePredicate_17509_20346 q@@76 w@@83 r@@76 u@@76)) (InsidePredicate_19426_20346 p@@84 v_1@@83 r@@76 u@@76))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_17509 p@@84 v_1@@83 q@@76 w@@83) (InsidePredicate_17509_20346 q@@76 w@@83 r@@76 u@@76))
)))
(assert (forall ((p@@85 T@Field_19426_19427) (v_1@@84 T@FrameType) (q@@77 T@Field_17538_17539) (w@@84 T@FrameType) (r@@77 T@Field_19426_19427) (u@@77 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_17509 p@@85 v_1@@84 q@@77 w@@84) (InsidePredicate_17509_19426 q@@77 w@@84 r@@77 u@@77)) (InsidePredicate_19426_19426 p@@85 v_1@@84 r@@77 u@@77))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_17509 p@@85 v_1@@84 q@@77 w@@84) (InsidePredicate_17509_19426 q@@77 w@@84 r@@77 u@@77))
)))
(assert (forall ((p@@86 T@Field_19426_19427) (v_1@@85 T@FrameType) (q@@78 T@Field_17538_17539) (w@@85 T@FrameType) (r@@78 T@Field_18680_18681) (u@@78 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_17509 p@@86 v_1@@85 q@@78 w@@85) (InsidePredicate_17509_18651 q@@78 w@@85 r@@78 u@@78)) (InsidePredicate_19426_18651 p@@86 v_1@@85 r@@78 u@@78))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_17509 p@@86 v_1@@85 q@@78 w@@85) (InsidePredicate_17509_18651 q@@78 w@@85 r@@78 u@@78))
)))
(assert (forall ((p@@87 T@Field_19426_19427) (v_1@@86 T@FrameType) (q@@79 T@Field_17538_17539) (w@@86 T@FrameType) (r@@79 T@Field_18121_18122) (u@@79 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_17509 p@@87 v_1@@86 q@@79 w@@86) (InsidePredicate_17509_18094 q@@79 w@@86 r@@79 u@@79)) (InsidePredicate_19426_18094 p@@87 v_1@@86 r@@79 u@@79))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_17509 p@@87 v_1@@86 q@@79 w@@86) (InsidePredicate_17509_18094 q@@79 w@@86 r@@79 u@@79))
)))
(assert (forall ((p@@88 T@Field_19426_19427) (v_1@@87 T@FrameType) (q@@80 T@Field_17538_17539) (w@@87 T@FrameType) (r@@80 T@Field_17538_17539) (u@@80 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_17509 p@@88 v_1@@87 q@@80 w@@87) (InsidePredicate_17509_17509 q@@80 w@@87 r@@80 u@@80)) (InsidePredicate_19426_17509 p@@88 v_1@@87 r@@80 u@@80))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_17509 p@@88 v_1@@87 q@@80 w@@87) (InsidePredicate_17509_17509 q@@80 w@@87 r@@80 u@@80))
)))
(assert (forall ((p@@89 T@Field_19426_19427) (v_1@@88 T@FrameType) (q@@81 T@Field_17538_17539) (w@@88 T@FrameType) (r@@81 T@Field_17064_17065) (u@@81 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_17509 p@@89 v_1@@88 q@@81 w@@88) (InsidePredicate_17509_17039 q@@81 w@@88 r@@81 u@@81)) (InsidePredicate_19426_17039 p@@89 v_1@@88 r@@81 u@@81))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_17509 p@@89 v_1@@88 q@@81 w@@88) (InsidePredicate_17509_17039 q@@81 w@@88 r@@81 u@@81))
)))
(assert (forall ((p@@90 T@Field_19426_19427) (v_1@@89 T@FrameType) (q@@82 T@Field_17538_17539) (w@@89 T@FrameType) (r@@82 T@Field_13713_7938) (u@@82 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_17509 p@@90 v_1@@89 q@@82 w@@89) (InsidePredicate_17509_13713 q@@82 w@@89 r@@82 u@@82)) (InsidePredicate_19426_13713 p@@90 v_1@@89 r@@82 u@@82))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_17509 p@@90 v_1@@89 q@@82 w@@89) (InsidePredicate_17509_13713 q@@82 w@@89 r@@82 u@@82))
)))
(assert (forall ((p@@91 T@Field_19426_19427) (v_1@@90 T@FrameType) (q@@83 T@Field_17064_17065) (w@@90 T@FrameType) (r@@83 T@Field_20346_20347) (u@@83 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_17039 p@@91 v_1@@90 q@@83 w@@90) (InsidePredicate_17039_20346 q@@83 w@@90 r@@83 u@@83)) (InsidePredicate_19426_20346 p@@91 v_1@@90 r@@83 u@@83))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_17039 p@@91 v_1@@90 q@@83 w@@90) (InsidePredicate_17039_20346 q@@83 w@@90 r@@83 u@@83))
)))
(assert (forall ((p@@92 T@Field_19426_19427) (v_1@@91 T@FrameType) (q@@84 T@Field_17064_17065) (w@@91 T@FrameType) (r@@84 T@Field_19426_19427) (u@@84 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_17039 p@@92 v_1@@91 q@@84 w@@91) (InsidePredicate_17039_19426 q@@84 w@@91 r@@84 u@@84)) (InsidePredicate_19426_19426 p@@92 v_1@@91 r@@84 u@@84))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_17039 p@@92 v_1@@91 q@@84 w@@91) (InsidePredicate_17039_19426 q@@84 w@@91 r@@84 u@@84))
)))
(assert (forall ((p@@93 T@Field_19426_19427) (v_1@@92 T@FrameType) (q@@85 T@Field_17064_17065) (w@@92 T@FrameType) (r@@85 T@Field_18680_18681) (u@@85 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_17039 p@@93 v_1@@92 q@@85 w@@92) (InsidePredicate_17039_18651 q@@85 w@@92 r@@85 u@@85)) (InsidePredicate_19426_18651 p@@93 v_1@@92 r@@85 u@@85))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_17039 p@@93 v_1@@92 q@@85 w@@92) (InsidePredicate_17039_18651 q@@85 w@@92 r@@85 u@@85))
)))
(assert (forall ((p@@94 T@Field_19426_19427) (v_1@@93 T@FrameType) (q@@86 T@Field_17064_17065) (w@@93 T@FrameType) (r@@86 T@Field_18121_18122) (u@@86 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_17039 p@@94 v_1@@93 q@@86 w@@93) (InsidePredicate_17039_18094 q@@86 w@@93 r@@86 u@@86)) (InsidePredicate_19426_18094 p@@94 v_1@@93 r@@86 u@@86))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_17039 p@@94 v_1@@93 q@@86 w@@93) (InsidePredicate_17039_18094 q@@86 w@@93 r@@86 u@@86))
)))
(assert (forall ((p@@95 T@Field_19426_19427) (v_1@@94 T@FrameType) (q@@87 T@Field_17064_17065) (w@@94 T@FrameType) (r@@87 T@Field_17538_17539) (u@@87 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_17039 p@@95 v_1@@94 q@@87 w@@94) (InsidePredicate_17039_17509 q@@87 w@@94 r@@87 u@@87)) (InsidePredicate_19426_17509 p@@95 v_1@@94 r@@87 u@@87))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_17039 p@@95 v_1@@94 q@@87 w@@94) (InsidePredicate_17039_17509 q@@87 w@@94 r@@87 u@@87))
)))
(assert (forall ((p@@96 T@Field_19426_19427) (v_1@@95 T@FrameType) (q@@88 T@Field_17064_17065) (w@@95 T@FrameType) (r@@88 T@Field_17064_17065) (u@@88 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_17039 p@@96 v_1@@95 q@@88 w@@95) (InsidePredicate_17039_17039 q@@88 w@@95 r@@88 u@@88)) (InsidePredicate_19426_17039 p@@96 v_1@@95 r@@88 u@@88))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_17039 p@@96 v_1@@95 q@@88 w@@95) (InsidePredicate_17039_17039 q@@88 w@@95 r@@88 u@@88))
)))
(assert (forall ((p@@97 T@Field_19426_19427) (v_1@@96 T@FrameType) (q@@89 T@Field_17064_17065) (w@@96 T@FrameType) (r@@89 T@Field_13713_7938) (u@@89 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_17039 p@@97 v_1@@96 q@@89 w@@96) (InsidePredicate_17039_13713 q@@89 w@@96 r@@89 u@@89)) (InsidePredicate_19426_13713 p@@97 v_1@@96 r@@89 u@@89))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_17039 p@@97 v_1@@96 q@@89 w@@96) (InsidePredicate_17039_13713 q@@89 w@@96 r@@89 u@@89))
)))
(assert (forall ((p@@98 T@Field_19426_19427) (v_1@@97 T@FrameType) (q@@90 T@Field_13713_7938) (w@@97 T@FrameType) (r@@90 T@Field_20346_20347) (u@@90 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_13713 p@@98 v_1@@97 q@@90 w@@97) (InsidePredicate_13713_20346 q@@90 w@@97 r@@90 u@@90)) (InsidePredicate_19426_20346 p@@98 v_1@@97 r@@90 u@@90))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_13713 p@@98 v_1@@97 q@@90 w@@97) (InsidePredicate_13713_20346 q@@90 w@@97 r@@90 u@@90))
)))
(assert (forall ((p@@99 T@Field_19426_19427) (v_1@@98 T@FrameType) (q@@91 T@Field_13713_7938) (w@@98 T@FrameType) (r@@91 T@Field_19426_19427) (u@@91 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_13713 p@@99 v_1@@98 q@@91 w@@98) (InsidePredicate_13713_19426 q@@91 w@@98 r@@91 u@@91)) (InsidePredicate_19426_19426 p@@99 v_1@@98 r@@91 u@@91))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_13713 p@@99 v_1@@98 q@@91 w@@98) (InsidePredicate_13713_19426 q@@91 w@@98 r@@91 u@@91))
)))
(assert (forall ((p@@100 T@Field_19426_19427) (v_1@@99 T@FrameType) (q@@92 T@Field_13713_7938) (w@@99 T@FrameType) (r@@92 T@Field_18680_18681) (u@@92 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_13713 p@@100 v_1@@99 q@@92 w@@99) (InsidePredicate_13713_18651 q@@92 w@@99 r@@92 u@@92)) (InsidePredicate_19426_18651 p@@100 v_1@@99 r@@92 u@@92))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_13713 p@@100 v_1@@99 q@@92 w@@99) (InsidePredicate_13713_18651 q@@92 w@@99 r@@92 u@@92))
)))
(assert (forall ((p@@101 T@Field_19426_19427) (v_1@@100 T@FrameType) (q@@93 T@Field_13713_7938) (w@@100 T@FrameType) (r@@93 T@Field_18121_18122) (u@@93 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_13713 p@@101 v_1@@100 q@@93 w@@100) (InsidePredicate_13713_18094 q@@93 w@@100 r@@93 u@@93)) (InsidePredicate_19426_18094 p@@101 v_1@@100 r@@93 u@@93))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_13713 p@@101 v_1@@100 q@@93 w@@100) (InsidePredicate_13713_18094 q@@93 w@@100 r@@93 u@@93))
)))
(assert (forall ((p@@102 T@Field_19426_19427) (v_1@@101 T@FrameType) (q@@94 T@Field_13713_7938) (w@@101 T@FrameType) (r@@94 T@Field_17538_17539) (u@@94 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_13713 p@@102 v_1@@101 q@@94 w@@101) (InsidePredicate_13713_17509 q@@94 w@@101 r@@94 u@@94)) (InsidePredicate_19426_17509 p@@102 v_1@@101 r@@94 u@@94))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_13713 p@@102 v_1@@101 q@@94 w@@101) (InsidePredicate_13713_17509 q@@94 w@@101 r@@94 u@@94))
)))
(assert (forall ((p@@103 T@Field_19426_19427) (v_1@@102 T@FrameType) (q@@95 T@Field_13713_7938) (w@@102 T@FrameType) (r@@95 T@Field_17064_17065) (u@@95 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_13713 p@@103 v_1@@102 q@@95 w@@102) (InsidePredicate_13713_17039 q@@95 w@@102 r@@95 u@@95)) (InsidePredicate_19426_17039 p@@103 v_1@@102 r@@95 u@@95))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_13713 p@@103 v_1@@102 q@@95 w@@102) (InsidePredicate_13713_17039 q@@95 w@@102 r@@95 u@@95))
)))
(assert (forall ((p@@104 T@Field_19426_19427) (v_1@@103 T@FrameType) (q@@96 T@Field_13713_7938) (w@@103 T@FrameType) (r@@96 T@Field_13713_7938) (u@@96 T@FrameType) ) (!  (=> (and (InsidePredicate_19426_13713 p@@104 v_1@@103 q@@96 w@@103) (InsidePredicate_13713_13713 q@@96 w@@103 r@@96 u@@96)) (InsidePredicate_19426_13713 p@@104 v_1@@103 r@@96 u@@96))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19426_13713 p@@104 v_1@@103 q@@96 w@@103) (InsidePredicate_13713_13713 q@@96 w@@103 r@@96 u@@96))
)))
(assert (forall ((p@@105 T@Field_18680_18681) (v_1@@104 T@FrameType) (q@@97 T@Field_20346_20347) (w@@104 T@FrameType) (r@@97 T@Field_20346_20347) (u@@97 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_20346 p@@105 v_1@@104 q@@97 w@@104) (InsidePredicate_20346_20346 q@@97 w@@104 r@@97 u@@97)) (InsidePredicate_18651_20346 p@@105 v_1@@104 r@@97 u@@97))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_20346 p@@105 v_1@@104 q@@97 w@@104) (InsidePredicate_20346_20346 q@@97 w@@104 r@@97 u@@97))
)))
(assert (forall ((p@@106 T@Field_18680_18681) (v_1@@105 T@FrameType) (q@@98 T@Field_20346_20347) (w@@105 T@FrameType) (r@@98 T@Field_19426_19427) (u@@98 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_20346 p@@106 v_1@@105 q@@98 w@@105) (InsidePredicate_20346_19426 q@@98 w@@105 r@@98 u@@98)) (InsidePredicate_18651_19426 p@@106 v_1@@105 r@@98 u@@98))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_20346 p@@106 v_1@@105 q@@98 w@@105) (InsidePredicate_20346_19426 q@@98 w@@105 r@@98 u@@98))
)))
(assert (forall ((p@@107 T@Field_18680_18681) (v_1@@106 T@FrameType) (q@@99 T@Field_20346_20347) (w@@106 T@FrameType) (r@@99 T@Field_18680_18681) (u@@99 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_20346 p@@107 v_1@@106 q@@99 w@@106) (InsidePredicate_20346_18651 q@@99 w@@106 r@@99 u@@99)) (InsidePredicate_18651_18651 p@@107 v_1@@106 r@@99 u@@99))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_20346 p@@107 v_1@@106 q@@99 w@@106) (InsidePredicate_20346_18651 q@@99 w@@106 r@@99 u@@99))
)))
(assert (forall ((p@@108 T@Field_18680_18681) (v_1@@107 T@FrameType) (q@@100 T@Field_20346_20347) (w@@107 T@FrameType) (r@@100 T@Field_18121_18122) (u@@100 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_20346 p@@108 v_1@@107 q@@100 w@@107) (InsidePredicate_20346_18094 q@@100 w@@107 r@@100 u@@100)) (InsidePredicate_18651_18094 p@@108 v_1@@107 r@@100 u@@100))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_20346 p@@108 v_1@@107 q@@100 w@@107) (InsidePredicate_20346_18094 q@@100 w@@107 r@@100 u@@100))
)))
(assert (forall ((p@@109 T@Field_18680_18681) (v_1@@108 T@FrameType) (q@@101 T@Field_20346_20347) (w@@108 T@FrameType) (r@@101 T@Field_17538_17539) (u@@101 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_20346 p@@109 v_1@@108 q@@101 w@@108) (InsidePredicate_20346_17509 q@@101 w@@108 r@@101 u@@101)) (InsidePredicate_18651_17509 p@@109 v_1@@108 r@@101 u@@101))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_20346 p@@109 v_1@@108 q@@101 w@@108) (InsidePredicate_20346_17509 q@@101 w@@108 r@@101 u@@101))
)))
(assert (forall ((p@@110 T@Field_18680_18681) (v_1@@109 T@FrameType) (q@@102 T@Field_20346_20347) (w@@109 T@FrameType) (r@@102 T@Field_17064_17065) (u@@102 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_20346 p@@110 v_1@@109 q@@102 w@@109) (InsidePredicate_20346_17039 q@@102 w@@109 r@@102 u@@102)) (InsidePredicate_18651_17039 p@@110 v_1@@109 r@@102 u@@102))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_20346 p@@110 v_1@@109 q@@102 w@@109) (InsidePredicate_20346_17039 q@@102 w@@109 r@@102 u@@102))
)))
(assert (forall ((p@@111 T@Field_18680_18681) (v_1@@110 T@FrameType) (q@@103 T@Field_20346_20347) (w@@110 T@FrameType) (r@@103 T@Field_13713_7938) (u@@103 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_20346 p@@111 v_1@@110 q@@103 w@@110) (InsidePredicate_20346_13713 q@@103 w@@110 r@@103 u@@103)) (InsidePredicate_18651_13713 p@@111 v_1@@110 r@@103 u@@103))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_20346 p@@111 v_1@@110 q@@103 w@@110) (InsidePredicate_20346_13713 q@@103 w@@110 r@@103 u@@103))
)))
(assert (forall ((p@@112 T@Field_18680_18681) (v_1@@111 T@FrameType) (q@@104 T@Field_19426_19427) (w@@111 T@FrameType) (r@@104 T@Field_20346_20347) (u@@104 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_19426 p@@112 v_1@@111 q@@104 w@@111) (InsidePredicate_19426_20346 q@@104 w@@111 r@@104 u@@104)) (InsidePredicate_18651_20346 p@@112 v_1@@111 r@@104 u@@104))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_19426 p@@112 v_1@@111 q@@104 w@@111) (InsidePredicate_19426_20346 q@@104 w@@111 r@@104 u@@104))
)))
(assert (forall ((p@@113 T@Field_18680_18681) (v_1@@112 T@FrameType) (q@@105 T@Field_19426_19427) (w@@112 T@FrameType) (r@@105 T@Field_19426_19427) (u@@105 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_19426 p@@113 v_1@@112 q@@105 w@@112) (InsidePredicate_19426_19426 q@@105 w@@112 r@@105 u@@105)) (InsidePredicate_18651_19426 p@@113 v_1@@112 r@@105 u@@105))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_19426 p@@113 v_1@@112 q@@105 w@@112) (InsidePredicate_19426_19426 q@@105 w@@112 r@@105 u@@105))
)))
(assert (forall ((p@@114 T@Field_18680_18681) (v_1@@113 T@FrameType) (q@@106 T@Field_19426_19427) (w@@113 T@FrameType) (r@@106 T@Field_18680_18681) (u@@106 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_19426 p@@114 v_1@@113 q@@106 w@@113) (InsidePredicate_19426_18651 q@@106 w@@113 r@@106 u@@106)) (InsidePredicate_18651_18651 p@@114 v_1@@113 r@@106 u@@106))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_19426 p@@114 v_1@@113 q@@106 w@@113) (InsidePredicate_19426_18651 q@@106 w@@113 r@@106 u@@106))
)))
(assert (forall ((p@@115 T@Field_18680_18681) (v_1@@114 T@FrameType) (q@@107 T@Field_19426_19427) (w@@114 T@FrameType) (r@@107 T@Field_18121_18122) (u@@107 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_19426 p@@115 v_1@@114 q@@107 w@@114) (InsidePredicate_19426_18094 q@@107 w@@114 r@@107 u@@107)) (InsidePredicate_18651_18094 p@@115 v_1@@114 r@@107 u@@107))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_19426 p@@115 v_1@@114 q@@107 w@@114) (InsidePredicate_19426_18094 q@@107 w@@114 r@@107 u@@107))
)))
(assert (forall ((p@@116 T@Field_18680_18681) (v_1@@115 T@FrameType) (q@@108 T@Field_19426_19427) (w@@115 T@FrameType) (r@@108 T@Field_17538_17539) (u@@108 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_19426 p@@116 v_1@@115 q@@108 w@@115) (InsidePredicate_19426_17509 q@@108 w@@115 r@@108 u@@108)) (InsidePredicate_18651_17509 p@@116 v_1@@115 r@@108 u@@108))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_19426 p@@116 v_1@@115 q@@108 w@@115) (InsidePredicate_19426_17509 q@@108 w@@115 r@@108 u@@108))
)))
(assert (forall ((p@@117 T@Field_18680_18681) (v_1@@116 T@FrameType) (q@@109 T@Field_19426_19427) (w@@116 T@FrameType) (r@@109 T@Field_17064_17065) (u@@109 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_19426 p@@117 v_1@@116 q@@109 w@@116) (InsidePredicate_19426_17039 q@@109 w@@116 r@@109 u@@109)) (InsidePredicate_18651_17039 p@@117 v_1@@116 r@@109 u@@109))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_19426 p@@117 v_1@@116 q@@109 w@@116) (InsidePredicate_19426_17039 q@@109 w@@116 r@@109 u@@109))
)))
(assert (forall ((p@@118 T@Field_18680_18681) (v_1@@117 T@FrameType) (q@@110 T@Field_19426_19427) (w@@117 T@FrameType) (r@@110 T@Field_13713_7938) (u@@110 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_19426 p@@118 v_1@@117 q@@110 w@@117) (InsidePredicate_19426_13713 q@@110 w@@117 r@@110 u@@110)) (InsidePredicate_18651_13713 p@@118 v_1@@117 r@@110 u@@110))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_19426 p@@118 v_1@@117 q@@110 w@@117) (InsidePredicate_19426_13713 q@@110 w@@117 r@@110 u@@110))
)))
(assert (forall ((p@@119 T@Field_18680_18681) (v_1@@118 T@FrameType) (q@@111 T@Field_18680_18681) (w@@118 T@FrameType) (r@@111 T@Field_20346_20347) (u@@111 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_18651 p@@119 v_1@@118 q@@111 w@@118) (InsidePredicate_18651_20346 q@@111 w@@118 r@@111 u@@111)) (InsidePredicate_18651_20346 p@@119 v_1@@118 r@@111 u@@111))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_18651 p@@119 v_1@@118 q@@111 w@@118) (InsidePredicate_18651_20346 q@@111 w@@118 r@@111 u@@111))
)))
(assert (forall ((p@@120 T@Field_18680_18681) (v_1@@119 T@FrameType) (q@@112 T@Field_18680_18681) (w@@119 T@FrameType) (r@@112 T@Field_19426_19427) (u@@112 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_18651 p@@120 v_1@@119 q@@112 w@@119) (InsidePredicate_18651_19426 q@@112 w@@119 r@@112 u@@112)) (InsidePredicate_18651_19426 p@@120 v_1@@119 r@@112 u@@112))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_18651 p@@120 v_1@@119 q@@112 w@@119) (InsidePredicate_18651_19426 q@@112 w@@119 r@@112 u@@112))
)))
(assert (forall ((p@@121 T@Field_18680_18681) (v_1@@120 T@FrameType) (q@@113 T@Field_18680_18681) (w@@120 T@FrameType) (r@@113 T@Field_18680_18681) (u@@113 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_18651 p@@121 v_1@@120 q@@113 w@@120) (InsidePredicate_18651_18651 q@@113 w@@120 r@@113 u@@113)) (InsidePredicate_18651_18651 p@@121 v_1@@120 r@@113 u@@113))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_18651 p@@121 v_1@@120 q@@113 w@@120) (InsidePredicate_18651_18651 q@@113 w@@120 r@@113 u@@113))
)))
(assert (forall ((p@@122 T@Field_18680_18681) (v_1@@121 T@FrameType) (q@@114 T@Field_18680_18681) (w@@121 T@FrameType) (r@@114 T@Field_18121_18122) (u@@114 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_18651 p@@122 v_1@@121 q@@114 w@@121) (InsidePredicate_18651_18094 q@@114 w@@121 r@@114 u@@114)) (InsidePredicate_18651_18094 p@@122 v_1@@121 r@@114 u@@114))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_18651 p@@122 v_1@@121 q@@114 w@@121) (InsidePredicate_18651_18094 q@@114 w@@121 r@@114 u@@114))
)))
(assert (forall ((p@@123 T@Field_18680_18681) (v_1@@122 T@FrameType) (q@@115 T@Field_18680_18681) (w@@122 T@FrameType) (r@@115 T@Field_17538_17539) (u@@115 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_18651 p@@123 v_1@@122 q@@115 w@@122) (InsidePredicate_18651_17509 q@@115 w@@122 r@@115 u@@115)) (InsidePredicate_18651_17509 p@@123 v_1@@122 r@@115 u@@115))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_18651 p@@123 v_1@@122 q@@115 w@@122) (InsidePredicate_18651_17509 q@@115 w@@122 r@@115 u@@115))
)))
(assert (forall ((p@@124 T@Field_18680_18681) (v_1@@123 T@FrameType) (q@@116 T@Field_18680_18681) (w@@123 T@FrameType) (r@@116 T@Field_17064_17065) (u@@116 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_18651 p@@124 v_1@@123 q@@116 w@@123) (InsidePredicate_18651_17039 q@@116 w@@123 r@@116 u@@116)) (InsidePredicate_18651_17039 p@@124 v_1@@123 r@@116 u@@116))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_18651 p@@124 v_1@@123 q@@116 w@@123) (InsidePredicate_18651_17039 q@@116 w@@123 r@@116 u@@116))
)))
(assert (forall ((p@@125 T@Field_18680_18681) (v_1@@124 T@FrameType) (q@@117 T@Field_18680_18681) (w@@124 T@FrameType) (r@@117 T@Field_13713_7938) (u@@117 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_18651 p@@125 v_1@@124 q@@117 w@@124) (InsidePredicate_18651_13713 q@@117 w@@124 r@@117 u@@117)) (InsidePredicate_18651_13713 p@@125 v_1@@124 r@@117 u@@117))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_18651 p@@125 v_1@@124 q@@117 w@@124) (InsidePredicate_18651_13713 q@@117 w@@124 r@@117 u@@117))
)))
(assert (forall ((p@@126 T@Field_18680_18681) (v_1@@125 T@FrameType) (q@@118 T@Field_18121_18122) (w@@125 T@FrameType) (r@@118 T@Field_20346_20347) (u@@118 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_18094 p@@126 v_1@@125 q@@118 w@@125) (InsidePredicate_18094_20346 q@@118 w@@125 r@@118 u@@118)) (InsidePredicate_18651_20346 p@@126 v_1@@125 r@@118 u@@118))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_18094 p@@126 v_1@@125 q@@118 w@@125) (InsidePredicate_18094_20346 q@@118 w@@125 r@@118 u@@118))
)))
(assert (forall ((p@@127 T@Field_18680_18681) (v_1@@126 T@FrameType) (q@@119 T@Field_18121_18122) (w@@126 T@FrameType) (r@@119 T@Field_19426_19427) (u@@119 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_18094 p@@127 v_1@@126 q@@119 w@@126) (InsidePredicate_18094_19426 q@@119 w@@126 r@@119 u@@119)) (InsidePredicate_18651_19426 p@@127 v_1@@126 r@@119 u@@119))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_18094 p@@127 v_1@@126 q@@119 w@@126) (InsidePredicate_18094_19426 q@@119 w@@126 r@@119 u@@119))
)))
(assert (forall ((p@@128 T@Field_18680_18681) (v_1@@127 T@FrameType) (q@@120 T@Field_18121_18122) (w@@127 T@FrameType) (r@@120 T@Field_18680_18681) (u@@120 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_18094 p@@128 v_1@@127 q@@120 w@@127) (InsidePredicate_18094_18651 q@@120 w@@127 r@@120 u@@120)) (InsidePredicate_18651_18651 p@@128 v_1@@127 r@@120 u@@120))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_18094 p@@128 v_1@@127 q@@120 w@@127) (InsidePredicate_18094_18651 q@@120 w@@127 r@@120 u@@120))
)))
(assert (forall ((p@@129 T@Field_18680_18681) (v_1@@128 T@FrameType) (q@@121 T@Field_18121_18122) (w@@128 T@FrameType) (r@@121 T@Field_18121_18122) (u@@121 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_18094 p@@129 v_1@@128 q@@121 w@@128) (InsidePredicate_18094_18094 q@@121 w@@128 r@@121 u@@121)) (InsidePredicate_18651_18094 p@@129 v_1@@128 r@@121 u@@121))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_18094 p@@129 v_1@@128 q@@121 w@@128) (InsidePredicate_18094_18094 q@@121 w@@128 r@@121 u@@121))
)))
(assert (forall ((p@@130 T@Field_18680_18681) (v_1@@129 T@FrameType) (q@@122 T@Field_18121_18122) (w@@129 T@FrameType) (r@@122 T@Field_17538_17539) (u@@122 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_18094 p@@130 v_1@@129 q@@122 w@@129) (InsidePredicate_18094_17509 q@@122 w@@129 r@@122 u@@122)) (InsidePredicate_18651_17509 p@@130 v_1@@129 r@@122 u@@122))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_18094 p@@130 v_1@@129 q@@122 w@@129) (InsidePredicate_18094_17509 q@@122 w@@129 r@@122 u@@122))
)))
(assert (forall ((p@@131 T@Field_18680_18681) (v_1@@130 T@FrameType) (q@@123 T@Field_18121_18122) (w@@130 T@FrameType) (r@@123 T@Field_17064_17065) (u@@123 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_18094 p@@131 v_1@@130 q@@123 w@@130) (InsidePredicate_18094_17039 q@@123 w@@130 r@@123 u@@123)) (InsidePredicate_18651_17039 p@@131 v_1@@130 r@@123 u@@123))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_18094 p@@131 v_1@@130 q@@123 w@@130) (InsidePredicate_18094_17039 q@@123 w@@130 r@@123 u@@123))
)))
(assert (forall ((p@@132 T@Field_18680_18681) (v_1@@131 T@FrameType) (q@@124 T@Field_18121_18122) (w@@131 T@FrameType) (r@@124 T@Field_13713_7938) (u@@124 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_18094 p@@132 v_1@@131 q@@124 w@@131) (InsidePredicate_18094_13713 q@@124 w@@131 r@@124 u@@124)) (InsidePredicate_18651_13713 p@@132 v_1@@131 r@@124 u@@124))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_18094 p@@132 v_1@@131 q@@124 w@@131) (InsidePredicate_18094_13713 q@@124 w@@131 r@@124 u@@124))
)))
(assert (forall ((p@@133 T@Field_18680_18681) (v_1@@132 T@FrameType) (q@@125 T@Field_17538_17539) (w@@132 T@FrameType) (r@@125 T@Field_20346_20347) (u@@125 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_17509 p@@133 v_1@@132 q@@125 w@@132) (InsidePredicate_17509_20346 q@@125 w@@132 r@@125 u@@125)) (InsidePredicate_18651_20346 p@@133 v_1@@132 r@@125 u@@125))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_17509 p@@133 v_1@@132 q@@125 w@@132) (InsidePredicate_17509_20346 q@@125 w@@132 r@@125 u@@125))
)))
(assert (forall ((p@@134 T@Field_18680_18681) (v_1@@133 T@FrameType) (q@@126 T@Field_17538_17539) (w@@133 T@FrameType) (r@@126 T@Field_19426_19427) (u@@126 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_17509 p@@134 v_1@@133 q@@126 w@@133) (InsidePredicate_17509_19426 q@@126 w@@133 r@@126 u@@126)) (InsidePredicate_18651_19426 p@@134 v_1@@133 r@@126 u@@126))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_17509 p@@134 v_1@@133 q@@126 w@@133) (InsidePredicate_17509_19426 q@@126 w@@133 r@@126 u@@126))
)))
(assert (forall ((p@@135 T@Field_18680_18681) (v_1@@134 T@FrameType) (q@@127 T@Field_17538_17539) (w@@134 T@FrameType) (r@@127 T@Field_18680_18681) (u@@127 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_17509 p@@135 v_1@@134 q@@127 w@@134) (InsidePredicate_17509_18651 q@@127 w@@134 r@@127 u@@127)) (InsidePredicate_18651_18651 p@@135 v_1@@134 r@@127 u@@127))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_17509 p@@135 v_1@@134 q@@127 w@@134) (InsidePredicate_17509_18651 q@@127 w@@134 r@@127 u@@127))
)))
(assert (forall ((p@@136 T@Field_18680_18681) (v_1@@135 T@FrameType) (q@@128 T@Field_17538_17539) (w@@135 T@FrameType) (r@@128 T@Field_18121_18122) (u@@128 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_17509 p@@136 v_1@@135 q@@128 w@@135) (InsidePredicate_17509_18094 q@@128 w@@135 r@@128 u@@128)) (InsidePredicate_18651_18094 p@@136 v_1@@135 r@@128 u@@128))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_17509 p@@136 v_1@@135 q@@128 w@@135) (InsidePredicate_17509_18094 q@@128 w@@135 r@@128 u@@128))
)))
(assert (forall ((p@@137 T@Field_18680_18681) (v_1@@136 T@FrameType) (q@@129 T@Field_17538_17539) (w@@136 T@FrameType) (r@@129 T@Field_17538_17539) (u@@129 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_17509 p@@137 v_1@@136 q@@129 w@@136) (InsidePredicate_17509_17509 q@@129 w@@136 r@@129 u@@129)) (InsidePredicate_18651_17509 p@@137 v_1@@136 r@@129 u@@129))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_17509 p@@137 v_1@@136 q@@129 w@@136) (InsidePredicate_17509_17509 q@@129 w@@136 r@@129 u@@129))
)))
(assert (forall ((p@@138 T@Field_18680_18681) (v_1@@137 T@FrameType) (q@@130 T@Field_17538_17539) (w@@137 T@FrameType) (r@@130 T@Field_17064_17065) (u@@130 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_17509 p@@138 v_1@@137 q@@130 w@@137) (InsidePredicate_17509_17039 q@@130 w@@137 r@@130 u@@130)) (InsidePredicate_18651_17039 p@@138 v_1@@137 r@@130 u@@130))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_17509 p@@138 v_1@@137 q@@130 w@@137) (InsidePredicate_17509_17039 q@@130 w@@137 r@@130 u@@130))
)))
(assert (forall ((p@@139 T@Field_18680_18681) (v_1@@138 T@FrameType) (q@@131 T@Field_17538_17539) (w@@138 T@FrameType) (r@@131 T@Field_13713_7938) (u@@131 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_17509 p@@139 v_1@@138 q@@131 w@@138) (InsidePredicate_17509_13713 q@@131 w@@138 r@@131 u@@131)) (InsidePredicate_18651_13713 p@@139 v_1@@138 r@@131 u@@131))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_17509 p@@139 v_1@@138 q@@131 w@@138) (InsidePredicate_17509_13713 q@@131 w@@138 r@@131 u@@131))
)))
(assert (forall ((p@@140 T@Field_18680_18681) (v_1@@139 T@FrameType) (q@@132 T@Field_17064_17065) (w@@139 T@FrameType) (r@@132 T@Field_20346_20347) (u@@132 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_17039 p@@140 v_1@@139 q@@132 w@@139) (InsidePredicate_17039_20346 q@@132 w@@139 r@@132 u@@132)) (InsidePredicate_18651_20346 p@@140 v_1@@139 r@@132 u@@132))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_17039 p@@140 v_1@@139 q@@132 w@@139) (InsidePredicate_17039_20346 q@@132 w@@139 r@@132 u@@132))
)))
(assert (forall ((p@@141 T@Field_18680_18681) (v_1@@140 T@FrameType) (q@@133 T@Field_17064_17065) (w@@140 T@FrameType) (r@@133 T@Field_19426_19427) (u@@133 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_17039 p@@141 v_1@@140 q@@133 w@@140) (InsidePredicate_17039_19426 q@@133 w@@140 r@@133 u@@133)) (InsidePredicate_18651_19426 p@@141 v_1@@140 r@@133 u@@133))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_17039 p@@141 v_1@@140 q@@133 w@@140) (InsidePredicate_17039_19426 q@@133 w@@140 r@@133 u@@133))
)))
(assert (forall ((p@@142 T@Field_18680_18681) (v_1@@141 T@FrameType) (q@@134 T@Field_17064_17065) (w@@141 T@FrameType) (r@@134 T@Field_18680_18681) (u@@134 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_17039 p@@142 v_1@@141 q@@134 w@@141) (InsidePredicate_17039_18651 q@@134 w@@141 r@@134 u@@134)) (InsidePredicate_18651_18651 p@@142 v_1@@141 r@@134 u@@134))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_17039 p@@142 v_1@@141 q@@134 w@@141) (InsidePredicate_17039_18651 q@@134 w@@141 r@@134 u@@134))
)))
(assert (forall ((p@@143 T@Field_18680_18681) (v_1@@142 T@FrameType) (q@@135 T@Field_17064_17065) (w@@142 T@FrameType) (r@@135 T@Field_18121_18122) (u@@135 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_17039 p@@143 v_1@@142 q@@135 w@@142) (InsidePredicate_17039_18094 q@@135 w@@142 r@@135 u@@135)) (InsidePredicate_18651_18094 p@@143 v_1@@142 r@@135 u@@135))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_17039 p@@143 v_1@@142 q@@135 w@@142) (InsidePredicate_17039_18094 q@@135 w@@142 r@@135 u@@135))
)))
(assert (forall ((p@@144 T@Field_18680_18681) (v_1@@143 T@FrameType) (q@@136 T@Field_17064_17065) (w@@143 T@FrameType) (r@@136 T@Field_17538_17539) (u@@136 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_17039 p@@144 v_1@@143 q@@136 w@@143) (InsidePredicate_17039_17509 q@@136 w@@143 r@@136 u@@136)) (InsidePredicate_18651_17509 p@@144 v_1@@143 r@@136 u@@136))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_17039 p@@144 v_1@@143 q@@136 w@@143) (InsidePredicate_17039_17509 q@@136 w@@143 r@@136 u@@136))
)))
(assert (forall ((p@@145 T@Field_18680_18681) (v_1@@144 T@FrameType) (q@@137 T@Field_17064_17065) (w@@144 T@FrameType) (r@@137 T@Field_17064_17065) (u@@137 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_17039 p@@145 v_1@@144 q@@137 w@@144) (InsidePredicate_17039_17039 q@@137 w@@144 r@@137 u@@137)) (InsidePredicate_18651_17039 p@@145 v_1@@144 r@@137 u@@137))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_17039 p@@145 v_1@@144 q@@137 w@@144) (InsidePredicate_17039_17039 q@@137 w@@144 r@@137 u@@137))
)))
(assert (forall ((p@@146 T@Field_18680_18681) (v_1@@145 T@FrameType) (q@@138 T@Field_17064_17065) (w@@145 T@FrameType) (r@@138 T@Field_13713_7938) (u@@138 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_17039 p@@146 v_1@@145 q@@138 w@@145) (InsidePredicate_17039_13713 q@@138 w@@145 r@@138 u@@138)) (InsidePredicate_18651_13713 p@@146 v_1@@145 r@@138 u@@138))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_17039 p@@146 v_1@@145 q@@138 w@@145) (InsidePredicate_17039_13713 q@@138 w@@145 r@@138 u@@138))
)))
(assert (forall ((p@@147 T@Field_18680_18681) (v_1@@146 T@FrameType) (q@@139 T@Field_13713_7938) (w@@146 T@FrameType) (r@@139 T@Field_20346_20347) (u@@139 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_13713 p@@147 v_1@@146 q@@139 w@@146) (InsidePredicate_13713_20346 q@@139 w@@146 r@@139 u@@139)) (InsidePredicate_18651_20346 p@@147 v_1@@146 r@@139 u@@139))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_13713 p@@147 v_1@@146 q@@139 w@@146) (InsidePredicate_13713_20346 q@@139 w@@146 r@@139 u@@139))
)))
(assert (forall ((p@@148 T@Field_18680_18681) (v_1@@147 T@FrameType) (q@@140 T@Field_13713_7938) (w@@147 T@FrameType) (r@@140 T@Field_19426_19427) (u@@140 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_13713 p@@148 v_1@@147 q@@140 w@@147) (InsidePredicate_13713_19426 q@@140 w@@147 r@@140 u@@140)) (InsidePredicate_18651_19426 p@@148 v_1@@147 r@@140 u@@140))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_13713 p@@148 v_1@@147 q@@140 w@@147) (InsidePredicate_13713_19426 q@@140 w@@147 r@@140 u@@140))
)))
(assert (forall ((p@@149 T@Field_18680_18681) (v_1@@148 T@FrameType) (q@@141 T@Field_13713_7938) (w@@148 T@FrameType) (r@@141 T@Field_18680_18681) (u@@141 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_13713 p@@149 v_1@@148 q@@141 w@@148) (InsidePredicate_13713_18651 q@@141 w@@148 r@@141 u@@141)) (InsidePredicate_18651_18651 p@@149 v_1@@148 r@@141 u@@141))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_13713 p@@149 v_1@@148 q@@141 w@@148) (InsidePredicate_13713_18651 q@@141 w@@148 r@@141 u@@141))
)))
(assert (forall ((p@@150 T@Field_18680_18681) (v_1@@149 T@FrameType) (q@@142 T@Field_13713_7938) (w@@149 T@FrameType) (r@@142 T@Field_18121_18122) (u@@142 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_13713 p@@150 v_1@@149 q@@142 w@@149) (InsidePredicate_13713_18094 q@@142 w@@149 r@@142 u@@142)) (InsidePredicate_18651_18094 p@@150 v_1@@149 r@@142 u@@142))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_13713 p@@150 v_1@@149 q@@142 w@@149) (InsidePredicate_13713_18094 q@@142 w@@149 r@@142 u@@142))
)))
(assert (forall ((p@@151 T@Field_18680_18681) (v_1@@150 T@FrameType) (q@@143 T@Field_13713_7938) (w@@150 T@FrameType) (r@@143 T@Field_17538_17539) (u@@143 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_13713 p@@151 v_1@@150 q@@143 w@@150) (InsidePredicate_13713_17509 q@@143 w@@150 r@@143 u@@143)) (InsidePredicate_18651_17509 p@@151 v_1@@150 r@@143 u@@143))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_13713 p@@151 v_1@@150 q@@143 w@@150) (InsidePredicate_13713_17509 q@@143 w@@150 r@@143 u@@143))
)))
(assert (forall ((p@@152 T@Field_18680_18681) (v_1@@151 T@FrameType) (q@@144 T@Field_13713_7938) (w@@151 T@FrameType) (r@@144 T@Field_17064_17065) (u@@144 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_13713 p@@152 v_1@@151 q@@144 w@@151) (InsidePredicate_13713_17039 q@@144 w@@151 r@@144 u@@144)) (InsidePredicate_18651_17039 p@@152 v_1@@151 r@@144 u@@144))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_13713 p@@152 v_1@@151 q@@144 w@@151) (InsidePredicate_13713_17039 q@@144 w@@151 r@@144 u@@144))
)))
(assert (forall ((p@@153 T@Field_18680_18681) (v_1@@152 T@FrameType) (q@@145 T@Field_13713_7938) (w@@152 T@FrameType) (r@@145 T@Field_13713_7938) (u@@145 T@FrameType) ) (!  (=> (and (InsidePredicate_18651_13713 p@@153 v_1@@152 q@@145 w@@152) (InsidePredicate_13713_13713 q@@145 w@@152 r@@145 u@@145)) (InsidePredicate_18651_13713 p@@153 v_1@@152 r@@145 u@@145))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18651_13713 p@@153 v_1@@152 q@@145 w@@152) (InsidePredicate_13713_13713 q@@145 w@@152 r@@145 u@@145))
)))
(assert (forall ((p@@154 T@Field_18121_18122) (v_1@@153 T@FrameType) (q@@146 T@Field_20346_20347) (w@@153 T@FrameType) (r@@146 T@Field_20346_20347) (u@@146 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_20346 p@@154 v_1@@153 q@@146 w@@153) (InsidePredicate_20346_20346 q@@146 w@@153 r@@146 u@@146)) (InsidePredicate_18094_20346 p@@154 v_1@@153 r@@146 u@@146))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_20346 p@@154 v_1@@153 q@@146 w@@153) (InsidePredicate_20346_20346 q@@146 w@@153 r@@146 u@@146))
)))
(assert (forall ((p@@155 T@Field_18121_18122) (v_1@@154 T@FrameType) (q@@147 T@Field_20346_20347) (w@@154 T@FrameType) (r@@147 T@Field_19426_19427) (u@@147 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_20346 p@@155 v_1@@154 q@@147 w@@154) (InsidePredicate_20346_19426 q@@147 w@@154 r@@147 u@@147)) (InsidePredicate_18094_19426 p@@155 v_1@@154 r@@147 u@@147))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_20346 p@@155 v_1@@154 q@@147 w@@154) (InsidePredicate_20346_19426 q@@147 w@@154 r@@147 u@@147))
)))
(assert (forall ((p@@156 T@Field_18121_18122) (v_1@@155 T@FrameType) (q@@148 T@Field_20346_20347) (w@@155 T@FrameType) (r@@148 T@Field_18680_18681) (u@@148 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_20346 p@@156 v_1@@155 q@@148 w@@155) (InsidePredicate_20346_18651 q@@148 w@@155 r@@148 u@@148)) (InsidePredicate_18094_18651 p@@156 v_1@@155 r@@148 u@@148))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_20346 p@@156 v_1@@155 q@@148 w@@155) (InsidePredicate_20346_18651 q@@148 w@@155 r@@148 u@@148))
)))
(assert (forall ((p@@157 T@Field_18121_18122) (v_1@@156 T@FrameType) (q@@149 T@Field_20346_20347) (w@@156 T@FrameType) (r@@149 T@Field_18121_18122) (u@@149 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_20346 p@@157 v_1@@156 q@@149 w@@156) (InsidePredicate_20346_18094 q@@149 w@@156 r@@149 u@@149)) (InsidePredicate_18094_18094 p@@157 v_1@@156 r@@149 u@@149))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_20346 p@@157 v_1@@156 q@@149 w@@156) (InsidePredicate_20346_18094 q@@149 w@@156 r@@149 u@@149))
)))
(assert (forall ((p@@158 T@Field_18121_18122) (v_1@@157 T@FrameType) (q@@150 T@Field_20346_20347) (w@@157 T@FrameType) (r@@150 T@Field_17538_17539) (u@@150 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_20346 p@@158 v_1@@157 q@@150 w@@157) (InsidePredicate_20346_17509 q@@150 w@@157 r@@150 u@@150)) (InsidePredicate_18094_17509 p@@158 v_1@@157 r@@150 u@@150))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_20346 p@@158 v_1@@157 q@@150 w@@157) (InsidePredicate_20346_17509 q@@150 w@@157 r@@150 u@@150))
)))
(assert (forall ((p@@159 T@Field_18121_18122) (v_1@@158 T@FrameType) (q@@151 T@Field_20346_20347) (w@@158 T@FrameType) (r@@151 T@Field_17064_17065) (u@@151 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_20346 p@@159 v_1@@158 q@@151 w@@158) (InsidePredicate_20346_17039 q@@151 w@@158 r@@151 u@@151)) (InsidePredicate_18094_17039 p@@159 v_1@@158 r@@151 u@@151))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_20346 p@@159 v_1@@158 q@@151 w@@158) (InsidePredicate_20346_17039 q@@151 w@@158 r@@151 u@@151))
)))
(assert (forall ((p@@160 T@Field_18121_18122) (v_1@@159 T@FrameType) (q@@152 T@Field_20346_20347) (w@@159 T@FrameType) (r@@152 T@Field_13713_7938) (u@@152 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_20346 p@@160 v_1@@159 q@@152 w@@159) (InsidePredicate_20346_13713 q@@152 w@@159 r@@152 u@@152)) (InsidePredicate_18094_13713 p@@160 v_1@@159 r@@152 u@@152))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_20346 p@@160 v_1@@159 q@@152 w@@159) (InsidePredicate_20346_13713 q@@152 w@@159 r@@152 u@@152))
)))
(assert (forall ((p@@161 T@Field_18121_18122) (v_1@@160 T@FrameType) (q@@153 T@Field_19426_19427) (w@@160 T@FrameType) (r@@153 T@Field_20346_20347) (u@@153 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_19426 p@@161 v_1@@160 q@@153 w@@160) (InsidePredicate_19426_20346 q@@153 w@@160 r@@153 u@@153)) (InsidePredicate_18094_20346 p@@161 v_1@@160 r@@153 u@@153))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_19426 p@@161 v_1@@160 q@@153 w@@160) (InsidePredicate_19426_20346 q@@153 w@@160 r@@153 u@@153))
)))
(assert (forall ((p@@162 T@Field_18121_18122) (v_1@@161 T@FrameType) (q@@154 T@Field_19426_19427) (w@@161 T@FrameType) (r@@154 T@Field_19426_19427) (u@@154 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_19426 p@@162 v_1@@161 q@@154 w@@161) (InsidePredicate_19426_19426 q@@154 w@@161 r@@154 u@@154)) (InsidePredicate_18094_19426 p@@162 v_1@@161 r@@154 u@@154))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_19426 p@@162 v_1@@161 q@@154 w@@161) (InsidePredicate_19426_19426 q@@154 w@@161 r@@154 u@@154))
)))
(assert (forall ((p@@163 T@Field_18121_18122) (v_1@@162 T@FrameType) (q@@155 T@Field_19426_19427) (w@@162 T@FrameType) (r@@155 T@Field_18680_18681) (u@@155 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_19426 p@@163 v_1@@162 q@@155 w@@162) (InsidePredicate_19426_18651 q@@155 w@@162 r@@155 u@@155)) (InsidePredicate_18094_18651 p@@163 v_1@@162 r@@155 u@@155))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_19426 p@@163 v_1@@162 q@@155 w@@162) (InsidePredicate_19426_18651 q@@155 w@@162 r@@155 u@@155))
)))
(assert (forall ((p@@164 T@Field_18121_18122) (v_1@@163 T@FrameType) (q@@156 T@Field_19426_19427) (w@@163 T@FrameType) (r@@156 T@Field_18121_18122) (u@@156 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_19426 p@@164 v_1@@163 q@@156 w@@163) (InsidePredicate_19426_18094 q@@156 w@@163 r@@156 u@@156)) (InsidePredicate_18094_18094 p@@164 v_1@@163 r@@156 u@@156))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_19426 p@@164 v_1@@163 q@@156 w@@163) (InsidePredicate_19426_18094 q@@156 w@@163 r@@156 u@@156))
)))
(assert (forall ((p@@165 T@Field_18121_18122) (v_1@@164 T@FrameType) (q@@157 T@Field_19426_19427) (w@@164 T@FrameType) (r@@157 T@Field_17538_17539) (u@@157 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_19426 p@@165 v_1@@164 q@@157 w@@164) (InsidePredicate_19426_17509 q@@157 w@@164 r@@157 u@@157)) (InsidePredicate_18094_17509 p@@165 v_1@@164 r@@157 u@@157))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_19426 p@@165 v_1@@164 q@@157 w@@164) (InsidePredicate_19426_17509 q@@157 w@@164 r@@157 u@@157))
)))
(assert (forall ((p@@166 T@Field_18121_18122) (v_1@@165 T@FrameType) (q@@158 T@Field_19426_19427) (w@@165 T@FrameType) (r@@158 T@Field_17064_17065) (u@@158 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_19426 p@@166 v_1@@165 q@@158 w@@165) (InsidePredicate_19426_17039 q@@158 w@@165 r@@158 u@@158)) (InsidePredicate_18094_17039 p@@166 v_1@@165 r@@158 u@@158))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_19426 p@@166 v_1@@165 q@@158 w@@165) (InsidePredicate_19426_17039 q@@158 w@@165 r@@158 u@@158))
)))
(assert (forall ((p@@167 T@Field_18121_18122) (v_1@@166 T@FrameType) (q@@159 T@Field_19426_19427) (w@@166 T@FrameType) (r@@159 T@Field_13713_7938) (u@@159 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_19426 p@@167 v_1@@166 q@@159 w@@166) (InsidePredicate_19426_13713 q@@159 w@@166 r@@159 u@@159)) (InsidePredicate_18094_13713 p@@167 v_1@@166 r@@159 u@@159))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_19426 p@@167 v_1@@166 q@@159 w@@166) (InsidePredicate_19426_13713 q@@159 w@@166 r@@159 u@@159))
)))
(assert (forall ((p@@168 T@Field_18121_18122) (v_1@@167 T@FrameType) (q@@160 T@Field_18680_18681) (w@@167 T@FrameType) (r@@160 T@Field_20346_20347) (u@@160 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_18651 p@@168 v_1@@167 q@@160 w@@167) (InsidePredicate_18651_20346 q@@160 w@@167 r@@160 u@@160)) (InsidePredicate_18094_20346 p@@168 v_1@@167 r@@160 u@@160))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_18651 p@@168 v_1@@167 q@@160 w@@167) (InsidePredicate_18651_20346 q@@160 w@@167 r@@160 u@@160))
)))
(assert (forall ((p@@169 T@Field_18121_18122) (v_1@@168 T@FrameType) (q@@161 T@Field_18680_18681) (w@@168 T@FrameType) (r@@161 T@Field_19426_19427) (u@@161 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_18651 p@@169 v_1@@168 q@@161 w@@168) (InsidePredicate_18651_19426 q@@161 w@@168 r@@161 u@@161)) (InsidePredicate_18094_19426 p@@169 v_1@@168 r@@161 u@@161))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_18651 p@@169 v_1@@168 q@@161 w@@168) (InsidePredicate_18651_19426 q@@161 w@@168 r@@161 u@@161))
)))
(assert (forall ((p@@170 T@Field_18121_18122) (v_1@@169 T@FrameType) (q@@162 T@Field_18680_18681) (w@@169 T@FrameType) (r@@162 T@Field_18680_18681) (u@@162 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_18651 p@@170 v_1@@169 q@@162 w@@169) (InsidePredicate_18651_18651 q@@162 w@@169 r@@162 u@@162)) (InsidePredicate_18094_18651 p@@170 v_1@@169 r@@162 u@@162))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_18651 p@@170 v_1@@169 q@@162 w@@169) (InsidePredicate_18651_18651 q@@162 w@@169 r@@162 u@@162))
)))
(assert (forall ((p@@171 T@Field_18121_18122) (v_1@@170 T@FrameType) (q@@163 T@Field_18680_18681) (w@@170 T@FrameType) (r@@163 T@Field_18121_18122) (u@@163 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_18651 p@@171 v_1@@170 q@@163 w@@170) (InsidePredicate_18651_18094 q@@163 w@@170 r@@163 u@@163)) (InsidePredicate_18094_18094 p@@171 v_1@@170 r@@163 u@@163))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_18651 p@@171 v_1@@170 q@@163 w@@170) (InsidePredicate_18651_18094 q@@163 w@@170 r@@163 u@@163))
)))
(assert (forall ((p@@172 T@Field_18121_18122) (v_1@@171 T@FrameType) (q@@164 T@Field_18680_18681) (w@@171 T@FrameType) (r@@164 T@Field_17538_17539) (u@@164 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_18651 p@@172 v_1@@171 q@@164 w@@171) (InsidePredicate_18651_17509 q@@164 w@@171 r@@164 u@@164)) (InsidePredicate_18094_17509 p@@172 v_1@@171 r@@164 u@@164))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_18651 p@@172 v_1@@171 q@@164 w@@171) (InsidePredicate_18651_17509 q@@164 w@@171 r@@164 u@@164))
)))
(assert (forall ((p@@173 T@Field_18121_18122) (v_1@@172 T@FrameType) (q@@165 T@Field_18680_18681) (w@@172 T@FrameType) (r@@165 T@Field_17064_17065) (u@@165 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_18651 p@@173 v_1@@172 q@@165 w@@172) (InsidePredicate_18651_17039 q@@165 w@@172 r@@165 u@@165)) (InsidePredicate_18094_17039 p@@173 v_1@@172 r@@165 u@@165))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_18651 p@@173 v_1@@172 q@@165 w@@172) (InsidePredicate_18651_17039 q@@165 w@@172 r@@165 u@@165))
)))
(assert (forall ((p@@174 T@Field_18121_18122) (v_1@@173 T@FrameType) (q@@166 T@Field_18680_18681) (w@@173 T@FrameType) (r@@166 T@Field_13713_7938) (u@@166 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_18651 p@@174 v_1@@173 q@@166 w@@173) (InsidePredicate_18651_13713 q@@166 w@@173 r@@166 u@@166)) (InsidePredicate_18094_13713 p@@174 v_1@@173 r@@166 u@@166))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_18651 p@@174 v_1@@173 q@@166 w@@173) (InsidePredicate_18651_13713 q@@166 w@@173 r@@166 u@@166))
)))
(assert (forall ((p@@175 T@Field_18121_18122) (v_1@@174 T@FrameType) (q@@167 T@Field_18121_18122) (w@@174 T@FrameType) (r@@167 T@Field_20346_20347) (u@@167 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_18094 p@@175 v_1@@174 q@@167 w@@174) (InsidePredicate_18094_20346 q@@167 w@@174 r@@167 u@@167)) (InsidePredicate_18094_20346 p@@175 v_1@@174 r@@167 u@@167))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_18094 p@@175 v_1@@174 q@@167 w@@174) (InsidePredicate_18094_20346 q@@167 w@@174 r@@167 u@@167))
)))
(assert (forall ((p@@176 T@Field_18121_18122) (v_1@@175 T@FrameType) (q@@168 T@Field_18121_18122) (w@@175 T@FrameType) (r@@168 T@Field_19426_19427) (u@@168 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_18094 p@@176 v_1@@175 q@@168 w@@175) (InsidePredicate_18094_19426 q@@168 w@@175 r@@168 u@@168)) (InsidePredicate_18094_19426 p@@176 v_1@@175 r@@168 u@@168))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_18094 p@@176 v_1@@175 q@@168 w@@175) (InsidePredicate_18094_19426 q@@168 w@@175 r@@168 u@@168))
)))
(assert (forall ((p@@177 T@Field_18121_18122) (v_1@@176 T@FrameType) (q@@169 T@Field_18121_18122) (w@@176 T@FrameType) (r@@169 T@Field_18680_18681) (u@@169 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_18094 p@@177 v_1@@176 q@@169 w@@176) (InsidePredicate_18094_18651 q@@169 w@@176 r@@169 u@@169)) (InsidePredicate_18094_18651 p@@177 v_1@@176 r@@169 u@@169))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_18094 p@@177 v_1@@176 q@@169 w@@176) (InsidePredicate_18094_18651 q@@169 w@@176 r@@169 u@@169))
)))
(assert (forall ((p@@178 T@Field_18121_18122) (v_1@@177 T@FrameType) (q@@170 T@Field_18121_18122) (w@@177 T@FrameType) (r@@170 T@Field_18121_18122) (u@@170 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_18094 p@@178 v_1@@177 q@@170 w@@177) (InsidePredicate_18094_18094 q@@170 w@@177 r@@170 u@@170)) (InsidePredicate_18094_18094 p@@178 v_1@@177 r@@170 u@@170))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_18094 p@@178 v_1@@177 q@@170 w@@177) (InsidePredicate_18094_18094 q@@170 w@@177 r@@170 u@@170))
)))
(assert (forall ((p@@179 T@Field_18121_18122) (v_1@@178 T@FrameType) (q@@171 T@Field_18121_18122) (w@@178 T@FrameType) (r@@171 T@Field_17538_17539) (u@@171 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_18094 p@@179 v_1@@178 q@@171 w@@178) (InsidePredicate_18094_17509 q@@171 w@@178 r@@171 u@@171)) (InsidePredicate_18094_17509 p@@179 v_1@@178 r@@171 u@@171))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_18094 p@@179 v_1@@178 q@@171 w@@178) (InsidePredicate_18094_17509 q@@171 w@@178 r@@171 u@@171))
)))
(assert (forall ((p@@180 T@Field_18121_18122) (v_1@@179 T@FrameType) (q@@172 T@Field_18121_18122) (w@@179 T@FrameType) (r@@172 T@Field_17064_17065) (u@@172 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_18094 p@@180 v_1@@179 q@@172 w@@179) (InsidePredicate_18094_17039 q@@172 w@@179 r@@172 u@@172)) (InsidePredicate_18094_17039 p@@180 v_1@@179 r@@172 u@@172))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_18094 p@@180 v_1@@179 q@@172 w@@179) (InsidePredicate_18094_17039 q@@172 w@@179 r@@172 u@@172))
)))
(assert (forall ((p@@181 T@Field_18121_18122) (v_1@@180 T@FrameType) (q@@173 T@Field_18121_18122) (w@@180 T@FrameType) (r@@173 T@Field_13713_7938) (u@@173 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_18094 p@@181 v_1@@180 q@@173 w@@180) (InsidePredicate_18094_13713 q@@173 w@@180 r@@173 u@@173)) (InsidePredicate_18094_13713 p@@181 v_1@@180 r@@173 u@@173))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_18094 p@@181 v_1@@180 q@@173 w@@180) (InsidePredicate_18094_13713 q@@173 w@@180 r@@173 u@@173))
)))
(assert (forall ((p@@182 T@Field_18121_18122) (v_1@@181 T@FrameType) (q@@174 T@Field_17538_17539) (w@@181 T@FrameType) (r@@174 T@Field_20346_20347) (u@@174 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_17509 p@@182 v_1@@181 q@@174 w@@181) (InsidePredicate_17509_20346 q@@174 w@@181 r@@174 u@@174)) (InsidePredicate_18094_20346 p@@182 v_1@@181 r@@174 u@@174))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_17509 p@@182 v_1@@181 q@@174 w@@181) (InsidePredicate_17509_20346 q@@174 w@@181 r@@174 u@@174))
)))
(assert (forall ((p@@183 T@Field_18121_18122) (v_1@@182 T@FrameType) (q@@175 T@Field_17538_17539) (w@@182 T@FrameType) (r@@175 T@Field_19426_19427) (u@@175 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_17509 p@@183 v_1@@182 q@@175 w@@182) (InsidePredicate_17509_19426 q@@175 w@@182 r@@175 u@@175)) (InsidePredicate_18094_19426 p@@183 v_1@@182 r@@175 u@@175))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_17509 p@@183 v_1@@182 q@@175 w@@182) (InsidePredicate_17509_19426 q@@175 w@@182 r@@175 u@@175))
)))
(assert (forall ((p@@184 T@Field_18121_18122) (v_1@@183 T@FrameType) (q@@176 T@Field_17538_17539) (w@@183 T@FrameType) (r@@176 T@Field_18680_18681) (u@@176 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_17509 p@@184 v_1@@183 q@@176 w@@183) (InsidePredicate_17509_18651 q@@176 w@@183 r@@176 u@@176)) (InsidePredicate_18094_18651 p@@184 v_1@@183 r@@176 u@@176))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_17509 p@@184 v_1@@183 q@@176 w@@183) (InsidePredicate_17509_18651 q@@176 w@@183 r@@176 u@@176))
)))
(assert (forall ((p@@185 T@Field_18121_18122) (v_1@@184 T@FrameType) (q@@177 T@Field_17538_17539) (w@@184 T@FrameType) (r@@177 T@Field_18121_18122) (u@@177 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_17509 p@@185 v_1@@184 q@@177 w@@184) (InsidePredicate_17509_18094 q@@177 w@@184 r@@177 u@@177)) (InsidePredicate_18094_18094 p@@185 v_1@@184 r@@177 u@@177))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_17509 p@@185 v_1@@184 q@@177 w@@184) (InsidePredicate_17509_18094 q@@177 w@@184 r@@177 u@@177))
)))
(assert (forall ((p@@186 T@Field_18121_18122) (v_1@@185 T@FrameType) (q@@178 T@Field_17538_17539) (w@@185 T@FrameType) (r@@178 T@Field_17538_17539) (u@@178 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_17509 p@@186 v_1@@185 q@@178 w@@185) (InsidePredicate_17509_17509 q@@178 w@@185 r@@178 u@@178)) (InsidePredicate_18094_17509 p@@186 v_1@@185 r@@178 u@@178))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_17509 p@@186 v_1@@185 q@@178 w@@185) (InsidePredicate_17509_17509 q@@178 w@@185 r@@178 u@@178))
)))
(assert (forall ((p@@187 T@Field_18121_18122) (v_1@@186 T@FrameType) (q@@179 T@Field_17538_17539) (w@@186 T@FrameType) (r@@179 T@Field_17064_17065) (u@@179 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_17509 p@@187 v_1@@186 q@@179 w@@186) (InsidePredicate_17509_17039 q@@179 w@@186 r@@179 u@@179)) (InsidePredicate_18094_17039 p@@187 v_1@@186 r@@179 u@@179))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_17509 p@@187 v_1@@186 q@@179 w@@186) (InsidePredicate_17509_17039 q@@179 w@@186 r@@179 u@@179))
)))
(assert (forall ((p@@188 T@Field_18121_18122) (v_1@@187 T@FrameType) (q@@180 T@Field_17538_17539) (w@@187 T@FrameType) (r@@180 T@Field_13713_7938) (u@@180 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_17509 p@@188 v_1@@187 q@@180 w@@187) (InsidePredicate_17509_13713 q@@180 w@@187 r@@180 u@@180)) (InsidePredicate_18094_13713 p@@188 v_1@@187 r@@180 u@@180))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_17509 p@@188 v_1@@187 q@@180 w@@187) (InsidePredicate_17509_13713 q@@180 w@@187 r@@180 u@@180))
)))
(assert (forall ((p@@189 T@Field_18121_18122) (v_1@@188 T@FrameType) (q@@181 T@Field_17064_17065) (w@@188 T@FrameType) (r@@181 T@Field_20346_20347) (u@@181 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_17039 p@@189 v_1@@188 q@@181 w@@188) (InsidePredicate_17039_20346 q@@181 w@@188 r@@181 u@@181)) (InsidePredicate_18094_20346 p@@189 v_1@@188 r@@181 u@@181))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_17039 p@@189 v_1@@188 q@@181 w@@188) (InsidePredicate_17039_20346 q@@181 w@@188 r@@181 u@@181))
)))
(assert (forall ((p@@190 T@Field_18121_18122) (v_1@@189 T@FrameType) (q@@182 T@Field_17064_17065) (w@@189 T@FrameType) (r@@182 T@Field_19426_19427) (u@@182 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_17039 p@@190 v_1@@189 q@@182 w@@189) (InsidePredicate_17039_19426 q@@182 w@@189 r@@182 u@@182)) (InsidePredicate_18094_19426 p@@190 v_1@@189 r@@182 u@@182))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_17039 p@@190 v_1@@189 q@@182 w@@189) (InsidePredicate_17039_19426 q@@182 w@@189 r@@182 u@@182))
)))
(assert (forall ((p@@191 T@Field_18121_18122) (v_1@@190 T@FrameType) (q@@183 T@Field_17064_17065) (w@@190 T@FrameType) (r@@183 T@Field_18680_18681) (u@@183 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_17039 p@@191 v_1@@190 q@@183 w@@190) (InsidePredicate_17039_18651 q@@183 w@@190 r@@183 u@@183)) (InsidePredicate_18094_18651 p@@191 v_1@@190 r@@183 u@@183))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_17039 p@@191 v_1@@190 q@@183 w@@190) (InsidePredicate_17039_18651 q@@183 w@@190 r@@183 u@@183))
)))
(assert (forall ((p@@192 T@Field_18121_18122) (v_1@@191 T@FrameType) (q@@184 T@Field_17064_17065) (w@@191 T@FrameType) (r@@184 T@Field_18121_18122) (u@@184 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_17039 p@@192 v_1@@191 q@@184 w@@191) (InsidePredicate_17039_18094 q@@184 w@@191 r@@184 u@@184)) (InsidePredicate_18094_18094 p@@192 v_1@@191 r@@184 u@@184))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_17039 p@@192 v_1@@191 q@@184 w@@191) (InsidePredicate_17039_18094 q@@184 w@@191 r@@184 u@@184))
)))
(assert (forall ((p@@193 T@Field_18121_18122) (v_1@@192 T@FrameType) (q@@185 T@Field_17064_17065) (w@@192 T@FrameType) (r@@185 T@Field_17538_17539) (u@@185 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_17039 p@@193 v_1@@192 q@@185 w@@192) (InsidePredicate_17039_17509 q@@185 w@@192 r@@185 u@@185)) (InsidePredicate_18094_17509 p@@193 v_1@@192 r@@185 u@@185))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_17039 p@@193 v_1@@192 q@@185 w@@192) (InsidePredicate_17039_17509 q@@185 w@@192 r@@185 u@@185))
)))
(assert (forall ((p@@194 T@Field_18121_18122) (v_1@@193 T@FrameType) (q@@186 T@Field_17064_17065) (w@@193 T@FrameType) (r@@186 T@Field_17064_17065) (u@@186 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_17039 p@@194 v_1@@193 q@@186 w@@193) (InsidePredicate_17039_17039 q@@186 w@@193 r@@186 u@@186)) (InsidePredicate_18094_17039 p@@194 v_1@@193 r@@186 u@@186))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_17039 p@@194 v_1@@193 q@@186 w@@193) (InsidePredicate_17039_17039 q@@186 w@@193 r@@186 u@@186))
)))
(assert (forall ((p@@195 T@Field_18121_18122) (v_1@@194 T@FrameType) (q@@187 T@Field_17064_17065) (w@@194 T@FrameType) (r@@187 T@Field_13713_7938) (u@@187 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_17039 p@@195 v_1@@194 q@@187 w@@194) (InsidePredicate_17039_13713 q@@187 w@@194 r@@187 u@@187)) (InsidePredicate_18094_13713 p@@195 v_1@@194 r@@187 u@@187))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_17039 p@@195 v_1@@194 q@@187 w@@194) (InsidePredicate_17039_13713 q@@187 w@@194 r@@187 u@@187))
)))
(assert (forall ((p@@196 T@Field_18121_18122) (v_1@@195 T@FrameType) (q@@188 T@Field_13713_7938) (w@@195 T@FrameType) (r@@188 T@Field_20346_20347) (u@@188 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_13713 p@@196 v_1@@195 q@@188 w@@195) (InsidePredicate_13713_20346 q@@188 w@@195 r@@188 u@@188)) (InsidePredicate_18094_20346 p@@196 v_1@@195 r@@188 u@@188))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_13713 p@@196 v_1@@195 q@@188 w@@195) (InsidePredicate_13713_20346 q@@188 w@@195 r@@188 u@@188))
)))
(assert (forall ((p@@197 T@Field_18121_18122) (v_1@@196 T@FrameType) (q@@189 T@Field_13713_7938) (w@@196 T@FrameType) (r@@189 T@Field_19426_19427) (u@@189 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_13713 p@@197 v_1@@196 q@@189 w@@196) (InsidePredicate_13713_19426 q@@189 w@@196 r@@189 u@@189)) (InsidePredicate_18094_19426 p@@197 v_1@@196 r@@189 u@@189))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_13713 p@@197 v_1@@196 q@@189 w@@196) (InsidePredicate_13713_19426 q@@189 w@@196 r@@189 u@@189))
)))
(assert (forall ((p@@198 T@Field_18121_18122) (v_1@@197 T@FrameType) (q@@190 T@Field_13713_7938) (w@@197 T@FrameType) (r@@190 T@Field_18680_18681) (u@@190 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_13713 p@@198 v_1@@197 q@@190 w@@197) (InsidePredicate_13713_18651 q@@190 w@@197 r@@190 u@@190)) (InsidePredicate_18094_18651 p@@198 v_1@@197 r@@190 u@@190))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_13713 p@@198 v_1@@197 q@@190 w@@197) (InsidePredicate_13713_18651 q@@190 w@@197 r@@190 u@@190))
)))
(assert (forall ((p@@199 T@Field_18121_18122) (v_1@@198 T@FrameType) (q@@191 T@Field_13713_7938) (w@@198 T@FrameType) (r@@191 T@Field_18121_18122) (u@@191 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_13713 p@@199 v_1@@198 q@@191 w@@198) (InsidePredicate_13713_18094 q@@191 w@@198 r@@191 u@@191)) (InsidePredicate_18094_18094 p@@199 v_1@@198 r@@191 u@@191))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_13713 p@@199 v_1@@198 q@@191 w@@198) (InsidePredicate_13713_18094 q@@191 w@@198 r@@191 u@@191))
)))
(assert (forall ((p@@200 T@Field_18121_18122) (v_1@@199 T@FrameType) (q@@192 T@Field_13713_7938) (w@@199 T@FrameType) (r@@192 T@Field_17538_17539) (u@@192 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_13713 p@@200 v_1@@199 q@@192 w@@199) (InsidePredicate_13713_17509 q@@192 w@@199 r@@192 u@@192)) (InsidePredicate_18094_17509 p@@200 v_1@@199 r@@192 u@@192))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_13713 p@@200 v_1@@199 q@@192 w@@199) (InsidePredicate_13713_17509 q@@192 w@@199 r@@192 u@@192))
)))
(assert (forall ((p@@201 T@Field_18121_18122) (v_1@@200 T@FrameType) (q@@193 T@Field_13713_7938) (w@@200 T@FrameType) (r@@193 T@Field_17064_17065) (u@@193 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_13713 p@@201 v_1@@200 q@@193 w@@200) (InsidePredicate_13713_17039 q@@193 w@@200 r@@193 u@@193)) (InsidePredicate_18094_17039 p@@201 v_1@@200 r@@193 u@@193))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_13713 p@@201 v_1@@200 q@@193 w@@200) (InsidePredicate_13713_17039 q@@193 w@@200 r@@193 u@@193))
)))
(assert (forall ((p@@202 T@Field_18121_18122) (v_1@@201 T@FrameType) (q@@194 T@Field_13713_7938) (w@@201 T@FrameType) (r@@194 T@Field_13713_7938) (u@@194 T@FrameType) ) (!  (=> (and (InsidePredicate_18094_13713 p@@202 v_1@@201 q@@194 w@@201) (InsidePredicate_13713_13713 q@@194 w@@201 r@@194 u@@194)) (InsidePredicate_18094_13713 p@@202 v_1@@201 r@@194 u@@194))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18094_13713 p@@202 v_1@@201 q@@194 w@@201) (InsidePredicate_13713_13713 q@@194 w@@201 r@@194 u@@194))
)))
(assert (forall ((p@@203 T@Field_17538_17539) (v_1@@202 T@FrameType) (q@@195 T@Field_20346_20347) (w@@202 T@FrameType) (r@@195 T@Field_20346_20347) (u@@195 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_20346 p@@203 v_1@@202 q@@195 w@@202) (InsidePredicate_20346_20346 q@@195 w@@202 r@@195 u@@195)) (InsidePredicate_17509_20346 p@@203 v_1@@202 r@@195 u@@195))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_20346 p@@203 v_1@@202 q@@195 w@@202) (InsidePredicate_20346_20346 q@@195 w@@202 r@@195 u@@195))
)))
(assert (forall ((p@@204 T@Field_17538_17539) (v_1@@203 T@FrameType) (q@@196 T@Field_20346_20347) (w@@203 T@FrameType) (r@@196 T@Field_19426_19427) (u@@196 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_20346 p@@204 v_1@@203 q@@196 w@@203) (InsidePredicate_20346_19426 q@@196 w@@203 r@@196 u@@196)) (InsidePredicate_17509_19426 p@@204 v_1@@203 r@@196 u@@196))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_20346 p@@204 v_1@@203 q@@196 w@@203) (InsidePredicate_20346_19426 q@@196 w@@203 r@@196 u@@196))
)))
(assert (forall ((p@@205 T@Field_17538_17539) (v_1@@204 T@FrameType) (q@@197 T@Field_20346_20347) (w@@204 T@FrameType) (r@@197 T@Field_18680_18681) (u@@197 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_20346 p@@205 v_1@@204 q@@197 w@@204) (InsidePredicate_20346_18651 q@@197 w@@204 r@@197 u@@197)) (InsidePredicate_17509_18651 p@@205 v_1@@204 r@@197 u@@197))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_20346 p@@205 v_1@@204 q@@197 w@@204) (InsidePredicate_20346_18651 q@@197 w@@204 r@@197 u@@197))
)))
(assert (forall ((p@@206 T@Field_17538_17539) (v_1@@205 T@FrameType) (q@@198 T@Field_20346_20347) (w@@205 T@FrameType) (r@@198 T@Field_18121_18122) (u@@198 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_20346 p@@206 v_1@@205 q@@198 w@@205) (InsidePredicate_20346_18094 q@@198 w@@205 r@@198 u@@198)) (InsidePredicate_17509_18094 p@@206 v_1@@205 r@@198 u@@198))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_20346 p@@206 v_1@@205 q@@198 w@@205) (InsidePredicate_20346_18094 q@@198 w@@205 r@@198 u@@198))
)))
(assert (forall ((p@@207 T@Field_17538_17539) (v_1@@206 T@FrameType) (q@@199 T@Field_20346_20347) (w@@206 T@FrameType) (r@@199 T@Field_17538_17539) (u@@199 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_20346 p@@207 v_1@@206 q@@199 w@@206) (InsidePredicate_20346_17509 q@@199 w@@206 r@@199 u@@199)) (InsidePredicate_17509_17509 p@@207 v_1@@206 r@@199 u@@199))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_20346 p@@207 v_1@@206 q@@199 w@@206) (InsidePredicate_20346_17509 q@@199 w@@206 r@@199 u@@199))
)))
(assert (forall ((p@@208 T@Field_17538_17539) (v_1@@207 T@FrameType) (q@@200 T@Field_20346_20347) (w@@207 T@FrameType) (r@@200 T@Field_17064_17065) (u@@200 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_20346 p@@208 v_1@@207 q@@200 w@@207) (InsidePredicate_20346_17039 q@@200 w@@207 r@@200 u@@200)) (InsidePredicate_17509_17039 p@@208 v_1@@207 r@@200 u@@200))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_20346 p@@208 v_1@@207 q@@200 w@@207) (InsidePredicate_20346_17039 q@@200 w@@207 r@@200 u@@200))
)))
(assert (forall ((p@@209 T@Field_17538_17539) (v_1@@208 T@FrameType) (q@@201 T@Field_20346_20347) (w@@208 T@FrameType) (r@@201 T@Field_13713_7938) (u@@201 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_20346 p@@209 v_1@@208 q@@201 w@@208) (InsidePredicate_20346_13713 q@@201 w@@208 r@@201 u@@201)) (InsidePredicate_17509_13713 p@@209 v_1@@208 r@@201 u@@201))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_20346 p@@209 v_1@@208 q@@201 w@@208) (InsidePredicate_20346_13713 q@@201 w@@208 r@@201 u@@201))
)))
(assert (forall ((p@@210 T@Field_17538_17539) (v_1@@209 T@FrameType) (q@@202 T@Field_19426_19427) (w@@209 T@FrameType) (r@@202 T@Field_20346_20347) (u@@202 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_19426 p@@210 v_1@@209 q@@202 w@@209) (InsidePredicate_19426_20346 q@@202 w@@209 r@@202 u@@202)) (InsidePredicate_17509_20346 p@@210 v_1@@209 r@@202 u@@202))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_19426 p@@210 v_1@@209 q@@202 w@@209) (InsidePredicate_19426_20346 q@@202 w@@209 r@@202 u@@202))
)))
(assert (forall ((p@@211 T@Field_17538_17539) (v_1@@210 T@FrameType) (q@@203 T@Field_19426_19427) (w@@210 T@FrameType) (r@@203 T@Field_19426_19427) (u@@203 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_19426 p@@211 v_1@@210 q@@203 w@@210) (InsidePredicate_19426_19426 q@@203 w@@210 r@@203 u@@203)) (InsidePredicate_17509_19426 p@@211 v_1@@210 r@@203 u@@203))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_19426 p@@211 v_1@@210 q@@203 w@@210) (InsidePredicate_19426_19426 q@@203 w@@210 r@@203 u@@203))
)))
(assert (forall ((p@@212 T@Field_17538_17539) (v_1@@211 T@FrameType) (q@@204 T@Field_19426_19427) (w@@211 T@FrameType) (r@@204 T@Field_18680_18681) (u@@204 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_19426 p@@212 v_1@@211 q@@204 w@@211) (InsidePredicate_19426_18651 q@@204 w@@211 r@@204 u@@204)) (InsidePredicate_17509_18651 p@@212 v_1@@211 r@@204 u@@204))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_19426 p@@212 v_1@@211 q@@204 w@@211) (InsidePredicate_19426_18651 q@@204 w@@211 r@@204 u@@204))
)))
(assert (forall ((p@@213 T@Field_17538_17539) (v_1@@212 T@FrameType) (q@@205 T@Field_19426_19427) (w@@212 T@FrameType) (r@@205 T@Field_18121_18122) (u@@205 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_19426 p@@213 v_1@@212 q@@205 w@@212) (InsidePredicate_19426_18094 q@@205 w@@212 r@@205 u@@205)) (InsidePredicate_17509_18094 p@@213 v_1@@212 r@@205 u@@205))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_19426 p@@213 v_1@@212 q@@205 w@@212) (InsidePredicate_19426_18094 q@@205 w@@212 r@@205 u@@205))
)))
(assert (forall ((p@@214 T@Field_17538_17539) (v_1@@213 T@FrameType) (q@@206 T@Field_19426_19427) (w@@213 T@FrameType) (r@@206 T@Field_17538_17539) (u@@206 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_19426 p@@214 v_1@@213 q@@206 w@@213) (InsidePredicate_19426_17509 q@@206 w@@213 r@@206 u@@206)) (InsidePredicate_17509_17509 p@@214 v_1@@213 r@@206 u@@206))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_19426 p@@214 v_1@@213 q@@206 w@@213) (InsidePredicate_19426_17509 q@@206 w@@213 r@@206 u@@206))
)))
(assert (forall ((p@@215 T@Field_17538_17539) (v_1@@214 T@FrameType) (q@@207 T@Field_19426_19427) (w@@214 T@FrameType) (r@@207 T@Field_17064_17065) (u@@207 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_19426 p@@215 v_1@@214 q@@207 w@@214) (InsidePredicate_19426_17039 q@@207 w@@214 r@@207 u@@207)) (InsidePredicate_17509_17039 p@@215 v_1@@214 r@@207 u@@207))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_19426 p@@215 v_1@@214 q@@207 w@@214) (InsidePredicate_19426_17039 q@@207 w@@214 r@@207 u@@207))
)))
(assert (forall ((p@@216 T@Field_17538_17539) (v_1@@215 T@FrameType) (q@@208 T@Field_19426_19427) (w@@215 T@FrameType) (r@@208 T@Field_13713_7938) (u@@208 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_19426 p@@216 v_1@@215 q@@208 w@@215) (InsidePredicate_19426_13713 q@@208 w@@215 r@@208 u@@208)) (InsidePredicate_17509_13713 p@@216 v_1@@215 r@@208 u@@208))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_19426 p@@216 v_1@@215 q@@208 w@@215) (InsidePredicate_19426_13713 q@@208 w@@215 r@@208 u@@208))
)))
(assert (forall ((p@@217 T@Field_17538_17539) (v_1@@216 T@FrameType) (q@@209 T@Field_18680_18681) (w@@216 T@FrameType) (r@@209 T@Field_20346_20347) (u@@209 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_18651 p@@217 v_1@@216 q@@209 w@@216) (InsidePredicate_18651_20346 q@@209 w@@216 r@@209 u@@209)) (InsidePredicate_17509_20346 p@@217 v_1@@216 r@@209 u@@209))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_18651 p@@217 v_1@@216 q@@209 w@@216) (InsidePredicate_18651_20346 q@@209 w@@216 r@@209 u@@209))
)))
(assert (forall ((p@@218 T@Field_17538_17539) (v_1@@217 T@FrameType) (q@@210 T@Field_18680_18681) (w@@217 T@FrameType) (r@@210 T@Field_19426_19427) (u@@210 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_18651 p@@218 v_1@@217 q@@210 w@@217) (InsidePredicate_18651_19426 q@@210 w@@217 r@@210 u@@210)) (InsidePredicate_17509_19426 p@@218 v_1@@217 r@@210 u@@210))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_18651 p@@218 v_1@@217 q@@210 w@@217) (InsidePredicate_18651_19426 q@@210 w@@217 r@@210 u@@210))
)))
(assert (forall ((p@@219 T@Field_17538_17539) (v_1@@218 T@FrameType) (q@@211 T@Field_18680_18681) (w@@218 T@FrameType) (r@@211 T@Field_18680_18681) (u@@211 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_18651 p@@219 v_1@@218 q@@211 w@@218) (InsidePredicate_18651_18651 q@@211 w@@218 r@@211 u@@211)) (InsidePredicate_17509_18651 p@@219 v_1@@218 r@@211 u@@211))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_18651 p@@219 v_1@@218 q@@211 w@@218) (InsidePredicate_18651_18651 q@@211 w@@218 r@@211 u@@211))
)))
(assert (forall ((p@@220 T@Field_17538_17539) (v_1@@219 T@FrameType) (q@@212 T@Field_18680_18681) (w@@219 T@FrameType) (r@@212 T@Field_18121_18122) (u@@212 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_18651 p@@220 v_1@@219 q@@212 w@@219) (InsidePredicate_18651_18094 q@@212 w@@219 r@@212 u@@212)) (InsidePredicate_17509_18094 p@@220 v_1@@219 r@@212 u@@212))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_18651 p@@220 v_1@@219 q@@212 w@@219) (InsidePredicate_18651_18094 q@@212 w@@219 r@@212 u@@212))
)))
(assert (forall ((p@@221 T@Field_17538_17539) (v_1@@220 T@FrameType) (q@@213 T@Field_18680_18681) (w@@220 T@FrameType) (r@@213 T@Field_17538_17539) (u@@213 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_18651 p@@221 v_1@@220 q@@213 w@@220) (InsidePredicate_18651_17509 q@@213 w@@220 r@@213 u@@213)) (InsidePredicate_17509_17509 p@@221 v_1@@220 r@@213 u@@213))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_18651 p@@221 v_1@@220 q@@213 w@@220) (InsidePredicate_18651_17509 q@@213 w@@220 r@@213 u@@213))
)))
(assert (forall ((p@@222 T@Field_17538_17539) (v_1@@221 T@FrameType) (q@@214 T@Field_18680_18681) (w@@221 T@FrameType) (r@@214 T@Field_17064_17065) (u@@214 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_18651 p@@222 v_1@@221 q@@214 w@@221) (InsidePredicate_18651_17039 q@@214 w@@221 r@@214 u@@214)) (InsidePredicate_17509_17039 p@@222 v_1@@221 r@@214 u@@214))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_18651 p@@222 v_1@@221 q@@214 w@@221) (InsidePredicate_18651_17039 q@@214 w@@221 r@@214 u@@214))
)))
(assert (forall ((p@@223 T@Field_17538_17539) (v_1@@222 T@FrameType) (q@@215 T@Field_18680_18681) (w@@222 T@FrameType) (r@@215 T@Field_13713_7938) (u@@215 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_18651 p@@223 v_1@@222 q@@215 w@@222) (InsidePredicate_18651_13713 q@@215 w@@222 r@@215 u@@215)) (InsidePredicate_17509_13713 p@@223 v_1@@222 r@@215 u@@215))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_18651 p@@223 v_1@@222 q@@215 w@@222) (InsidePredicate_18651_13713 q@@215 w@@222 r@@215 u@@215))
)))
(assert (forall ((p@@224 T@Field_17538_17539) (v_1@@223 T@FrameType) (q@@216 T@Field_18121_18122) (w@@223 T@FrameType) (r@@216 T@Field_20346_20347) (u@@216 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_18094 p@@224 v_1@@223 q@@216 w@@223) (InsidePredicate_18094_20346 q@@216 w@@223 r@@216 u@@216)) (InsidePredicate_17509_20346 p@@224 v_1@@223 r@@216 u@@216))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_18094 p@@224 v_1@@223 q@@216 w@@223) (InsidePredicate_18094_20346 q@@216 w@@223 r@@216 u@@216))
)))
(assert (forall ((p@@225 T@Field_17538_17539) (v_1@@224 T@FrameType) (q@@217 T@Field_18121_18122) (w@@224 T@FrameType) (r@@217 T@Field_19426_19427) (u@@217 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_18094 p@@225 v_1@@224 q@@217 w@@224) (InsidePredicate_18094_19426 q@@217 w@@224 r@@217 u@@217)) (InsidePredicate_17509_19426 p@@225 v_1@@224 r@@217 u@@217))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_18094 p@@225 v_1@@224 q@@217 w@@224) (InsidePredicate_18094_19426 q@@217 w@@224 r@@217 u@@217))
)))
(assert (forall ((p@@226 T@Field_17538_17539) (v_1@@225 T@FrameType) (q@@218 T@Field_18121_18122) (w@@225 T@FrameType) (r@@218 T@Field_18680_18681) (u@@218 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_18094 p@@226 v_1@@225 q@@218 w@@225) (InsidePredicate_18094_18651 q@@218 w@@225 r@@218 u@@218)) (InsidePredicate_17509_18651 p@@226 v_1@@225 r@@218 u@@218))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_18094 p@@226 v_1@@225 q@@218 w@@225) (InsidePredicate_18094_18651 q@@218 w@@225 r@@218 u@@218))
)))
(assert (forall ((p@@227 T@Field_17538_17539) (v_1@@226 T@FrameType) (q@@219 T@Field_18121_18122) (w@@226 T@FrameType) (r@@219 T@Field_18121_18122) (u@@219 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_18094 p@@227 v_1@@226 q@@219 w@@226) (InsidePredicate_18094_18094 q@@219 w@@226 r@@219 u@@219)) (InsidePredicate_17509_18094 p@@227 v_1@@226 r@@219 u@@219))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_18094 p@@227 v_1@@226 q@@219 w@@226) (InsidePredicate_18094_18094 q@@219 w@@226 r@@219 u@@219))
)))
(assert (forall ((p@@228 T@Field_17538_17539) (v_1@@227 T@FrameType) (q@@220 T@Field_18121_18122) (w@@227 T@FrameType) (r@@220 T@Field_17538_17539) (u@@220 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_18094 p@@228 v_1@@227 q@@220 w@@227) (InsidePredicate_18094_17509 q@@220 w@@227 r@@220 u@@220)) (InsidePredicate_17509_17509 p@@228 v_1@@227 r@@220 u@@220))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_18094 p@@228 v_1@@227 q@@220 w@@227) (InsidePredicate_18094_17509 q@@220 w@@227 r@@220 u@@220))
)))
(assert (forall ((p@@229 T@Field_17538_17539) (v_1@@228 T@FrameType) (q@@221 T@Field_18121_18122) (w@@228 T@FrameType) (r@@221 T@Field_17064_17065) (u@@221 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_18094 p@@229 v_1@@228 q@@221 w@@228) (InsidePredicate_18094_17039 q@@221 w@@228 r@@221 u@@221)) (InsidePredicate_17509_17039 p@@229 v_1@@228 r@@221 u@@221))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_18094 p@@229 v_1@@228 q@@221 w@@228) (InsidePredicate_18094_17039 q@@221 w@@228 r@@221 u@@221))
)))
(assert (forall ((p@@230 T@Field_17538_17539) (v_1@@229 T@FrameType) (q@@222 T@Field_18121_18122) (w@@229 T@FrameType) (r@@222 T@Field_13713_7938) (u@@222 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_18094 p@@230 v_1@@229 q@@222 w@@229) (InsidePredicate_18094_13713 q@@222 w@@229 r@@222 u@@222)) (InsidePredicate_17509_13713 p@@230 v_1@@229 r@@222 u@@222))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_18094 p@@230 v_1@@229 q@@222 w@@229) (InsidePredicate_18094_13713 q@@222 w@@229 r@@222 u@@222))
)))
(assert (forall ((p@@231 T@Field_17538_17539) (v_1@@230 T@FrameType) (q@@223 T@Field_17538_17539) (w@@230 T@FrameType) (r@@223 T@Field_20346_20347) (u@@223 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_17509 p@@231 v_1@@230 q@@223 w@@230) (InsidePredicate_17509_20346 q@@223 w@@230 r@@223 u@@223)) (InsidePredicate_17509_20346 p@@231 v_1@@230 r@@223 u@@223))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_17509 p@@231 v_1@@230 q@@223 w@@230) (InsidePredicate_17509_20346 q@@223 w@@230 r@@223 u@@223))
)))
(assert (forall ((p@@232 T@Field_17538_17539) (v_1@@231 T@FrameType) (q@@224 T@Field_17538_17539) (w@@231 T@FrameType) (r@@224 T@Field_19426_19427) (u@@224 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_17509 p@@232 v_1@@231 q@@224 w@@231) (InsidePredicate_17509_19426 q@@224 w@@231 r@@224 u@@224)) (InsidePredicate_17509_19426 p@@232 v_1@@231 r@@224 u@@224))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_17509 p@@232 v_1@@231 q@@224 w@@231) (InsidePredicate_17509_19426 q@@224 w@@231 r@@224 u@@224))
)))
(assert (forall ((p@@233 T@Field_17538_17539) (v_1@@232 T@FrameType) (q@@225 T@Field_17538_17539) (w@@232 T@FrameType) (r@@225 T@Field_18680_18681) (u@@225 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_17509 p@@233 v_1@@232 q@@225 w@@232) (InsidePredicate_17509_18651 q@@225 w@@232 r@@225 u@@225)) (InsidePredicate_17509_18651 p@@233 v_1@@232 r@@225 u@@225))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_17509 p@@233 v_1@@232 q@@225 w@@232) (InsidePredicate_17509_18651 q@@225 w@@232 r@@225 u@@225))
)))
(assert (forall ((p@@234 T@Field_17538_17539) (v_1@@233 T@FrameType) (q@@226 T@Field_17538_17539) (w@@233 T@FrameType) (r@@226 T@Field_18121_18122) (u@@226 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_17509 p@@234 v_1@@233 q@@226 w@@233) (InsidePredicate_17509_18094 q@@226 w@@233 r@@226 u@@226)) (InsidePredicate_17509_18094 p@@234 v_1@@233 r@@226 u@@226))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_17509 p@@234 v_1@@233 q@@226 w@@233) (InsidePredicate_17509_18094 q@@226 w@@233 r@@226 u@@226))
)))
(assert (forall ((p@@235 T@Field_17538_17539) (v_1@@234 T@FrameType) (q@@227 T@Field_17538_17539) (w@@234 T@FrameType) (r@@227 T@Field_17538_17539) (u@@227 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_17509 p@@235 v_1@@234 q@@227 w@@234) (InsidePredicate_17509_17509 q@@227 w@@234 r@@227 u@@227)) (InsidePredicate_17509_17509 p@@235 v_1@@234 r@@227 u@@227))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_17509 p@@235 v_1@@234 q@@227 w@@234) (InsidePredicate_17509_17509 q@@227 w@@234 r@@227 u@@227))
)))
(assert (forall ((p@@236 T@Field_17538_17539) (v_1@@235 T@FrameType) (q@@228 T@Field_17538_17539) (w@@235 T@FrameType) (r@@228 T@Field_17064_17065) (u@@228 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_17509 p@@236 v_1@@235 q@@228 w@@235) (InsidePredicate_17509_17039 q@@228 w@@235 r@@228 u@@228)) (InsidePredicate_17509_17039 p@@236 v_1@@235 r@@228 u@@228))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_17509 p@@236 v_1@@235 q@@228 w@@235) (InsidePredicate_17509_17039 q@@228 w@@235 r@@228 u@@228))
)))
(assert (forall ((p@@237 T@Field_17538_17539) (v_1@@236 T@FrameType) (q@@229 T@Field_17538_17539) (w@@236 T@FrameType) (r@@229 T@Field_13713_7938) (u@@229 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_17509 p@@237 v_1@@236 q@@229 w@@236) (InsidePredicate_17509_13713 q@@229 w@@236 r@@229 u@@229)) (InsidePredicate_17509_13713 p@@237 v_1@@236 r@@229 u@@229))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_17509 p@@237 v_1@@236 q@@229 w@@236) (InsidePredicate_17509_13713 q@@229 w@@236 r@@229 u@@229))
)))
(assert (forall ((p@@238 T@Field_17538_17539) (v_1@@237 T@FrameType) (q@@230 T@Field_17064_17065) (w@@237 T@FrameType) (r@@230 T@Field_20346_20347) (u@@230 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_17039 p@@238 v_1@@237 q@@230 w@@237) (InsidePredicate_17039_20346 q@@230 w@@237 r@@230 u@@230)) (InsidePredicate_17509_20346 p@@238 v_1@@237 r@@230 u@@230))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_17039 p@@238 v_1@@237 q@@230 w@@237) (InsidePredicate_17039_20346 q@@230 w@@237 r@@230 u@@230))
)))
(assert (forall ((p@@239 T@Field_17538_17539) (v_1@@238 T@FrameType) (q@@231 T@Field_17064_17065) (w@@238 T@FrameType) (r@@231 T@Field_19426_19427) (u@@231 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_17039 p@@239 v_1@@238 q@@231 w@@238) (InsidePredicate_17039_19426 q@@231 w@@238 r@@231 u@@231)) (InsidePredicate_17509_19426 p@@239 v_1@@238 r@@231 u@@231))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_17039 p@@239 v_1@@238 q@@231 w@@238) (InsidePredicate_17039_19426 q@@231 w@@238 r@@231 u@@231))
)))
(assert (forall ((p@@240 T@Field_17538_17539) (v_1@@239 T@FrameType) (q@@232 T@Field_17064_17065) (w@@239 T@FrameType) (r@@232 T@Field_18680_18681) (u@@232 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_17039 p@@240 v_1@@239 q@@232 w@@239) (InsidePredicate_17039_18651 q@@232 w@@239 r@@232 u@@232)) (InsidePredicate_17509_18651 p@@240 v_1@@239 r@@232 u@@232))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_17039 p@@240 v_1@@239 q@@232 w@@239) (InsidePredicate_17039_18651 q@@232 w@@239 r@@232 u@@232))
)))
(assert (forall ((p@@241 T@Field_17538_17539) (v_1@@240 T@FrameType) (q@@233 T@Field_17064_17065) (w@@240 T@FrameType) (r@@233 T@Field_18121_18122) (u@@233 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_17039 p@@241 v_1@@240 q@@233 w@@240) (InsidePredicate_17039_18094 q@@233 w@@240 r@@233 u@@233)) (InsidePredicate_17509_18094 p@@241 v_1@@240 r@@233 u@@233))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_17039 p@@241 v_1@@240 q@@233 w@@240) (InsidePredicate_17039_18094 q@@233 w@@240 r@@233 u@@233))
)))
(assert (forall ((p@@242 T@Field_17538_17539) (v_1@@241 T@FrameType) (q@@234 T@Field_17064_17065) (w@@241 T@FrameType) (r@@234 T@Field_17538_17539) (u@@234 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_17039 p@@242 v_1@@241 q@@234 w@@241) (InsidePredicate_17039_17509 q@@234 w@@241 r@@234 u@@234)) (InsidePredicate_17509_17509 p@@242 v_1@@241 r@@234 u@@234))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_17039 p@@242 v_1@@241 q@@234 w@@241) (InsidePredicate_17039_17509 q@@234 w@@241 r@@234 u@@234))
)))
(assert (forall ((p@@243 T@Field_17538_17539) (v_1@@242 T@FrameType) (q@@235 T@Field_17064_17065) (w@@242 T@FrameType) (r@@235 T@Field_17064_17065) (u@@235 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_17039 p@@243 v_1@@242 q@@235 w@@242) (InsidePredicate_17039_17039 q@@235 w@@242 r@@235 u@@235)) (InsidePredicate_17509_17039 p@@243 v_1@@242 r@@235 u@@235))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_17039 p@@243 v_1@@242 q@@235 w@@242) (InsidePredicate_17039_17039 q@@235 w@@242 r@@235 u@@235))
)))
(assert (forall ((p@@244 T@Field_17538_17539) (v_1@@243 T@FrameType) (q@@236 T@Field_17064_17065) (w@@243 T@FrameType) (r@@236 T@Field_13713_7938) (u@@236 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_17039 p@@244 v_1@@243 q@@236 w@@243) (InsidePredicate_17039_13713 q@@236 w@@243 r@@236 u@@236)) (InsidePredicate_17509_13713 p@@244 v_1@@243 r@@236 u@@236))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_17039 p@@244 v_1@@243 q@@236 w@@243) (InsidePredicate_17039_13713 q@@236 w@@243 r@@236 u@@236))
)))
(assert (forall ((p@@245 T@Field_17538_17539) (v_1@@244 T@FrameType) (q@@237 T@Field_13713_7938) (w@@244 T@FrameType) (r@@237 T@Field_20346_20347) (u@@237 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_13713 p@@245 v_1@@244 q@@237 w@@244) (InsidePredicate_13713_20346 q@@237 w@@244 r@@237 u@@237)) (InsidePredicate_17509_20346 p@@245 v_1@@244 r@@237 u@@237))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_13713 p@@245 v_1@@244 q@@237 w@@244) (InsidePredicate_13713_20346 q@@237 w@@244 r@@237 u@@237))
)))
(assert (forall ((p@@246 T@Field_17538_17539) (v_1@@245 T@FrameType) (q@@238 T@Field_13713_7938) (w@@245 T@FrameType) (r@@238 T@Field_19426_19427) (u@@238 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_13713 p@@246 v_1@@245 q@@238 w@@245) (InsidePredicate_13713_19426 q@@238 w@@245 r@@238 u@@238)) (InsidePredicate_17509_19426 p@@246 v_1@@245 r@@238 u@@238))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_13713 p@@246 v_1@@245 q@@238 w@@245) (InsidePredicate_13713_19426 q@@238 w@@245 r@@238 u@@238))
)))
(assert (forall ((p@@247 T@Field_17538_17539) (v_1@@246 T@FrameType) (q@@239 T@Field_13713_7938) (w@@246 T@FrameType) (r@@239 T@Field_18680_18681) (u@@239 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_13713 p@@247 v_1@@246 q@@239 w@@246) (InsidePredicate_13713_18651 q@@239 w@@246 r@@239 u@@239)) (InsidePredicate_17509_18651 p@@247 v_1@@246 r@@239 u@@239))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_13713 p@@247 v_1@@246 q@@239 w@@246) (InsidePredicate_13713_18651 q@@239 w@@246 r@@239 u@@239))
)))
(assert (forall ((p@@248 T@Field_17538_17539) (v_1@@247 T@FrameType) (q@@240 T@Field_13713_7938) (w@@247 T@FrameType) (r@@240 T@Field_18121_18122) (u@@240 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_13713 p@@248 v_1@@247 q@@240 w@@247) (InsidePredicate_13713_18094 q@@240 w@@247 r@@240 u@@240)) (InsidePredicate_17509_18094 p@@248 v_1@@247 r@@240 u@@240))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_13713 p@@248 v_1@@247 q@@240 w@@247) (InsidePredicate_13713_18094 q@@240 w@@247 r@@240 u@@240))
)))
(assert (forall ((p@@249 T@Field_17538_17539) (v_1@@248 T@FrameType) (q@@241 T@Field_13713_7938) (w@@248 T@FrameType) (r@@241 T@Field_17538_17539) (u@@241 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_13713 p@@249 v_1@@248 q@@241 w@@248) (InsidePredicate_13713_17509 q@@241 w@@248 r@@241 u@@241)) (InsidePredicate_17509_17509 p@@249 v_1@@248 r@@241 u@@241))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_13713 p@@249 v_1@@248 q@@241 w@@248) (InsidePredicate_13713_17509 q@@241 w@@248 r@@241 u@@241))
)))
(assert (forall ((p@@250 T@Field_17538_17539) (v_1@@249 T@FrameType) (q@@242 T@Field_13713_7938) (w@@249 T@FrameType) (r@@242 T@Field_17064_17065) (u@@242 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_13713 p@@250 v_1@@249 q@@242 w@@249) (InsidePredicate_13713_17039 q@@242 w@@249 r@@242 u@@242)) (InsidePredicate_17509_17039 p@@250 v_1@@249 r@@242 u@@242))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_13713 p@@250 v_1@@249 q@@242 w@@249) (InsidePredicate_13713_17039 q@@242 w@@249 r@@242 u@@242))
)))
(assert (forall ((p@@251 T@Field_17538_17539) (v_1@@250 T@FrameType) (q@@243 T@Field_13713_7938) (w@@250 T@FrameType) (r@@243 T@Field_13713_7938) (u@@243 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_13713 p@@251 v_1@@250 q@@243 w@@250) (InsidePredicate_13713_13713 q@@243 w@@250 r@@243 u@@243)) (InsidePredicate_17509_13713 p@@251 v_1@@250 r@@243 u@@243))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_13713 p@@251 v_1@@250 q@@243 w@@250) (InsidePredicate_13713_13713 q@@243 w@@250 r@@243 u@@243))
)))
(assert (forall ((p@@252 T@Field_17064_17065) (v_1@@251 T@FrameType) (q@@244 T@Field_20346_20347) (w@@251 T@FrameType) (r@@244 T@Field_20346_20347) (u@@244 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_20346 p@@252 v_1@@251 q@@244 w@@251) (InsidePredicate_20346_20346 q@@244 w@@251 r@@244 u@@244)) (InsidePredicate_17039_20346 p@@252 v_1@@251 r@@244 u@@244))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_20346 p@@252 v_1@@251 q@@244 w@@251) (InsidePredicate_20346_20346 q@@244 w@@251 r@@244 u@@244))
)))
(assert (forall ((p@@253 T@Field_17064_17065) (v_1@@252 T@FrameType) (q@@245 T@Field_20346_20347) (w@@252 T@FrameType) (r@@245 T@Field_19426_19427) (u@@245 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_20346 p@@253 v_1@@252 q@@245 w@@252) (InsidePredicate_20346_19426 q@@245 w@@252 r@@245 u@@245)) (InsidePredicate_17039_19426 p@@253 v_1@@252 r@@245 u@@245))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_20346 p@@253 v_1@@252 q@@245 w@@252) (InsidePredicate_20346_19426 q@@245 w@@252 r@@245 u@@245))
)))
(assert (forall ((p@@254 T@Field_17064_17065) (v_1@@253 T@FrameType) (q@@246 T@Field_20346_20347) (w@@253 T@FrameType) (r@@246 T@Field_18680_18681) (u@@246 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_20346 p@@254 v_1@@253 q@@246 w@@253) (InsidePredicate_20346_18651 q@@246 w@@253 r@@246 u@@246)) (InsidePredicate_17039_18651 p@@254 v_1@@253 r@@246 u@@246))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_20346 p@@254 v_1@@253 q@@246 w@@253) (InsidePredicate_20346_18651 q@@246 w@@253 r@@246 u@@246))
)))
(assert (forall ((p@@255 T@Field_17064_17065) (v_1@@254 T@FrameType) (q@@247 T@Field_20346_20347) (w@@254 T@FrameType) (r@@247 T@Field_18121_18122) (u@@247 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_20346 p@@255 v_1@@254 q@@247 w@@254) (InsidePredicate_20346_18094 q@@247 w@@254 r@@247 u@@247)) (InsidePredicate_17039_18094 p@@255 v_1@@254 r@@247 u@@247))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_20346 p@@255 v_1@@254 q@@247 w@@254) (InsidePredicate_20346_18094 q@@247 w@@254 r@@247 u@@247))
)))
(assert (forall ((p@@256 T@Field_17064_17065) (v_1@@255 T@FrameType) (q@@248 T@Field_20346_20347) (w@@255 T@FrameType) (r@@248 T@Field_17538_17539) (u@@248 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_20346 p@@256 v_1@@255 q@@248 w@@255) (InsidePredicate_20346_17509 q@@248 w@@255 r@@248 u@@248)) (InsidePredicate_17039_17509 p@@256 v_1@@255 r@@248 u@@248))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_20346 p@@256 v_1@@255 q@@248 w@@255) (InsidePredicate_20346_17509 q@@248 w@@255 r@@248 u@@248))
)))
(assert (forall ((p@@257 T@Field_17064_17065) (v_1@@256 T@FrameType) (q@@249 T@Field_20346_20347) (w@@256 T@FrameType) (r@@249 T@Field_17064_17065) (u@@249 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_20346 p@@257 v_1@@256 q@@249 w@@256) (InsidePredicate_20346_17039 q@@249 w@@256 r@@249 u@@249)) (InsidePredicate_17039_17039 p@@257 v_1@@256 r@@249 u@@249))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_20346 p@@257 v_1@@256 q@@249 w@@256) (InsidePredicate_20346_17039 q@@249 w@@256 r@@249 u@@249))
)))
(assert (forall ((p@@258 T@Field_17064_17065) (v_1@@257 T@FrameType) (q@@250 T@Field_20346_20347) (w@@257 T@FrameType) (r@@250 T@Field_13713_7938) (u@@250 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_20346 p@@258 v_1@@257 q@@250 w@@257) (InsidePredicate_20346_13713 q@@250 w@@257 r@@250 u@@250)) (InsidePredicate_17039_13713 p@@258 v_1@@257 r@@250 u@@250))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_20346 p@@258 v_1@@257 q@@250 w@@257) (InsidePredicate_20346_13713 q@@250 w@@257 r@@250 u@@250))
)))
(assert (forall ((p@@259 T@Field_17064_17065) (v_1@@258 T@FrameType) (q@@251 T@Field_19426_19427) (w@@258 T@FrameType) (r@@251 T@Field_20346_20347) (u@@251 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_19426 p@@259 v_1@@258 q@@251 w@@258) (InsidePredicate_19426_20346 q@@251 w@@258 r@@251 u@@251)) (InsidePredicate_17039_20346 p@@259 v_1@@258 r@@251 u@@251))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_19426 p@@259 v_1@@258 q@@251 w@@258) (InsidePredicate_19426_20346 q@@251 w@@258 r@@251 u@@251))
)))
(assert (forall ((p@@260 T@Field_17064_17065) (v_1@@259 T@FrameType) (q@@252 T@Field_19426_19427) (w@@259 T@FrameType) (r@@252 T@Field_19426_19427) (u@@252 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_19426 p@@260 v_1@@259 q@@252 w@@259) (InsidePredicate_19426_19426 q@@252 w@@259 r@@252 u@@252)) (InsidePredicate_17039_19426 p@@260 v_1@@259 r@@252 u@@252))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_19426 p@@260 v_1@@259 q@@252 w@@259) (InsidePredicate_19426_19426 q@@252 w@@259 r@@252 u@@252))
)))
(assert (forall ((p@@261 T@Field_17064_17065) (v_1@@260 T@FrameType) (q@@253 T@Field_19426_19427) (w@@260 T@FrameType) (r@@253 T@Field_18680_18681) (u@@253 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_19426 p@@261 v_1@@260 q@@253 w@@260) (InsidePredicate_19426_18651 q@@253 w@@260 r@@253 u@@253)) (InsidePredicate_17039_18651 p@@261 v_1@@260 r@@253 u@@253))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_19426 p@@261 v_1@@260 q@@253 w@@260) (InsidePredicate_19426_18651 q@@253 w@@260 r@@253 u@@253))
)))
(assert (forall ((p@@262 T@Field_17064_17065) (v_1@@261 T@FrameType) (q@@254 T@Field_19426_19427) (w@@261 T@FrameType) (r@@254 T@Field_18121_18122) (u@@254 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_19426 p@@262 v_1@@261 q@@254 w@@261) (InsidePredicate_19426_18094 q@@254 w@@261 r@@254 u@@254)) (InsidePredicate_17039_18094 p@@262 v_1@@261 r@@254 u@@254))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_19426 p@@262 v_1@@261 q@@254 w@@261) (InsidePredicate_19426_18094 q@@254 w@@261 r@@254 u@@254))
)))
(assert (forall ((p@@263 T@Field_17064_17065) (v_1@@262 T@FrameType) (q@@255 T@Field_19426_19427) (w@@262 T@FrameType) (r@@255 T@Field_17538_17539) (u@@255 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_19426 p@@263 v_1@@262 q@@255 w@@262) (InsidePredicate_19426_17509 q@@255 w@@262 r@@255 u@@255)) (InsidePredicate_17039_17509 p@@263 v_1@@262 r@@255 u@@255))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_19426 p@@263 v_1@@262 q@@255 w@@262) (InsidePredicate_19426_17509 q@@255 w@@262 r@@255 u@@255))
)))
(assert (forall ((p@@264 T@Field_17064_17065) (v_1@@263 T@FrameType) (q@@256 T@Field_19426_19427) (w@@263 T@FrameType) (r@@256 T@Field_17064_17065) (u@@256 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_19426 p@@264 v_1@@263 q@@256 w@@263) (InsidePredicate_19426_17039 q@@256 w@@263 r@@256 u@@256)) (InsidePredicate_17039_17039 p@@264 v_1@@263 r@@256 u@@256))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_19426 p@@264 v_1@@263 q@@256 w@@263) (InsidePredicate_19426_17039 q@@256 w@@263 r@@256 u@@256))
)))
(assert (forall ((p@@265 T@Field_17064_17065) (v_1@@264 T@FrameType) (q@@257 T@Field_19426_19427) (w@@264 T@FrameType) (r@@257 T@Field_13713_7938) (u@@257 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_19426 p@@265 v_1@@264 q@@257 w@@264) (InsidePredicate_19426_13713 q@@257 w@@264 r@@257 u@@257)) (InsidePredicate_17039_13713 p@@265 v_1@@264 r@@257 u@@257))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_19426 p@@265 v_1@@264 q@@257 w@@264) (InsidePredicate_19426_13713 q@@257 w@@264 r@@257 u@@257))
)))
(assert (forall ((p@@266 T@Field_17064_17065) (v_1@@265 T@FrameType) (q@@258 T@Field_18680_18681) (w@@265 T@FrameType) (r@@258 T@Field_20346_20347) (u@@258 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_18651 p@@266 v_1@@265 q@@258 w@@265) (InsidePredicate_18651_20346 q@@258 w@@265 r@@258 u@@258)) (InsidePredicate_17039_20346 p@@266 v_1@@265 r@@258 u@@258))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_18651 p@@266 v_1@@265 q@@258 w@@265) (InsidePredicate_18651_20346 q@@258 w@@265 r@@258 u@@258))
)))
(assert (forall ((p@@267 T@Field_17064_17065) (v_1@@266 T@FrameType) (q@@259 T@Field_18680_18681) (w@@266 T@FrameType) (r@@259 T@Field_19426_19427) (u@@259 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_18651 p@@267 v_1@@266 q@@259 w@@266) (InsidePredicate_18651_19426 q@@259 w@@266 r@@259 u@@259)) (InsidePredicate_17039_19426 p@@267 v_1@@266 r@@259 u@@259))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_18651 p@@267 v_1@@266 q@@259 w@@266) (InsidePredicate_18651_19426 q@@259 w@@266 r@@259 u@@259))
)))
(assert (forall ((p@@268 T@Field_17064_17065) (v_1@@267 T@FrameType) (q@@260 T@Field_18680_18681) (w@@267 T@FrameType) (r@@260 T@Field_18680_18681) (u@@260 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_18651 p@@268 v_1@@267 q@@260 w@@267) (InsidePredicate_18651_18651 q@@260 w@@267 r@@260 u@@260)) (InsidePredicate_17039_18651 p@@268 v_1@@267 r@@260 u@@260))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_18651 p@@268 v_1@@267 q@@260 w@@267) (InsidePredicate_18651_18651 q@@260 w@@267 r@@260 u@@260))
)))
(assert (forall ((p@@269 T@Field_17064_17065) (v_1@@268 T@FrameType) (q@@261 T@Field_18680_18681) (w@@268 T@FrameType) (r@@261 T@Field_18121_18122) (u@@261 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_18651 p@@269 v_1@@268 q@@261 w@@268) (InsidePredicate_18651_18094 q@@261 w@@268 r@@261 u@@261)) (InsidePredicate_17039_18094 p@@269 v_1@@268 r@@261 u@@261))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_18651 p@@269 v_1@@268 q@@261 w@@268) (InsidePredicate_18651_18094 q@@261 w@@268 r@@261 u@@261))
)))
(assert (forall ((p@@270 T@Field_17064_17065) (v_1@@269 T@FrameType) (q@@262 T@Field_18680_18681) (w@@269 T@FrameType) (r@@262 T@Field_17538_17539) (u@@262 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_18651 p@@270 v_1@@269 q@@262 w@@269) (InsidePredicate_18651_17509 q@@262 w@@269 r@@262 u@@262)) (InsidePredicate_17039_17509 p@@270 v_1@@269 r@@262 u@@262))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_18651 p@@270 v_1@@269 q@@262 w@@269) (InsidePredicate_18651_17509 q@@262 w@@269 r@@262 u@@262))
)))
(assert (forall ((p@@271 T@Field_17064_17065) (v_1@@270 T@FrameType) (q@@263 T@Field_18680_18681) (w@@270 T@FrameType) (r@@263 T@Field_17064_17065) (u@@263 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_18651 p@@271 v_1@@270 q@@263 w@@270) (InsidePredicate_18651_17039 q@@263 w@@270 r@@263 u@@263)) (InsidePredicate_17039_17039 p@@271 v_1@@270 r@@263 u@@263))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_18651 p@@271 v_1@@270 q@@263 w@@270) (InsidePredicate_18651_17039 q@@263 w@@270 r@@263 u@@263))
)))
(assert (forall ((p@@272 T@Field_17064_17065) (v_1@@271 T@FrameType) (q@@264 T@Field_18680_18681) (w@@271 T@FrameType) (r@@264 T@Field_13713_7938) (u@@264 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_18651 p@@272 v_1@@271 q@@264 w@@271) (InsidePredicate_18651_13713 q@@264 w@@271 r@@264 u@@264)) (InsidePredicate_17039_13713 p@@272 v_1@@271 r@@264 u@@264))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_18651 p@@272 v_1@@271 q@@264 w@@271) (InsidePredicate_18651_13713 q@@264 w@@271 r@@264 u@@264))
)))
(assert (forall ((p@@273 T@Field_17064_17065) (v_1@@272 T@FrameType) (q@@265 T@Field_18121_18122) (w@@272 T@FrameType) (r@@265 T@Field_20346_20347) (u@@265 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_18094 p@@273 v_1@@272 q@@265 w@@272) (InsidePredicate_18094_20346 q@@265 w@@272 r@@265 u@@265)) (InsidePredicate_17039_20346 p@@273 v_1@@272 r@@265 u@@265))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_18094 p@@273 v_1@@272 q@@265 w@@272) (InsidePredicate_18094_20346 q@@265 w@@272 r@@265 u@@265))
)))
(assert (forall ((p@@274 T@Field_17064_17065) (v_1@@273 T@FrameType) (q@@266 T@Field_18121_18122) (w@@273 T@FrameType) (r@@266 T@Field_19426_19427) (u@@266 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_18094 p@@274 v_1@@273 q@@266 w@@273) (InsidePredicate_18094_19426 q@@266 w@@273 r@@266 u@@266)) (InsidePredicate_17039_19426 p@@274 v_1@@273 r@@266 u@@266))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_18094 p@@274 v_1@@273 q@@266 w@@273) (InsidePredicate_18094_19426 q@@266 w@@273 r@@266 u@@266))
)))
(assert (forall ((p@@275 T@Field_17064_17065) (v_1@@274 T@FrameType) (q@@267 T@Field_18121_18122) (w@@274 T@FrameType) (r@@267 T@Field_18680_18681) (u@@267 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_18094 p@@275 v_1@@274 q@@267 w@@274) (InsidePredicate_18094_18651 q@@267 w@@274 r@@267 u@@267)) (InsidePredicate_17039_18651 p@@275 v_1@@274 r@@267 u@@267))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_18094 p@@275 v_1@@274 q@@267 w@@274) (InsidePredicate_18094_18651 q@@267 w@@274 r@@267 u@@267))
)))
(assert (forall ((p@@276 T@Field_17064_17065) (v_1@@275 T@FrameType) (q@@268 T@Field_18121_18122) (w@@275 T@FrameType) (r@@268 T@Field_18121_18122) (u@@268 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_18094 p@@276 v_1@@275 q@@268 w@@275) (InsidePredicate_18094_18094 q@@268 w@@275 r@@268 u@@268)) (InsidePredicate_17039_18094 p@@276 v_1@@275 r@@268 u@@268))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_18094 p@@276 v_1@@275 q@@268 w@@275) (InsidePredicate_18094_18094 q@@268 w@@275 r@@268 u@@268))
)))
(assert (forall ((p@@277 T@Field_17064_17065) (v_1@@276 T@FrameType) (q@@269 T@Field_18121_18122) (w@@276 T@FrameType) (r@@269 T@Field_17538_17539) (u@@269 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_18094 p@@277 v_1@@276 q@@269 w@@276) (InsidePredicate_18094_17509 q@@269 w@@276 r@@269 u@@269)) (InsidePredicate_17039_17509 p@@277 v_1@@276 r@@269 u@@269))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_18094 p@@277 v_1@@276 q@@269 w@@276) (InsidePredicate_18094_17509 q@@269 w@@276 r@@269 u@@269))
)))
(assert (forall ((p@@278 T@Field_17064_17065) (v_1@@277 T@FrameType) (q@@270 T@Field_18121_18122) (w@@277 T@FrameType) (r@@270 T@Field_17064_17065) (u@@270 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_18094 p@@278 v_1@@277 q@@270 w@@277) (InsidePredicate_18094_17039 q@@270 w@@277 r@@270 u@@270)) (InsidePredicate_17039_17039 p@@278 v_1@@277 r@@270 u@@270))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_18094 p@@278 v_1@@277 q@@270 w@@277) (InsidePredicate_18094_17039 q@@270 w@@277 r@@270 u@@270))
)))
(assert (forall ((p@@279 T@Field_17064_17065) (v_1@@278 T@FrameType) (q@@271 T@Field_18121_18122) (w@@278 T@FrameType) (r@@271 T@Field_13713_7938) (u@@271 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_18094 p@@279 v_1@@278 q@@271 w@@278) (InsidePredicate_18094_13713 q@@271 w@@278 r@@271 u@@271)) (InsidePredicate_17039_13713 p@@279 v_1@@278 r@@271 u@@271))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_18094 p@@279 v_1@@278 q@@271 w@@278) (InsidePredicate_18094_13713 q@@271 w@@278 r@@271 u@@271))
)))
(assert (forall ((p@@280 T@Field_17064_17065) (v_1@@279 T@FrameType) (q@@272 T@Field_17538_17539) (w@@279 T@FrameType) (r@@272 T@Field_20346_20347) (u@@272 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_17509 p@@280 v_1@@279 q@@272 w@@279) (InsidePredicate_17509_20346 q@@272 w@@279 r@@272 u@@272)) (InsidePredicate_17039_20346 p@@280 v_1@@279 r@@272 u@@272))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_17509 p@@280 v_1@@279 q@@272 w@@279) (InsidePredicate_17509_20346 q@@272 w@@279 r@@272 u@@272))
)))
(assert (forall ((p@@281 T@Field_17064_17065) (v_1@@280 T@FrameType) (q@@273 T@Field_17538_17539) (w@@280 T@FrameType) (r@@273 T@Field_19426_19427) (u@@273 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_17509 p@@281 v_1@@280 q@@273 w@@280) (InsidePredicate_17509_19426 q@@273 w@@280 r@@273 u@@273)) (InsidePredicate_17039_19426 p@@281 v_1@@280 r@@273 u@@273))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_17509 p@@281 v_1@@280 q@@273 w@@280) (InsidePredicate_17509_19426 q@@273 w@@280 r@@273 u@@273))
)))
(assert (forall ((p@@282 T@Field_17064_17065) (v_1@@281 T@FrameType) (q@@274 T@Field_17538_17539) (w@@281 T@FrameType) (r@@274 T@Field_18680_18681) (u@@274 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_17509 p@@282 v_1@@281 q@@274 w@@281) (InsidePredicate_17509_18651 q@@274 w@@281 r@@274 u@@274)) (InsidePredicate_17039_18651 p@@282 v_1@@281 r@@274 u@@274))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_17509 p@@282 v_1@@281 q@@274 w@@281) (InsidePredicate_17509_18651 q@@274 w@@281 r@@274 u@@274))
)))
(assert (forall ((p@@283 T@Field_17064_17065) (v_1@@282 T@FrameType) (q@@275 T@Field_17538_17539) (w@@282 T@FrameType) (r@@275 T@Field_18121_18122) (u@@275 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_17509 p@@283 v_1@@282 q@@275 w@@282) (InsidePredicate_17509_18094 q@@275 w@@282 r@@275 u@@275)) (InsidePredicate_17039_18094 p@@283 v_1@@282 r@@275 u@@275))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_17509 p@@283 v_1@@282 q@@275 w@@282) (InsidePredicate_17509_18094 q@@275 w@@282 r@@275 u@@275))
)))
(assert (forall ((p@@284 T@Field_17064_17065) (v_1@@283 T@FrameType) (q@@276 T@Field_17538_17539) (w@@283 T@FrameType) (r@@276 T@Field_17538_17539) (u@@276 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_17509 p@@284 v_1@@283 q@@276 w@@283) (InsidePredicate_17509_17509 q@@276 w@@283 r@@276 u@@276)) (InsidePredicate_17039_17509 p@@284 v_1@@283 r@@276 u@@276))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_17509 p@@284 v_1@@283 q@@276 w@@283) (InsidePredicate_17509_17509 q@@276 w@@283 r@@276 u@@276))
)))
(assert (forall ((p@@285 T@Field_17064_17065) (v_1@@284 T@FrameType) (q@@277 T@Field_17538_17539) (w@@284 T@FrameType) (r@@277 T@Field_17064_17065) (u@@277 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_17509 p@@285 v_1@@284 q@@277 w@@284) (InsidePredicate_17509_17039 q@@277 w@@284 r@@277 u@@277)) (InsidePredicate_17039_17039 p@@285 v_1@@284 r@@277 u@@277))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_17509 p@@285 v_1@@284 q@@277 w@@284) (InsidePredicate_17509_17039 q@@277 w@@284 r@@277 u@@277))
)))
(assert (forall ((p@@286 T@Field_17064_17065) (v_1@@285 T@FrameType) (q@@278 T@Field_17538_17539) (w@@285 T@FrameType) (r@@278 T@Field_13713_7938) (u@@278 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_17509 p@@286 v_1@@285 q@@278 w@@285) (InsidePredicate_17509_13713 q@@278 w@@285 r@@278 u@@278)) (InsidePredicate_17039_13713 p@@286 v_1@@285 r@@278 u@@278))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_17509 p@@286 v_1@@285 q@@278 w@@285) (InsidePredicate_17509_13713 q@@278 w@@285 r@@278 u@@278))
)))
(assert (forall ((p@@287 T@Field_17064_17065) (v_1@@286 T@FrameType) (q@@279 T@Field_17064_17065) (w@@286 T@FrameType) (r@@279 T@Field_20346_20347) (u@@279 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_17039 p@@287 v_1@@286 q@@279 w@@286) (InsidePredicate_17039_20346 q@@279 w@@286 r@@279 u@@279)) (InsidePredicate_17039_20346 p@@287 v_1@@286 r@@279 u@@279))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_17039 p@@287 v_1@@286 q@@279 w@@286) (InsidePredicate_17039_20346 q@@279 w@@286 r@@279 u@@279))
)))
(assert (forall ((p@@288 T@Field_17064_17065) (v_1@@287 T@FrameType) (q@@280 T@Field_17064_17065) (w@@287 T@FrameType) (r@@280 T@Field_19426_19427) (u@@280 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_17039 p@@288 v_1@@287 q@@280 w@@287) (InsidePredicate_17039_19426 q@@280 w@@287 r@@280 u@@280)) (InsidePredicate_17039_19426 p@@288 v_1@@287 r@@280 u@@280))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_17039 p@@288 v_1@@287 q@@280 w@@287) (InsidePredicate_17039_19426 q@@280 w@@287 r@@280 u@@280))
)))
(assert (forall ((p@@289 T@Field_17064_17065) (v_1@@288 T@FrameType) (q@@281 T@Field_17064_17065) (w@@288 T@FrameType) (r@@281 T@Field_18680_18681) (u@@281 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_17039 p@@289 v_1@@288 q@@281 w@@288) (InsidePredicate_17039_18651 q@@281 w@@288 r@@281 u@@281)) (InsidePredicate_17039_18651 p@@289 v_1@@288 r@@281 u@@281))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_17039 p@@289 v_1@@288 q@@281 w@@288) (InsidePredicate_17039_18651 q@@281 w@@288 r@@281 u@@281))
)))
(assert (forall ((p@@290 T@Field_17064_17065) (v_1@@289 T@FrameType) (q@@282 T@Field_17064_17065) (w@@289 T@FrameType) (r@@282 T@Field_18121_18122) (u@@282 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_17039 p@@290 v_1@@289 q@@282 w@@289) (InsidePredicate_17039_18094 q@@282 w@@289 r@@282 u@@282)) (InsidePredicate_17039_18094 p@@290 v_1@@289 r@@282 u@@282))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_17039 p@@290 v_1@@289 q@@282 w@@289) (InsidePredicate_17039_18094 q@@282 w@@289 r@@282 u@@282))
)))
(assert (forall ((p@@291 T@Field_17064_17065) (v_1@@290 T@FrameType) (q@@283 T@Field_17064_17065) (w@@290 T@FrameType) (r@@283 T@Field_17538_17539) (u@@283 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_17039 p@@291 v_1@@290 q@@283 w@@290) (InsidePredicate_17039_17509 q@@283 w@@290 r@@283 u@@283)) (InsidePredicate_17039_17509 p@@291 v_1@@290 r@@283 u@@283))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_17039 p@@291 v_1@@290 q@@283 w@@290) (InsidePredicate_17039_17509 q@@283 w@@290 r@@283 u@@283))
)))
(assert (forall ((p@@292 T@Field_17064_17065) (v_1@@291 T@FrameType) (q@@284 T@Field_17064_17065) (w@@291 T@FrameType) (r@@284 T@Field_17064_17065) (u@@284 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_17039 p@@292 v_1@@291 q@@284 w@@291) (InsidePredicate_17039_17039 q@@284 w@@291 r@@284 u@@284)) (InsidePredicate_17039_17039 p@@292 v_1@@291 r@@284 u@@284))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_17039 p@@292 v_1@@291 q@@284 w@@291) (InsidePredicate_17039_17039 q@@284 w@@291 r@@284 u@@284))
)))
(assert (forall ((p@@293 T@Field_17064_17065) (v_1@@292 T@FrameType) (q@@285 T@Field_17064_17065) (w@@292 T@FrameType) (r@@285 T@Field_13713_7938) (u@@285 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_17039 p@@293 v_1@@292 q@@285 w@@292) (InsidePredicate_17039_13713 q@@285 w@@292 r@@285 u@@285)) (InsidePredicate_17039_13713 p@@293 v_1@@292 r@@285 u@@285))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_17039 p@@293 v_1@@292 q@@285 w@@292) (InsidePredicate_17039_13713 q@@285 w@@292 r@@285 u@@285))
)))
(assert (forall ((p@@294 T@Field_17064_17065) (v_1@@293 T@FrameType) (q@@286 T@Field_13713_7938) (w@@293 T@FrameType) (r@@286 T@Field_20346_20347) (u@@286 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_13713 p@@294 v_1@@293 q@@286 w@@293) (InsidePredicate_13713_20346 q@@286 w@@293 r@@286 u@@286)) (InsidePredicate_17039_20346 p@@294 v_1@@293 r@@286 u@@286))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_13713 p@@294 v_1@@293 q@@286 w@@293) (InsidePredicate_13713_20346 q@@286 w@@293 r@@286 u@@286))
)))
(assert (forall ((p@@295 T@Field_17064_17065) (v_1@@294 T@FrameType) (q@@287 T@Field_13713_7938) (w@@294 T@FrameType) (r@@287 T@Field_19426_19427) (u@@287 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_13713 p@@295 v_1@@294 q@@287 w@@294) (InsidePredicate_13713_19426 q@@287 w@@294 r@@287 u@@287)) (InsidePredicate_17039_19426 p@@295 v_1@@294 r@@287 u@@287))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_13713 p@@295 v_1@@294 q@@287 w@@294) (InsidePredicate_13713_19426 q@@287 w@@294 r@@287 u@@287))
)))
(assert (forall ((p@@296 T@Field_17064_17065) (v_1@@295 T@FrameType) (q@@288 T@Field_13713_7938) (w@@295 T@FrameType) (r@@288 T@Field_18680_18681) (u@@288 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_13713 p@@296 v_1@@295 q@@288 w@@295) (InsidePredicate_13713_18651 q@@288 w@@295 r@@288 u@@288)) (InsidePredicate_17039_18651 p@@296 v_1@@295 r@@288 u@@288))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_13713 p@@296 v_1@@295 q@@288 w@@295) (InsidePredicate_13713_18651 q@@288 w@@295 r@@288 u@@288))
)))
(assert (forall ((p@@297 T@Field_17064_17065) (v_1@@296 T@FrameType) (q@@289 T@Field_13713_7938) (w@@296 T@FrameType) (r@@289 T@Field_18121_18122) (u@@289 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_13713 p@@297 v_1@@296 q@@289 w@@296) (InsidePredicate_13713_18094 q@@289 w@@296 r@@289 u@@289)) (InsidePredicate_17039_18094 p@@297 v_1@@296 r@@289 u@@289))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_13713 p@@297 v_1@@296 q@@289 w@@296) (InsidePredicate_13713_18094 q@@289 w@@296 r@@289 u@@289))
)))
(assert (forall ((p@@298 T@Field_17064_17065) (v_1@@297 T@FrameType) (q@@290 T@Field_13713_7938) (w@@297 T@FrameType) (r@@290 T@Field_17538_17539) (u@@290 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_13713 p@@298 v_1@@297 q@@290 w@@297) (InsidePredicate_13713_17509 q@@290 w@@297 r@@290 u@@290)) (InsidePredicate_17039_17509 p@@298 v_1@@297 r@@290 u@@290))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_13713 p@@298 v_1@@297 q@@290 w@@297) (InsidePredicate_13713_17509 q@@290 w@@297 r@@290 u@@290))
)))
(assert (forall ((p@@299 T@Field_17064_17065) (v_1@@298 T@FrameType) (q@@291 T@Field_13713_7938) (w@@298 T@FrameType) (r@@291 T@Field_17064_17065) (u@@291 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_13713 p@@299 v_1@@298 q@@291 w@@298) (InsidePredicate_13713_17039 q@@291 w@@298 r@@291 u@@291)) (InsidePredicate_17039_17039 p@@299 v_1@@298 r@@291 u@@291))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_13713 p@@299 v_1@@298 q@@291 w@@298) (InsidePredicate_13713_17039 q@@291 w@@298 r@@291 u@@291))
)))
(assert (forall ((p@@300 T@Field_17064_17065) (v_1@@299 T@FrameType) (q@@292 T@Field_13713_7938) (w@@299 T@FrameType) (r@@292 T@Field_13713_7938) (u@@292 T@FrameType) ) (!  (=> (and (InsidePredicate_17039_13713 p@@300 v_1@@299 q@@292 w@@299) (InsidePredicate_13713_13713 q@@292 w@@299 r@@292 u@@292)) (InsidePredicate_17039_13713 p@@300 v_1@@299 r@@292 u@@292))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17039_13713 p@@300 v_1@@299 q@@292 w@@299) (InsidePredicate_13713_13713 q@@292 w@@299 r@@292 u@@292))
)))
(assert (forall ((p@@301 T@Field_13713_7938) (v_1@@300 T@FrameType) (q@@293 T@Field_20346_20347) (w@@300 T@FrameType) (r@@293 T@Field_20346_20347) (u@@293 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_20346 p@@301 v_1@@300 q@@293 w@@300) (InsidePredicate_20346_20346 q@@293 w@@300 r@@293 u@@293)) (InsidePredicate_13713_20346 p@@301 v_1@@300 r@@293 u@@293))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_20346 p@@301 v_1@@300 q@@293 w@@300) (InsidePredicate_20346_20346 q@@293 w@@300 r@@293 u@@293))
)))
(assert (forall ((p@@302 T@Field_13713_7938) (v_1@@301 T@FrameType) (q@@294 T@Field_20346_20347) (w@@301 T@FrameType) (r@@294 T@Field_19426_19427) (u@@294 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_20346 p@@302 v_1@@301 q@@294 w@@301) (InsidePredicate_20346_19426 q@@294 w@@301 r@@294 u@@294)) (InsidePredicate_13713_19426 p@@302 v_1@@301 r@@294 u@@294))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_20346 p@@302 v_1@@301 q@@294 w@@301) (InsidePredicate_20346_19426 q@@294 w@@301 r@@294 u@@294))
)))
(assert (forall ((p@@303 T@Field_13713_7938) (v_1@@302 T@FrameType) (q@@295 T@Field_20346_20347) (w@@302 T@FrameType) (r@@295 T@Field_18680_18681) (u@@295 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_20346 p@@303 v_1@@302 q@@295 w@@302) (InsidePredicate_20346_18651 q@@295 w@@302 r@@295 u@@295)) (InsidePredicate_13713_18651 p@@303 v_1@@302 r@@295 u@@295))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_20346 p@@303 v_1@@302 q@@295 w@@302) (InsidePredicate_20346_18651 q@@295 w@@302 r@@295 u@@295))
)))
(assert (forall ((p@@304 T@Field_13713_7938) (v_1@@303 T@FrameType) (q@@296 T@Field_20346_20347) (w@@303 T@FrameType) (r@@296 T@Field_18121_18122) (u@@296 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_20346 p@@304 v_1@@303 q@@296 w@@303) (InsidePredicate_20346_18094 q@@296 w@@303 r@@296 u@@296)) (InsidePredicate_13713_18094 p@@304 v_1@@303 r@@296 u@@296))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_20346 p@@304 v_1@@303 q@@296 w@@303) (InsidePredicate_20346_18094 q@@296 w@@303 r@@296 u@@296))
)))
(assert (forall ((p@@305 T@Field_13713_7938) (v_1@@304 T@FrameType) (q@@297 T@Field_20346_20347) (w@@304 T@FrameType) (r@@297 T@Field_17538_17539) (u@@297 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_20346 p@@305 v_1@@304 q@@297 w@@304) (InsidePredicate_20346_17509 q@@297 w@@304 r@@297 u@@297)) (InsidePredicate_13713_17509 p@@305 v_1@@304 r@@297 u@@297))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_20346 p@@305 v_1@@304 q@@297 w@@304) (InsidePredicate_20346_17509 q@@297 w@@304 r@@297 u@@297))
)))
(assert (forall ((p@@306 T@Field_13713_7938) (v_1@@305 T@FrameType) (q@@298 T@Field_20346_20347) (w@@305 T@FrameType) (r@@298 T@Field_17064_17065) (u@@298 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_20346 p@@306 v_1@@305 q@@298 w@@305) (InsidePredicate_20346_17039 q@@298 w@@305 r@@298 u@@298)) (InsidePredicate_13713_17039 p@@306 v_1@@305 r@@298 u@@298))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_20346 p@@306 v_1@@305 q@@298 w@@305) (InsidePredicate_20346_17039 q@@298 w@@305 r@@298 u@@298))
)))
(assert (forall ((p@@307 T@Field_13713_7938) (v_1@@306 T@FrameType) (q@@299 T@Field_20346_20347) (w@@306 T@FrameType) (r@@299 T@Field_13713_7938) (u@@299 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_20346 p@@307 v_1@@306 q@@299 w@@306) (InsidePredicate_20346_13713 q@@299 w@@306 r@@299 u@@299)) (InsidePredicate_13713_13713 p@@307 v_1@@306 r@@299 u@@299))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_20346 p@@307 v_1@@306 q@@299 w@@306) (InsidePredicate_20346_13713 q@@299 w@@306 r@@299 u@@299))
)))
(assert (forall ((p@@308 T@Field_13713_7938) (v_1@@307 T@FrameType) (q@@300 T@Field_19426_19427) (w@@307 T@FrameType) (r@@300 T@Field_20346_20347) (u@@300 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_19426 p@@308 v_1@@307 q@@300 w@@307) (InsidePredicate_19426_20346 q@@300 w@@307 r@@300 u@@300)) (InsidePredicate_13713_20346 p@@308 v_1@@307 r@@300 u@@300))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_19426 p@@308 v_1@@307 q@@300 w@@307) (InsidePredicate_19426_20346 q@@300 w@@307 r@@300 u@@300))
)))
(assert (forall ((p@@309 T@Field_13713_7938) (v_1@@308 T@FrameType) (q@@301 T@Field_19426_19427) (w@@308 T@FrameType) (r@@301 T@Field_19426_19427) (u@@301 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_19426 p@@309 v_1@@308 q@@301 w@@308) (InsidePredicate_19426_19426 q@@301 w@@308 r@@301 u@@301)) (InsidePredicate_13713_19426 p@@309 v_1@@308 r@@301 u@@301))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_19426 p@@309 v_1@@308 q@@301 w@@308) (InsidePredicate_19426_19426 q@@301 w@@308 r@@301 u@@301))
)))
(assert (forall ((p@@310 T@Field_13713_7938) (v_1@@309 T@FrameType) (q@@302 T@Field_19426_19427) (w@@309 T@FrameType) (r@@302 T@Field_18680_18681) (u@@302 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_19426 p@@310 v_1@@309 q@@302 w@@309) (InsidePredicate_19426_18651 q@@302 w@@309 r@@302 u@@302)) (InsidePredicate_13713_18651 p@@310 v_1@@309 r@@302 u@@302))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_19426 p@@310 v_1@@309 q@@302 w@@309) (InsidePredicate_19426_18651 q@@302 w@@309 r@@302 u@@302))
)))
(assert (forall ((p@@311 T@Field_13713_7938) (v_1@@310 T@FrameType) (q@@303 T@Field_19426_19427) (w@@310 T@FrameType) (r@@303 T@Field_18121_18122) (u@@303 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_19426 p@@311 v_1@@310 q@@303 w@@310) (InsidePredicate_19426_18094 q@@303 w@@310 r@@303 u@@303)) (InsidePredicate_13713_18094 p@@311 v_1@@310 r@@303 u@@303))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_19426 p@@311 v_1@@310 q@@303 w@@310) (InsidePredicate_19426_18094 q@@303 w@@310 r@@303 u@@303))
)))
(assert (forall ((p@@312 T@Field_13713_7938) (v_1@@311 T@FrameType) (q@@304 T@Field_19426_19427) (w@@311 T@FrameType) (r@@304 T@Field_17538_17539) (u@@304 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_19426 p@@312 v_1@@311 q@@304 w@@311) (InsidePredicate_19426_17509 q@@304 w@@311 r@@304 u@@304)) (InsidePredicate_13713_17509 p@@312 v_1@@311 r@@304 u@@304))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_19426 p@@312 v_1@@311 q@@304 w@@311) (InsidePredicate_19426_17509 q@@304 w@@311 r@@304 u@@304))
)))
(assert (forall ((p@@313 T@Field_13713_7938) (v_1@@312 T@FrameType) (q@@305 T@Field_19426_19427) (w@@312 T@FrameType) (r@@305 T@Field_17064_17065) (u@@305 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_19426 p@@313 v_1@@312 q@@305 w@@312) (InsidePredicate_19426_17039 q@@305 w@@312 r@@305 u@@305)) (InsidePredicate_13713_17039 p@@313 v_1@@312 r@@305 u@@305))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_19426 p@@313 v_1@@312 q@@305 w@@312) (InsidePredicate_19426_17039 q@@305 w@@312 r@@305 u@@305))
)))
(assert (forall ((p@@314 T@Field_13713_7938) (v_1@@313 T@FrameType) (q@@306 T@Field_19426_19427) (w@@313 T@FrameType) (r@@306 T@Field_13713_7938) (u@@306 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_19426 p@@314 v_1@@313 q@@306 w@@313) (InsidePredicate_19426_13713 q@@306 w@@313 r@@306 u@@306)) (InsidePredicate_13713_13713 p@@314 v_1@@313 r@@306 u@@306))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_19426 p@@314 v_1@@313 q@@306 w@@313) (InsidePredicate_19426_13713 q@@306 w@@313 r@@306 u@@306))
)))
(assert (forall ((p@@315 T@Field_13713_7938) (v_1@@314 T@FrameType) (q@@307 T@Field_18680_18681) (w@@314 T@FrameType) (r@@307 T@Field_20346_20347) (u@@307 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_18651 p@@315 v_1@@314 q@@307 w@@314) (InsidePredicate_18651_20346 q@@307 w@@314 r@@307 u@@307)) (InsidePredicate_13713_20346 p@@315 v_1@@314 r@@307 u@@307))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_18651 p@@315 v_1@@314 q@@307 w@@314) (InsidePredicate_18651_20346 q@@307 w@@314 r@@307 u@@307))
)))
(assert (forall ((p@@316 T@Field_13713_7938) (v_1@@315 T@FrameType) (q@@308 T@Field_18680_18681) (w@@315 T@FrameType) (r@@308 T@Field_19426_19427) (u@@308 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_18651 p@@316 v_1@@315 q@@308 w@@315) (InsidePredicate_18651_19426 q@@308 w@@315 r@@308 u@@308)) (InsidePredicate_13713_19426 p@@316 v_1@@315 r@@308 u@@308))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_18651 p@@316 v_1@@315 q@@308 w@@315) (InsidePredicate_18651_19426 q@@308 w@@315 r@@308 u@@308))
)))
(assert (forall ((p@@317 T@Field_13713_7938) (v_1@@316 T@FrameType) (q@@309 T@Field_18680_18681) (w@@316 T@FrameType) (r@@309 T@Field_18680_18681) (u@@309 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_18651 p@@317 v_1@@316 q@@309 w@@316) (InsidePredicate_18651_18651 q@@309 w@@316 r@@309 u@@309)) (InsidePredicate_13713_18651 p@@317 v_1@@316 r@@309 u@@309))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_18651 p@@317 v_1@@316 q@@309 w@@316) (InsidePredicate_18651_18651 q@@309 w@@316 r@@309 u@@309))
)))
(assert (forall ((p@@318 T@Field_13713_7938) (v_1@@317 T@FrameType) (q@@310 T@Field_18680_18681) (w@@317 T@FrameType) (r@@310 T@Field_18121_18122) (u@@310 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_18651 p@@318 v_1@@317 q@@310 w@@317) (InsidePredicate_18651_18094 q@@310 w@@317 r@@310 u@@310)) (InsidePredicate_13713_18094 p@@318 v_1@@317 r@@310 u@@310))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_18651 p@@318 v_1@@317 q@@310 w@@317) (InsidePredicate_18651_18094 q@@310 w@@317 r@@310 u@@310))
)))
(assert (forall ((p@@319 T@Field_13713_7938) (v_1@@318 T@FrameType) (q@@311 T@Field_18680_18681) (w@@318 T@FrameType) (r@@311 T@Field_17538_17539) (u@@311 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_18651 p@@319 v_1@@318 q@@311 w@@318) (InsidePredicate_18651_17509 q@@311 w@@318 r@@311 u@@311)) (InsidePredicate_13713_17509 p@@319 v_1@@318 r@@311 u@@311))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_18651 p@@319 v_1@@318 q@@311 w@@318) (InsidePredicate_18651_17509 q@@311 w@@318 r@@311 u@@311))
)))
(assert (forall ((p@@320 T@Field_13713_7938) (v_1@@319 T@FrameType) (q@@312 T@Field_18680_18681) (w@@319 T@FrameType) (r@@312 T@Field_17064_17065) (u@@312 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_18651 p@@320 v_1@@319 q@@312 w@@319) (InsidePredicate_18651_17039 q@@312 w@@319 r@@312 u@@312)) (InsidePredicate_13713_17039 p@@320 v_1@@319 r@@312 u@@312))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_18651 p@@320 v_1@@319 q@@312 w@@319) (InsidePredicate_18651_17039 q@@312 w@@319 r@@312 u@@312))
)))
(assert (forall ((p@@321 T@Field_13713_7938) (v_1@@320 T@FrameType) (q@@313 T@Field_18680_18681) (w@@320 T@FrameType) (r@@313 T@Field_13713_7938) (u@@313 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_18651 p@@321 v_1@@320 q@@313 w@@320) (InsidePredicate_18651_13713 q@@313 w@@320 r@@313 u@@313)) (InsidePredicate_13713_13713 p@@321 v_1@@320 r@@313 u@@313))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_18651 p@@321 v_1@@320 q@@313 w@@320) (InsidePredicate_18651_13713 q@@313 w@@320 r@@313 u@@313))
)))
(assert (forall ((p@@322 T@Field_13713_7938) (v_1@@321 T@FrameType) (q@@314 T@Field_18121_18122) (w@@321 T@FrameType) (r@@314 T@Field_20346_20347) (u@@314 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_18094 p@@322 v_1@@321 q@@314 w@@321) (InsidePredicate_18094_20346 q@@314 w@@321 r@@314 u@@314)) (InsidePredicate_13713_20346 p@@322 v_1@@321 r@@314 u@@314))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_18094 p@@322 v_1@@321 q@@314 w@@321) (InsidePredicate_18094_20346 q@@314 w@@321 r@@314 u@@314))
)))
(assert (forall ((p@@323 T@Field_13713_7938) (v_1@@322 T@FrameType) (q@@315 T@Field_18121_18122) (w@@322 T@FrameType) (r@@315 T@Field_19426_19427) (u@@315 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_18094 p@@323 v_1@@322 q@@315 w@@322) (InsidePredicate_18094_19426 q@@315 w@@322 r@@315 u@@315)) (InsidePredicate_13713_19426 p@@323 v_1@@322 r@@315 u@@315))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_18094 p@@323 v_1@@322 q@@315 w@@322) (InsidePredicate_18094_19426 q@@315 w@@322 r@@315 u@@315))
)))
(assert (forall ((p@@324 T@Field_13713_7938) (v_1@@323 T@FrameType) (q@@316 T@Field_18121_18122) (w@@323 T@FrameType) (r@@316 T@Field_18680_18681) (u@@316 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_18094 p@@324 v_1@@323 q@@316 w@@323) (InsidePredicate_18094_18651 q@@316 w@@323 r@@316 u@@316)) (InsidePredicate_13713_18651 p@@324 v_1@@323 r@@316 u@@316))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_18094 p@@324 v_1@@323 q@@316 w@@323) (InsidePredicate_18094_18651 q@@316 w@@323 r@@316 u@@316))
)))
(assert (forall ((p@@325 T@Field_13713_7938) (v_1@@324 T@FrameType) (q@@317 T@Field_18121_18122) (w@@324 T@FrameType) (r@@317 T@Field_18121_18122) (u@@317 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_18094 p@@325 v_1@@324 q@@317 w@@324) (InsidePredicate_18094_18094 q@@317 w@@324 r@@317 u@@317)) (InsidePredicate_13713_18094 p@@325 v_1@@324 r@@317 u@@317))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_18094 p@@325 v_1@@324 q@@317 w@@324) (InsidePredicate_18094_18094 q@@317 w@@324 r@@317 u@@317))
)))
(assert (forall ((p@@326 T@Field_13713_7938) (v_1@@325 T@FrameType) (q@@318 T@Field_18121_18122) (w@@325 T@FrameType) (r@@318 T@Field_17538_17539) (u@@318 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_18094 p@@326 v_1@@325 q@@318 w@@325) (InsidePredicate_18094_17509 q@@318 w@@325 r@@318 u@@318)) (InsidePredicate_13713_17509 p@@326 v_1@@325 r@@318 u@@318))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_18094 p@@326 v_1@@325 q@@318 w@@325) (InsidePredicate_18094_17509 q@@318 w@@325 r@@318 u@@318))
)))
(assert (forall ((p@@327 T@Field_13713_7938) (v_1@@326 T@FrameType) (q@@319 T@Field_18121_18122) (w@@326 T@FrameType) (r@@319 T@Field_17064_17065) (u@@319 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_18094 p@@327 v_1@@326 q@@319 w@@326) (InsidePredicate_18094_17039 q@@319 w@@326 r@@319 u@@319)) (InsidePredicate_13713_17039 p@@327 v_1@@326 r@@319 u@@319))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_18094 p@@327 v_1@@326 q@@319 w@@326) (InsidePredicate_18094_17039 q@@319 w@@326 r@@319 u@@319))
)))
(assert (forall ((p@@328 T@Field_13713_7938) (v_1@@327 T@FrameType) (q@@320 T@Field_18121_18122) (w@@327 T@FrameType) (r@@320 T@Field_13713_7938) (u@@320 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_18094 p@@328 v_1@@327 q@@320 w@@327) (InsidePredicate_18094_13713 q@@320 w@@327 r@@320 u@@320)) (InsidePredicate_13713_13713 p@@328 v_1@@327 r@@320 u@@320))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_18094 p@@328 v_1@@327 q@@320 w@@327) (InsidePredicate_18094_13713 q@@320 w@@327 r@@320 u@@320))
)))
(assert (forall ((p@@329 T@Field_13713_7938) (v_1@@328 T@FrameType) (q@@321 T@Field_17538_17539) (w@@328 T@FrameType) (r@@321 T@Field_20346_20347) (u@@321 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_17509 p@@329 v_1@@328 q@@321 w@@328) (InsidePredicate_17509_20346 q@@321 w@@328 r@@321 u@@321)) (InsidePredicate_13713_20346 p@@329 v_1@@328 r@@321 u@@321))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_17509 p@@329 v_1@@328 q@@321 w@@328) (InsidePredicate_17509_20346 q@@321 w@@328 r@@321 u@@321))
)))
(assert (forall ((p@@330 T@Field_13713_7938) (v_1@@329 T@FrameType) (q@@322 T@Field_17538_17539) (w@@329 T@FrameType) (r@@322 T@Field_19426_19427) (u@@322 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_17509 p@@330 v_1@@329 q@@322 w@@329) (InsidePredicate_17509_19426 q@@322 w@@329 r@@322 u@@322)) (InsidePredicate_13713_19426 p@@330 v_1@@329 r@@322 u@@322))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_17509 p@@330 v_1@@329 q@@322 w@@329) (InsidePredicate_17509_19426 q@@322 w@@329 r@@322 u@@322))
)))
(assert (forall ((p@@331 T@Field_13713_7938) (v_1@@330 T@FrameType) (q@@323 T@Field_17538_17539) (w@@330 T@FrameType) (r@@323 T@Field_18680_18681) (u@@323 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_17509 p@@331 v_1@@330 q@@323 w@@330) (InsidePredicate_17509_18651 q@@323 w@@330 r@@323 u@@323)) (InsidePredicate_13713_18651 p@@331 v_1@@330 r@@323 u@@323))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_17509 p@@331 v_1@@330 q@@323 w@@330) (InsidePredicate_17509_18651 q@@323 w@@330 r@@323 u@@323))
)))
(assert (forall ((p@@332 T@Field_13713_7938) (v_1@@331 T@FrameType) (q@@324 T@Field_17538_17539) (w@@331 T@FrameType) (r@@324 T@Field_18121_18122) (u@@324 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_17509 p@@332 v_1@@331 q@@324 w@@331) (InsidePredicate_17509_18094 q@@324 w@@331 r@@324 u@@324)) (InsidePredicate_13713_18094 p@@332 v_1@@331 r@@324 u@@324))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_17509 p@@332 v_1@@331 q@@324 w@@331) (InsidePredicate_17509_18094 q@@324 w@@331 r@@324 u@@324))
)))
(assert (forall ((p@@333 T@Field_13713_7938) (v_1@@332 T@FrameType) (q@@325 T@Field_17538_17539) (w@@332 T@FrameType) (r@@325 T@Field_17538_17539) (u@@325 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_17509 p@@333 v_1@@332 q@@325 w@@332) (InsidePredicate_17509_17509 q@@325 w@@332 r@@325 u@@325)) (InsidePredicate_13713_17509 p@@333 v_1@@332 r@@325 u@@325))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_17509 p@@333 v_1@@332 q@@325 w@@332) (InsidePredicate_17509_17509 q@@325 w@@332 r@@325 u@@325))
)))
(assert (forall ((p@@334 T@Field_13713_7938) (v_1@@333 T@FrameType) (q@@326 T@Field_17538_17539) (w@@333 T@FrameType) (r@@326 T@Field_17064_17065) (u@@326 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_17509 p@@334 v_1@@333 q@@326 w@@333) (InsidePredicate_17509_17039 q@@326 w@@333 r@@326 u@@326)) (InsidePredicate_13713_17039 p@@334 v_1@@333 r@@326 u@@326))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_17509 p@@334 v_1@@333 q@@326 w@@333) (InsidePredicate_17509_17039 q@@326 w@@333 r@@326 u@@326))
)))
(assert (forall ((p@@335 T@Field_13713_7938) (v_1@@334 T@FrameType) (q@@327 T@Field_17538_17539) (w@@334 T@FrameType) (r@@327 T@Field_13713_7938) (u@@327 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_17509 p@@335 v_1@@334 q@@327 w@@334) (InsidePredicate_17509_13713 q@@327 w@@334 r@@327 u@@327)) (InsidePredicate_13713_13713 p@@335 v_1@@334 r@@327 u@@327))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_17509 p@@335 v_1@@334 q@@327 w@@334) (InsidePredicate_17509_13713 q@@327 w@@334 r@@327 u@@327))
)))
(assert (forall ((p@@336 T@Field_13713_7938) (v_1@@335 T@FrameType) (q@@328 T@Field_17064_17065) (w@@335 T@FrameType) (r@@328 T@Field_20346_20347) (u@@328 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_17039 p@@336 v_1@@335 q@@328 w@@335) (InsidePredicate_17039_20346 q@@328 w@@335 r@@328 u@@328)) (InsidePredicate_13713_20346 p@@336 v_1@@335 r@@328 u@@328))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_17039 p@@336 v_1@@335 q@@328 w@@335) (InsidePredicate_17039_20346 q@@328 w@@335 r@@328 u@@328))
)))
(assert (forall ((p@@337 T@Field_13713_7938) (v_1@@336 T@FrameType) (q@@329 T@Field_17064_17065) (w@@336 T@FrameType) (r@@329 T@Field_19426_19427) (u@@329 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_17039 p@@337 v_1@@336 q@@329 w@@336) (InsidePredicate_17039_19426 q@@329 w@@336 r@@329 u@@329)) (InsidePredicate_13713_19426 p@@337 v_1@@336 r@@329 u@@329))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_17039 p@@337 v_1@@336 q@@329 w@@336) (InsidePredicate_17039_19426 q@@329 w@@336 r@@329 u@@329))
)))
(assert (forall ((p@@338 T@Field_13713_7938) (v_1@@337 T@FrameType) (q@@330 T@Field_17064_17065) (w@@337 T@FrameType) (r@@330 T@Field_18680_18681) (u@@330 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_17039 p@@338 v_1@@337 q@@330 w@@337) (InsidePredicate_17039_18651 q@@330 w@@337 r@@330 u@@330)) (InsidePredicate_13713_18651 p@@338 v_1@@337 r@@330 u@@330))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_17039 p@@338 v_1@@337 q@@330 w@@337) (InsidePredicate_17039_18651 q@@330 w@@337 r@@330 u@@330))
)))
(assert (forall ((p@@339 T@Field_13713_7938) (v_1@@338 T@FrameType) (q@@331 T@Field_17064_17065) (w@@338 T@FrameType) (r@@331 T@Field_18121_18122) (u@@331 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_17039 p@@339 v_1@@338 q@@331 w@@338) (InsidePredicate_17039_18094 q@@331 w@@338 r@@331 u@@331)) (InsidePredicate_13713_18094 p@@339 v_1@@338 r@@331 u@@331))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_17039 p@@339 v_1@@338 q@@331 w@@338) (InsidePredicate_17039_18094 q@@331 w@@338 r@@331 u@@331))
)))
(assert (forall ((p@@340 T@Field_13713_7938) (v_1@@339 T@FrameType) (q@@332 T@Field_17064_17065) (w@@339 T@FrameType) (r@@332 T@Field_17538_17539) (u@@332 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_17039 p@@340 v_1@@339 q@@332 w@@339) (InsidePredicate_17039_17509 q@@332 w@@339 r@@332 u@@332)) (InsidePredicate_13713_17509 p@@340 v_1@@339 r@@332 u@@332))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_17039 p@@340 v_1@@339 q@@332 w@@339) (InsidePredicate_17039_17509 q@@332 w@@339 r@@332 u@@332))
)))
(assert (forall ((p@@341 T@Field_13713_7938) (v_1@@340 T@FrameType) (q@@333 T@Field_17064_17065) (w@@340 T@FrameType) (r@@333 T@Field_17064_17065) (u@@333 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_17039 p@@341 v_1@@340 q@@333 w@@340) (InsidePredicate_17039_17039 q@@333 w@@340 r@@333 u@@333)) (InsidePredicate_13713_17039 p@@341 v_1@@340 r@@333 u@@333))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_17039 p@@341 v_1@@340 q@@333 w@@340) (InsidePredicate_17039_17039 q@@333 w@@340 r@@333 u@@333))
)))
(assert (forall ((p@@342 T@Field_13713_7938) (v_1@@341 T@FrameType) (q@@334 T@Field_17064_17065) (w@@341 T@FrameType) (r@@334 T@Field_13713_7938) (u@@334 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_17039 p@@342 v_1@@341 q@@334 w@@341) (InsidePredicate_17039_13713 q@@334 w@@341 r@@334 u@@334)) (InsidePredicate_13713_13713 p@@342 v_1@@341 r@@334 u@@334))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_17039 p@@342 v_1@@341 q@@334 w@@341) (InsidePredicate_17039_13713 q@@334 w@@341 r@@334 u@@334))
)))
(assert (forall ((p@@343 T@Field_13713_7938) (v_1@@342 T@FrameType) (q@@335 T@Field_13713_7938) (w@@342 T@FrameType) (r@@335 T@Field_20346_20347) (u@@335 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_13713 p@@343 v_1@@342 q@@335 w@@342) (InsidePredicate_13713_20346 q@@335 w@@342 r@@335 u@@335)) (InsidePredicate_13713_20346 p@@343 v_1@@342 r@@335 u@@335))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_13713 p@@343 v_1@@342 q@@335 w@@342) (InsidePredicate_13713_20346 q@@335 w@@342 r@@335 u@@335))
)))
(assert (forall ((p@@344 T@Field_13713_7938) (v_1@@343 T@FrameType) (q@@336 T@Field_13713_7938) (w@@343 T@FrameType) (r@@336 T@Field_19426_19427) (u@@336 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_13713 p@@344 v_1@@343 q@@336 w@@343) (InsidePredicate_13713_19426 q@@336 w@@343 r@@336 u@@336)) (InsidePredicate_13713_19426 p@@344 v_1@@343 r@@336 u@@336))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_13713 p@@344 v_1@@343 q@@336 w@@343) (InsidePredicate_13713_19426 q@@336 w@@343 r@@336 u@@336))
)))
(assert (forall ((p@@345 T@Field_13713_7938) (v_1@@344 T@FrameType) (q@@337 T@Field_13713_7938) (w@@344 T@FrameType) (r@@337 T@Field_18680_18681) (u@@337 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_13713 p@@345 v_1@@344 q@@337 w@@344) (InsidePredicate_13713_18651 q@@337 w@@344 r@@337 u@@337)) (InsidePredicate_13713_18651 p@@345 v_1@@344 r@@337 u@@337))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_13713 p@@345 v_1@@344 q@@337 w@@344) (InsidePredicate_13713_18651 q@@337 w@@344 r@@337 u@@337))
)))
(assert (forall ((p@@346 T@Field_13713_7938) (v_1@@345 T@FrameType) (q@@338 T@Field_13713_7938) (w@@345 T@FrameType) (r@@338 T@Field_18121_18122) (u@@338 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_13713 p@@346 v_1@@345 q@@338 w@@345) (InsidePredicate_13713_18094 q@@338 w@@345 r@@338 u@@338)) (InsidePredicate_13713_18094 p@@346 v_1@@345 r@@338 u@@338))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_13713 p@@346 v_1@@345 q@@338 w@@345) (InsidePredicate_13713_18094 q@@338 w@@345 r@@338 u@@338))
)))
(assert (forall ((p@@347 T@Field_13713_7938) (v_1@@346 T@FrameType) (q@@339 T@Field_13713_7938) (w@@346 T@FrameType) (r@@339 T@Field_17538_17539) (u@@339 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_13713 p@@347 v_1@@346 q@@339 w@@346) (InsidePredicate_13713_17509 q@@339 w@@346 r@@339 u@@339)) (InsidePredicate_13713_17509 p@@347 v_1@@346 r@@339 u@@339))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_13713 p@@347 v_1@@346 q@@339 w@@346) (InsidePredicate_13713_17509 q@@339 w@@346 r@@339 u@@339))
)))
(assert (forall ((p@@348 T@Field_13713_7938) (v_1@@347 T@FrameType) (q@@340 T@Field_13713_7938) (w@@347 T@FrameType) (r@@340 T@Field_17064_17065) (u@@340 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_13713 p@@348 v_1@@347 q@@340 w@@347) (InsidePredicate_13713_17039 q@@340 w@@347 r@@340 u@@340)) (InsidePredicate_13713_17039 p@@348 v_1@@347 r@@340 u@@340))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_13713 p@@348 v_1@@347 q@@340 w@@347) (InsidePredicate_13713_17039 q@@340 w@@347 r@@340 u@@340))
)))
(assert (forall ((p@@349 T@Field_13713_7938) (v_1@@348 T@FrameType) (q@@341 T@Field_13713_7938) (w@@348 T@FrameType) (r@@341 T@Field_13713_7938) (u@@341 T@FrameType) ) (!  (=> (and (InsidePredicate_13713_13713 p@@349 v_1@@348 q@@341 w@@348) (InsidePredicate_13713_13713 q@@341 w@@348 r@@341 u@@341)) (InsidePredicate_13713_13713 p@@349 v_1@@348 r@@341 u@@341))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13713_13713 p@@349 v_1@@348 q@@341 w@@348) (InsidePredicate_13713_13713 q@@341 w@@348 r@@341 u@@341))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((arg1@@26 T@Ref) (arg2@@26 Real) (arg3@@19 T@Ref) (arg4@@5 Real) (arg1_2@@2 T@Ref) (arg2_2@@2 Real) (arg3_2@@1 T@Ref) (arg4_2 Real) ) (!  (=> (= (wand_3 arg1@@26 arg2@@26 arg3@@19 arg4@@5) (wand_3 arg1_2@@2 arg2_2@@2 arg3_2@@1 arg4_2)) (and (= arg1@@26 arg1_2@@2) (and (= arg2@@26 arg2_2@@2) (and (= arg3@@19 arg3_2@@1) (= arg4@@5 arg4_2)))))
 :qid |stdinbpl.304:15|
 :skolemid |49|
 :pattern ( (wand_3 arg1@@26 arg2@@26 arg3@@19 arg4@@5) (wand_3 arg1_2@@2 arg2_2@@2 arg3_2@@1 arg4_2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun b_9@4 () Bool)
(declare-fun b_10@6 () Bool)
(declare-fun neededTransfer@3 () Real)
(declare-fun Used_6Mask@3 () T@PolymorphicMapType_13674)
(declare-fun x@@11 () T@Ref)
(declare-fun initNeededTransfer@0 () Real)
(declare-fun takeTransfer@1 () Real)
(declare-fun Mask@2 () T@PolymorphicMapType_13674)
(declare-fun Mask@0 () T@PolymorphicMapType_13674)
(declare-fun neededTransfer@1 () Real)
(declare-fun b_10@3 () Bool)
(declare-fun Used_6Mask@1 () T@PolymorphicMapType_13674)
(declare-fun Heap@1 () T@PolymorphicMapType_13653)
(declare-fun Heap@@103 () T@PolymorphicMapType_13653)
(declare-fun neededTransfer@2 () Real)
(declare-fun Used_6Mask@2 () T@PolymorphicMapType_13674)
(declare-fun b_10@4 () Bool)
(declare-fun Used_6Heap@0 () T@PolymorphicMapType_13653)
(declare-fun TempMask@1 () T@PolymorphicMapType_13674)
(declare-fun b_10@5 () Bool)
(declare-fun Mask@1 () T@PolymorphicMapType_13674)
(declare-fun newPMask@0 () T@PolymorphicMapType_14202)
(declare-fun Heap@0 () T@PolymorphicMapType_13653)
(declare-fun maskTransfer@1 () Real)
(declare-fun takeTransfer@0 () Real)
(declare-fun b_10@0 () Bool)
(declare-fun neededTransfer@0 () Real)
(declare-fun Used_6Mask@0 () T@PolymorphicMapType_13674)
(declare-fun b_10@1 () Bool)
(declare-fun TempMask@0 () T@PolymorphicMapType_13674)
(declare-fun b_10@2 () Bool)
(declare-fun Ops_5Heap@0 () T@PolymorphicMapType_13653)
(declare-fun Ops_5Mask@2 () T@PolymorphicMapType_13674)
(declare-fun Ops_5Mask@1 () T@PolymorphicMapType_13674)
(declare-fun maskTransfer@0 () Real)
(declare-fun b_9@3 () Bool)
(declare-fun b_9@2 () Bool)
(declare-fun b_10 () Bool)
(declare-fun b_9@0 () Bool)
(declare-fun perm@1 () Real)
(declare-fun Ops_5Mask@0 () T@PolymorphicMapType_13674)
(declare-fun b_9@1 () Bool)
(declare-fun perm@0 () Real)
(declare-fun b_9 () Bool)
(declare-fun b_8@0 () Bool)
(declare-fun b_8 () Bool)
(declare-fun Used_5Heap@0 () T@PolymorphicMapType_13653)
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
 (=> (= (ControlFlow 0 0) 22) (let ((anon14_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (and (and b_9@4 b_9@4) b_10@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| Used_6Mask@3) null (P x@@11)) initNeededTransfer@0))))))
(let ((anon21_Else_correct  (=> (>= 0.0 takeTransfer@1) (=> (and (= Mask@2 Mask@0) (= neededTransfer@3 neededTransfer@1)) (=> (and (and (= b_10@6 b_10@3) (= Used_6Mask@3 Used_6Mask@1)) (and (= Heap@1 Heap@@103) (= (ControlFlow 0 5) 2))) anon14_correct)))))
(let ((anon21_Then_correct  (=> (> takeTransfer@1 0.0) (=> (and (= neededTransfer@2 (- neededTransfer@1 takeTransfer@1)) (= Used_6Mask@2 (PolymorphicMapType_13674 (|PolymorphicMapType_13674_7928_2246#PolymorphicMapType_13674| Used_6Mask@1) (store (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| Used_6Mask@1) null (P x@@11) (+ (select (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| Used_6Mask@1) null (P x@@11)) takeTransfer@1)) (|PolymorphicMapType_13674_7797_1195#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7808_1407#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7962_7963#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7848_1672#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7880_1941#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7928_7938#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7928_53#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7928_13727#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7928_78132#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7937_2246#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7937_53#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7937_13727#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7937_78543#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7797_7938#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7797_53#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7797_13727#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7797_78957#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7808_7938#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7808_53#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7808_13727#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7808_79371#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7962_2246#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7962_53#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7962_13727#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7962_79782#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7848_7938#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7848_53#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7848_13727#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7848_80196#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7880_7938#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7880_53#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7880_13727#PolymorphicMapType_13674| Used_6Mask@1) (|PolymorphicMapType_13674_7880_80610#PolymorphicMapType_13674| Used_6Mask@1)))) (=> (and (and (= b_10@4  (and b_10@3 (state Used_6Heap@0 Used_6Mask@2))) (= TempMask@1 (PolymorphicMapType_13674 (|PolymorphicMapType_13674_7928_2246#PolymorphicMapType_13674| ZeroMask) (store (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| ZeroMask) null (P x@@11) FullPerm) (|PolymorphicMapType_13674_7797_1195#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7808_1407#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7962_7963#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7848_1672#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7880_1941#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7928_7938#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7928_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7928_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7928_78132#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7937_2246#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7937_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7937_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7937_78543#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7797_7938#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7797_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7797_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7797_78957#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7808_7938#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7808_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7808_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7808_79371#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7962_2246#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7962_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7962_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7962_79782#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7848_7938#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7848_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7848_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7848_80196#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7880_7938#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7880_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7880_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7880_80610#PolymorphicMapType_13674| ZeroMask)))) (and (= b_10@5  (and b_10@4 (IdenticalOnKnownLocations Heap@@103 Used_6Heap@0 TempMask@1))) (= Mask@1 (PolymorphicMapType_13674 (|PolymorphicMapType_13674_7928_2246#PolymorphicMapType_13674| Mask@0) (store (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| Mask@0) null (P x@@11) (- (select (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| Mask@0) null (P x@@11)) takeTransfer@1)) (|PolymorphicMapType_13674_7797_1195#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7808_1407#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7962_7963#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7848_1672#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7880_1941#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7928_7938#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7928_53#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7928_13727#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7928_78132#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7937_2246#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7937_53#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7937_13727#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7937_78543#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7797_7938#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7797_53#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7797_13727#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7797_78957#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7808_7938#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7808_53#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7808_13727#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7808_79371#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7962_2246#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7962_53#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7962_13727#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7962_79782#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7848_7938#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7848_53#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7848_13727#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7848_80196#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7880_7938#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7880_53#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7880_13727#PolymorphicMapType_13674| Mask@0) (|PolymorphicMapType_13674_7880_80610#PolymorphicMapType_13674| Mask@0))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_15 T@Ref) (f_20 T@Field_19293_2246) ) (!  (=> (or (select (|PolymorphicMapType_14202_7928_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15 f_20) (select (|PolymorphicMapType_14202_7928_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15 f_20)) (select (|PolymorphicMapType_14202_7928_2246#PolymorphicMapType_14202| newPMask@0) o_15 f_20))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_7928_2246#PolymorphicMapType_14202| newPMask@0) o_15 f_20))
)) (forall ((o_15@@0 T@Ref) (f_20@@0 T@Field_13713_53) ) (!  (=> (or (select (|PolymorphicMapType_14202_7928_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@0 f_20@@0) (select (|PolymorphicMapType_14202_7928_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@0 f_20@@0)) (select (|PolymorphicMapType_14202_7928_53#PolymorphicMapType_14202| newPMask@0) o_15@@0 f_20@@0))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_7928_53#PolymorphicMapType_14202| newPMask@0) o_15@@0 f_20@@0))
))) (forall ((o_15@@1 T@Ref) (f_20@@1 T@Field_13726_13727) ) (!  (=> (or (select (|PolymorphicMapType_14202_7928_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@1 f_20@@1) (select (|PolymorphicMapType_14202_7928_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@1 f_20@@1)) (select (|PolymorphicMapType_14202_7928_13727#PolymorphicMapType_14202| newPMask@0) o_15@@1 f_20@@1))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_7928_13727#PolymorphicMapType_14202| newPMask@0) o_15@@1 f_20@@1))
))) (forall ((o_15@@2 T@Ref) (f_20@@2 T@Field_13713_17055) ) (!  (=> (or (select (|PolymorphicMapType_14202_7928_54124#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@2 f_20@@2) (select (|PolymorphicMapType_14202_7928_54124#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@2 f_20@@2)) (select (|PolymorphicMapType_14202_7928_54124#PolymorphicMapType_14202| newPMask@0) o_15@@2 f_20@@2))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_7928_54124#PolymorphicMapType_14202| newPMask@0) o_15@@2 f_20@@2))
))) (forall ((o_15@@3 T@Ref) (f_20@@3 T@Field_13713_7938) ) (!  (=> (or (select (|PolymorphicMapType_14202_7928_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@3 f_20@@3) (select (|PolymorphicMapType_14202_7928_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@3 f_20@@3)) (select (|PolymorphicMapType_14202_7928_17065#PolymorphicMapType_14202| newPMask@0) o_15@@3 f_20@@3))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_7928_17065#PolymorphicMapType_14202| newPMask@0) o_15@@3 f_20@@3))
))) (forall ((o_15@@4 T@Ref) (f_20@@4 T@Field_17039_1195) ) (!  (=> (or (select (|PolymorphicMapType_14202_17039_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@4 f_20@@4) (select (|PolymorphicMapType_14202_17039_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@4 f_20@@4)) (select (|PolymorphicMapType_14202_17039_2246#PolymorphicMapType_14202| newPMask@0) o_15@@4 f_20@@4))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_17039_2246#PolymorphicMapType_14202| newPMask@0) o_15@@4 f_20@@4))
))) (forall ((o_15@@5 T@Ref) (f_20@@5 T@Field_17039_53) ) (!  (=> (or (select (|PolymorphicMapType_14202_17039_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@5 f_20@@5) (select (|PolymorphicMapType_14202_17039_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@5 f_20@@5)) (select (|PolymorphicMapType_14202_17039_53#PolymorphicMapType_14202| newPMask@0) o_15@@5 f_20@@5))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_17039_53#PolymorphicMapType_14202| newPMask@0) o_15@@5 f_20@@5))
))) (forall ((o_15@@6 T@Ref) (f_20@@6 T@Field_17039_13727) ) (!  (=> (or (select (|PolymorphicMapType_14202_17039_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@6 f_20@@6) (select (|PolymorphicMapType_14202_17039_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@6 f_20@@6)) (select (|PolymorphicMapType_14202_17039_13727#PolymorphicMapType_14202| newPMask@0) o_15@@6 f_20@@6))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_17039_13727#PolymorphicMapType_14202| newPMask@0) o_15@@6 f_20@@6))
))) (forall ((o_15@@7 T@Ref) (f_20@@7 T@Field_17050_17055) ) (!  (=> (or (select (|PolymorphicMapType_14202_17039_55172#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@7 f_20@@7) (select (|PolymorphicMapType_14202_17039_55172#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@7 f_20@@7)) (select (|PolymorphicMapType_14202_17039_55172#PolymorphicMapType_14202| newPMask@0) o_15@@7 f_20@@7))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_17039_55172#PolymorphicMapType_14202| newPMask@0) o_15@@7 f_20@@7))
))) (forall ((o_15@@8 T@Ref) (f_20@@8 T@Field_17064_17065) ) (!  (=> (or (select (|PolymorphicMapType_14202_17039_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@8 f_20@@8) (select (|PolymorphicMapType_14202_17039_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@8 f_20@@8)) (select (|PolymorphicMapType_14202_17039_17065#PolymorphicMapType_14202| newPMask@0) o_15@@8 f_20@@8))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_17039_17065#PolymorphicMapType_14202| newPMask@0) o_15@@8 f_20@@8))
))) (forall ((o_15@@9 T@Ref) (f_20@@9 T@Field_17509_1407) ) (!  (=> (or (select (|PolymorphicMapType_14202_17509_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@9 f_20@@9) (select (|PolymorphicMapType_14202_17509_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@9 f_20@@9)) (select (|PolymorphicMapType_14202_17509_2246#PolymorphicMapType_14202| newPMask@0) o_15@@9 f_20@@9))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_17509_2246#PolymorphicMapType_14202| newPMask@0) o_15@@9 f_20@@9))
))) (forall ((o_15@@10 T@Ref) (f_20@@10 T@Field_17509_53) ) (!  (=> (or (select (|PolymorphicMapType_14202_17509_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@10 f_20@@10) (select (|PolymorphicMapType_14202_17509_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@10 f_20@@10)) (select (|PolymorphicMapType_14202_17509_53#PolymorphicMapType_14202| newPMask@0) o_15@@10 f_20@@10))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_17509_53#PolymorphicMapType_14202| newPMask@0) o_15@@10 f_20@@10))
))) (forall ((o_15@@11 T@Ref) (f_20@@11 T@Field_17509_13727) ) (!  (=> (or (select (|PolymorphicMapType_14202_17509_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@11 f_20@@11) (select (|PolymorphicMapType_14202_17509_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@11 f_20@@11)) (select (|PolymorphicMapType_14202_17509_13727#PolymorphicMapType_14202| newPMask@0) o_15@@11 f_20@@11))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_17509_13727#PolymorphicMapType_14202| newPMask@0) o_15@@11 f_20@@11))
))) (forall ((o_15@@12 T@Ref) (f_20@@12 T@Field_17522_17527) ) (!  (=> (or (select (|PolymorphicMapType_14202_17509_56220#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@12 f_20@@12) (select (|PolymorphicMapType_14202_17509_56220#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@12 f_20@@12)) (select (|PolymorphicMapType_14202_17509_56220#PolymorphicMapType_14202| newPMask@0) o_15@@12 f_20@@12))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_17509_56220#PolymorphicMapType_14202| newPMask@0) o_15@@12 f_20@@12))
))) (forall ((o_15@@13 T@Ref) (f_20@@13 T@Field_17538_17539) ) (!  (=> (or (select (|PolymorphicMapType_14202_17509_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@13 f_20@@13) (select (|PolymorphicMapType_14202_17509_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@13 f_20@@13)) (select (|PolymorphicMapType_14202_17509_17065#PolymorphicMapType_14202| newPMask@0) o_15@@13 f_20@@13))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_17509_17065#PolymorphicMapType_14202| newPMask@0) o_15@@13 f_20@@13))
))) (forall ((o_15@@14 T@Ref) (f_20@@14 T@Field_18094_1672) ) (!  (=> (or (select (|PolymorphicMapType_14202_18094_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@14 f_20@@14) (select (|PolymorphicMapType_14202_18094_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@14 f_20@@14)) (select (|PolymorphicMapType_14202_18094_2246#PolymorphicMapType_14202| newPMask@0) o_15@@14 f_20@@14))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_18094_2246#PolymorphicMapType_14202| newPMask@0) o_15@@14 f_20@@14))
))) (forall ((o_15@@15 T@Ref) (f_20@@15 T@Field_18094_53) ) (!  (=> (or (select (|PolymorphicMapType_14202_18094_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@15 f_20@@15) (select (|PolymorphicMapType_14202_18094_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@15 f_20@@15)) (select (|PolymorphicMapType_14202_18094_53#PolymorphicMapType_14202| newPMask@0) o_15@@15 f_20@@15))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_18094_53#PolymorphicMapType_14202| newPMask@0) o_15@@15 f_20@@15))
))) (forall ((o_15@@16 T@Ref) (f_20@@16 T@Field_18094_13727) ) (!  (=> (or (select (|PolymorphicMapType_14202_18094_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@16 f_20@@16) (select (|PolymorphicMapType_14202_18094_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@16 f_20@@16)) (select (|PolymorphicMapType_14202_18094_13727#PolymorphicMapType_14202| newPMask@0) o_15@@16 f_20@@16))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_18094_13727#PolymorphicMapType_14202| newPMask@0) o_15@@16 f_20@@16))
))) (forall ((o_15@@17 T@Ref) (f_20@@17 T@Field_18106_18111) ) (!  (=> (or (select (|PolymorphicMapType_14202_18094_57268#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@17 f_20@@17) (select (|PolymorphicMapType_14202_18094_57268#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@17 f_20@@17)) (select (|PolymorphicMapType_14202_18094_57268#PolymorphicMapType_14202| newPMask@0) o_15@@17 f_20@@17))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_18094_57268#PolymorphicMapType_14202| newPMask@0) o_15@@17 f_20@@17))
))) (forall ((o_15@@18 T@Ref) (f_20@@18 T@Field_18121_18122) ) (!  (=> (or (select (|PolymorphicMapType_14202_18094_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@18 f_20@@18) (select (|PolymorphicMapType_14202_18094_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@18 f_20@@18)) (select (|PolymorphicMapType_14202_18094_17065#PolymorphicMapType_14202| newPMask@0) o_15@@18 f_20@@18))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_18094_17065#PolymorphicMapType_14202| newPMask@0) o_15@@18 f_20@@18))
))) (forall ((o_15@@19 T@Ref) (f_20@@19 T@Field_18651_1941) ) (!  (=> (or (select (|PolymorphicMapType_14202_18651_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@19 f_20@@19) (select (|PolymorphicMapType_14202_18651_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@19 f_20@@19)) (select (|PolymorphicMapType_14202_18651_2246#PolymorphicMapType_14202| newPMask@0) o_15@@19 f_20@@19))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_18651_2246#PolymorphicMapType_14202| newPMask@0) o_15@@19 f_20@@19))
))) (forall ((o_15@@20 T@Ref) (f_20@@20 T@Field_18651_53) ) (!  (=> (or (select (|PolymorphicMapType_14202_18651_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@20 f_20@@20) (select (|PolymorphicMapType_14202_18651_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@20 f_20@@20)) (select (|PolymorphicMapType_14202_18651_53#PolymorphicMapType_14202| newPMask@0) o_15@@20 f_20@@20))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_18651_53#PolymorphicMapType_14202| newPMask@0) o_15@@20 f_20@@20))
))) (forall ((o_15@@21 T@Ref) (f_20@@21 T@Field_18651_13727) ) (!  (=> (or (select (|PolymorphicMapType_14202_18651_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@21 f_20@@21) (select (|PolymorphicMapType_14202_18651_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@21 f_20@@21)) (select (|PolymorphicMapType_14202_18651_13727#PolymorphicMapType_14202| newPMask@0) o_15@@21 f_20@@21))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_18651_13727#PolymorphicMapType_14202| newPMask@0) o_15@@21 f_20@@21))
))) (forall ((o_15@@22 T@Ref) (f_20@@22 T@Field_18664_18669) ) (!  (=> (or (select (|PolymorphicMapType_14202_18651_58316#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@22 f_20@@22) (select (|PolymorphicMapType_14202_18651_58316#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@22 f_20@@22)) (select (|PolymorphicMapType_14202_18651_58316#PolymorphicMapType_14202| newPMask@0) o_15@@22 f_20@@22))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_18651_58316#PolymorphicMapType_14202| newPMask@0) o_15@@22 f_20@@22))
))) (forall ((o_15@@23 T@Ref) (f_20@@23 T@Field_18680_18681) ) (!  (=> (or (select (|PolymorphicMapType_14202_18651_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@23 f_20@@23) (select (|PolymorphicMapType_14202_18651_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@23 f_20@@23)) (select (|PolymorphicMapType_14202_18651_17065#PolymorphicMapType_14202| newPMask@0) o_15@@23 f_20@@23))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_18651_17065#PolymorphicMapType_14202| newPMask@0) o_15@@23 f_20@@23))
))) (forall ((o_15@@24 T@Ref) (f_20@@24 T@Field_7937_1195) ) (!  (=> (or (select (|PolymorphicMapType_14202_19426_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@24 f_20@@24) (select (|PolymorphicMapType_14202_19426_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@24 f_20@@24)) (select (|PolymorphicMapType_14202_19426_2246#PolymorphicMapType_14202| newPMask@0) o_15@@24 f_20@@24))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_19426_2246#PolymorphicMapType_14202| newPMask@0) o_15@@24 f_20@@24))
))) (forall ((o_15@@25 T@Ref) (f_20@@25 T@Field_7937_53) ) (!  (=> (or (select (|PolymorphicMapType_14202_19426_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@25 f_20@@25) (select (|PolymorphicMapType_14202_19426_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@25 f_20@@25)) (select (|PolymorphicMapType_14202_19426_53#PolymorphicMapType_14202| newPMask@0) o_15@@25 f_20@@25))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_19426_53#PolymorphicMapType_14202| newPMask@0) o_15@@25 f_20@@25))
))) (forall ((o_15@@26 T@Ref) (f_20@@26 T@Field_7937_13727) ) (!  (=> (or (select (|PolymorphicMapType_14202_19426_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@26 f_20@@26) (select (|PolymorphicMapType_14202_19426_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@26 f_20@@26)) (select (|PolymorphicMapType_14202_19426_13727#PolymorphicMapType_14202| newPMask@0) o_15@@26 f_20@@26))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_19426_13727#PolymorphicMapType_14202| newPMask@0) o_15@@26 f_20@@26))
))) (forall ((o_15@@27 T@Ref) (f_20@@27 T@Field_19439_19444) ) (!  (=> (or (select (|PolymorphicMapType_14202_19426_59364#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@27 f_20@@27) (select (|PolymorphicMapType_14202_19426_59364#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@27 f_20@@27)) (select (|PolymorphicMapType_14202_19426_59364#PolymorphicMapType_14202| newPMask@0) o_15@@27 f_20@@27))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_19426_59364#PolymorphicMapType_14202| newPMask@0) o_15@@27 f_20@@27))
))) (forall ((o_15@@28 T@Ref) (f_20@@28 T@Field_19426_19427) ) (!  (=> (or (select (|PolymorphicMapType_14202_19426_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@28 f_20@@28) (select (|PolymorphicMapType_14202_19426_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@28 f_20@@28)) (select (|PolymorphicMapType_14202_19426_17065#PolymorphicMapType_14202| newPMask@0) o_15@@28 f_20@@28))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_19426_17065#PolymorphicMapType_14202| newPMask@0) o_15@@28 f_20@@28))
))) (forall ((o_15@@29 T@Ref) (f_20@@29 T@Field_7962_1195) ) (!  (=> (or (select (|PolymorphicMapType_14202_20346_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@29 f_20@@29) (select (|PolymorphicMapType_14202_20346_2246#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@29 f_20@@29)) (select (|PolymorphicMapType_14202_20346_2246#PolymorphicMapType_14202| newPMask@0) o_15@@29 f_20@@29))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_20346_2246#PolymorphicMapType_14202| newPMask@0) o_15@@29 f_20@@29))
))) (forall ((o_15@@30 T@Ref) (f_20@@30 T@Field_7962_53) ) (!  (=> (or (select (|PolymorphicMapType_14202_20346_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@30 f_20@@30) (select (|PolymorphicMapType_14202_20346_53#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@30 f_20@@30)) (select (|PolymorphicMapType_14202_20346_53#PolymorphicMapType_14202| newPMask@0) o_15@@30 f_20@@30))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_20346_53#PolymorphicMapType_14202| newPMask@0) o_15@@30 f_20@@30))
))) (forall ((o_15@@31 T@Ref) (f_20@@31 T@Field_7962_13727) ) (!  (=> (or (select (|PolymorphicMapType_14202_20346_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@31 f_20@@31) (select (|PolymorphicMapType_14202_20346_13727#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@31 f_20@@31)) (select (|PolymorphicMapType_14202_20346_13727#PolymorphicMapType_14202| newPMask@0) o_15@@31 f_20@@31))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_20346_13727#PolymorphicMapType_14202| newPMask@0) o_15@@31 f_20@@31))
))) (forall ((o_15@@32 T@Ref) (f_20@@32 T@Field_20359_20364) ) (!  (=> (or (select (|PolymorphicMapType_14202_20346_60412#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@32 f_20@@32) (select (|PolymorphicMapType_14202_20346_60412#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@32 f_20@@32)) (select (|PolymorphicMapType_14202_20346_60412#PolymorphicMapType_14202| newPMask@0) o_15@@32 f_20@@32))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_20346_60412#PolymorphicMapType_14202| newPMask@0) o_15@@32 f_20@@32))
))) (forall ((o_15@@33 T@Ref) (f_20@@33 T@Field_20346_20347) ) (!  (=> (or (select (|PolymorphicMapType_14202_20346_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11))) o_15@@33 f_20@@33) (select (|PolymorphicMapType_14202_20346_17065#PolymorphicMapType_14202| (select (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) null (|P#sm| x@@11))) o_15@@33 f_20@@33)) (select (|PolymorphicMapType_14202_20346_17065#PolymorphicMapType_14202| newPMask@0) o_15@@33 f_20@@33))
 :qid |stdinbpl.809:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_14202_20346_17065#PolymorphicMapType_14202| newPMask@0) o_15@@33 f_20@@33))
))) (= Heap@0 (PolymorphicMapType_13653 (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_7672_7673#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_7928_2246#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_7799_23644#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_7937_7938#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_7941_25323#PolymorphicMapType_13653| Heap@@103) (store (|PolymorphicMapType_13653_7813_28944#PolymorphicMapType_13653| Heap@@103) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11) newPMask@0) (|PolymorphicMapType_13653_7852_32494#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_7962_7963#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_7966_36355#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_7886_39881#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_7937_53#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_7937_13727#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_7937_1195#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_7962_53#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_7962_13727#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_7962_1195#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_13713_7938#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_13713_46349#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_17039_7938#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_17039_53#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_17039_13727#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_17039_1195#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_17509_7938#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_17509_53#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_17509_13727#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_17509_1195#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_18094_7938#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_18094_53#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_18094_13727#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_18094_1195#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_18651_7938#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_18651_53#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_18651_13727#PolymorphicMapType_13653| Heap@@103) (|PolymorphicMapType_13653_18651_1195#PolymorphicMapType_13653| Heap@@103)))) (and (= Mask@2 Mask@1) (= neededTransfer@3 neededTransfer@2))) (and (and (= b_10@6 b_10@5) (= Used_6Mask@3 Used_6Mask@2)) (and (= Heap@1 Heap@0) (= (ControlFlow 0 4) 2)))) anon14_correct))))))
(let ((anon20_Else_correct  (=> (and (< maskTransfer@1 neededTransfer@1) (= takeTransfer@1 maskTransfer@1)) (and (=> (= (ControlFlow 0 7) 4) anon21_Then_correct) (=> (= (ControlFlow 0 7) 5) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> (and (<= neededTransfer@1 maskTransfer@1) (= takeTransfer@1 neededTransfer@1)) (and (=> (= (ControlFlow 0 6) 4) anon21_Then_correct) (=> (= (ControlFlow 0 6) 5) anon21_Else_correct)))))
(let ((anon19_Then_correct  (=> (and (and (and (and (and b_9@4 b_9@4) b_10@3) true) (> neededTransfer@1 0.0)) (= maskTransfer@1 (select (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| Mask@0) null (P x@@11)))) (and (=> (= (ControlFlow 0 8) 6) anon20_Then_correct) (=> (= (ControlFlow 0 8) 7) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (not (and (and (and (and b_9@4 b_9@4) b_10@3) true) (> neededTransfer@1 0.0))) (=> (and (= Mask@2 Mask@0) (= neededTransfer@3 neededTransfer@1)) (=> (and (and (= b_10@6 b_10@3) (= Used_6Mask@3 Used_6Mask@1)) (and (= Heap@1 Heap@@103) (= (ControlFlow 0 3) 2))) anon14_correct)))))
(let ((anon18_Else_correct  (=> (and (and (>= 0.0 takeTransfer@0) (= Used_6Mask@1 ZeroMask)) (and (= b_10@3 b_10@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 11) 8) anon19_Then_correct) (=> (= (ControlFlow 0 11) 3) anon19_Else_correct)))))
(let ((anon18_Then_correct  (=> (and (> takeTransfer@0 0.0) (= neededTransfer@0 (- FullPerm takeTransfer@0))) (=> (and (and (and (= Used_6Mask@0 (PolymorphicMapType_13674 (|PolymorphicMapType_13674_7928_2246#PolymorphicMapType_13674| ZeroMask) (store (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| ZeroMask) null (P x@@11) (+ (select (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| ZeroMask) null (P x@@11)) takeTransfer@0)) (|PolymorphicMapType_13674_7797_1195#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7808_1407#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7962_7963#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7848_1672#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7880_1941#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7928_7938#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7928_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7928_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7928_78132#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7937_2246#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7937_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7937_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7937_78543#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7797_7938#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7797_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7797_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7797_78957#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7808_7938#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7808_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7808_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7808_79371#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7962_2246#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7962_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7962_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7962_79782#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7848_7938#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7848_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7848_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7848_80196#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7880_7938#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7880_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7880_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7880_80610#PolymorphicMapType_13674| ZeroMask))) (= b_10@1  (and b_10@0 (state Used_6Heap@0 Used_6Mask@0)))) (and (= TempMask@0 (PolymorphicMapType_13674 (|PolymorphicMapType_13674_7928_2246#PolymorphicMapType_13674| ZeroMask) (store (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| ZeroMask) null (P x@@11) FullPerm) (|PolymorphicMapType_13674_7797_1195#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7808_1407#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7962_7963#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7848_1672#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7880_1941#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7928_7938#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7928_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7928_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7928_78132#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7937_2246#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7937_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7937_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7937_78543#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7797_7938#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7797_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7797_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7797_78957#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7808_7938#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7808_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7808_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7808_79371#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7962_2246#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7962_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7962_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7962_79782#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7848_7938#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7848_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7848_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7848_80196#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7880_7938#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7880_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7880_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7880_80610#PolymorphicMapType_13674| ZeroMask))) (= b_10@2  (and b_10@1 (IdenticalOnKnownLocations Ops_5Heap@0 Used_6Heap@0 TempMask@0))))) (and (and (= Ops_5Mask@2 (PolymorphicMapType_13674 (|PolymorphicMapType_13674_7928_2246#PolymorphicMapType_13674| Ops_5Mask@1) (store (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| Ops_5Mask@1) null (P x@@11) (- (select (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| Ops_5Mask@1) null (P x@@11)) takeTransfer@0)) (|PolymorphicMapType_13674_7797_1195#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7808_1407#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7962_7963#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7848_1672#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7880_1941#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7928_7938#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7928_53#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7928_13727#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7928_78132#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7937_2246#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7937_53#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7937_13727#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7937_78543#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7797_7938#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7797_53#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7797_13727#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7797_78957#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7808_7938#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7808_53#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7808_13727#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7808_79371#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7962_2246#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7962_53#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7962_13727#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7962_79782#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7848_7938#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7848_53#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7848_13727#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7848_80196#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7880_7938#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7880_53#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7880_13727#PolymorphicMapType_13674| Ops_5Mask@1) (|PolymorphicMapType_13674_7880_80610#PolymorphicMapType_13674| Ops_5Mask@1))) (= Used_6Mask@1 Used_6Mask@0)) (and (= b_10@3 b_10@2) (= neededTransfer@1 neededTransfer@0)))) (and (=> (= (ControlFlow 0 10) 8) anon19_Then_correct) (=> (= (ControlFlow 0 10) 3) anon19_Else_correct))))))
(let ((anon17_Else_correct  (=> (and (< maskTransfer@0 FullPerm) (= takeTransfer@0 maskTransfer@0)) (and (=> (= (ControlFlow 0 13) 10) anon18_Then_correct) (=> (= (ControlFlow 0 13) 11) anon18_Else_correct)))))
(let ((anon17_Then_correct  (=> (and (<= FullPerm maskTransfer@0) (= takeTransfer@0 FullPerm)) (and (=> (= (ControlFlow 0 12) 10) anon18_Then_correct) (=> (= (ControlFlow 0 12) 11) anon18_Else_correct)))))
(let ((anon16_Then_correct  (=> (and (and (and (and (and b_9@4 b_9@4) b_10@0) true) (> FullPerm 0.0)) (= maskTransfer@0 (select (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| Ops_5Mask@1) null (P x@@11)))) (and (=> (= (ControlFlow 0 14) 12) anon17_Then_correct) (=> (= (ControlFlow 0 14) 13) anon17_Else_correct)))))
(let ((anon16_Else_correct  (=> (and (and (not (and (and (and (and b_9@4 b_9@4) b_10@0) true) (> FullPerm 0.0))) (= Used_6Mask@1 ZeroMask)) (and (= b_10@3 b_10@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 9) 8) anon19_Then_correct) (=> (= (ControlFlow 0 9) 3) anon19_Else_correct)))))
(let ((anon2_correct  (=> (and (and (= b_9@3  (and b_9@2 (state Ops_5Heap@0 Ops_5Mask@1))) (= b_9@4  (and b_9@3 (state Ops_5Heap@0 Ops_5Mask@1)))) (and (= b_10@0  (and b_10 (state Used_6Heap@0 ZeroMask))) (= initNeededTransfer@0 (+ (select (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| ZeroMask) null (P x@@11)) FullPerm)))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 15) 14) anon16_Then_correct) (=> (= (ControlFlow 0 15) 9) anon16_Else_correct)))))))
(let ((anon15_Else_correct  (=> (and (and (not b_9@0) (= Ops_5Mask@1 ZeroMask)) (and (= b_9@2 b_9@0) (= (ControlFlow 0 19) 15))) anon2_correct)))
(let ((anon15_Then_correct  (=> (and b_9@0 (= perm@1 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (= Ops_5Mask@0 (PolymorphicMapType_13674 (|PolymorphicMapType_13674_7928_2246#PolymorphicMapType_13674| ZeroMask) (store (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| ZeroMask) null (P x@@11) (+ (select (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| ZeroMask) null (P x@@11)) perm@1)) (|PolymorphicMapType_13674_7797_1195#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7808_1407#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7962_7963#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7848_1672#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7880_1941#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7928_7938#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7928_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7928_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7928_78132#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7937_2246#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7937_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7937_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7937_78543#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7797_7938#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7797_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7797_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7797_78957#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7808_7938#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7808_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7808_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7808_79371#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7962_2246#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7962_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7962_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7962_79782#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7848_7938#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7848_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7848_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7848_80196#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7880_7938#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7880_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7880_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7880_80610#PolymorphicMapType_13674| ZeroMask))) (=> (and (and (= b_9@1  (and b_9@0 (state Ops_5Heap@0 Ops_5Mask@0))) (= Ops_5Mask@1 Ops_5Mask@0)) (and (= b_9@2 b_9@1) (= (ControlFlow 0 17) 15))) anon2_correct)))))))
(let ((anon0_correct  (=> (and (and (state Heap@@103 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_13653_7669_53#PolymorphicMapType_13653| Heap@@103) x@@11 $allocated) (= perm@0 (/ (to_real 1) (to_real 2))))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (= Mask@0 (PolymorphicMapType_13674 (|PolymorphicMapType_13674_7928_2246#PolymorphicMapType_13674| ZeroMask) (store (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| ZeroMask) null (P x@@11) (+ (select (|PolymorphicMapType_13674_7937_7938#PolymorphicMapType_13674| ZeroMask) null (P x@@11)) perm@0)) (|PolymorphicMapType_13674_7797_1195#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7808_1407#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7962_7963#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7848_1672#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7880_1941#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7928_7938#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7928_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7928_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7928_78132#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7937_2246#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7937_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7937_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7937_78543#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7797_7938#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7797_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7797_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7797_78957#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7808_7938#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7808_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7808_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7808_79371#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7962_2246#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7962_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7962_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7962_79782#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7848_7938#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7848_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7848_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7848_80196#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7880_7938#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7880_53#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7880_13727#PolymorphicMapType_13674| ZeroMask) (|PolymorphicMapType_13674_7880_80610#PolymorphicMapType_13674| ZeroMask))) (=> (and (and (state Heap@@103 Mask@0) (state Heap@@103 Mask@0)) (and (= b_9@0  (and b_9 (state Ops_5Heap@0 ZeroMask))) (= b_8@0  (and b_8 (state Used_5Heap@0 ZeroMask))))) (and (=> (= (ControlFlow 0 20) 17) anon15_Then_correct) (=> (= (ControlFlow 0 20) 19) anon15_Else_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 22) 20) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
