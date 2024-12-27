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
(declare-sort T@Field_12948_53 0)
(declare-sort T@Field_12961_12962 0)
(declare-sort T@Field_18410_2323 0)
(declare-sort T@Field_16293_16298 0)
(declare-sort T@Field_19395_19396 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_19408_19413 0)
(declare-sort T@Field_17781_17786 0)
(declare-sort T@Field_18457_18458 0)
(declare-sort T@Field_18470_18475 0)
(declare-sort T@Field_7712_7741 0)
(declare-sort T@Field_7712_16298 0)
(declare-sort T@Field_7740_2323 0)
(declare-sort T@Field_7740_53 0)
(declare-sort T@Field_7740_12962 0)
(declare-sort T@Field_7715_2323 0)
(declare-sort T@Field_7715_53 0)
(declare-sort T@Field_7715_12962 0)
(declare-sort T@Field_16278_1219 0)
(declare-sort T@Field_16311_16312 0)
(declare-sort T@Field_16278_53 0)
(declare-sort T@Field_16278_12962 0)
(declare-sort T@Field_17211_1749 0)
(declare-sort T@Field_17238_17239 0)
(declare-sort T@Field_17211_53 0)
(declare-sort T@Field_17211_12962 0)
(declare-sort T@Field_17223_17228 0)
(declare-sort T@Field_17768_2018 0)
(declare-sort T@Field_17797_17798 0)
(declare-sort T@Field_17768_53 0)
(declare-sort T@Field_17768_12962 0)
(declare-datatypes ((T@PolymorphicMapType_12909 0)) (((PolymorphicMapType_12909 (|PolymorphicMapType_12909_7712_2323#PolymorphicMapType_12909| (Array T@Ref T@Field_18410_2323 Real)) (|PolymorphicMapType_12909_7740_7741#PolymorphicMapType_12909| (Array T@Ref T@Field_19395_19396 Real)) (|PolymorphicMapType_12909_7562_1219#PolymorphicMapType_12909| (Array T@Ref T@Field_16278_1219 Real)) (|PolymorphicMapType_12909_7715_7716#PolymorphicMapType_12909| (Array T@Ref T@Field_18457_18458 Real)) (|PolymorphicMapType_12909_7664_2018#PolymorphicMapType_12909| (Array T@Ref T@Field_17768_2018 Real)) (|PolymorphicMapType_12909_7632_1749#PolymorphicMapType_12909| (Array T@Ref T@Field_17211_1749 Real)) (|PolymorphicMapType_12909_7712_7741#PolymorphicMapType_12909| (Array T@Ref T@Field_7712_7741 Real)) (|PolymorphicMapType_12909_7712_53#PolymorphicMapType_12909| (Array T@Ref T@Field_12948_53 Real)) (|PolymorphicMapType_12909_7712_12962#PolymorphicMapType_12909| (Array T@Ref T@Field_12961_12962 Real)) (|PolymorphicMapType_12909_7712_70419#PolymorphicMapType_12909| (Array T@Ref T@Field_7712_16298 Real)) (|PolymorphicMapType_12909_7740_2323#PolymorphicMapType_12909| (Array T@Ref T@Field_7740_2323 Real)) (|PolymorphicMapType_12909_7740_53#PolymorphicMapType_12909| (Array T@Ref T@Field_7740_53 Real)) (|PolymorphicMapType_12909_7740_12962#PolymorphicMapType_12909| (Array T@Ref T@Field_7740_12962 Real)) (|PolymorphicMapType_12909_7740_70830#PolymorphicMapType_12909| (Array T@Ref T@Field_19408_19413 Real)) (|PolymorphicMapType_12909_7562_7741#PolymorphicMapType_12909| (Array T@Ref T@Field_16311_16312 Real)) (|PolymorphicMapType_12909_7562_53#PolymorphicMapType_12909| (Array T@Ref T@Field_16278_53 Real)) (|PolymorphicMapType_12909_7562_12962#PolymorphicMapType_12909| (Array T@Ref T@Field_16278_12962 Real)) (|PolymorphicMapType_12909_7562_71244#PolymorphicMapType_12909| (Array T@Ref T@Field_16293_16298 Real)) (|PolymorphicMapType_12909_7715_2323#PolymorphicMapType_12909| (Array T@Ref T@Field_7715_2323 Real)) (|PolymorphicMapType_12909_7715_53#PolymorphicMapType_12909| (Array T@Ref T@Field_7715_53 Real)) (|PolymorphicMapType_12909_7715_12962#PolymorphicMapType_12909| (Array T@Ref T@Field_7715_12962 Real)) (|PolymorphicMapType_12909_7715_71655#PolymorphicMapType_12909| (Array T@Ref T@Field_18470_18475 Real)) (|PolymorphicMapType_12909_7664_7741#PolymorphicMapType_12909| (Array T@Ref T@Field_17797_17798 Real)) (|PolymorphicMapType_12909_7664_53#PolymorphicMapType_12909| (Array T@Ref T@Field_17768_53 Real)) (|PolymorphicMapType_12909_7664_12962#PolymorphicMapType_12909| (Array T@Ref T@Field_17768_12962 Real)) (|PolymorphicMapType_12909_7664_72069#PolymorphicMapType_12909| (Array T@Ref T@Field_17781_17786 Real)) (|PolymorphicMapType_12909_7632_7741#PolymorphicMapType_12909| (Array T@Ref T@Field_17238_17239 Real)) (|PolymorphicMapType_12909_7632_53#PolymorphicMapType_12909| (Array T@Ref T@Field_17211_53 Real)) (|PolymorphicMapType_12909_7632_12962#PolymorphicMapType_12909| (Array T@Ref T@Field_17211_12962 Real)) (|PolymorphicMapType_12909_7632_72483#PolymorphicMapType_12909| (Array T@Ref T@Field_17223_17228 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13437 0)) (((PolymorphicMapType_13437 (|PolymorphicMapType_13437_7712_2323#PolymorphicMapType_13437| (Array T@Ref T@Field_18410_2323 Bool)) (|PolymorphicMapType_13437_7712_53#PolymorphicMapType_13437| (Array T@Ref T@Field_12948_53 Bool)) (|PolymorphicMapType_13437_7712_12962#PolymorphicMapType_13437| (Array T@Ref T@Field_12961_12962 Bool)) (|PolymorphicMapType_13437_7712_49877#PolymorphicMapType_13437| (Array T@Ref T@Field_7712_16298 Bool)) (|PolymorphicMapType_13437_7712_16312#PolymorphicMapType_13437| (Array T@Ref T@Field_7712_7741 Bool)) (|PolymorphicMapType_13437_16278_2323#PolymorphicMapType_13437| (Array T@Ref T@Field_16278_1219 Bool)) (|PolymorphicMapType_13437_16278_53#PolymorphicMapType_13437| (Array T@Ref T@Field_16278_53 Bool)) (|PolymorphicMapType_13437_16278_12962#PolymorphicMapType_13437| (Array T@Ref T@Field_16278_12962 Bool)) (|PolymorphicMapType_13437_16278_50925#PolymorphicMapType_13437| (Array T@Ref T@Field_16293_16298 Bool)) (|PolymorphicMapType_13437_16278_16312#PolymorphicMapType_13437| (Array T@Ref T@Field_16311_16312 Bool)) (|PolymorphicMapType_13437_17211_2323#PolymorphicMapType_13437| (Array T@Ref T@Field_17211_1749 Bool)) (|PolymorphicMapType_13437_17211_53#PolymorphicMapType_13437| (Array T@Ref T@Field_17211_53 Bool)) (|PolymorphicMapType_13437_17211_12962#PolymorphicMapType_13437| (Array T@Ref T@Field_17211_12962 Bool)) (|PolymorphicMapType_13437_17211_51973#PolymorphicMapType_13437| (Array T@Ref T@Field_17223_17228 Bool)) (|PolymorphicMapType_13437_17211_16312#PolymorphicMapType_13437| (Array T@Ref T@Field_17238_17239 Bool)) (|PolymorphicMapType_13437_17768_2323#PolymorphicMapType_13437| (Array T@Ref T@Field_17768_2018 Bool)) (|PolymorphicMapType_13437_17768_53#PolymorphicMapType_13437| (Array T@Ref T@Field_17768_53 Bool)) (|PolymorphicMapType_13437_17768_12962#PolymorphicMapType_13437| (Array T@Ref T@Field_17768_12962 Bool)) (|PolymorphicMapType_13437_17768_53021#PolymorphicMapType_13437| (Array T@Ref T@Field_17781_17786 Bool)) (|PolymorphicMapType_13437_17768_16312#PolymorphicMapType_13437| (Array T@Ref T@Field_17797_17798 Bool)) (|PolymorphicMapType_13437_18457_2323#PolymorphicMapType_13437| (Array T@Ref T@Field_7715_2323 Bool)) (|PolymorphicMapType_13437_18457_53#PolymorphicMapType_13437| (Array T@Ref T@Field_7715_53 Bool)) (|PolymorphicMapType_13437_18457_12962#PolymorphicMapType_13437| (Array T@Ref T@Field_7715_12962 Bool)) (|PolymorphicMapType_13437_18457_54069#PolymorphicMapType_13437| (Array T@Ref T@Field_18470_18475 Bool)) (|PolymorphicMapType_13437_18457_16312#PolymorphicMapType_13437| (Array T@Ref T@Field_18457_18458 Bool)) (|PolymorphicMapType_13437_19395_2323#PolymorphicMapType_13437| (Array T@Ref T@Field_7740_2323 Bool)) (|PolymorphicMapType_13437_19395_53#PolymorphicMapType_13437| (Array T@Ref T@Field_7740_53 Bool)) (|PolymorphicMapType_13437_19395_12962#PolymorphicMapType_13437| (Array T@Ref T@Field_7740_12962 Bool)) (|PolymorphicMapType_13437_19395_55117#PolymorphicMapType_13437| (Array T@Ref T@Field_19408_19413 Bool)) (|PolymorphicMapType_13437_19395_16312#PolymorphicMapType_13437| (Array T@Ref T@Field_19395_19396 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12888 0)) (((PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| (Array T@Ref T@Field_12948_53 Bool)) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| (Array T@Ref T@Field_12961_12962 T@Ref)) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| (Array T@Ref T@Field_18410_2323 Int)) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| (Array T@Ref T@Field_16293_16298 T@PolymorphicMapType_13437)) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| (Array T@Ref T@Field_19395_19396 T@FrameType)) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| (Array T@Ref T@Field_19408_19413 T@PolymorphicMapType_13437)) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| (Array T@Ref T@Field_17781_17786 T@PolymorphicMapType_13437)) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| (Array T@Ref T@Field_18457_18458 T@FrameType)) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| (Array T@Ref T@Field_18470_18475 T@PolymorphicMapType_13437)) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| (Array T@Ref T@Field_7712_7741 T@FrameType)) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| (Array T@Ref T@Field_7712_16298 T@PolymorphicMapType_13437)) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| (Array T@Ref T@Field_7740_2323 Int)) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| (Array T@Ref T@Field_7740_53 Bool)) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| (Array T@Ref T@Field_7740_12962 T@Ref)) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| (Array T@Ref T@Field_7715_2323 Int)) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| (Array T@Ref T@Field_7715_53 Bool)) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| (Array T@Ref T@Field_7715_12962 T@Ref)) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| (Array T@Ref T@Field_16278_1219 Int)) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| (Array T@Ref T@Field_16311_16312 T@FrameType)) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| (Array T@Ref T@Field_16278_53 Bool)) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| (Array T@Ref T@Field_16278_12962 T@Ref)) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| (Array T@Ref T@Field_17211_1749 Int)) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| (Array T@Ref T@Field_17238_17239 T@FrameType)) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| (Array T@Ref T@Field_17211_53 Bool)) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| (Array T@Ref T@Field_17211_12962 T@Ref)) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| (Array T@Ref T@Field_17223_17228 T@PolymorphicMapType_13437)) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| (Array T@Ref T@Field_17768_2018 Int)) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| (Array T@Ref T@Field_17797_17798 T@FrameType)) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| (Array T@Ref T@Field_17768_53 Bool)) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| (Array T@Ref T@Field_17768_12962 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_12948_53)
(declare-fun f_7 () T@Field_18410_2323)
(declare-fun WandMaskField_7579 (T@Field_16311_16312) T@Field_16293_16298)
(declare-fun |wand#ft| (T@Ref Real T@Ref Int T@Ref Real T@Ref Int) T@Field_16311_16312)
(declare-fun |wand#sm| (T@Ref Real T@Ref Int T@Ref Real T@Ref Int) T@Field_16293_16298)
(declare-fun succHeap (T@PolymorphicMapType_12888 T@PolymorphicMapType_12888) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_12888 T@PolymorphicMapType_12888) Bool)
(declare-fun wand_2 (T@Ref Real T@Ref Real) T@Field_17768_2018)
(declare-fun getPredWandId_7664_2018 (T@Field_17768_2018) Int)
(declare-fun state (T@PolymorphicMapType_12888 T@PolymorphicMapType_12909) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_12909) Bool)
(declare-fun wand_1 (T@Ref Real Bool) T@Field_17211_1749)
(declare-fun IsWandField_7632_1749 (T@Field_17211_1749) Bool)
(declare-fun |wand_1#ft| (T@Ref Real Bool) T@Field_17238_17239)
(declare-fun IsWandField_7641_7642 (T@Field_17238_17239) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_13437)
(declare-fun getPredWandId_7632_1749 (T@Field_17211_1749) Int)
(declare-fun IsPredicateField_7632_1749 (T@Field_17211_1749) Bool)
(declare-fun IsPredicateField_7641_7642 (T@Field_17238_17239) Bool)
(declare-fun Q (T@Ref) T@Field_18457_18458)
(declare-fun IsPredicateField_7715_7716 (T@Field_18457_18458) Bool)
(declare-fun P (T@Ref) T@Field_19395_19396)
(declare-fun IsPredicateField_7740_7741 (T@Field_19395_19396) Bool)
(declare-fun |Q#trigger_7715| (T@PolymorphicMapType_12888 T@Field_18457_18458) Bool)
(declare-fun |Q#everUsed_7715| (T@Field_18457_18458) Bool)
(declare-fun |P#trigger_7740| (T@PolymorphicMapType_12888 T@Field_19395_19396) Bool)
(declare-fun |P#everUsed_7740| (T@Field_19395_19396) Bool)
(declare-fun WandMaskField_7641 (T@Field_17238_17239) T@Field_17223_17228)
(declare-fun |wand_1#sm| (T@Ref Real Bool) T@Field_17223_17228)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_12888 T@PolymorphicMapType_12888 T@PolymorphicMapType_12909) Bool)
(declare-fun IsPredicateField_7677_7678 (T@Field_17797_17798) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_17768 (T@Field_17797_17798) T@Field_17781_17786)
(declare-fun HasDirectPerm_17768_7741 (T@PolymorphicMapType_12909 T@Ref T@Field_17797_17798) Bool)
(declare-fun PredicateMaskField_17211 (T@Field_17238_17239) T@Field_17223_17228)
(declare-fun HasDirectPerm_17211_7741 (T@PolymorphicMapType_12909 T@Ref T@Field_17238_17239) Bool)
(declare-fun IsPredicateField_7579_7580 (T@Field_16311_16312) Bool)
(declare-fun PredicateMaskField_16278 (T@Field_16311_16312) T@Field_16293_16298)
(declare-fun HasDirectPerm_16278_7741 (T@PolymorphicMapType_12909 T@Ref T@Field_16311_16312) Bool)
(declare-fun PredicateMaskField_7715 (T@Field_18457_18458) T@Field_18470_18475)
(declare-fun HasDirectPerm_7715_7716 (T@PolymorphicMapType_12909 T@Ref T@Field_18457_18458) Bool)
(declare-fun PredicateMaskField_7740 (T@Field_19395_19396) T@Field_19408_19413)
(declare-fun HasDirectPerm_7740_7741 (T@PolymorphicMapType_12909 T@Ref T@Field_19395_19396) Bool)
(declare-fun IsPredicateField_7712_47234 (T@Field_7712_7741) Bool)
(declare-fun PredicateMaskField_7712 (T@Field_7712_7741) T@Field_7712_16298)
(declare-fun HasDirectPerm_7712_7741 (T@PolymorphicMapType_12909 T@Ref T@Field_7712_7741) Bool)
(declare-fun IsWandField_7677_7678 (T@Field_17797_17798) Bool)
(declare-fun WandMaskField_7677 (T@Field_17797_17798) T@Field_17781_17786)
(declare-fun IsWandField_7579_7580 (T@Field_16311_16312) Bool)
(declare-fun IsWandField_7715_57967 (T@Field_18457_18458) Bool)
(declare-fun WandMaskField_7715 (T@Field_18457_18458) T@Field_18470_18475)
(declare-fun IsWandField_7740_57610 (T@Field_19395_19396) Bool)
(declare-fun WandMaskField_7740 (T@Field_19395_19396) T@Field_19408_19413)
(declare-fun IsWandField_7712_57253 (T@Field_7712_7741) Bool)
(declare-fun WandMaskField_7712 (T@Field_7712_7741) T@Field_7712_16298)
(declare-fun |Q#sm| (T@Ref) T@Field_18470_18475)
(declare-fun |P#sm| (T@Ref) T@Field_19408_19413)
(declare-fun wand (T@Ref Real T@Ref Int T@Ref Real T@Ref Int) T@Field_16278_1219)
(declare-fun IsWandField_7562_1219 (T@Field_16278_1219) Bool)
(declare-fun IsPredicateField_7562_1219 (T@Field_16278_1219) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_12888)
(declare-fun ZeroMask () T@PolymorphicMapType_12909)
(declare-fun InsidePredicate_19395_19395 (T@Field_19395_19396 T@FrameType T@Field_19395_19396 T@FrameType) Bool)
(declare-fun InsidePredicate_18457_18457 (T@Field_18457_18458 T@FrameType T@Field_18457_18458 T@FrameType) Bool)
(declare-fun InsidePredicate_17768_17768 (T@Field_17797_17798 T@FrameType T@Field_17797_17798 T@FrameType) Bool)
(declare-fun InsidePredicate_17211_17211 (T@Field_17238_17239 T@FrameType T@Field_17238_17239 T@FrameType) Bool)
(declare-fun InsidePredicate_16278_16278 (T@Field_16311_16312 T@FrameType T@Field_16311_16312 T@FrameType) Bool)
(declare-fun InsidePredicate_12948_12948 (T@Field_7712_7741 T@FrameType T@Field_7712_7741 T@FrameType) Bool)
(declare-fun IsPredicateField_7712_2323 (T@Field_18410_2323) Bool)
(declare-fun IsWandField_7712_2323 (T@Field_18410_2323) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7632_79385 (T@Field_17223_17228) Bool)
(declare-fun IsWandField_7632_79401 (T@Field_17223_17228) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7632_12962 (T@Field_17211_12962) Bool)
(declare-fun IsWandField_7632_12962 (T@Field_17211_12962) Bool)
(declare-fun IsPredicateField_7632_53 (T@Field_17211_53) Bool)
(declare-fun IsWandField_7632_53 (T@Field_17211_53) Bool)
(declare-fun IsPredicateField_7664_78568 (T@Field_17781_17786) Bool)
(declare-fun IsWandField_7664_78584 (T@Field_17781_17786) Bool)
(declare-fun IsPredicateField_7664_12962 (T@Field_17768_12962) Bool)
(declare-fun IsWandField_7664_12962 (T@Field_17768_12962) Bool)
(declare-fun IsPredicateField_7664_53 (T@Field_17768_53) Bool)
(declare-fun IsWandField_7664_53 (T@Field_17768_53) Bool)
(declare-fun IsPredicateField_7664_2018 (T@Field_17768_2018) Bool)
(declare-fun IsWandField_7664_2018 (T@Field_17768_2018) Bool)
(declare-fun IsPredicateField_7715_77751 (T@Field_18470_18475) Bool)
(declare-fun IsWandField_7715_77767 (T@Field_18470_18475) Bool)
(declare-fun IsPredicateField_7715_12962 (T@Field_7715_12962) Bool)
(declare-fun IsWandField_7715_12962 (T@Field_7715_12962) Bool)
(declare-fun IsPredicateField_7715_53 (T@Field_7715_53) Bool)
(declare-fun IsWandField_7715_53 (T@Field_7715_53) Bool)
(declare-fun IsPredicateField_7715_2323 (T@Field_7715_2323) Bool)
(declare-fun IsWandField_7715_2323 (T@Field_7715_2323) Bool)
(declare-fun IsPredicateField_7562_76920 (T@Field_16293_16298) Bool)
(declare-fun IsWandField_7562_76936 (T@Field_16293_16298) Bool)
(declare-fun IsPredicateField_7562_12962 (T@Field_16278_12962) Bool)
(declare-fun IsWandField_7562_12962 (T@Field_16278_12962) Bool)
(declare-fun IsPredicateField_7562_53 (T@Field_16278_53) Bool)
(declare-fun IsWandField_7562_53 (T@Field_16278_53) Bool)
(declare-fun IsPredicateField_7740_76103 (T@Field_19408_19413) Bool)
(declare-fun IsWandField_7740_76119 (T@Field_19408_19413) Bool)
(declare-fun IsPredicateField_7740_12962 (T@Field_7740_12962) Bool)
(declare-fun IsWandField_7740_12962 (T@Field_7740_12962) Bool)
(declare-fun IsPredicateField_7740_53 (T@Field_7740_53) Bool)
(declare-fun IsWandField_7740_53 (T@Field_7740_53) Bool)
(declare-fun IsPredicateField_7740_2323 (T@Field_7740_2323) Bool)
(declare-fun IsWandField_7740_2323 (T@Field_7740_2323) Bool)
(declare-fun IsPredicateField_7712_75272 (T@Field_7712_16298) Bool)
(declare-fun IsWandField_7712_75288 (T@Field_7712_16298) Bool)
(declare-fun IsPredicateField_7712_12962 (T@Field_12961_12962) Bool)
(declare-fun IsWandField_7712_12962 (T@Field_12961_12962) Bool)
(declare-fun IsPredicateField_7712_53 (T@Field_12948_53) Bool)
(declare-fun IsWandField_7712_53 (T@Field_12948_53) Bool)
(declare-fun HasDirectPerm_17768_46989 (T@PolymorphicMapType_12909 T@Ref T@Field_17781_17786) Bool)
(declare-fun HasDirectPerm_17768_12962 (T@PolymorphicMapType_12909 T@Ref T@Field_17768_12962) Bool)
(declare-fun HasDirectPerm_17768_53 (T@PolymorphicMapType_12909 T@Ref T@Field_17768_53) Bool)
(declare-fun HasDirectPerm_17768_2323 (T@PolymorphicMapType_12909 T@Ref T@Field_17768_2018) Bool)
(declare-fun HasDirectPerm_17211_45812 (T@PolymorphicMapType_12909 T@Ref T@Field_17223_17228) Bool)
(declare-fun HasDirectPerm_17211_12962 (T@PolymorphicMapType_12909 T@Ref T@Field_17211_12962) Bool)
(declare-fun HasDirectPerm_17211_53 (T@PolymorphicMapType_12909 T@Ref T@Field_17211_53) Bool)
(declare-fun HasDirectPerm_17211_2323 (T@PolymorphicMapType_12909 T@Ref T@Field_17211_1749) Bool)
(declare-fun HasDirectPerm_16278_44678 (T@PolymorphicMapType_12909 T@Ref T@Field_16293_16298) Bool)
(declare-fun HasDirectPerm_16278_12962 (T@PolymorphicMapType_12909 T@Ref T@Field_16278_12962) Bool)
(declare-fun HasDirectPerm_16278_53 (T@PolymorphicMapType_12909 T@Ref T@Field_16278_53) Bool)
(declare-fun HasDirectPerm_16278_2323 (T@PolymorphicMapType_12909 T@Ref T@Field_16278_1219) Bool)
(declare-fun HasDirectPerm_7715_43544 (T@PolymorphicMapType_12909 T@Ref T@Field_18470_18475) Bool)
(declare-fun HasDirectPerm_7715_12962 (T@PolymorphicMapType_12909 T@Ref T@Field_7715_12962) Bool)
(declare-fun HasDirectPerm_7715_53 (T@PolymorphicMapType_12909 T@Ref T@Field_7715_53) Bool)
(declare-fun HasDirectPerm_7715_2323 (T@PolymorphicMapType_12909 T@Ref T@Field_7715_2323) Bool)
(declare-fun HasDirectPerm_7740_42446 (T@PolymorphicMapType_12909 T@Ref T@Field_19408_19413) Bool)
(declare-fun HasDirectPerm_7740_12962 (T@PolymorphicMapType_12909 T@Ref T@Field_7740_12962) Bool)
(declare-fun HasDirectPerm_7740_53 (T@PolymorphicMapType_12909 T@Ref T@Field_7740_53) Bool)
(declare-fun HasDirectPerm_7740_2323 (T@PolymorphicMapType_12909 T@Ref T@Field_7740_2323) Bool)
(declare-fun HasDirectPerm_7712_41305 (T@PolymorphicMapType_12909 T@Ref T@Field_7712_16298) Bool)
(declare-fun HasDirectPerm_7712_12962 (T@PolymorphicMapType_12909 T@Ref T@Field_12961_12962) Bool)
(declare-fun HasDirectPerm_7712_53 (T@PolymorphicMapType_12909 T@Ref T@Field_12948_53) Bool)
(declare-fun HasDirectPerm_7712_2323 (T@PolymorphicMapType_12909 T@Ref T@Field_18410_2323) Bool)
(declare-fun |wand_2#ft| (T@Ref Real T@Ref Real) T@Field_17797_17798)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |wand_2#sm| (T@Ref Real T@Ref Real) T@Field_17781_17786)
(declare-fun sumMask (T@PolymorphicMapType_12909 T@PolymorphicMapType_12909 T@PolymorphicMapType_12909) Bool)
(declare-fun getPredWandId_7562_1219 (T@Field_16278_1219) Int)
(declare-fun getPredWandId_7715_7716 (T@Field_18457_18458) Int)
(declare-fun getPredWandId_7740_7741 (T@Field_19395_19396) Int)
(declare-fun InsidePredicate_19395_18457 (T@Field_19395_19396 T@FrameType T@Field_18457_18458 T@FrameType) Bool)
(declare-fun InsidePredicate_19395_17768 (T@Field_19395_19396 T@FrameType T@Field_17797_17798 T@FrameType) Bool)
(declare-fun InsidePredicate_19395_17211 (T@Field_19395_19396 T@FrameType T@Field_17238_17239 T@FrameType) Bool)
(declare-fun InsidePredicate_19395_16278 (T@Field_19395_19396 T@FrameType T@Field_16311_16312 T@FrameType) Bool)
(declare-fun InsidePredicate_19395_12948 (T@Field_19395_19396 T@FrameType T@Field_7712_7741 T@FrameType) Bool)
(declare-fun InsidePredicate_18457_19395 (T@Field_18457_18458 T@FrameType T@Field_19395_19396 T@FrameType) Bool)
(declare-fun InsidePredicate_18457_17768 (T@Field_18457_18458 T@FrameType T@Field_17797_17798 T@FrameType) Bool)
(declare-fun InsidePredicate_18457_17211 (T@Field_18457_18458 T@FrameType T@Field_17238_17239 T@FrameType) Bool)
(declare-fun InsidePredicate_18457_16278 (T@Field_18457_18458 T@FrameType T@Field_16311_16312 T@FrameType) Bool)
(declare-fun InsidePredicate_18457_12948 (T@Field_18457_18458 T@FrameType T@Field_7712_7741 T@FrameType) Bool)
(declare-fun InsidePredicate_17768_19395 (T@Field_17797_17798 T@FrameType T@Field_19395_19396 T@FrameType) Bool)
(declare-fun InsidePredicate_17768_18457 (T@Field_17797_17798 T@FrameType T@Field_18457_18458 T@FrameType) Bool)
(declare-fun InsidePredicate_17768_17211 (T@Field_17797_17798 T@FrameType T@Field_17238_17239 T@FrameType) Bool)
(declare-fun InsidePredicate_17768_16278 (T@Field_17797_17798 T@FrameType T@Field_16311_16312 T@FrameType) Bool)
(declare-fun InsidePredicate_17768_12948 (T@Field_17797_17798 T@FrameType T@Field_7712_7741 T@FrameType) Bool)
(declare-fun InsidePredicate_17211_19395 (T@Field_17238_17239 T@FrameType T@Field_19395_19396 T@FrameType) Bool)
(declare-fun InsidePredicate_17211_18457 (T@Field_17238_17239 T@FrameType T@Field_18457_18458 T@FrameType) Bool)
(declare-fun InsidePredicate_17211_17768 (T@Field_17238_17239 T@FrameType T@Field_17797_17798 T@FrameType) Bool)
(declare-fun InsidePredicate_17211_16278 (T@Field_17238_17239 T@FrameType T@Field_16311_16312 T@FrameType) Bool)
(declare-fun InsidePredicate_17211_12948 (T@Field_17238_17239 T@FrameType T@Field_7712_7741 T@FrameType) Bool)
(declare-fun InsidePredicate_16278_19395 (T@Field_16311_16312 T@FrameType T@Field_19395_19396 T@FrameType) Bool)
(declare-fun InsidePredicate_16278_18457 (T@Field_16311_16312 T@FrameType T@Field_18457_18458 T@FrameType) Bool)
(declare-fun InsidePredicate_16278_17768 (T@Field_16311_16312 T@FrameType T@Field_17797_17798 T@FrameType) Bool)
(declare-fun InsidePredicate_16278_17211 (T@Field_16311_16312 T@FrameType T@Field_17238_17239 T@FrameType) Bool)
(declare-fun InsidePredicate_16278_12948 (T@Field_16311_16312 T@FrameType T@Field_7712_7741 T@FrameType) Bool)
(declare-fun InsidePredicate_12948_19395 (T@Field_7712_7741 T@FrameType T@Field_19395_19396 T@FrameType) Bool)
(declare-fun InsidePredicate_12948_18457 (T@Field_7712_7741 T@FrameType T@Field_18457_18458 T@FrameType) Bool)
(declare-fun InsidePredicate_12948_17768 (T@Field_7712_7741 T@FrameType T@Field_17797_17798 T@FrameType) Bool)
(declare-fun InsidePredicate_12948_17211 (T@Field_7712_7741 T@FrameType T@Field_17238_17239 T@FrameType) Bool)
(declare-fun InsidePredicate_12948_16278 (T@Field_7712_7741 T@FrameType T@Field_16311_16312 T@FrameType) Bool)
(assert (forall ((arg1 T@Ref) (arg2 Real) (arg3 T@Ref) (arg4 Int) (arg5 T@Ref) (arg6 Real) (arg7 T@Ref) (arg8 Int) ) (! (= (|wand#sm| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8) (WandMaskField_7579 (|wand#ft| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8)))
 :qid |stdinbpl.200:15|
 :skolemid |26|
 :pattern ( (WandMaskField_7579 (|wand#ft| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8)))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_12888) (Heap1 T@PolymorphicMapType_12888) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 Real) (arg3@@0 T@Ref) (arg4@@0 Real) ) (! (= (getPredWandId_7664_2018 (wand_2 arg1@@0 arg2@@0 arg3@@0 arg4@@0)) 4)
 :qid |stdinbpl.268:15|
 :skolemid |41|
 :pattern ( (wand_2 arg1@@0 arg2@@0 arg3@@0 arg4@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_12888) (Mask T@PolymorphicMapType_12909) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_12888) (Heap1@@0 T@PolymorphicMapType_12888) (Heap2 T@PolymorphicMapType_12888) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 Real) (arg3@@1 Bool) ) (! (IsWandField_7632_1749 (wand_1 arg1@@1 arg2@@1 arg3@@1))
 :qid |stdinbpl.216:15|
 :skolemid |29|
 :pattern ( (wand_1 arg1@@1 arg2@@1 arg3@@1))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 Real) (arg3@@2 Bool) ) (! (IsWandField_7641_7642 (|wand_1#ft| arg1@@2 arg2@@2 arg3@@2))
 :qid |stdinbpl.220:15|
 :skolemid |30|
 :pattern ( (|wand_1#ft| arg1@@2 arg2@@2 arg3@@2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_19395_19396) ) (!  (not (select (|PolymorphicMapType_13437_19395_16312#PolymorphicMapType_13437| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13437_19395_16312#PolymorphicMapType_13437| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_19408_19413) ) (!  (not (select (|PolymorphicMapType_13437_19395_55117#PolymorphicMapType_13437| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13437_19395_55117#PolymorphicMapType_13437| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_7740_12962) ) (!  (not (select (|PolymorphicMapType_13437_19395_12962#PolymorphicMapType_13437| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13437_19395_12962#PolymorphicMapType_13437| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7740_53) ) (!  (not (select (|PolymorphicMapType_13437_19395_53#PolymorphicMapType_13437| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13437_19395_53#PolymorphicMapType_13437| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7740_2323) ) (!  (not (select (|PolymorphicMapType_13437_19395_2323#PolymorphicMapType_13437| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13437_19395_2323#PolymorphicMapType_13437| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_18457_18458) ) (!  (not (select (|PolymorphicMapType_13437_18457_16312#PolymorphicMapType_13437| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13437_18457_16312#PolymorphicMapType_13437| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_18470_18475) ) (!  (not (select (|PolymorphicMapType_13437_18457_54069#PolymorphicMapType_13437| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13437_18457_54069#PolymorphicMapType_13437| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_7715_12962) ) (!  (not (select (|PolymorphicMapType_13437_18457_12962#PolymorphicMapType_13437| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13437_18457_12962#PolymorphicMapType_13437| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_7715_53) ) (!  (not (select (|PolymorphicMapType_13437_18457_53#PolymorphicMapType_13437| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13437_18457_53#PolymorphicMapType_13437| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_7715_2323) ) (!  (not (select (|PolymorphicMapType_13437_18457_2323#PolymorphicMapType_13437| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13437_18457_2323#PolymorphicMapType_13437| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_17797_17798) ) (!  (not (select (|PolymorphicMapType_13437_17768_16312#PolymorphicMapType_13437| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13437_17768_16312#PolymorphicMapType_13437| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_17781_17786) ) (!  (not (select (|PolymorphicMapType_13437_17768_53021#PolymorphicMapType_13437| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13437_17768_53021#PolymorphicMapType_13437| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_17768_12962) ) (!  (not (select (|PolymorphicMapType_13437_17768_12962#PolymorphicMapType_13437| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13437_17768_12962#PolymorphicMapType_13437| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_17768_53) ) (!  (not (select (|PolymorphicMapType_13437_17768_53#PolymorphicMapType_13437| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13437_17768_53#PolymorphicMapType_13437| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_17768_2018) ) (!  (not (select (|PolymorphicMapType_13437_17768_2323#PolymorphicMapType_13437| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13437_17768_2323#PolymorphicMapType_13437| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_17238_17239) ) (!  (not (select (|PolymorphicMapType_13437_17211_16312#PolymorphicMapType_13437| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13437_17211_16312#PolymorphicMapType_13437| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_17223_17228) ) (!  (not (select (|PolymorphicMapType_13437_17211_51973#PolymorphicMapType_13437| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13437_17211_51973#PolymorphicMapType_13437| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_17211_12962) ) (!  (not (select (|PolymorphicMapType_13437_17211_12962#PolymorphicMapType_13437| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13437_17211_12962#PolymorphicMapType_13437| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_17211_53) ) (!  (not (select (|PolymorphicMapType_13437_17211_53#PolymorphicMapType_13437| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13437_17211_53#PolymorphicMapType_13437| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_17211_1749) ) (!  (not (select (|PolymorphicMapType_13437_17211_2323#PolymorphicMapType_13437| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13437_17211_2323#PolymorphicMapType_13437| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_16311_16312) ) (!  (not (select (|PolymorphicMapType_13437_16278_16312#PolymorphicMapType_13437| ZeroPMask) o_2@@19 f_4@@19))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13437_16278_16312#PolymorphicMapType_13437| ZeroPMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_16293_16298) ) (!  (not (select (|PolymorphicMapType_13437_16278_50925#PolymorphicMapType_13437| ZeroPMask) o_2@@20 f_4@@20))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13437_16278_50925#PolymorphicMapType_13437| ZeroPMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_16278_12962) ) (!  (not (select (|PolymorphicMapType_13437_16278_12962#PolymorphicMapType_13437| ZeroPMask) o_2@@21 f_4@@21))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13437_16278_12962#PolymorphicMapType_13437| ZeroPMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_16278_53) ) (!  (not (select (|PolymorphicMapType_13437_16278_53#PolymorphicMapType_13437| ZeroPMask) o_2@@22 f_4@@22))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13437_16278_53#PolymorphicMapType_13437| ZeroPMask) o_2@@22 f_4@@22))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_16278_1219) ) (!  (not (select (|PolymorphicMapType_13437_16278_2323#PolymorphicMapType_13437| ZeroPMask) o_2@@23 f_4@@23))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13437_16278_2323#PolymorphicMapType_13437| ZeroPMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_7712_7741) ) (!  (not (select (|PolymorphicMapType_13437_7712_16312#PolymorphicMapType_13437| ZeroPMask) o_2@@24 f_4@@24))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13437_7712_16312#PolymorphicMapType_13437| ZeroPMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_7712_16298) ) (!  (not (select (|PolymorphicMapType_13437_7712_49877#PolymorphicMapType_13437| ZeroPMask) o_2@@25 f_4@@25))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13437_7712_49877#PolymorphicMapType_13437| ZeroPMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_12961_12962) ) (!  (not (select (|PolymorphicMapType_13437_7712_12962#PolymorphicMapType_13437| ZeroPMask) o_2@@26 f_4@@26))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13437_7712_12962#PolymorphicMapType_13437| ZeroPMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_12948_53) ) (!  (not (select (|PolymorphicMapType_13437_7712_53#PolymorphicMapType_13437| ZeroPMask) o_2@@27 f_4@@27))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13437_7712_53#PolymorphicMapType_13437| ZeroPMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_18410_2323) ) (!  (not (select (|PolymorphicMapType_13437_7712_2323#PolymorphicMapType_13437| ZeroPMask) o_2@@28 f_4@@28))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13437_7712_2323#PolymorphicMapType_13437| ZeroPMask) o_2@@28 f_4@@28))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 Real) (arg3@@3 Bool) ) (! (= (getPredWandId_7632_1749 (wand_1 arg1@@3 arg2@@3 arg3@@3)) 3)
 :qid |stdinbpl.236:15|
 :skolemid |34|
 :pattern ( (wand_1 arg1@@3 arg2@@3 arg3@@3))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 Real) (arg3@@4 Bool) ) (!  (not (IsPredicateField_7632_1749 (wand_1 arg1@@4 arg2@@4 arg3@@4)))
 :qid |stdinbpl.224:15|
 :skolemid |31|
 :pattern ( (wand_1 arg1@@4 arg2@@4 arg3@@4))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 Real) (arg3@@5 Bool) ) (!  (not (IsPredicateField_7641_7642 (|wand_1#ft| arg1@@5 arg2@@5 arg3@@5)))
 :qid |stdinbpl.228:15|
 :skolemid |32|
 :pattern ( (|wand_1#ft| arg1@@5 arg2@@5 arg3@@5))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_7715_7716 (Q x))
 :qid |stdinbpl.296:15|
 :skolemid |44|
 :pattern ( (Q x))
)))
(assert (forall ((x@@0 T@Ref) ) (! (IsPredicateField_7740_7741 (P x@@0))
 :qid |stdinbpl.352:15|
 :skolemid |50|
 :pattern ( (P x@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_12888) (x@@1 T@Ref) ) (! (|Q#everUsed_7715| (Q x@@1))
 :qid |stdinbpl.315:15|
 :skolemid |48|
 :pattern ( (|Q#trigger_7715| Heap@@0 (Q x@@1)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_12888) (x@@2 T@Ref) ) (! (|P#everUsed_7740| (P x@@2))
 :qid |stdinbpl.371:15|
 :skolemid |54|
 :pattern ( (|P#trigger_7740| Heap@@1 (P x@@2)))
)))
(assert (forall ((arg1@@6 T@Ref) (arg2@@6 Real) (arg3@@6 Bool) (arg1_2 T@Ref) (arg2_2 Real) (arg3_2 Bool) ) (!  (=> (= (wand_1 arg1@@6 arg2@@6 arg3@@6) (wand_1 arg1_2 arg2_2 arg3_2)) (and (= arg1@@6 arg1_2) (and (= arg2@@6 arg2_2) (= arg3@@6 arg3_2))))
 :qid |stdinbpl.240:15|
 :skolemid |35|
 :pattern ( (wand_1 arg1@@6 arg2@@6 arg3@@6) (wand_1 arg1_2 arg2_2 arg3_2))
)))
(assert (forall ((arg1@@7 T@Ref) (arg2@@7 Real) (arg3@@7 Bool) ) (! (= (|wand_1#sm| arg1@@7 arg2@@7 arg3@@7) (WandMaskField_7641 (|wand_1#ft| arg1@@7 arg2@@7 arg3@@7)))
 :qid |stdinbpl.232:15|
 :skolemid |33|
 :pattern ( (WandMaskField_7641 (|wand_1#ft| arg1@@7 arg2@@7 arg3@@7)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_12888) (ExhaleHeap T@PolymorphicMapType_12888) (Mask@@0 T@PolymorphicMapType_12909) (pm_f_1 T@Field_17797_17798) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_17768_7741 Mask@@0 null pm_f_1) (IsPredicateField_7677_7678 pm_f_1)) (= (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@2) null (PredicateMaskField_17768 pm_f_1)) (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| ExhaleHeap) null (PredicateMaskField_17768 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_7677_7678 pm_f_1) (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| ExhaleHeap) null (PredicateMaskField_17768 pm_f_1)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_12888) (ExhaleHeap@@0 T@PolymorphicMapType_12888) (Mask@@1 T@PolymorphicMapType_12909) (pm_f_1@@0 T@Field_17238_17239) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_17211_7741 Mask@@1 null pm_f_1@@0) (IsPredicateField_7641_7642 pm_f_1@@0)) (= (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@3) null (PredicateMaskField_17211 pm_f_1@@0)) (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| ExhaleHeap@@0) null (PredicateMaskField_17211 pm_f_1@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_7641_7642 pm_f_1@@0) (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| ExhaleHeap@@0) null (PredicateMaskField_17211 pm_f_1@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_12888) (ExhaleHeap@@1 T@PolymorphicMapType_12888) (Mask@@2 T@PolymorphicMapType_12909) (pm_f_1@@1 T@Field_16311_16312) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_16278_7741 Mask@@2 null pm_f_1@@1) (IsPredicateField_7579_7580 pm_f_1@@1)) (= (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@4) null (PredicateMaskField_16278 pm_f_1@@1)) (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| ExhaleHeap@@1) null (PredicateMaskField_16278 pm_f_1@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_7579_7580 pm_f_1@@1) (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| ExhaleHeap@@1) null (PredicateMaskField_16278 pm_f_1@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_12888) (ExhaleHeap@@2 T@PolymorphicMapType_12888) (Mask@@3 T@PolymorphicMapType_12909) (pm_f_1@@2 T@Field_18457_18458) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_7715_7716 Mask@@3 null pm_f_1@@2) (IsPredicateField_7715_7716 pm_f_1@@2)) (= (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@5) null (PredicateMaskField_7715 pm_f_1@@2)) (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| ExhaleHeap@@2) null (PredicateMaskField_7715 pm_f_1@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsPredicateField_7715_7716 pm_f_1@@2) (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| ExhaleHeap@@2) null (PredicateMaskField_7715 pm_f_1@@2)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_12888) (ExhaleHeap@@3 T@PolymorphicMapType_12888) (Mask@@4 T@PolymorphicMapType_12909) (pm_f_1@@3 T@Field_19395_19396) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_7740_7741 Mask@@4 null pm_f_1@@3) (IsPredicateField_7740_7741 pm_f_1@@3)) (= (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@6) null (PredicateMaskField_7740 pm_f_1@@3)) (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| ExhaleHeap@@3) null (PredicateMaskField_7740 pm_f_1@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsPredicateField_7740_7741 pm_f_1@@3) (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| ExhaleHeap@@3) null (PredicateMaskField_7740 pm_f_1@@3)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_12888) (ExhaleHeap@@4 T@PolymorphicMapType_12888) (Mask@@5 T@PolymorphicMapType_12909) (pm_f_1@@4 T@Field_7712_7741) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_7712_7741 Mask@@5 null pm_f_1@@4) (IsPredicateField_7712_47234 pm_f_1@@4)) (= (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@7) null (PredicateMaskField_7712 pm_f_1@@4)) (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| ExhaleHeap@@4) null (PredicateMaskField_7712 pm_f_1@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsPredicateField_7712_47234 pm_f_1@@4) (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| ExhaleHeap@@4) null (PredicateMaskField_7712 pm_f_1@@4)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_12888) (ExhaleHeap@@5 T@PolymorphicMapType_12888) (Mask@@6 T@PolymorphicMapType_12909) (pm_f_1@@5 T@Field_17797_17798) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_17768_7741 Mask@@6 null pm_f_1@@5) (IsWandField_7677_7678 pm_f_1@@5)) (= (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@8) null (WandMaskField_7677 pm_f_1@@5)) (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| ExhaleHeap@@5) null (WandMaskField_7677 pm_f_1@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (IsWandField_7677_7678 pm_f_1@@5) (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| ExhaleHeap@@5) null (WandMaskField_7677 pm_f_1@@5)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_12888) (ExhaleHeap@@6 T@PolymorphicMapType_12888) (Mask@@7 T@PolymorphicMapType_12909) (pm_f_1@@6 T@Field_17238_17239) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_17211_7741 Mask@@7 null pm_f_1@@6) (IsWandField_7641_7642 pm_f_1@@6)) (= (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@9) null (WandMaskField_7641 pm_f_1@@6)) (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| ExhaleHeap@@6) null (WandMaskField_7641 pm_f_1@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (IsWandField_7641_7642 pm_f_1@@6) (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| ExhaleHeap@@6) null (WandMaskField_7641 pm_f_1@@6)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_12888) (ExhaleHeap@@7 T@PolymorphicMapType_12888) (Mask@@8 T@PolymorphicMapType_12909) (pm_f_1@@7 T@Field_16311_16312) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_16278_7741 Mask@@8 null pm_f_1@@7) (IsWandField_7579_7580 pm_f_1@@7)) (= (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@10) null (WandMaskField_7579 pm_f_1@@7)) (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| ExhaleHeap@@7) null (WandMaskField_7579 pm_f_1@@7)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (IsWandField_7579_7580 pm_f_1@@7) (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| ExhaleHeap@@7) null (WandMaskField_7579 pm_f_1@@7)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_12888) (ExhaleHeap@@8 T@PolymorphicMapType_12888) (Mask@@9 T@PolymorphicMapType_12909) (pm_f_1@@8 T@Field_18457_18458) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_7715_7716 Mask@@9 null pm_f_1@@8) (IsWandField_7715_57967 pm_f_1@@8)) (= (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@11) null (WandMaskField_7715 pm_f_1@@8)) (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| ExhaleHeap@@8) null (WandMaskField_7715 pm_f_1@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (IsWandField_7715_57967 pm_f_1@@8) (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| ExhaleHeap@@8) null (WandMaskField_7715 pm_f_1@@8)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_12888) (ExhaleHeap@@9 T@PolymorphicMapType_12888) (Mask@@10 T@PolymorphicMapType_12909) (pm_f_1@@9 T@Field_19395_19396) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_7740_7741 Mask@@10 null pm_f_1@@9) (IsWandField_7740_57610 pm_f_1@@9)) (= (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@12) null (WandMaskField_7740 pm_f_1@@9)) (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| ExhaleHeap@@9) null (WandMaskField_7740 pm_f_1@@9)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (IsWandField_7740_57610 pm_f_1@@9) (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| ExhaleHeap@@9) null (WandMaskField_7740 pm_f_1@@9)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_12888) (ExhaleHeap@@10 T@PolymorphicMapType_12888) (Mask@@11 T@PolymorphicMapType_12909) (pm_f_1@@10 T@Field_7712_7741) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_7712_7741 Mask@@11 null pm_f_1@@10) (IsWandField_7712_57253 pm_f_1@@10)) (= (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@13) null (WandMaskField_7712 pm_f_1@@10)) (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| ExhaleHeap@@10) null (WandMaskField_7712 pm_f_1@@10)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (IsWandField_7712_57253 pm_f_1@@10) (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| ExhaleHeap@@10) null (WandMaskField_7712 pm_f_1@@10)))
)))
(assert (forall ((x@@3 T@Ref) (x2 T@Ref) ) (!  (=> (= (Q x@@3) (Q x2)) (= x@@3 x2))
 :qid |stdinbpl.306:15|
 :skolemid |46|
 :pattern ( (Q x@@3) (Q x2))
)))
(assert (forall ((x@@4 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|Q#sm| x@@4) (|Q#sm| x2@@0)) (= x@@4 x2@@0))
 :qid |stdinbpl.310:15|
 :skolemid |47|
 :pattern ( (|Q#sm| x@@4) (|Q#sm| x2@@0))
)))
(assert (forall ((x@@5 T@Ref) (x2@@1 T@Ref) ) (!  (=> (= (P x@@5) (P x2@@1)) (= x@@5 x2@@1))
 :qid |stdinbpl.362:15|
 :skolemid |52|
 :pattern ( (P x@@5) (P x2@@1))
)))
(assert (forall ((x@@6 T@Ref) (x2@@2 T@Ref) ) (!  (=> (= (|P#sm| x@@6) (|P#sm| x2@@2)) (= x@@6 x2@@2))
 :qid |stdinbpl.366:15|
 :skolemid |53|
 :pattern ( (|P#sm| x@@6) (|P#sm| x2@@2))
)))
(assert (forall ((arg1@@8 T@Ref) (arg2@@8 Real) (arg3@@8 T@Ref) (arg4@@1 Int) (arg5@@0 T@Ref) (arg6@@0 Real) (arg7@@0 T@Ref) (arg8@@0 Int) ) (! (IsWandField_7562_1219 (wand arg1@@8 arg2@@8 arg3@@8 arg4@@1 arg5@@0 arg6@@0 arg7@@0 arg8@@0))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (wand arg1@@8 arg2@@8 arg3@@8 arg4@@1 arg5@@0 arg6@@0 arg7@@0 arg8@@0))
)))
(assert (forall ((arg1@@9 T@Ref) (arg2@@9 Real) (arg3@@9 T@Ref) (arg4@@2 Int) (arg5@@1 T@Ref) (arg6@@1 Real) (arg7@@1 T@Ref) (arg8@@1 Int) ) (! (IsWandField_7579_7580 (|wand#ft| arg1@@9 arg2@@9 arg3@@9 arg4@@2 arg5@@1 arg6@@1 arg7@@1 arg8@@1))
 :qid |stdinbpl.188:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@9 arg2@@9 arg3@@9 arg4@@2 arg5@@1 arg6@@1 arg7@@1 arg8@@1))
)))
(assert (forall ((arg1@@10 T@Ref) (arg2@@10 Real) (arg3@@10 T@Ref) (arg4@@3 Int) (arg5@@2 T@Ref) (arg6@@2 Real) (arg7@@2 T@Ref) (arg8@@2 Int) ) (!  (not (IsPredicateField_7562_1219 (wand arg1@@10 arg2@@10 arg3@@10 arg4@@3 arg5@@2 arg6@@2 arg7@@2 arg8@@2)))
 :qid |stdinbpl.192:15|
 :skolemid |24|
 :pattern ( (wand arg1@@10 arg2@@10 arg3@@10 arg4@@3 arg5@@2 arg6@@2 arg7@@2 arg8@@2))
)))
(assert (forall ((arg1@@11 T@Ref) (arg2@@11 Real) (arg3@@11 T@Ref) (arg4@@4 Int) (arg5@@3 T@Ref) (arg6@@3 Real) (arg7@@3 T@Ref) (arg8@@3 Int) ) (!  (not (IsPredicateField_7579_7580 (|wand#ft| arg1@@11 arg2@@11 arg3@@11 arg4@@4 arg5@@3 arg6@@3 arg7@@3 arg8@@3)))
 :qid |stdinbpl.196:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@11 arg2@@11 arg3@@11 arg4@@4 arg5@@3 arg6@@3 arg7@@3 arg8@@3))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_12888) (ExhaleHeap@@11 T@PolymorphicMapType_12888) (Mask@@12 T@PolymorphicMapType_12909) (o_3 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (=> (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@14) o_3 $allocated) (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| ExhaleHeap@@11) o_3 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| ExhaleHeap@@11) o_3 $allocated))
)))
(assert (forall ((p T@Field_19395_19396) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_19395_19395 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_19395_19395 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_18457_18458) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_18457_18457 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_18457_18457 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_17797_17798) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_17768_17768 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_17768_17768 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_17238_17239) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_17211_17211 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_17211_17211 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((p@@3 T@Field_16311_16312) (v_1@@3 T@FrameType) (w@@3 T@FrameType) ) (!  (not (InsidePredicate_16278_16278 p@@3 v_1@@3 p@@3 w@@3))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16278_16278 p@@3 v_1@@3 p@@3 w@@3))
)))
(assert (forall ((p@@4 T@Field_7712_7741) (v_1@@4 T@FrameType) (w@@4 T@FrameType) ) (!  (not (InsidePredicate_12948_12948 p@@4 v_1@@4 p@@4 w@@4))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12948_12948 p@@4 v_1@@4 p@@4 w@@4))
)))
(assert  (not (IsPredicateField_7712_2323 f_7)))
(assert  (not (IsWandField_7712_2323 f_7)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_12888) (ExhaleHeap@@12 T@PolymorphicMapType_12888) (Mask@@13 T@PolymorphicMapType_12909) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13) (succHeap Heap@@15 ExhaleHeap@@12))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_12909) (o_2@@29 T@Ref) (f_4@@29 T@Field_17223_17228) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_12909_7632_72483#PolymorphicMapType_12909| Mask@@14) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_7632_79385 f_4@@29))) (not (IsWandField_7632_79401 f_4@@29))) (<= (select (|PolymorphicMapType_12909_7632_72483#PolymorphicMapType_12909| Mask@@14) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_12909_7632_72483#PolymorphicMapType_12909| Mask@@14) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_12909) (o_2@@30 T@Ref) (f_4@@30 T@Field_17211_12962) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_12909_7632_12962#PolymorphicMapType_12909| Mask@@15) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_7632_12962 f_4@@30))) (not (IsWandField_7632_12962 f_4@@30))) (<= (select (|PolymorphicMapType_12909_7632_12962#PolymorphicMapType_12909| Mask@@15) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_12909_7632_12962#PolymorphicMapType_12909| Mask@@15) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_12909) (o_2@@31 T@Ref) (f_4@@31 T@Field_17211_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_12909_7632_53#PolymorphicMapType_12909| Mask@@16) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_7632_53 f_4@@31))) (not (IsWandField_7632_53 f_4@@31))) (<= (select (|PolymorphicMapType_12909_7632_53#PolymorphicMapType_12909| Mask@@16) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_12909_7632_53#PolymorphicMapType_12909| Mask@@16) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_12909) (o_2@@32 T@Ref) (f_4@@32 T@Field_17238_17239) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_12909_7632_7741#PolymorphicMapType_12909| Mask@@17) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_7641_7642 f_4@@32))) (not (IsWandField_7641_7642 f_4@@32))) (<= (select (|PolymorphicMapType_12909_7632_7741#PolymorphicMapType_12909| Mask@@17) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_12909_7632_7741#PolymorphicMapType_12909| Mask@@17) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_12909) (o_2@@33 T@Ref) (f_4@@33 T@Field_17211_1749) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_12909_7632_1749#PolymorphicMapType_12909| Mask@@18) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_7632_1749 f_4@@33))) (not (IsWandField_7632_1749 f_4@@33))) (<= (select (|PolymorphicMapType_12909_7632_1749#PolymorphicMapType_12909| Mask@@18) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_12909_7632_1749#PolymorphicMapType_12909| Mask@@18) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_12909) (o_2@@34 T@Ref) (f_4@@34 T@Field_17781_17786) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_12909_7664_72069#PolymorphicMapType_12909| Mask@@19) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_7664_78568 f_4@@34))) (not (IsWandField_7664_78584 f_4@@34))) (<= (select (|PolymorphicMapType_12909_7664_72069#PolymorphicMapType_12909| Mask@@19) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_12909_7664_72069#PolymorphicMapType_12909| Mask@@19) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_12909) (o_2@@35 T@Ref) (f_4@@35 T@Field_17768_12962) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_12909_7664_12962#PolymorphicMapType_12909| Mask@@20) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_7664_12962 f_4@@35))) (not (IsWandField_7664_12962 f_4@@35))) (<= (select (|PolymorphicMapType_12909_7664_12962#PolymorphicMapType_12909| Mask@@20) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_12909_7664_12962#PolymorphicMapType_12909| Mask@@20) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_12909) (o_2@@36 T@Ref) (f_4@@36 T@Field_17768_53) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_12909_7664_53#PolymorphicMapType_12909| Mask@@21) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_7664_53 f_4@@36))) (not (IsWandField_7664_53 f_4@@36))) (<= (select (|PolymorphicMapType_12909_7664_53#PolymorphicMapType_12909| Mask@@21) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_12909_7664_53#PolymorphicMapType_12909| Mask@@21) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_12909) (o_2@@37 T@Ref) (f_4@@37 T@Field_17797_17798) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_12909_7664_7741#PolymorphicMapType_12909| Mask@@22) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_7677_7678 f_4@@37))) (not (IsWandField_7677_7678 f_4@@37))) (<= (select (|PolymorphicMapType_12909_7664_7741#PolymorphicMapType_12909| Mask@@22) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_12909_7664_7741#PolymorphicMapType_12909| Mask@@22) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_12909) (o_2@@38 T@Ref) (f_4@@38 T@Field_17768_2018) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_12909_7664_2018#PolymorphicMapType_12909| Mask@@23) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_7664_2018 f_4@@38))) (not (IsWandField_7664_2018 f_4@@38))) (<= (select (|PolymorphicMapType_12909_7664_2018#PolymorphicMapType_12909| Mask@@23) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_12909_7664_2018#PolymorphicMapType_12909| Mask@@23) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_12909) (o_2@@39 T@Ref) (f_4@@39 T@Field_18470_18475) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_12909_7715_71655#PolymorphicMapType_12909| Mask@@24) o_2@@39 f_4@@39) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_7715_77751 f_4@@39))) (not (IsWandField_7715_77767 f_4@@39))) (<= (select (|PolymorphicMapType_12909_7715_71655#PolymorphicMapType_12909| Mask@@24) o_2@@39 f_4@@39) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_12909_7715_71655#PolymorphicMapType_12909| Mask@@24) o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_12909) (o_2@@40 T@Ref) (f_4@@40 T@Field_7715_12962) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_12909_7715_12962#PolymorphicMapType_12909| Mask@@25) o_2@@40 f_4@@40) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_7715_12962 f_4@@40))) (not (IsWandField_7715_12962 f_4@@40))) (<= (select (|PolymorphicMapType_12909_7715_12962#PolymorphicMapType_12909| Mask@@25) o_2@@40 f_4@@40) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_12909_7715_12962#PolymorphicMapType_12909| Mask@@25) o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_12909) (o_2@@41 T@Ref) (f_4@@41 T@Field_7715_53) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_12909_7715_53#PolymorphicMapType_12909| Mask@@26) o_2@@41 f_4@@41) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_7715_53 f_4@@41))) (not (IsWandField_7715_53 f_4@@41))) (<= (select (|PolymorphicMapType_12909_7715_53#PolymorphicMapType_12909| Mask@@26) o_2@@41 f_4@@41) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_12909_7715_53#PolymorphicMapType_12909| Mask@@26) o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_12909) (o_2@@42 T@Ref) (f_4@@42 T@Field_18457_18458) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_12909_7715_7716#PolymorphicMapType_12909| Mask@@27) o_2@@42 f_4@@42) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_7715_7716 f_4@@42))) (not (IsWandField_7715_57967 f_4@@42))) (<= (select (|PolymorphicMapType_12909_7715_7716#PolymorphicMapType_12909| Mask@@27) o_2@@42 f_4@@42) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_12909_7715_7716#PolymorphicMapType_12909| Mask@@27) o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_12909) (o_2@@43 T@Ref) (f_4@@43 T@Field_7715_2323) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_12909_7715_2323#PolymorphicMapType_12909| Mask@@28) o_2@@43 f_4@@43) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_7715_2323 f_4@@43))) (not (IsWandField_7715_2323 f_4@@43))) (<= (select (|PolymorphicMapType_12909_7715_2323#PolymorphicMapType_12909| Mask@@28) o_2@@43 f_4@@43) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_12909_7715_2323#PolymorphicMapType_12909| Mask@@28) o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_12909) (o_2@@44 T@Ref) (f_4@@44 T@Field_16293_16298) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_12909_7562_71244#PolymorphicMapType_12909| Mask@@29) o_2@@44 f_4@@44) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_7562_76920 f_4@@44))) (not (IsWandField_7562_76936 f_4@@44))) (<= (select (|PolymorphicMapType_12909_7562_71244#PolymorphicMapType_12909| Mask@@29) o_2@@44 f_4@@44) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_12909_7562_71244#PolymorphicMapType_12909| Mask@@29) o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_12909) (o_2@@45 T@Ref) (f_4@@45 T@Field_16278_12962) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_12909_7562_12962#PolymorphicMapType_12909| Mask@@30) o_2@@45 f_4@@45) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_7562_12962 f_4@@45))) (not (IsWandField_7562_12962 f_4@@45))) (<= (select (|PolymorphicMapType_12909_7562_12962#PolymorphicMapType_12909| Mask@@30) o_2@@45 f_4@@45) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_12909_7562_12962#PolymorphicMapType_12909| Mask@@30) o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_12909) (o_2@@46 T@Ref) (f_4@@46 T@Field_16278_53) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_12909_7562_53#PolymorphicMapType_12909| Mask@@31) o_2@@46 f_4@@46) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_7562_53 f_4@@46))) (not (IsWandField_7562_53 f_4@@46))) (<= (select (|PolymorphicMapType_12909_7562_53#PolymorphicMapType_12909| Mask@@31) o_2@@46 f_4@@46) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_12909_7562_53#PolymorphicMapType_12909| Mask@@31) o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_12909) (o_2@@47 T@Ref) (f_4@@47 T@Field_16311_16312) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_12909_7562_7741#PolymorphicMapType_12909| Mask@@32) o_2@@47 f_4@@47) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_7579_7580 f_4@@47))) (not (IsWandField_7579_7580 f_4@@47))) (<= (select (|PolymorphicMapType_12909_7562_7741#PolymorphicMapType_12909| Mask@@32) o_2@@47 f_4@@47) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_12909_7562_7741#PolymorphicMapType_12909| Mask@@32) o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_12909) (o_2@@48 T@Ref) (f_4@@48 T@Field_16278_1219) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_12909_7562_1219#PolymorphicMapType_12909| Mask@@33) o_2@@48 f_4@@48) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_7562_1219 f_4@@48))) (not (IsWandField_7562_1219 f_4@@48))) (<= (select (|PolymorphicMapType_12909_7562_1219#PolymorphicMapType_12909| Mask@@33) o_2@@48 f_4@@48) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_12909_7562_1219#PolymorphicMapType_12909| Mask@@33) o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_12909) (o_2@@49 T@Ref) (f_4@@49 T@Field_19408_19413) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_12909_7740_70830#PolymorphicMapType_12909| Mask@@34) o_2@@49 f_4@@49) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_7740_76103 f_4@@49))) (not (IsWandField_7740_76119 f_4@@49))) (<= (select (|PolymorphicMapType_12909_7740_70830#PolymorphicMapType_12909| Mask@@34) o_2@@49 f_4@@49) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_12909_7740_70830#PolymorphicMapType_12909| Mask@@34) o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_12909) (o_2@@50 T@Ref) (f_4@@50 T@Field_7740_12962) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_12909_7740_12962#PolymorphicMapType_12909| Mask@@35) o_2@@50 f_4@@50) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_7740_12962 f_4@@50))) (not (IsWandField_7740_12962 f_4@@50))) (<= (select (|PolymorphicMapType_12909_7740_12962#PolymorphicMapType_12909| Mask@@35) o_2@@50 f_4@@50) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_12909_7740_12962#PolymorphicMapType_12909| Mask@@35) o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_12909) (o_2@@51 T@Ref) (f_4@@51 T@Field_7740_53) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_12909_7740_53#PolymorphicMapType_12909| Mask@@36) o_2@@51 f_4@@51) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_7740_53 f_4@@51))) (not (IsWandField_7740_53 f_4@@51))) (<= (select (|PolymorphicMapType_12909_7740_53#PolymorphicMapType_12909| Mask@@36) o_2@@51 f_4@@51) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_12909_7740_53#PolymorphicMapType_12909| Mask@@36) o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_12909) (o_2@@52 T@Ref) (f_4@@52 T@Field_19395_19396) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_12909_7740_7741#PolymorphicMapType_12909| Mask@@37) o_2@@52 f_4@@52) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_7740_7741 f_4@@52))) (not (IsWandField_7740_57610 f_4@@52))) (<= (select (|PolymorphicMapType_12909_7740_7741#PolymorphicMapType_12909| Mask@@37) o_2@@52 f_4@@52) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_12909_7740_7741#PolymorphicMapType_12909| Mask@@37) o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_12909) (o_2@@53 T@Ref) (f_4@@53 T@Field_7740_2323) ) (!  (=> (GoodMask Mask@@38) (and (>= (select (|PolymorphicMapType_12909_7740_2323#PolymorphicMapType_12909| Mask@@38) o_2@@53 f_4@@53) NoPerm) (=> (and (and (and (GoodMask Mask@@38) AssumePermUpperBound) (not (IsPredicateField_7740_2323 f_4@@53))) (not (IsWandField_7740_2323 f_4@@53))) (<= (select (|PolymorphicMapType_12909_7740_2323#PolymorphicMapType_12909| Mask@@38) o_2@@53 f_4@@53) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@38) (select (|PolymorphicMapType_12909_7740_2323#PolymorphicMapType_12909| Mask@@38) o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_12909) (o_2@@54 T@Ref) (f_4@@54 T@Field_7712_16298) ) (!  (=> (GoodMask Mask@@39) (and (>= (select (|PolymorphicMapType_12909_7712_70419#PolymorphicMapType_12909| Mask@@39) o_2@@54 f_4@@54) NoPerm) (=> (and (and (and (GoodMask Mask@@39) AssumePermUpperBound) (not (IsPredicateField_7712_75272 f_4@@54))) (not (IsWandField_7712_75288 f_4@@54))) (<= (select (|PolymorphicMapType_12909_7712_70419#PolymorphicMapType_12909| Mask@@39) o_2@@54 f_4@@54) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@39) (select (|PolymorphicMapType_12909_7712_70419#PolymorphicMapType_12909| Mask@@39) o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_12909) (o_2@@55 T@Ref) (f_4@@55 T@Field_12961_12962) ) (!  (=> (GoodMask Mask@@40) (and (>= (select (|PolymorphicMapType_12909_7712_12962#PolymorphicMapType_12909| Mask@@40) o_2@@55 f_4@@55) NoPerm) (=> (and (and (and (GoodMask Mask@@40) AssumePermUpperBound) (not (IsPredicateField_7712_12962 f_4@@55))) (not (IsWandField_7712_12962 f_4@@55))) (<= (select (|PolymorphicMapType_12909_7712_12962#PolymorphicMapType_12909| Mask@@40) o_2@@55 f_4@@55) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@40) (select (|PolymorphicMapType_12909_7712_12962#PolymorphicMapType_12909| Mask@@40) o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_12909) (o_2@@56 T@Ref) (f_4@@56 T@Field_12948_53) ) (!  (=> (GoodMask Mask@@41) (and (>= (select (|PolymorphicMapType_12909_7712_53#PolymorphicMapType_12909| Mask@@41) o_2@@56 f_4@@56) NoPerm) (=> (and (and (and (GoodMask Mask@@41) AssumePermUpperBound) (not (IsPredicateField_7712_53 f_4@@56))) (not (IsWandField_7712_53 f_4@@56))) (<= (select (|PolymorphicMapType_12909_7712_53#PolymorphicMapType_12909| Mask@@41) o_2@@56 f_4@@56) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@41) (select (|PolymorphicMapType_12909_7712_53#PolymorphicMapType_12909| Mask@@41) o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_12909) (o_2@@57 T@Ref) (f_4@@57 T@Field_7712_7741) ) (!  (=> (GoodMask Mask@@42) (and (>= (select (|PolymorphicMapType_12909_7712_7741#PolymorphicMapType_12909| Mask@@42) o_2@@57 f_4@@57) NoPerm) (=> (and (and (and (GoodMask Mask@@42) AssumePermUpperBound) (not (IsPredicateField_7712_47234 f_4@@57))) (not (IsWandField_7712_57253 f_4@@57))) (<= (select (|PolymorphicMapType_12909_7712_7741#PolymorphicMapType_12909| Mask@@42) o_2@@57 f_4@@57) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@42) (select (|PolymorphicMapType_12909_7712_7741#PolymorphicMapType_12909| Mask@@42) o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_12909) (o_2@@58 T@Ref) (f_4@@58 T@Field_18410_2323) ) (!  (=> (GoodMask Mask@@43) (and (>= (select (|PolymorphicMapType_12909_7712_2323#PolymorphicMapType_12909| Mask@@43) o_2@@58 f_4@@58) NoPerm) (=> (and (and (and (GoodMask Mask@@43) AssumePermUpperBound) (not (IsPredicateField_7712_2323 f_4@@58))) (not (IsWandField_7712_2323 f_4@@58))) (<= (select (|PolymorphicMapType_12909_7712_2323#PolymorphicMapType_12909| Mask@@43) o_2@@58 f_4@@58) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@43) (select (|PolymorphicMapType_12909_7712_2323#PolymorphicMapType_12909| Mask@@43) o_2@@58 f_4@@58))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_12909) (o_2@@59 T@Ref) (f_4@@59 T@Field_17781_17786) ) (! (= (HasDirectPerm_17768_46989 Mask@@44 o_2@@59 f_4@@59) (> (select (|PolymorphicMapType_12909_7664_72069#PolymorphicMapType_12909| Mask@@44) o_2@@59 f_4@@59) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17768_46989 Mask@@44 o_2@@59 f_4@@59))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_12909) (o_2@@60 T@Ref) (f_4@@60 T@Field_17768_12962) ) (! (= (HasDirectPerm_17768_12962 Mask@@45 o_2@@60 f_4@@60) (> (select (|PolymorphicMapType_12909_7664_12962#PolymorphicMapType_12909| Mask@@45) o_2@@60 f_4@@60) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17768_12962 Mask@@45 o_2@@60 f_4@@60))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_12909) (o_2@@61 T@Ref) (f_4@@61 T@Field_17768_53) ) (! (= (HasDirectPerm_17768_53 Mask@@46 o_2@@61 f_4@@61) (> (select (|PolymorphicMapType_12909_7664_53#PolymorphicMapType_12909| Mask@@46) o_2@@61 f_4@@61) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17768_53 Mask@@46 o_2@@61 f_4@@61))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_12909) (o_2@@62 T@Ref) (f_4@@62 T@Field_17797_17798) ) (! (= (HasDirectPerm_17768_7741 Mask@@47 o_2@@62 f_4@@62) (> (select (|PolymorphicMapType_12909_7664_7741#PolymorphicMapType_12909| Mask@@47) o_2@@62 f_4@@62) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17768_7741 Mask@@47 o_2@@62 f_4@@62))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_12909) (o_2@@63 T@Ref) (f_4@@63 T@Field_17768_2018) ) (! (= (HasDirectPerm_17768_2323 Mask@@48 o_2@@63 f_4@@63) (> (select (|PolymorphicMapType_12909_7664_2018#PolymorphicMapType_12909| Mask@@48) o_2@@63 f_4@@63) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17768_2323 Mask@@48 o_2@@63 f_4@@63))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_12909) (o_2@@64 T@Ref) (f_4@@64 T@Field_17223_17228) ) (! (= (HasDirectPerm_17211_45812 Mask@@49 o_2@@64 f_4@@64) (> (select (|PolymorphicMapType_12909_7632_72483#PolymorphicMapType_12909| Mask@@49) o_2@@64 f_4@@64) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17211_45812 Mask@@49 o_2@@64 f_4@@64))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_12909) (o_2@@65 T@Ref) (f_4@@65 T@Field_17211_12962) ) (! (= (HasDirectPerm_17211_12962 Mask@@50 o_2@@65 f_4@@65) (> (select (|PolymorphicMapType_12909_7632_12962#PolymorphicMapType_12909| Mask@@50) o_2@@65 f_4@@65) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17211_12962 Mask@@50 o_2@@65 f_4@@65))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_12909) (o_2@@66 T@Ref) (f_4@@66 T@Field_17211_53) ) (! (= (HasDirectPerm_17211_53 Mask@@51 o_2@@66 f_4@@66) (> (select (|PolymorphicMapType_12909_7632_53#PolymorphicMapType_12909| Mask@@51) o_2@@66 f_4@@66) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17211_53 Mask@@51 o_2@@66 f_4@@66))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_12909) (o_2@@67 T@Ref) (f_4@@67 T@Field_17238_17239) ) (! (= (HasDirectPerm_17211_7741 Mask@@52 o_2@@67 f_4@@67) (> (select (|PolymorphicMapType_12909_7632_7741#PolymorphicMapType_12909| Mask@@52) o_2@@67 f_4@@67) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17211_7741 Mask@@52 o_2@@67 f_4@@67))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_12909) (o_2@@68 T@Ref) (f_4@@68 T@Field_17211_1749) ) (! (= (HasDirectPerm_17211_2323 Mask@@53 o_2@@68 f_4@@68) (> (select (|PolymorphicMapType_12909_7632_1749#PolymorphicMapType_12909| Mask@@53) o_2@@68 f_4@@68) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17211_2323 Mask@@53 o_2@@68 f_4@@68))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_12909) (o_2@@69 T@Ref) (f_4@@69 T@Field_16293_16298) ) (! (= (HasDirectPerm_16278_44678 Mask@@54 o_2@@69 f_4@@69) (> (select (|PolymorphicMapType_12909_7562_71244#PolymorphicMapType_12909| Mask@@54) o_2@@69 f_4@@69) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16278_44678 Mask@@54 o_2@@69 f_4@@69))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_12909) (o_2@@70 T@Ref) (f_4@@70 T@Field_16278_12962) ) (! (= (HasDirectPerm_16278_12962 Mask@@55 o_2@@70 f_4@@70) (> (select (|PolymorphicMapType_12909_7562_12962#PolymorphicMapType_12909| Mask@@55) o_2@@70 f_4@@70) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16278_12962 Mask@@55 o_2@@70 f_4@@70))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_12909) (o_2@@71 T@Ref) (f_4@@71 T@Field_16278_53) ) (! (= (HasDirectPerm_16278_53 Mask@@56 o_2@@71 f_4@@71) (> (select (|PolymorphicMapType_12909_7562_53#PolymorphicMapType_12909| Mask@@56) o_2@@71 f_4@@71) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16278_53 Mask@@56 o_2@@71 f_4@@71))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_12909) (o_2@@72 T@Ref) (f_4@@72 T@Field_16311_16312) ) (! (= (HasDirectPerm_16278_7741 Mask@@57 o_2@@72 f_4@@72) (> (select (|PolymorphicMapType_12909_7562_7741#PolymorphicMapType_12909| Mask@@57) o_2@@72 f_4@@72) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16278_7741 Mask@@57 o_2@@72 f_4@@72))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_12909) (o_2@@73 T@Ref) (f_4@@73 T@Field_16278_1219) ) (! (= (HasDirectPerm_16278_2323 Mask@@58 o_2@@73 f_4@@73) (> (select (|PolymorphicMapType_12909_7562_1219#PolymorphicMapType_12909| Mask@@58) o_2@@73 f_4@@73) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16278_2323 Mask@@58 o_2@@73 f_4@@73))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_12909) (o_2@@74 T@Ref) (f_4@@74 T@Field_18470_18475) ) (! (= (HasDirectPerm_7715_43544 Mask@@59 o_2@@74 f_4@@74) (> (select (|PolymorphicMapType_12909_7715_71655#PolymorphicMapType_12909| Mask@@59) o_2@@74 f_4@@74) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7715_43544 Mask@@59 o_2@@74 f_4@@74))
)))
(assert (forall ((Mask@@60 T@PolymorphicMapType_12909) (o_2@@75 T@Ref) (f_4@@75 T@Field_7715_12962) ) (! (= (HasDirectPerm_7715_12962 Mask@@60 o_2@@75 f_4@@75) (> (select (|PolymorphicMapType_12909_7715_12962#PolymorphicMapType_12909| Mask@@60) o_2@@75 f_4@@75) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7715_12962 Mask@@60 o_2@@75 f_4@@75))
)))
(assert (forall ((Mask@@61 T@PolymorphicMapType_12909) (o_2@@76 T@Ref) (f_4@@76 T@Field_7715_53) ) (! (= (HasDirectPerm_7715_53 Mask@@61 o_2@@76 f_4@@76) (> (select (|PolymorphicMapType_12909_7715_53#PolymorphicMapType_12909| Mask@@61) o_2@@76 f_4@@76) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7715_53 Mask@@61 o_2@@76 f_4@@76))
)))
(assert (forall ((Mask@@62 T@PolymorphicMapType_12909) (o_2@@77 T@Ref) (f_4@@77 T@Field_18457_18458) ) (! (= (HasDirectPerm_7715_7716 Mask@@62 o_2@@77 f_4@@77) (> (select (|PolymorphicMapType_12909_7715_7716#PolymorphicMapType_12909| Mask@@62) o_2@@77 f_4@@77) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7715_7716 Mask@@62 o_2@@77 f_4@@77))
)))
(assert (forall ((Mask@@63 T@PolymorphicMapType_12909) (o_2@@78 T@Ref) (f_4@@78 T@Field_7715_2323) ) (! (= (HasDirectPerm_7715_2323 Mask@@63 o_2@@78 f_4@@78) (> (select (|PolymorphicMapType_12909_7715_2323#PolymorphicMapType_12909| Mask@@63) o_2@@78 f_4@@78) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7715_2323 Mask@@63 o_2@@78 f_4@@78))
)))
(assert (forall ((Mask@@64 T@PolymorphicMapType_12909) (o_2@@79 T@Ref) (f_4@@79 T@Field_19408_19413) ) (! (= (HasDirectPerm_7740_42446 Mask@@64 o_2@@79 f_4@@79) (> (select (|PolymorphicMapType_12909_7740_70830#PolymorphicMapType_12909| Mask@@64) o_2@@79 f_4@@79) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7740_42446 Mask@@64 o_2@@79 f_4@@79))
)))
(assert (forall ((Mask@@65 T@PolymorphicMapType_12909) (o_2@@80 T@Ref) (f_4@@80 T@Field_7740_12962) ) (! (= (HasDirectPerm_7740_12962 Mask@@65 o_2@@80 f_4@@80) (> (select (|PolymorphicMapType_12909_7740_12962#PolymorphicMapType_12909| Mask@@65) o_2@@80 f_4@@80) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7740_12962 Mask@@65 o_2@@80 f_4@@80))
)))
(assert (forall ((Mask@@66 T@PolymorphicMapType_12909) (o_2@@81 T@Ref) (f_4@@81 T@Field_7740_53) ) (! (= (HasDirectPerm_7740_53 Mask@@66 o_2@@81 f_4@@81) (> (select (|PolymorphicMapType_12909_7740_53#PolymorphicMapType_12909| Mask@@66) o_2@@81 f_4@@81) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7740_53 Mask@@66 o_2@@81 f_4@@81))
)))
(assert (forall ((Mask@@67 T@PolymorphicMapType_12909) (o_2@@82 T@Ref) (f_4@@82 T@Field_19395_19396) ) (! (= (HasDirectPerm_7740_7741 Mask@@67 o_2@@82 f_4@@82) (> (select (|PolymorphicMapType_12909_7740_7741#PolymorphicMapType_12909| Mask@@67) o_2@@82 f_4@@82) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7740_7741 Mask@@67 o_2@@82 f_4@@82))
)))
(assert (forall ((Mask@@68 T@PolymorphicMapType_12909) (o_2@@83 T@Ref) (f_4@@83 T@Field_7740_2323) ) (! (= (HasDirectPerm_7740_2323 Mask@@68 o_2@@83 f_4@@83) (> (select (|PolymorphicMapType_12909_7740_2323#PolymorphicMapType_12909| Mask@@68) o_2@@83 f_4@@83) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7740_2323 Mask@@68 o_2@@83 f_4@@83))
)))
(assert (forall ((Mask@@69 T@PolymorphicMapType_12909) (o_2@@84 T@Ref) (f_4@@84 T@Field_7712_16298) ) (! (= (HasDirectPerm_7712_41305 Mask@@69 o_2@@84 f_4@@84) (> (select (|PolymorphicMapType_12909_7712_70419#PolymorphicMapType_12909| Mask@@69) o_2@@84 f_4@@84) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7712_41305 Mask@@69 o_2@@84 f_4@@84))
)))
(assert (forall ((Mask@@70 T@PolymorphicMapType_12909) (o_2@@85 T@Ref) (f_4@@85 T@Field_12961_12962) ) (! (= (HasDirectPerm_7712_12962 Mask@@70 o_2@@85 f_4@@85) (> (select (|PolymorphicMapType_12909_7712_12962#PolymorphicMapType_12909| Mask@@70) o_2@@85 f_4@@85) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7712_12962 Mask@@70 o_2@@85 f_4@@85))
)))
(assert (forall ((Mask@@71 T@PolymorphicMapType_12909) (o_2@@86 T@Ref) (f_4@@86 T@Field_12948_53) ) (! (= (HasDirectPerm_7712_53 Mask@@71 o_2@@86 f_4@@86) (> (select (|PolymorphicMapType_12909_7712_53#PolymorphicMapType_12909| Mask@@71) o_2@@86 f_4@@86) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7712_53 Mask@@71 o_2@@86 f_4@@86))
)))
(assert (forall ((Mask@@72 T@PolymorphicMapType_12909) (o_2@@87 T@Ref) (f_4@@87 T@Field_7712_7741) ) (! (= (HasDirectPerm_7712_7741 Mask@@72 o_2@@87 f_4@@87) (> (select (|PolymorphicMapType_12909_7712_7741#PolymorphicMapType_12909| Mask@@72) o_2@@87 f_4@@87) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7712_7741 Mask@@72 o_2@@87 f_4@@87))
)))
(assert (forall ((Mask@@73 T@PolymorphicMapType_12909) (o_2@@88 T@Ref) (f_4@@88 T@Field_18410_2323) ) (! (= (HasDirectPerm_7712_2323 Mask@@73 o_2@@88 f_4@@88) (> (select (|PolymorphicMapType_12909_7712_2323#PolymorphicMapType_12909| Mask@@73) o_2@@88 f_4@@88) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7712_2323 Mask@@73 o_2@@88 f_4@@88))
)))
(assert (forall ((arg1@@12 T@Ref) (arg2@@12 Real) (arg3@@12 T@Ref) (arg4@@5 Real) ) (! (IsWandField_7664_2018 (wand_2 arg1@@12 arg2@@12 arg3@@12 arg4@@5))
 :qid |stdinbpl.248:15|
 :skolemid |36|
 :pattern ( (wand_2 arg1@@12 arg2@@12 arg3@@12 arg4@@5))
)))
(assert (forall ((arg1@@13 T@Ref) (arg2@@13 Real) (arg3@@13 T@Ref) (arg4@@6 Real) ) (! (IsWandField_7677_7678 (|wand_2#ft| arg1@@13 arg2@@13 arg3@@13 arg4@@6))
 :qid |stdinbpl.252:15|
 :skolemid |37|
 :pattern ( (|wand_2#ft| arg1@@13 arg2@@13 arg3@@13 arg4@@6))
)))
(assert (forall ((p@@5 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@5 f_6) (ite (> p@@5 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@5 f_6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_12888) (ExhaleHeap@@13 T@PolymorphicMapType_12888) (Mask@@74 T@PolymorphicMapType_12909) (o_3@@0 T@Ref) (f_8 T@Field_17781_17786) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@74) (=> (HasDirectPerm_17768_46989 Mask@@74 o_3@@0 f_8) (= (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@16) o_3@@0 f_8) (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| ExhaleHeap@@13) o_3@@0 f_8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@74) (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| ExhaleHeap@@13) o_3@@0 f_8))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_12888) (ExhaleHeap@@14 T@PolymorphicMapType_12888) (Mask@@75 T@PolymorphicMapType_12909) (o_3@@1 T@Ref) (f_8@@0 T@Field_17768_12962) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@75) (=> (HasDirectPerm_17768_12962 Mask@@75 o_3@@1 f_8@@0) (= (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@17) o_3@@1 f_8@@0) (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| ExhaleHeap@@14) o_3@@1 f_8@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@75) (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| ExhaleHeap@@14) o_3@@1 f_8@@0))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_12888) (ExhaleHeap@@15 T@PolymorphicMapType_12888) (Mask@@76 T@PolymorphicMapType_12909) (o_3@@2 T@Ref) (f_8@@1 T@Field_17768_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@76) (=> (HasDirectPerm_17768_53 Mask@@76 o_3@@2 f_8@@1) (= (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@18) o_3@@2 f_8@@1) (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| ExhaleHeap@@15) o_3@@2 f_8@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@76) (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| ExhaleHeap@@15) o_3@@2 f_8@@1))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_12888) (ExhaleHeap@@16 T@PolymorphicMapType_12888) (Mask@@77 T@PolymorphicMapType_12909) (o_3@@3 T@Ref) (f_8@@2 T@Field_17797_17798) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@77) (=> (HasDirectPerm_17768_7741 Mask@@77 o_3@@3 f_8@@2) (= (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@19) o_3@@3 f_8@@2) (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| ExhaleHeap@@16) o_3@@3 f_8@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@77) (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| ExhaleHeap@@16) o_3@@3 f_8@@2))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_12888) (ExhaleHeap@@17 T@PolymorphicMapType_12888) (Mask@@78 T@PolymorphicMapType_12909) (o_3@@4 T@Ref) (f_8@@3 T@Field_17768_2018) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@78) (=> (HasDirectPerm_17768_2323 Mask@@78 o_3@@4 f_8@@3) (= (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@20) o_3@@4 f_8@@3) (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| ExhaleHeap@@17) o_3@@4 f_8@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@78) (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| ExhaleHeap@@17) o_3@@4 f_8@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_12888) (ExhaleHeap@@18 T@PolymorphicMapType_12888) (Mask@@79 T@PolymorphicMapType_12909) (o_3@@5 T@Ref) (f_8@@4 T@Field_17223_17228) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@79) (=> (HasDirectPerm_17211_45812 Mask@@79 o_3@@5 f_8@@4) (= (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@21) o_3@@5 f_8@@4) (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| ExhaleHeap@@18) o_3@@5 f_8@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@79) (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| ExhaleHeap@@18) o_3@@5 f_8@@4))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_12888) (ExhaleHeap@@19 T@PolymorphicMapType_12888) (Mask@@80 T@PolymorphicMapType_12909) (o_3@@6 T@Ref) (f_8@@5 T@Field_17211_12962) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@80) (=> (HasDirectPerm_17211_12962 Mask@@80 o_3@@6 f_8@@5) (= (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@22) o_3@@6 f_8@@5) (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| ExhaleHeap@@19) o_3@@6 f_8@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@80) (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| ExhaleHeap@@19) o_3@@6 f_8@@5))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_12888) (ExhaleHeap@@20 T@PolymorphicMapType_12888) (Mask@@81 T@PolymorphicMapType_12909) (o_3@@7 T@Ref) (f_8@@6 T@Field_17211_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@81) (=> (HasDirectPerm_17211_53 Mask@@81 o_3@@7 f_8@@6) (= (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@23) o_3@@7 f_8@@6) (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| ExhaleHeap@@20) o_3@@7 f_8@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@81) (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| ExhaleHeap@@20) o_3@@7 f_8@@6))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_12888) (ExhaleHeap@@21 T@PolymorphicMapType_12888) (Mask@@82 T@PolymorphicMapType_12909) (o_3@@8 T@Ref) (f_8@@7 T@Field_17238_17239) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@82) (=> (HasDirectPerm_17211_7741 Mask@@82 o_3@@8 f_8@@7) (= (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@24) o_3@@8 f_8@@7) (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| ExhaleHeap@@21) o_3@@8 f_8@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@82) (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| ExhaleHeap@@21) o_3@@8 f_8@@7))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_12888) (ExhaleHeap@@22 T@PolymorphicMapType_12888) (Mask@@83 T@PolymorphicMapType_12909) (o_3@@9 T@Ref) (f_8@@8 T@Field_17211_1749) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@83) (=> (HasDirectPerm_17211_2323 Mask@@83 o_3@@9 f_8@@8) (= (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@25) o_3@@9 f_8@@8) (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| ExhaleHeap@@22) o_3@@9 f_8@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@83) (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| ExhaleHeap@@22) o_3@@9 f_8@@8))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_12888) (ExhaleHeap@@23 T@PolymorphicMapType_12888) (Mask@@84 T@PolymorphicMapType_12909) (o_3@@10 T@Ref) (f_8@@9 T@Field_16293_16298) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@84) (=> (HasDirectPerm_16278_44678 Mask@@84 o_3@@10 f_8@@9) (= (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@26) o_3@@10 f_8@@9) (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| ExhaleHeap@@23) o_3@@10 f_8@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@84) (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| ExhaleHeap@@23) o_3@@10 f_8@@9))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_12888) (ExhaleHeap@@24 T@PolymorphicMapType_12888) (Mask@@85 T@PolymorphicMapType_12909) (o_3@@11 T@Ref) (f_8@@10 T@Field_16278_12962) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@85) (=> (HasDirectPerm_16278_12962 Mask@@85 o_3@@11 f_8@@10) (= (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@27) o_3@@11 f_8@@10) (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| ExhaleHeap@@24) o_3@@11 f_8@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@85) (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| ExhaleHeap@@24) o_3@@11 f_8@@10))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_12888) (ExhaleHeap@@25 T@PolymorphicMapType_12888) (Mask@@86 T@PolymorphicMapType_12909) (o_3@@12 T@Ref) (f_8@@11 T@Field_16278_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@86) (=> (HasDirectPerm_16278_53 Mask@@86 o_3@@12 f_8@@11) (= (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@28) o_3@@12 f_8@@11) (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| ExhaleHeap@@25) o_3@@12 f_8@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@86) (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| ExhaleHeap@@25) o_3@@12 f_8@@11))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_12888) (ExhaleHeap@@26 T@PolymorphicMapType_12888) (Mask@@87 T@PolymorphicMapType_12909) (o_3@@13 T@Ref) (f_8@@12 T@Field_16311_16312) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@87) (=> (HasDirectPerm_16278_7741 Mask@@87 o_3@@13 f_8@@12) (= (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@29) o_3@@13 f_8@@12) (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| ExhaleHeap@@26) o_3@@13 f_8@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@87) (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| ExhaleHeap@@26) o_3@@13 f_8@@12))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_12888) (ExhaleHeap@@27 T@PolymorphicMapType_12888) (Mask@@88 T@PolymorphicMapType_12909) (o_3@@14 T@Ref) (f_8@@13 T@Field_16278_1219) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@88) (=> (HasDirectPerm_16278_2323 Mask@@88 o_3@@14 f_8@@13) (= (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@30) o_3@@14 f_8@@13) (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| ExhaleHeap@@27) o_3@@14 f_8@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@88) (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| ExhaleHeap@@27) o_3@@14 f_8@@13))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_12888) (ExhaleHeap@@28 T@PolymorphicMapType_12888) (Mask@@89 T@PolymorphicMapType_12909) (o_3@@15 T@Ref) (f_8@@14 T@Field_18470_18475) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@89) (=> (HasDirectPerm_7715_43544 Mask@@89 o_3@@15 f_8@@14) (= (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@31) o_3@@15 f_8@@14) (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| ExhaleHeap@@28) o_3@@15 f_8@@14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@89) (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| ExhaleHeap@@28) o_3@@15 f_8@@14))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_12888) (ExhaleHeap@@29 T@PolymorphicMapType_12888) (Mask@@90 T@PolymorphicMapType_12909) (o_3@@16 T@Ref) (f_8@@15 T@Field_7715_12962) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@90) (=> (HasDirectPerm_7715_12962 Mask@@90 o_3@@16 f_8@@15) (= (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@32) o_3@@16 f_8@@15) (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| ExhaleHeap@@29) o_3@@16 f_8@@15))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@90) (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| ExhaleHeap@@29) o_3@@16 f_8@@15))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_12888) (ExhaleHeap@@30 T@PolymorphicMapType_12888) (Mask@@91 T@PolymorphicMapType_12909) (o_3@@17 T@Ref) (f_8@@16 T@Field_7715_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@91) (=> (HasDirectPerm_7715_53 Mask@@91 o_3@@17 f_8@@16) (= (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@33) o_3@@17 f_8@@16) (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| ExhaleHeap@@30) o_3@@17 f_8@@16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@91) (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| ExhaleHeap@@30) o_3@@17 f_8@@16))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_12888) (ExhaleHeap@@31 T@PolymorphicMapType_12888) (Mask@@92 T@PolymorphicMapType_12909) (o_3@@18 T@Ref) (f_8@@17 T@Field_18457_18458) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@31 Mask@@92) (=> (HasDirectPerm_7715_7716 Mask@@92 o_3@@18 f_8@@17) (= (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@34) o_3@@18 f_8@@17) (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| ExhaleHeap@@31) o_3@@18 f_8@@17))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@31 Mask@@92) (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| ExhaleHeap@@31) o_3@@18 f_8@@17))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_12888) (ExhaleHeap@@32 T@PolymorphicMapType_12888) (Mask@@93 T@PolymorphicMapType_12909) (o_3@@19 T@Ref) (f_8@@18 T@Field_7715_2323) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@32 Mask@@93) (=> (HasDirectPerm_7715_2323 Mask@@93 o_3@@19 f_8@@18) (= (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@35) o_3@@19 f_8@@18) (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| ExhaleHeap@@32) o_3@@19 f_8@@18))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@32 Mask@@93) (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| ExhaleHeap@@32) o_3@@19 f_8@@18))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_12888) (ExhaleHeap@@33 T@PolymorphicMapType_12888) (Mask@@94 T@PolymorphicMapType_12909) (o_3@@20 T@Ref) (f_8@@19 T@Field_19408_19413) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@33 Mask@@94) (=> (HasDirectPerm_7740_42446 Mask@@94 o_3@@20 f_8@@19) (= (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@36) o_3@@20 f_8@@19) (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| ExhaleHeap@@33) o_3@@20 f_8@@19))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@33 Mask@@94) (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| ExhaleHeap@@33) o_3@@20 f_8@@19))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_12888) (ExhaleHeap@@34 T@PolymorphicMapType_12888) (Mask@@95 T@PolymorphicMapType_12909) (o_3@@21 T@Ref) (f_8@@20 T@Field_7740_12962) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@34 Mask@@95) (=> (HasDirectPerm_7740_12962 Mask@@95 o_3@@21 f_8@@20) (= (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@37) o_3@@21 f_8@@20) (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| ExhaleHeap@@34) o_3@@21 f_8@@20))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@34 Mask@@95) (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| ExhaleHeap@@34) o_3@@21 f_8@@20))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_12888) (ExhaleHeap@@35 T@PolymorphicMapType_12888) (Mask@@96 T@PolymorphicMapType_12909) (o_3@@22 T@Ref) (f_8@@21 T@Field_7740_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@35 Mask@@96) (=> (HasDirectPerm_7740_53 Mask@@96 o_3@@22 f_8@@21) (= (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@38) o_3@@22 f_8@@21) (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| ExhaleHeap@@35) o_3@@22 f_8@@21))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@35 Mask@@96) (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| ExhaleHeap@@35) o_3@@22 f_8@@21))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_12888) (ExhaleHeap@@36 T@PolymorphicMapType_12888) (Mask@@97 T@PolymorphicMapType_12909) (o_3@@23 T@Ref) (f_8@@22 T@Field_19395_19396) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@36 Mask@@97) (=> (HasDirectPerm_7740_7741 Mask@@97 o_3@@23 f_8@@22) (= (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@39) o_3@@23 f_8@@22) (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| ExhaleHeap@@36) o_3@@23 f_8@@22))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@36 Mask@@97) (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| ExhaleHeap@@36) o_3@@23 f_8@@22))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_12888) (ExhaleHeap@@37 T@PolymorphicMapType_12888) (Mask@@98 T@PolymorphicMapType_12909) (o_3@@24 T@Ref) (f_8@@23 T@Field_7740_2323) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@37 Mask@@98) (=> (HasDirectPerm_7740_2323 Mask@@98 o_3@@24 f_8@@23) (= (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@40) o_3@@24 f_8@@23) (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| ExhaleHeap@@37) o_3@@24 f_8@@23))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@37 Mask@@98) (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| ExhaleHeap@@37) o_3@@24 f_8@@23))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_12888) (ExhaleHeap@@38 T@PolymorphicMapType_12888) (Mask@@99 T@PolymorphicMapType_12909) (o_3@@25 T@Ref) (f_8@@24 T@Field_7712_16298) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@38 Mask@@99) (=> (HasDirectPerm_7712_41305 Mask@@99 o_3@@25 f_8@@24) (= (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@41) o_3@@25 f_8@@24) (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| ExhaleHeap@@38) o_3@@25 f_8@@24))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@38 Mask@@99) (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| ExhaleHeap@@38) o_3@@25 f_8@@24))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_12888) (ExhaleHeap@@39 T@PolymorphicMapType_12888) (Mask@@100 T@PolymorphicMapType_12909) (o_3@@26 T@Ref) (f_8@@25 T@Field_12961_12962) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@39 Mask@@100) (=> (HasDirectPerm_7712_12962 Mask@@100 o_3@@26 f_8@@25) (= (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@42) o_3@@26 f_8@@25) (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| ExhaleHeap@@39) o_3@@26 f_8@@25))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@39 Mask@@100) (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| ExhaleHeap@@39) o_3@@26 f_8@@25))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_12888) (ExhaleHeap@@40 T@PolymorphicMapType_12888) (Mask@@101 T@PolymorphicMapType_12909) (o_3@@27 T@Ref) (f_8@@26 T@Field_12948_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@40 Mask@@101) (=> (HasDirectPerm_7712_53 Mask@@101 o_3@@27 f_8@@26) (= (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@43) o_3@@27 f_8@@26) (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| ExhaleHeap@@40) o_3@@27 f_8@@26))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@40 Mask@@101) (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| ExhaleHeap@@40) o_3@@27 f_8@@26))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_12888) (ExhaleHeap@@41 T@PolymorphicMapType_12888) (Mask@@102 T@PolymorphicMapType_12909) (o_3@@28 T@Ref) (f_8@@27 T@Field_7712_7741) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@41 Mask@@102) (=> (HasDirectPerm_7712_7741 Mask@@102 o_3@@28 f_8@@27) (= (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@44) o_3@@28 f_8@@27) (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| ExhaleHeap@@41) o_3@@28 f_8@@27))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@41 Mask@@102) (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| ExhaleHeap@@41) o_3@@28 f_8@@27))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_12888) (ExhaleHeap@@42 T@PolymorphicMapType_12888) (Mask@@103 T@PolymorphicMapType_12909) (o_3@@29 T@Ref) (f_8@@28 T@Field_18410_2323) ) (!  (=> (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@42 Mask@@103) (=> (HasDirectPerm_7712_2323 Mask@@103 o_3@@29 f_8@@28) (= (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@45) o_3@@29 f_8@@28) (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| ExhaleHeap@@42) o_3@@29 f_8@@28))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@42 Mask@@103) (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| ExhaleHeap@@42) o_3@@29 f_8@@28))
)))
(assert (forall ((arg1@@14 T@Ref) (arg2@@14 Real) (arg3@@14 T@Ref) (arg4@@7 Real) ) (!  (not (IsPredicateField_7664_2018 (wand_2 arg1@@14 arg2@@14 arg3@@14 arg4@@7)))
 :qid |stdinbpl.256:15|
 :skolemid |38|
 :pattern ( (wand_2 arg1@@14 arg2@@14 arg3@@14 arg4@@7))
)))
(assert (forall ((arg1@@15 T@Ref) (arg2@@15 Real) (arg3@@15 T@Ref) (arg4@@8 Real) ) (!  (not (IsPredicateField_7677_7678 (|wand_2#ft| arg1@@15 arg2@@15 arg3@@15 arg4@@8)))
 :qid |stdinbpl.260:15|
 :skolemid |39|
 :pattern ( (|wand_2#ft| arg1@@15 arg2@@15 arg3@@15 arg4@@8))
)))
(assert (forall ((arg1@@16 T@Ref) (arg2@@16 Real) (arg3@@16 T@Ref) (arg4@@9 Real) ) (! (= (|wand_2#sm| arg1@@16 arg2@@16 arg3@@16 arg4@@9) (WandMaskField_7677 (|wand_2#ft| arg1@@16 arg2@@16 arg3@@16 arg4@@9)))
 :qid |stdinbpl.264:15|
 :skolemid |40|
 :pattern ( (WandMaskField_7677 (|wand_2#ft| arg1@@16 arg2@@16 arg3@@16 arg4@@9)))
)))
(assert (forall ((o_2@@89 T@Ref) (f_4@@89 T@Field_17223_17228) ) (! (= (select (|PolymorphicMapType_12909_7632_72483#PolymorphicMapType_12909| ZeroMask) o_2@@89 f_4@@89) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12909_7632_72483#PolymorphicMapType_12909| ZeroMask) o_2@@89 f_4@@89))
)))
(assert (forall ((o_2@@90 T@Ref) (f_4@@90 T@Field_17211_12962) ) (! (= (select (|PolymorphicMapType_12909_7632_12962#PolymorphicMapType_12909| ZeroMask) o_2@@90 f_4@@90) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12909_7632_12962#PolymorphicMapType_12909| ZeroMask) o_2@@90 f_4@@90))
)))
(assert (forall ((o_2@@91 T@Ref) (f_4@@91 T@Field_17211_53) ) (! (= (select (|PolymorphicMapType_12909_7632_53#PolymorphicMapType_12909| ZeroMask) o_2@@91 f_4@@91) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12909_7632_53#PolymorphicMapType_12909| ZeroMask) o_2@@91 f_4@@91))
)))
(assert (forall ((o_2@@92 T@Ref) (f_4@@92 T@Field_17238_17239) ) (! (= (select (|PolymorphicMapType_12909_7632_7741#PolymorphicMapType_12909| ZeroMask) o_2@@92 f_4@@92) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12909_7632_7741#PolymorphicMapType_12909| ZeroMask) o_2@@92 f_4@@92))
)))
(assert (forall ((o_2@@93 T@Ref) (f_4@@93 T@Field_17211_1749) ) (! (= (select (|PolymorphicMapType_12909_7632_1749#PolymorphicMapType_12909| ZeroMask) o_2@@93 f_4@@93) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12909_7632_1749#PolymorphicMapType_12909| ZeroMask) o_2@@93 f_4@@93))
)))
(assert (forall ((o_2@@94 T@Ref) (f_4@@94 T@Field_17781_17786) ) (! (= (select (|PolymorphicMapType_12909_7664_72069#PolymorphicMapType_12909| ZeroMask) o_2@@94 f_4@@94) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12909_7664_72069#PolymorphicMapType_12909| ZeroMask) o_2@@94 f_4@@94))
)))
(assert (forall ((o_2@@95 T@Ref) (f_4@@95 T@Field_17768_12962) ) (! (= (select (|PolymorphicMapType_12909_7664_12962#PolymorphicMapType_12909| ZeroMask) o_2@@95 f_4@@95) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12909_7664_12962#PolymorphicMapType_12909| ZeroMask) o_2@@95 f_4@@95))
)))
(assert (forall ((o_2@@96 T@Ref) (f_4@@96 T@Field_17768_53) ) (! (= (select (|PolymorphicMapType_12909_7664_53#PolymorphicMapType_12909| ZeroMask) o_2@@96 f_4@@96) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12909_7664_53#PolymorphicMapType_12909| ZeroMask) o_2@@96 f_4@@96))
)))
(assert (forall ((o_2@@97 T@Ref) (f_4@@97 T@Field_17797_17798) ) (! (= (select (|PolymorphicMapType_12909_7664_7741#PolymorphicMapType_12909| ZeroMask) o_2@@97 f_4@@97) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12909_7664_7741#PolymorphicMapType_12909| ZeroMask) o_2@@97 f_4@@97))
)))
(assert (forall ((o_2@@98 T@Ref) (f_4@@98 T@Field_17768_2018) ) (! (= (select (|PolymorphicMapType_12909_7664_2018#PolymorphicMapType_12909| ZeroMask) o_2@@98 f_4@@98) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12909_7664_2018#PolymorphicMapType_12909| ZeroMask) o_2@@98 f_4@@98))
)))
(assert (forall ((o_2@@99 T@Ref) (f_4@@99 T@Field_18470_18475) ) (! (= (select (|PolymorphicMapType_12909_7715_71655#PolymorphicMapType_12909| ZeroMask) o_2@@99 f_4@@99) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12909_7715_71655#PolymorphicMapType_12909| ZeroMask) o_2@@99 f_4@@99))
)))
(assert (forall ((o_2@@100 T@Ref) (f_4@@100 T@Field_7715_12962) ) (! (= (select (|PolymorphicMapType_12909_7715_12962#PolymorphicMapType_12909| ZeroMask) o_2@@100 f_4@@100) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12909_7715_12962#PolymorphicMapType_12909| ZeroMask) o_2@@100 f_4@@100))
)))
(assert (forall ((o_2@@101 T@Ref) (f_4@@101 T@Field_7715_53) ) (! (= (select (|PolymorphicMapType_12909_7715_53#PolymorphicMapType_12909| ZeroMask) o_2@@101 f_4@@101) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12909_7715_53#PolymorphicMapType_12909| ZeroMask) o_2@@101 f_4@@101))
)))
(assert (forall ((o_2@@102 T@Ref) (f_4@@102 T@Field_18457_18458) ) (! (= (select (|PolymorphicMapType_12909_7715_7716#PolymorphicMapType_12909| ZeroMask) o_2@@102 f_4@@102) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12909_7715_7716#PolymorphicMapType_12909| ZeroMask) o_2@@102 f_4@@102))
)))
(assert (forall ((o_2@@103 T@Ref) (f_4@@103 T@Field_7715_2323) ) (! (= (select (|PolymorphicMapType_12909_7715_2323#PolymorphicMapType_12909| ZeroMask) o_2@@103 f_4@@103) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12909_7715_2323#PolymorphicMapType_12909| ZeroMask) o_2@@103 f_4@@103))
)))
(assert (forall ((o_2@@104 T@Ref) (f_4@@104 T@Field_16293_16298) ) (! (= (select (|PolymorphicMapType_12909_7562_71244#PolymorphicMapType_12909| ZeroMask) o_2@@104 f_4@@104) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12909_7562_71244#PolymorphicMapType_12909| ZeroMask) o_2@@104 f_4@@104))
)))
(assert (forall ((o_2@@105 T@Ref) (f_4@@105 T@Field_16278_12962) ) (! (= (select (|PolymorphicMapType_12909_7562_12962#PolymorphicMapType_12909| ZeroMask) o_2@@105 f_4@@105) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12909_7562_12962#PolymorphicMapType_12909| ZeroMask) o_2@@105 f_4@@105))
)))
(assert (forall ((o_2@@106 T@Ref) (f_4@@106 T@Field_16278_53) ) (! (= (select (|PolymorphicMapType_12909_7562_53#PolymorphicMapType_12909| ZeroMask) o_2@@106 f_4@@106) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12909_7562_53#PolymorphicMapType_12909| ZeroMask) o_2@@106 f_4@@106))
)))
(assert (forall ((o_2@@107 T@Ref) (f_4@@107 T@Field_16311_16312) ) (! (= (select (|PolymorphicMapType_12909_7562_7741#PolymorphicMapType_12909| ZeroMask) o_2@@107 f_4@@107) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12909_7562_7741#PolymorphicMapType_12909| ZeroMask) o_2@@107 f_4@@107))
)))
(assert (forall ((o_2@@108 T@Ref) (f_4@@108 T@Field_16278_1219) ) (! (= (select (|PolymorphicMapType_12909_7562_1219#PolymorphicMapType_12909| ZeroMask) o_2@@108 f_4@@108) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12909_7562_1219#PolymorphicMapType_12909| ZeroMask) o_2@@108 f_4@@108))
)))
(assert (forall ((o_2@@109 T@Ref) (f_4@@109 T@Field_19408_19413) ) (! (= (select (|PolymorphicMapType_12909_7740_70830#PolymorphicMapType_12909| ZeroMask) o_2@@109 f_4@@109) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12909_7740_70830#PolymorphicMapType_12909| ZeroMask) o_2@@109 f_4@@109))
)))
(assert (forall ((o_2@@110 T@Ref) (f_4@@110 T@Field_7740_12962) ) (! (= (select (|PolymorphicMapType_12909_7740_12962#PolymorphicMapType_12909| ZeroMask) o_2@@110 f_4@@110) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12909_7740_12962#PolymorphicMapType_12909| ZeroMask) o_2@@110 f_4@@110))
)))
(assert (forall ((o_2@@111 T@Ref) (f_4@@111 T@Field_7740_53) ) (! (= (select (|PolymorphicMapType_12909_7740_53#PolymorphicMapType_12909| ZeroMask) o_2@@111 f_4@@111) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12909_7740_53#PolymorphicMapType_12909| ZeroMask) o_2@@111 f_4@@111))
)))
(assert (forall ((o_2@@112 T@Ref) (f_4@@112 T@Field_19395_19396) ) (! (= (select (|PolymorphicMapType_12909_7740_7741#PolymorphicMapType_12909| ZeroMask) o_2@@112 f_4@@112) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12909_7740_7741#PolymorphicMapType_12909| ZeroMask) o_2@@112 f_4@@112))
)))
(assert (forall ((o_2@@113 T@Ref) (f_4@@113 T@Field_7740_2323) ) (! (= (select (|PolymorphicMapType_12909_7740_2323#PolymorphicMapType_12909| ZeroMask) o_2@@113 f_4@@113) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12909_7740_2323#PolymorphicMapType_12909| ZeroMask) o_2@@113 f_4@@113))
)))
(assert (forall ((o_2@@114 T@Ref) (f_4@@114 T@Field_7712_16298) ) (! (= (select (|PolymorphicMapType_12909_7712_70419#PolymorphicMapType_12909| ZeroMask) o_2@@114 f_4@@114) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12909_7712_70419#PolymorphicMapType_12909| ZeroMask) o_2@@114 f_4@@114))
)))
(assert (forall ((o_2@@115 T@Ref) (f_4@@115 T@Field_12961_12962) ) (! (= (select (|PolymorphicMapType_12909_7712_12962#PolymorphicMapType_12909| ZeroMask) o_2@@115 f_4@@115) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12909_7712_12962#PolymorphicMapType_12909| ZeroMask) o_2@@115 f_4@@115))
)))
(assert (forall ((o_2@@116 T@Ref) (f_4@@116 T@Field_12948_53) ) (! (= (select (|PolymorphicMapType_12909_7712_53#PolymorphicMapType_12909| ZeroMask) o_2@@116 f_4@@116) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12909_7712_53#PolymorphicMapType_12909| ZeroMask) o_2@@116 f_4@@116))
)))
(assert (forall ((o_2@@117 T@Ref) (f_4@@117 T@Field_7712_7741) ) (! (= (select (|PolymorphicMapType_12909_7712_7741#PolymorphicMapType_12909| ZeroMask) o_2@@117 f_4@@117) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12909_7712_7741#PolymorphicMapType_12909| ZeroMask) o_2@@117 f_4@@117))
)))
(assert (forall ((o_2@@118 T@Ref) (f_4@@118 T@Field_18410_2323) ) (! (= (select (|PolymorphicMapType_12909_7712_2323#PolymorphicMapType_12909| ZeroMask) o_2@@118 f_4@@118) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12909_7712_2323#PolymorphicMapType_12909| ZeroMask) o_2@@118 f_4@@118))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_12888) (ExhaleHeap@@43 T@PolymorphicMapType_12888) (Mask@@104 T@PolymorphicMapType_12909) (pm_f_1@@11 T@Field_17797_17798) ) (!  (=> (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@43 Mask@@104) (=> (and (HasDirectPerm_17768_7741 Mask@@104 null pm_f_1@@11) (IsPredicateField_7677_7678 pm_f_1@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1 T@Ref) (f_8@@29 T@Field_18410_2323) ) (!  (=> (select (|PolymorphicMapType_13437_7712_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) null (PredicateMaskField_17768 pm_f_1@@11))) o2_1 f_8@@29) (= (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@46) o2_1 f_8@@29) (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1 f_8@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1 f_8@@29))
)) (forall ((o2_1@@0 T@Ref) (f_8@@30 T@Field_12948_53) ) (!  (=> (select (|PolymorphicMapType_13437_7712_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) null (PredicateMaskField_17768 pm_f_1@@11))) o2_1@@0 f_8@@30) (= (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@46) o2_1@@0 f_8@@30) (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@0 f_8@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@0 f_8@@30))
))) (forall ((o2_1@@1 T@Ref) (f_8@@31 T@Field_12961_12962) ) (!  (=> (select (|PolymorphicMapType_13437_7712_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) null (PredicateMaskField_17768 pm_f_1@@11))) o2_1@@1 f_8@@31) (= (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@46) o2_1@@1 f_8@@31) (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@1 f_8@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@1 f_8@@31))
))) (forall ((o2_1@@2 T@Ref) (f_8@@32 T@Field_7712_16298) ) (!  (=> (select (|PolymorphicMapType_13437_7712_49877#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) null (PredicateMaskField_17768 pm_f_1@@11))) o2_1@@2 f_8@@32) (= (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@46) o2_1@@2 f_8@@32) (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@2 f_8@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@2 f_8@@32))
))) (forall ((o2_1@@3 T@Ref) (f_8@@33 T@Field_7712_7741) ) (!  (=> (select (|PolymorphicMapType_13437_7712_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) null (PredicateMaskField_17768 pm_f_1@@11))) o2_1@@3 f_8@@33) (= (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@46) o2_1@@3 f_8@@33) (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@3 f_8@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@3 f_8@@33))
))) (forall ((o2_1@@4 T@Ref) (f_8@@34 T@Field_16278_1219) ) (!  (=> (select (|PolymorphicMapType_13437_16278_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) null (PredicateMaskField_17768 pm_f_1@@11))) o2_1@@4 f_8@@34) (= (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@46) o2_1@@4 f_8@@34) (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@4 f_8@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@4 f_8@@34))
))) (forall ((o2_1@@5 T@Ref) (f_8@@35 T@Field_16278_53) ) (!  (=> (select (|PolymorphicMapType_13437_16278_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) null (PredicateMaskField_17768 pm_f_1@@11))) o2_1@@5 f_8@@35) (= (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@46) o2_1@@5 f_8@@35) (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@5 f_8@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@5 f_8@@35))
))) (forall ((o2_1@@6 T@Ref) (f_8@@36 T@Field_16278_12962) ) (!  (=> (select (|PolymorphicMapType_13437_16278_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) null (PredicateMaskField_17768 pm_f_1@@11))) o2_1@@6 f_8@@36) (= (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@46) o2_1@@6 f_8@@36) (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@6 f_8@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@6 f_8@@36))
))) (forall ((o2_1@@7 T@Ref) (f_8@@37 T@Field_16293_16298) ) (!  (=> (select (|PolymorphicMapType_13437_16278_50925#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) null (PredicateMaskField_17768 pm_f_1@@11))) o2_1@@7 f_8@@37) (= (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@46) o2_1@@7 f_8@@37) (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@7 f_8@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@7 f_8@@37))
))) (forall ((o2_1@@8 T@Ref) (f_8@@38 T@Field_16311_16312) ) (!  (=> (select (|PolymorphicMapType_13437_16278_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) null (PredicateMaskField_17768 pm_f_1@@11))) o2_1@@8 f_8@@38) (= (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@46) o2_1@@8 f_8@@38) (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@8 f_8@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@8 f_8@@38))
))) (forall ((o2_1@@9 T@Ref) (f_8@@39 T@Field_17211_1749) ) (!  (=> (select (|PolymorphicMapType_13437_17211_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) null (PredicateMaskField_17768 pm_f_1@@11))) o2_1@@9 f_8@@39) (= (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@46) o2_1@@9 f_8@@39) (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@9 f_8@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@9 f_8@@39))
))) (forall ((o2_1@@10 T@Ref) (f_8@@40 T@Field_17211_53) ) (!  (=> (select (|PolymorphicMapType_13437_17211_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) null (PredicateMaskField_17768 pm_f_1@@11))) o2_1@@10 f_8@@40) (= (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@46) o2_1@@10 f_8@@40) (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@10 f_8@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@10 f_8@@40))
))) (forall ((o2_1@@11 T@Ref) (f_8@@41 T@Field_17211_12962) ) (!  (=> (select (|PolymorphicMapType_13437_17211_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) null (PredicateMaskField_17768 pm_f_1@@11))) o2_1@@11 f_8@@41) (= (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@46) o2_1@@11 f_8@@41) (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@11 f_8@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@11 f_8@@41))
))) (forall ((o2_1@@12 T@Ref) (f_8@@42 T@Field_17223_17228) ) (!  (=> (select (|PolymorphicMapType_13437_17211_51973#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) null (PredicateMaskField_17768 pm_f_1@@11))) o2_1@@12 f_8@@42) (= (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@46) o2_1@@12 f_8@@42) (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@12 f_8@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@12 f_8@@42))
))) (forall ((o2_1@@13 T@Ref) (f_8@@43 T@Field_17238_17239) ) (!  (=> (select (|PolymorphicMapType_13437_17211_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) null (PredicateMaskField_17768 pm_f_1@@11))) o2_1@@13 f_8@@43) (= (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@46) o2_1@@13 f_8@@43) (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@13 f_8@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@13 f_8@@43))
))) (forall ((o2_1@@14 T@Ref) (f_8@@44 T@Field_17768_2018) ) (!  (=> (select (|PolymorphicMapType_13437_17768_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) null (PredicateMaskField_17768 pm_f_1@@11))) o2_1@@14 f_8@@44) (= (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@46) o2_1@@14 f_8@@44) (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@14 f_8@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@14 f_8@@44))
))) (forall ((o2_1@@15 T@Ref) (f_8@@45 T@Field_17768_53) ) (!  (=> (select (|PolymorphicMapType_13437_17768_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) null (PredicateMaskField_17768 pm_f_1@@11))) o2_1@@15 f_8@@45) (= (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@46) o2_1@@15 f_8@@45) (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@15 f_8@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@15 f_8@@45))
))) (forall ((o2_1@@16 T@Ref) (f_8@@46 T@Field_17768_12962) ) (!  (=> (select (|PolymorphicMapType_13437_17768_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) null (PredicateMaskField_17768 pm_f_1@@11))) o2_1@@16 f_8@@46) (= (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@46) o2_1@@16 f_8@@46) (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@16 f_8@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@16 f_8@@46))
))) (forall ((o2_1@@17 T@Ref) (f_8@@47 T@Field_17781_17786) ) (!  (=> (select (|PolymorphicMapType_13437_17768_53021#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) null (PredicateMaskField_17768 pm_f_1@@11))) o2_1@@17 f_8@@47) (= (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) o2_1@@17 f_8@@47) (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@17 f_8@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@17 f_8@@47))
))) (forall ((o2_1@@18 T@Ref) (f_8@@48 T@Field_17797_17798) ) (!  (=> (select (|PolymorphicMapType_13437_17768_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) null (PredicateMaskField_17768 pm_f_1@@11))) o2_1@@18 f_8@@48) (= (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@46) o2_1@@18 f_8@@48) (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@18 f_8@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@18 f_8@@48))
))) (forall ((o2_1@@19 T@Ref) (f_8@@49 T@Field_7715_2323) ) (!  (=> (select (|PolymorphicMapType_13437_18457_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) null (PredicateMaskField_17768 pm_f_1@@11))) o2_1@@19 f_8@@49) (= (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@46) o2_1@@19 f_8@@49) (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@19 f_8@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@19 f_8@@49))
))) (forall ((o2_1@@20 T@Ref) (f_8@@50 T@Field_7715_53) ) (!  (=> (select (|PolymorphicMapType_13437_18457_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) null (PredicateMaskField_17768 pm_f_1@@11))) o2_1@@20 f_8@@50) (= (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@46) o2_1@@20 f_8@@50) (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@20 f_8@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@20 f_8@@50))
))) (forall ((o2_1@@21 T@Ref) (f_8@@51 T@Field_7715_12962) ) (!  (=> (select (|PolymorphicMapType_13437_18457_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) null (PredicateMaskField_17768 pm_f_1@@11))) o2_1@@21 f_8@@51) (= (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@46) o2_1@@21 f_8@@51) (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@21 f_8@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@21 f_8@@51))
))) (forall ((o2_1@@22 T@Ref) (f_8@@52 T@Field_18470_18475) ) (!  (=> (select (|PolymorphicMapType_13437_18457_54069#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) null (PredicateMaskField_17768 pm_f_1@@11))) o2_1@@22 f_8@@52) (= (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@46) o2_1@@22 f_8@@52) (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@22 f_8@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@22 f_8@@52))
))) (forall ((o2_1@@23 T@Ref) (f_8@@53 T@Field_18457_18458) ) (!  (=> (select (|PolymorphicMapType_13437_18457_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) null (PredicateMaskField_17768 pm_f_1@@11))) o2_1@@23 f_8@@53) (= (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@46) o2_1@@23 f_8@@53) (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@23 f_8@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@23 f_8@@53))
))) (forall ((o2_1@@24 T@Ref) (f_8@@54 T@Field_7740_2323) ) (!  (=> (select (|PolymorphicMapType_13437_19395_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) null (PredicateMaskField_17768 pm_f_1@@11))) o2_1@@24 f_8@@54) (= (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@46) o2_1@@24 f_8@@54) (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@24 f_8@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@24 f_8@@54))
))) (forall ((o2_1@@25 T@Ref) (f_8@@55 T@Field_7740_53) ) (!  (=> (select (|PolymorphicMapType_13437_19395_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) null (PredicateMaskField_17768 pm_f_1@@11))) o2_1@@25 f_8@@55) (= (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@46) o2_1@@25 f_8@@55) (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@25 f_8@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@25 f_8@@55))
))) (forall ((o2_1@@26 T@Ref) (f_8@@56 T@Field_7740_12962) ) (!  (=> (select (|PolymorphicMapType_13437_19395_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) null (PredicateMaskField_17768 pm_f_1@@11))) o2_1@@26 f_8@@56) (= (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@46) o2_1@@26 f_8@@56) (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@26 f_8@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@26 f_8@@56))
))) (forall ((o2_1@@27 T@Ref) (f_8@@57 T@Field_19408_19413) ) (!  (=> (select (|PolymorphicMapType_13437_19395_55117#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) null (PredicateMaskField_17768 pm_f_1@@11))) o2_1@@27 f_8@@57) (= (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@46) o2_1@@27 f_8@@57) (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@27 f_8@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@27 f_8@@57))
))) (forall ((o2_1@@28 T@Ref) (f_8@@58 T@Field_19395_19396) ) (!  (=> (select (|PolymorphicMapType_13437_19395_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@46) null (PredicateMaskField_17768 pm_f_1@@11))) o2_1@@28 f_8@@58) (= (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@46) o2_1@@28 f_8@@58) (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@28 f_8@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| ExhaleHeap@@43) o2_1@@28 f_8@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@43 Mask@@104) (IsPredicateField_7677_7678 pm_f_1@@11))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_12888) (ExhaleHeap@@44 T@PolymorphicMapType_12888) (Mask@@105 T@PolymorphicMapType_12909) (pm_f_1@@12 T@Field_17238_17239) ) (!  (=> (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@44 Mask@@105) (=> (and (HasDirectPerm_17211_7741 Mask@@105 null pm_f_1@@12) (IsPredicateField_7641_7642 pm_f_1@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@29 T@Ref) (f_8@@59 T@Field_18410_2323) ) (!  (=> (select (|PolymorphicMapType_13437_7712_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) null (PredicateMaskField_17211 pm_f_1@@12))) o2_1@@29 f_8@@59) (= (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@47) o2_1@@29 f_8@@59) (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@29 f_8@@59)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@29 f_8@@59))
)) (forall ((o2_1@@30 T@Ref) (f_8@@60 T@Field_12948_53) ) (!  (=> (select (|PolymorphicMapType_13437_7712_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) null (PredicateMaskField_17211 pm_f_1@@12))) o2_1@@30 f_8@@60) (= (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@47) o2_1@@30 f_8@@60) (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@30 f_8@@60)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@30 f_8@@60))
))) (forall ((o2_1@@31 T@Ref) (f_8@@61 T@Field_12961_12962) ) (!  (=> (select (|PolymorphicMapType_13437_7712_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) null (PredicateMaskField_17211 pm_f_1@@12))) o2_1@@31 f_8@@61) (= (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@47) o2_1@@31 f_8@@61) (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@31 f_8@@61)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@31 f_8@@61))
))) (forall ((o2_1@@32 T@Ref) (f_8@@62 T@Field_7712_16298) ) (!  (=> (select (|PolymorphicMapType_13437_7712_49877#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) null (PredicateMaskField_17211 pm_f_1@@12))) o2_1@@32 f_8@@62) (= (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@47) o2_1@@32 f_8@@62) (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@32 f_8@@62)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@32 f_8@@62))
))) (forall ((o2_1@@33 T@Ref) (f_8@@63 T@Field_7712_7741) ) (!  (=> (select (|PolymorphicMapType_13437_7712_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) null (PredicateMaskField_17211 pm_f_1@@12))) o2_1@@33 f_8@@63) (= (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@47) o2_1@@33 f_8@@63) (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@33 f_8@@63)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@33 f_8@@63))
))) (forall ((o2_1@@34 T@Ref) (f_8@@64 T@Field_16278_1219) ) (!  (=> (select (|PolymorphicMapType_13437_16278_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) null (PredicateMaskField_17211 pm_f_1@@12))) o2_1@@34 f_8@@64) (= (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@47) o2_1@@34 f_8@@64) (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@34 f_8@@64)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@34 f_8@@64))
))) (forall ((o2_1@@35 T@Ref) (f_8@@65 T@Field_16278_53) ) (!  (=> (select (|PolymorphicMapType_13437_16278_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) null (PredicateMaskField_17211 pm_f_1@@12))) o2_1@@35 f_8@@65) (= (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@47) o2_1@@35 f_8@@65) (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@35 f_8@@65)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@35 f_8@@65))
))) (forall ((o2_1@@36 T@Ref) (f_8@@66 T@Field_16278_12962) ) (!  (=> (select (|PolymorphicMapType_13437_16278_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) null (PredicateMaskField_17211 pm_f_1@@12))) o2_1@@36 f_8@@66) (= (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@47) o2_1@@36 f_8@@66) (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@36 f_8@@66)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@36 f_8@@66))
))) (forall ((o2_1@@37 T@Ref) (f_8@@67 T@Field_16293_16298) ) (!  (=> (select (|PolymorphicMapType_13437_16278_50925#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) null (PredicateMaskField_17211 pm_f_1@@12))) o2_1@@37 f_8@@67) (= (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@47) o2_1@@37 f_8@@67) (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@37 f_8@@67)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@37 f_8@@67))
))) (forall ((o2_1@@38 T@Ref) (f_8@@68 T@Field_16311_16312) ) (!  (=> (select (|PolymorphicMapType_13437_16278_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) null (PredicateMaskField_17211 pm_f_1@@12))) o2_1@@38 f_8@@68) (= (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@47) o2_1@@38 f_8@@68) (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@38 f_8@@68)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@38 f_8@@68))
))) (forall ((o2_1@@39 T@Ref) (f_8@@69 T@Field_17211_1749) ) (!  (=> (select (|PolymorphicMapType_13437_17211_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) null (PredicateMaskField_17211 pm_f_1@@12))) o2_1@@39 f_8@@69) (= (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@47) o2_1@@39 f_8@@69) (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@39 f_8@@69)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@39 f_8@@69))
))) (forall ((o2_1@@40 T@Ref) (f_8@@70 T@Field_17211_53) ) (!  (=> (select (|PolymorphicMapType_13437_17211_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) null (PredicateMaskField_17211 pm_f_1@@12))) o2_1@@40 f_8@@70) (= (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@47) o2_1@@40 f_8@@70) (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@40 f_8@@70)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@40 f_8@@70))
))) (forall ((o2_1@@41 T@Ref) (f_8@@71 T@Field_17211_12962) ) (!  (=> (select (|PolymorphicMapType_13437_17211_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) null (PredicateMaskField_17211 pm_f_1@@12))) o2_1@@41 f_8@@71) (= (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@47) o2_1@@41 f_8@@71) (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@41 f_8@@71)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@41 f_8@@71))
))) (forall ((o2_1@@42 T@Ref) (f_8@@72 T@Field_17223_17228) ) (!  (=> (select (|PolymorphicMapType_13437_17211_51973#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) null (PredicateMaskField_17211 pm_f_1@@12))) o2_1@@42 f_8@@72) (= (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) o2_1@@42 f_8@@72) (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@42 f_8@@72)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@42 f_8@@72))
))) (forall ((o2_1@@43 T@Ref) (f_8@@73 T@Field_17238_17239) ) (!  (=> (select (|PolymorphicMapType_13437_17211_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) null (PredicateMaskField_17211 pm_f_1@@12))) o2_1@@43 f_8@@73) (= (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@47) o2_1@@43 f_8@@73) (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@43 f_8@@73)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@43 f_8@@73))
))) (forall ((o2_1@@44 T@Ref) (f_8@@74 T@Field_17768_2018) ) (!  (=> (select (|PolymorphicMapType_13437_17768_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) null (PredicateMaskField_17211 pm_f_1@@12))) o2_1@@44 f_8@@74) (= (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@47) o2_1@@44 f_8@@74) (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@44 f_8@@74)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@44 f_8@@74))
))) (forall ((o2_1@@45 T@Ref) (f_8@@75 T@Field_17768_53) ) (!  (=> (select (|PolymorphicMapType_13437_17768_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) null (PredicateMaskField_17211 pm_f_1@@12))) o2_1@@45 f_8@@75) (= (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@47) o2_1@@45 f_8@@75) (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@45 f_8@@75)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@45 f_8@@75))
))) (forall ((o2_1@@46 T@Ref) (f_8@@76 T@Field_17768_12962) ) (!  (=> (select (|PolymorphicMapType_13437_17768_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) null (PredicateMaskField_17211 pm_f_1@@12))) o2_1@@46 f_8@@76) (= (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@47) o2_1@@46 f_8@@76) (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@46 f_8@@76)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@46 f_8@@76))
))) (forall ((o2_1@@47 T@Ref) (f_8@@77 T@Field_17781_17786) ) (!  (=> (select (|PolymorphicMapType_13437_17768_53021#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) null (PredicateMaskField_17211 pm_f_1@@12))) o2_1@@47 f_8@@77) (= (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@47) o2_1@@47 f_8@@77) (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@47 f_8@@77)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@47 f_8@@77))
))) (forall ((o2_1@@48 T@Ref) (f_8@@78 T@Field_17797_17798) ) (!  (=> (select (|PolymorphicMapType_13437_17768_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) null (PredicateMaskField_17211 pm_f_1@@12))) o2_1@@48 f_8@@78) (= (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@47) o2_1@@48 f_8@@78) (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@48 f_8@@78)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@48 f_8@@78))
))) (forall ((o2_1@@49 T@Ref) (f_8@@79 T@Field_7715_2323) ) (!  (=> (select (|PolymorphicMapType_13437_18457_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) null (PredicateMaskField_17211 pm_f_1@@12))) o2_1@@49 f_8@@79) (= (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@47) o2_1@@49 f_8@@79) (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@49 f_8@@79)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@49 f_8@@79))
))) (forall ((o2_1@@50 T@Ref) (f_8@@80 T@Field_7715_53) ) (!  (=> (select (|PolymorphicMapType_13437_18457_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) null (PredicateMaskField_17211 pm_f_1@@12))) o2_1@@50 f_8@@80) (= (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@47) o2_1@@50 f_8@@80) (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@50 f_8@@80)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@50 f_8@@80))
))) (forall ((o2_1@@51 T@Ref) (f_8@@81 T@Field_7715_12962) ) (!  (=> (select (|PolymorphicMapType_13437_18457_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) null (PredicateMaskField_17211 pm_f_1@@12))) o2_1@@51 f_8@@81) (= (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@47) o2_1@@51 f_8@@81) (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@51 f_8@@81)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@51 f_8@@81))
))) (forall ((o2_1@@52 T@Ref) (f_8@@82 T@Field_18470_18475) ) (!  (=> (select (|PolymorphicMapType_13437_18457_54069#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) null (PredicateMaskField_17211 pm_f_1@@12))) o2_1@@52 f_8@@82) (= (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@47) o2_1@@52 f_8@@82) (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@52 f_8@@82)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@52 f_8@@82))
))) (forall ((o2_1@@53 T@Ref) (f_8@@83 T@Field_18457_18458) ) (!  (=> (select (|PolymorphicMapType_13437_18457_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) null (PredicateMaskField_17211 pm_f_1@@12))) o2_1@@53 f_8@@83) (= (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@47) o2_1@@53 f_8@@83) (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@53 f_8@@83)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@53 f_8@@83))
))) (forall ((o2_1@@54 T@Ref) (f_8@@84 T@Field_7740_2323) ) (!  (=> (select (|PolymorphicMapType_13437_19395_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) null (PredicateMaskField_17211 pm_f_1@@12))) o2_1@@54 f_8@@84) (= (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@47) o2_1@@54 f_8@@84) (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@54 f_8@@84)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@54 f_8@@84))
))) (forall ((o2_1@@55 T@Ref) (f_8@@85 T@Field_7740_53) ) (!  (=> (select (|PolymorphicMapType_13437_19395_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) null (PredicateMaskField_17211 pm_f_1@@12))) o2_1@@55 f_8@@85) (= (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@47) o2_1@@55 f_8@@85) (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@55 f_8@@85)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@55 f_8@@85))
))) (forall ((o2_1@@56 T@Ref) (f_8@@86 T@Field_7740_12962) ) (!  (=> (select (|PolymorphicMapType_13437_19395_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) null (PredicateMaskField_17211 pm_f_1@@12))) o2_1@@56 f_8@@86) (= (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@47) o2_1@@56 f_8@@86) (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@56 f_8@@86)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@56 f_8@@86))
))) (forall ((o2_1@@57 T@Ref) (f_8@@87 T@Field_19408_19413) ) (!  (=> (select (|PolymorphicMapType_13437_19395_55117#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) null (PredicateMaskField_17211 pm_f_1@@12))) o2_1@@57 f_8@@87) (= (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@47) o2_1@@57 f_8@@87) (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@57 f_8@@87)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@57 f_8@@87))
))) (forall ((o2_1@@58 T@Ref) (f_8@@88 T@Field_19395_19396) ) (!  (=> (select (|PolymorphicMapType_13437_19395_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@47) null (PredicateMaskField_17211 pm_f_1@@12))) o2_1@@58 f_8@@88) (= (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@47) o2_1@@58 f_8@@88) (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@58 f_8@@88)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| ExhaleHeap@@44) o2_1@@58 f_8@@88))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@44 Mask@@105) (IsPredicateField_7641_7642 pm_f_1@@12))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_12888) (ExhaleHeap@@45 T@PolymorphicMapType_12888) (Mask@@106 T@PolymorphicMapType_12909) (pm_f_1@@13 T@Field_16311_16312) ) (!  (=> (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@45 Mask@@106) (=> (and (HasDirectPerm_16278_7741 Mask@@106 null pm_f_1@@13) (IsPredicateField_7579_7580 pm_f_1@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@59 T@Ref) (f_8@@89 T@Field_18410_2323) ) (!  (=> (select (|PolymorphicMapType_13437_7712_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) null (PredicateMaskField_16278 pm_f_1@@13))) o2_1@@59 f_8@@89) (= (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@48) o2_1@@59 f_8@@89) (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@59 f_8@@89)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@59 f_8@@89))
)) (forall ((o2_1@@60 T@Ref) (f_8@@90 T@Field_12948_53) ) (!  (=> (select (|PolymorphicMapType_13437_7712_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) null (PredicateMaskField_16278 pm_f_1@@13))) o2_1@@60 f_8@@90) (= (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@48) o2_1@@60 f_8@@90) (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@60 f_8@@90)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@60 f_8@@90))
))) (forall ((o2_1@@61 T@Ref) (f_8@@91 T@Field_12961_12962) ) (!  (=> (select (|PolymorphicMapType_13437_7712_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) null (PredicateMaskField_16278 pm_f_1@@13))) o2_1@@61 f_8@@91) (= (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@48) o2_1@@61 f_8@@91) (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@61 f_8@@91)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@61 f_8@@91))
))) (forall ((o2_1@@62 T@Ref) (f_8@@92 T@Field_7712_16298) ) (!  (=> (select (|PolymorphicMapType_13437_7712_49877#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) null (PredicateMaskField_16278 pm_f_1@@13))) o2_1@@62 f_8@@92) (= (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@48) o2_1@@62 f_8@@92) (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@62 f_8@@92)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@62 f_8@@92))
))) (forall ((o2_1@@63 T@Ref) (f_8@@93 T@Field_7712_7741) ) (!  (=> (select (|PolymorphicMapType_13437_7712_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) null (PredicateMaskField_16278 pm_f_1@@13))) o2_1@@63 f_8@@93) (= (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@48) o2_1@@63 f_8@@93) (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@63 f_8@@93)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@63 f_8@@93))
))) (forall ((o2_1@@64 T@Ref) (f_8@@94 T@Field_16278_1219) ) (!  (=> (select (|PolymorphicMapType_13437_16278_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) null (PredicateMaskField_16278 pm_f_1@@13))) o2_1@@64 f_8@@94) (= (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@48) o2_1@@64 f_8@@94) (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@64 f_8@@94)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@64 f_8@@94))
))) (forall ((o2_1@@65 T@Ref) (f_8@@95 T@Field_16278_53) ) (!  (=> (select (|PolymorphicMapType_13437_16278_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) null (PredicateMaskField_16278 pm_f_1@@13))) o2_1@@65 f_8@@95) (= (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@48) o2_1@@65 f_8@@95) (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@65 f_8@@95)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@65 f_8@@95))
))) (forall ((o2_1@@66 T@Ref) (f_8@@96 T@Field_16278_12962) ) (!  (=> (select (|PolymorphicMapType_13437_16278_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) null (PredicateMaskField_16278 pm_f_1@@13))) o2_1@@66 f_8@@96) (= (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@48) o2_1@@66 f_8@@96) (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@66 f_8@@96)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@66 f_8@@96))
))) (forall ((o2_1@@67 T@Ref) (f_8@@97 T@Field_16293_16298) ) (!  (=> (select (|PolymorphicMapType_13437_16278_50925#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) null (PredicateMaskField_16278 pm_f_1@@13))) o2_1@@67 f_8@@97) (= (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) o2_1@@67 f_8@@97) (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@67 f_8@@97)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@67 f_8@@97))
))) (forall ((o2_1@@68 T@Ref) (f_8@@98 T@Field_16311_16312) ) (!  (=> (select (|PolymorphicMapType_13437_16278_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) null (PredicateMaskField_16278 pm_f_1@@13))) o2_1@@68 f_8@@98) (= (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@48) o2_1@@68 f_8@@98) (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@68 f_8@@98)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@68 f_8@@98))
))) (forall ((o2_1@@69 T@Ref) (f_8@@99 T@Field_17211_1749) ) (!  (=> (select (|PolymorphicMapType_13437_17211_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) null (PredicateMaskField_16278 pm_f_1@@13))) o2_1@@69 f_8@@99) (= (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@48) o2_1@@69 f_8@@99) (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@69 f_8@@99)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@69 f_8@@99))
))) (forall ((o2_1@@70 T@Ref) (f_8@@100 T@Field_17211_53) ) (!  (=> (select (|PolymorphicMapType_13437_17211_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) null (PredicateMaskField_16278 pm_f_1@@13))) o2_1@@70 f_8@@100) (= (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@48) o2_1@@70 f_8@@100) (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@70 f_8@@100)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@70 f_8@@100))
))) (forall ((o2_1@@71 T@Ref) (f_8@@101 T@Field_17211_12962) ) (!  (=> (select (|PolymorphicMapType_13437_17211_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) null (PredicateMaskField_16278 pm_f_1@@13))) o2_1@@71 f_8@@101) (= (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@48) o2_1@@71 f_8@@101) (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@71 f_8@@101)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@71 f_8@@101))
))) (forall ((o2_1@@72 T@Ref) (f_8@@102 T@Field_17223_17228) ) (!  (=> (select (|PolymorphicMapType_13437_17211_51973#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) null (PredicateMaskField_16278 pm_f_1@@13))) o2_1@@72 f_8@@102) (= (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@48) o2_1@@72 f_8@@102) (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@72 f_8@@102)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@72 f_8@@102))
))) (forall ((o2_1@@73 T@Ref) (f_8@@103 T@Field_17238_17239) ) (!  (=> (select (|PolymorphicMapType_13437_17211_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) null (PredicateMaskField_16278 pm_f_1@@13))) o2_1@@73 f_8@@103) (= (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@48) o2_1@@73 f_8@@103) (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@73 f_8@@103)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@73 f_8@@103))
))) (forall ((o2_1@@74 T@Ref) (f_8@@104 T@Field_17768_2018) ) (!  (=> (select (|PolymorphicMapType_13437_17768_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) null (PredicateMaskField_16278 pm_f_1@@13))) o2_1@@74 f_8@@104) (= (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@48) o2_1@@74 f_8@@104) (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@74 f_8@@104)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@74 f_8@@104))
))) (forall ((o2_1@@75 T@Ref) (f_8@@105 T@Field_17768_53) ) (!  (=> (select (|PolymorphicMapType_13437_17768_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) null (PredicateMaskField_16278 pm_f_1@@13))) o2_1@@75 f_8@@105) (= (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@48) o2_1@@75 f_8@@105) (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@75 f_8@@105)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@75 f_8@@105))
))) (forall ((o2_1@@76 T@Ref) (f_8@@106 T@Field_17768_12962) ) (!  (=> (select (|PolymorphicMapType_13437_17768_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) null (PredicateMaskField_16278 pm_f_1@@13))) o2_1@@76 f_8@@106) (= (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@48) o2_1@@76 f_8@@106) (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@76 f_8@@106)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@76 f_8@@106))
))) (forall ((o2_1@@77 T@Ref) (f_8@@107 T@Field_17781_17786) ) (!  (=> (select (|PolymorphicMapType_13437_17768_53021#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) null (PredicateMaskField_16278 pm_f_1@@13))) o2_1@@77 f_8@@107) (= (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@48) o2_1@@77 f_8@@107) (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@77 f_8@@107)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@77 f_8@@107))
))) (forall ((o2_1@@78 T@Ref) (f_8@@108 T@Field_17797_17798) ) (!  (=> (select (|PolymorphicMapType_13437_17768_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) null (PredicateMaskField_16278 pm_f_1@@13))) o2_1@@78 f_8@@108) (= (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@48) o2_1@@78 f_8@@108) (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@78 f_8@@108)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@78 f_8@@108))
))) (forall ((o2_1@@79 T@Ref) (f_8@@109 T@Field_7715_2323) ) (!  (=> (select (|PolymorphicMapType_13437_18457_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) null (PredicateMaskField_16278 pm_f_1@@13))) o2_1@@79 f_8@@109) (= (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@48) o2_1@@79 f_8@@109) (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@79 f_8@@109)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@79 f_8@@109))
))) (forall ((o2_1@@80 T@Ref) (f_8@@110 T@Field_7715_53) ) (!  (=> (select (|PolymorphicMapType_13437_18457_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) null (PredicateMaskField_16278 pm_f_1@@13))) o2_1@@80 f_8@@110) (= (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@48) o2_1@@80 f_8@@110) (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@80 f_8@@110)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@80 f_8@@110))
))) (forall ((o2_1@@81 T@Ref) (f_8@@111 T@Field_7715_12962) ) (!  (=> (select (|PolymorphicMapType_13437_18457_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) null (PredicateMaskField_16278 pm_f_1@@13))) o2_1@@81 f_8@@111) (= (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@48) o2_1@@81 f_8@@111) (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@81 f_8@@111)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@81 f_8@@111))
))) (forall ((o2_1@@82 T@Ref) (f_8@@112 T@Field_18470_18475) ) (!  (=> (select (|PolymorphicMapType_13437_18457_54069#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) null (PredicateMaskField_16278 pm_f_1@@13))) o2_1@@82 f_8@@112) (= (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@48) o2_1@@82 f_8@@112) (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@82 f_8@@112)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@82 f_8@@112))
))) (forall ((o2_1@@83 T@Ref) (f_8@@113 T@Field_18457_18458) ) (!  (=> (select (|PolymorphicMapType_13437_18457_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) null (PredicateMaskField_16278 pm_f_1@@13))) o2_1@@83 f_8@@113) (= (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@48) o2_1@@83 f_8@@113) (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@83 f_8@@113)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@83 f_8@@113))
))) (forall ((o2_1@@84 T@Ref) (f_8@@114 T@Field_7740_2323) ) (!  (=> (select (|PolymorphicMapType_13437_19395_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) null (PredicateMaskField_16278 pm_f_1@@13))) o2_1@@84 f_8@@114) (= (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@48) o2_1@@84 f_8@@114) (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@84 f_8@@114)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@84 f_8@@114))
))) (forall ((o2_1@@85 T@Ref) (f_8@@115 T@Field_7740_53) ) (!  (=> (select (|PolymorphicMapType_13437_19395_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) null (PredicateMaskField_16278 pm_f_1@@13))) o2_1@@85 f_8@@115) (= (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@48) o2_1@@85 f_8@@115) (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@85 f_8@@115)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@85 f_8@@115))
))) (forall ((o2_1@@86 T@Ref) (f_8@@116 T@Field_7740_12962) ) (!  (=> (select (|PolymorphicMapType_13437_19395_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) null (PredicateMaskField_16278 pm_f_1@@13))) o2_1@@86 f_8@@116) (= (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@48) o2_1@@86 f_8@@116) (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@86 f_8@@116)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@86 f_8@@116))
))) (forall ((o2_1@@87 T@Ref) (f_8@@117 T@Field_19408_19413) ) (!  (=> (select (|PolymorphicMapType_13437_19395_55117#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) null (PredicateMaskField_16278 pm_f_1@@13))) o2_1@@87 f_8@@117) (= (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@48) o2_1@@87 f_8@@117) (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@87 f_8@@117)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@87 f_8@@117))
))) (forall ((o2_1@@88 T@Ref) (f_8@@118 T@Field_19395_19396) ) (!  (=> (select (|PolymorphicMapType_13437_19395_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@48) null (PredicateMaskField_16278 pm_f_1@@13))) o2_1@@88 f_8@@118) (= (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@48) o2_1@@88 f_8@@118) (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@88 f_8@@118)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| ExhaleHeap@@45) o2_1@@88 f_8@@118))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@45 Mask@@106) (IsPredicateField_7579_7580 pm_f_1@@13))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_12888) (ExhaleHeap@@46 T@PolymorphicMapType_12888) (Mask@@107 T@PolymorphicMapType_12909) (pm_f_1@@14 T@Field_18457_18458) ) (!  (=> (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@46 Mask@@107) (=> (and (HasDirectPerm_7715_7716 Mask@@107 null pm_f_1@@14) (IsPredicateField_7715_7716 pm_f_1@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@89 T@Ref) (f_8@@119 T@Field_18410_2323) ) (!  (=> (select (|PolymorphicMapType_13437_7712_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) null (PredicateMaskField_7715 pm_f_1@@14))) o2_1@@89 f_8@@119) (= (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@49) o2_1@@89 f_8@@119) (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@89 f_8@@119)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@89 f_8@@119))
)) (forall ((o2_1@@90 T@Ref) (f_8@@120 T@Field_12948_53) ) (!  (=> (select (|PolymorphicMapType_13437_7712_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) null (PredicateMaskField_7715 pm_f_1@@14))) o2_1@@90 f_8@@120) (= (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@49) o2_1@@90 f_8@@120) (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@90 f_8@@120)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@90 f_8@@120))
))) (forall ((o2_1@@91 T@Ref) (f_8@@121 T@Field_12961_12962) ) (!  (=> (select (|PolymorphicMapType_13437_7712_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) null (PredicateMaskField_7715 pm_f_1@@14))) o2_1@@91 f_8@@121) (= (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@49) o2_1@@91 f_8@@121) (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@91 f_8@@121)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@91 f_8@@121))
))) (forall ((o2_1@@92 T@Ref) (f_8@@122 T@Field_7712_16298) ) (!  (=> (select (|PolymorphicMapType_13437_7712_49877#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) null (PredicateMaskField_7715 pm_f_1@@14))) o2_1@@92 f_8@@122) (= (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@49) o2_1@@92 f_8@@122) (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@92 f_8@@122)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@92 f_8@@122))
))) (forall ((o2_1@@93 T@Ref) (f_8@@123 T@Field_7712_7741) ) (!  (=> (select (|PolymorphicMapType_13437_7712_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) null (PredicateMaskField_7715 pm_f_1@@14))) o2_1@@93 f_8@@123) (= (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@49) o2_1@@93 f_8@@123) (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@93 f_8@@123)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@93 f_8@@123))
))) (forall ((o2_1@@94 T@Ref) (f_8@@124 T@Field_16278_1219) ) (!  (=> (select (|PolymorphicMapType_13437_16278_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) null (PredicateMaskField_7715 pm_f_1@@14))) o2_1@@94 f_8@@124) (= (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@49) o2_1@@94 f_8@@124) (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@94 f_8@@124)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@94 f_8@@124))
))) (forall ((o2_1@@95 T@Ref) (f_8@@125 T@Field_16278_53) ) (!  (=> (select (|PolymorphicMapType_13437_16278_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) null (PredicateMaskField_7715 pm_f_1@@14))) o2_1@@95 f_8@@125) (= (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@49) o2_1@@95 f_8@@125) (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@95 f_8@@125)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@95 f_8@@125))
))) (forall ((o2_1@@96 T@Ref) (f_8@@126 T@Field_16278_12962) ) (!  (=> (select (|PolymorphicMapType_13437_16278_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) null (PredicateMaskField_7715 pm_f_1@@14))) o2_1@@96 f_8@@126) (= (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@49) o2_1@@96 f_8@@126) (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@96 f_8@@126)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@96 f_8@@126))
))) (forall ((o2_1@@97 T@Ref) (f_8@@127 T@Field_16293_16298) ) (!  (=> (select (|PolymorphicMapType_13437_16278_50925#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) null (PredicateMaskField_7715 pm_f_1@@14))) o2_1@@97 f_8@@127) (= (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@49) o2_1@@97 f_8@@127) (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@97 f_8@@127)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@97 f_8@@127))
))) (forall ((o2_1@@98 T@Ref) (f_8@@128 T@Field_16311_16312) ) (!  (=> (select (|PolymorphicMapType_13437_16278_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) null (PredicateMaskField_7715 pm_f_1@@14))) o2_1@@98 f_8@@128) (= (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@49) o2_1@@98 f_8@@128) (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@98 f_8@@128)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@98 f_8@@128))
))) (forall ((o2_1@@99 T@Ref) (f_8@@129 T@Field_17211_1749) ) (!  (=> (select (|PolymorphicMapType_13437_17211_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) null (PredicateMaskField_7715 pm_f_1@@14))) o2_1@@99 f_8@@129) (= (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@49) o2_1@@99 f_8@@129) (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@99 f_8@@129)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@99 f_8@@129))
))) (forall ((o2_1@@100 T@Ref) (f_8@@130 T@Field_17211_53) ) (!  (=> (select (|PolymorphicMapType_13437_17211_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) null (PredicateMaskField_7715 pm_f_1@@14))) o2_1@@100 f_8@@130) (= (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@49) o2_1@@100 f_8@@130) (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@100 f_8@@130)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@100 f_8@@130))
))) (forall ((o2_1@@101 T@Ref) (f_8@@131 T@Field_17211_12962) ) (!  (=> (select (|PolymorphicMapType_13437_17211_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) null (PredicateMaskField_7715 pm_f_1@@14))) o2_1@@101 f_8@@131) (= (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@49) o2_1@@101 f_8@@131) (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@101 f_8@@131)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@101 f_8@@131))
))) (forall ((o2_1@@102 T@Ref) (f_8@@132 T@Field_17223_17228) ) (!  (=> (select (|PolymorphicMapType_13437_17211_51973#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) null (PredicateMaskField_7715 pm_f_1@@14))) o2_1@@102 f_8@@132) (= (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@49) o2_1@@102 f_8@@132) (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@102 f_8@@132)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@102 f_8@@132))
))) (forall ((o2_1@@103 T@Ref) (f_8@@133 T@Field_17238_17239) ) (!  (=> (select (|PolymorphicMapType_13437_17211_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) null (PredicateMaskField_7715 pm_f_1@@14))) o2_1@@103 f_8@@133) (= (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@49) o2_1@@103 f_8@@133) (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@103 f_8@@133)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@103 f_8@@133))
))) (forall ((o2_1@@104 T@Ref) (f_8@@134 T@Field_17768_2018) ) (!  (=> (select (|PolymorphicMapType_13437_17768_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) null (PredicateMaskField_7715 pm_f_1@@14))) o2_1@@104 f_8@@134) (= (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@49) o2_1@@104 f_8@@134) (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@104 f_8@@134)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@104 f_8@@134))
))) (forall ((o2_1@@105 T@Ref) (f_8@@135 T@Field_17768_53) ) (!  (=> (select (|PolymorphicMapType_13437_17768_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) null (PredicateMaskField_7715 pm_f_1@@14))) o2_1@@105 f_8@@135) (= (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@49) o2_1@@105 f_8@@135) (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@105 f_8@@135)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@105 f_8@@135))
))) (forall ((o2_1@@106 T@Ref) (f_8@@136 T@Field_17768_12962) ) (!  (=> (select (|PolymorphicMapType_13437_17768_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) null (PredicateMaskField_7715 pm_f_1@@14))) o2_1@@106 f_8@@136) (= (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@49) o2_1@@106 f_8@@136) (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@106 f_8@@136)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@106 f_8@@136))
))) (forall ((o2_1@@107 T@Ref) (f_8@@137 T@Field_17781_17786) ) (!  (=> (select (|PolymorphicMapType_13437_17768_53021#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) null (PredicateMaskField_7715 pm_f_1@@14))) o2_1@@107 f_8@@137) (= (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@49) o2_1@@107 f_8@@137) (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@107 f_8@@137)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@107 f_8@@137))
))) (forall ((o2_1@@108 T@Ref) (f_8@@138 T@Field_17797_17798) ) (!  (=> (select (|PolymorphicMapType_13437_17768_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) null (PredicateMaskField_7715 pm_f_1@@14))) o2_1@@108 f_8@@138) (= (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@49) o2_1@@108 f_8@@138) (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@108 f_8@@138)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@108 f_8@@138))
))) (forall ((o2_1@@109 T@Ref) (f_8@@139 T@Field_7715_2323) ) (!  (=> (select (|PolymorphicMapType_13437_18457_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) null (PredicateMaskField_7715 pm_f_1@@14))) o2_1@@109 f_8@@139) (= (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@49) o2_1@@109 f_8@@139) (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@109 f_8@@139)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@109 f_8@@139))
))) (forall ((o2_1@@110 T@Ref) (f_8@@140 T@Field_7715_53) ) (!  (=> (select (|PolymorphicMapType_13437_18457_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) null (PredicateMaskField_7715 pm_f_1@@14))) o2_1@@110 f_8@@140) (= (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@49) o2_1@@110 f_8@@140) (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@110 f_8@@140)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@110 f_8@@140))
))) (forall ((o2_1@@111 T@Ref) (f_8@@141 T@Field_7715_12962) ) (!  (=> (select (|PolymorphicMapType_13437_18457_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) null (PredicateMaskField_7715 pm_f_1@@14))) o2_1@@111 f_8@@141) (= (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@49) o2_1@@111 f_8@@141) (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@111 f_8@@141)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@111 f_8@@141))
))) (forall ((o2_1@@112 T@Ref) (f_8@@142 T@Field_18470_18475) ) (!  (=> (select (|PolymorphicMapType_13437_18457_54069#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) null (PredicateMaskField_7715 pm_f_1@@14))) o2_1@@112 f_8@@142) (= (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) o2_1@@112 f_8@@142) (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@112 f_8@@142)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@112 f_8@@142))
))) (forall ((o2_1@@113 T@Ref) (f_8@@143 T@Field_18457_18458) ) (!  (=> (select (|PolymorphicMapType_13437_18457_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) null (PredicateMaskField_7715 pm_f_1@@14))) o2_1@@113 f_8@@143) (= (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@49) o2_1@@113 f_8@@143) (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@113 f_8@@143)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@113 f_8@@143))
))) (forall ((o2_1@@114 T@Ref) (f_8@@144 T@Field_7740_2323) ) (!  (=> (select (|PolymorphicMapType_13437_19395_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) null (PredicateMaskField_7715 pm_f_1@@14))) o2_1@@114 f_8@@144) (= (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@49) o2_1@@114 f_8@@144) (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@114 f_8@@144)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@114 f_8@@144))
))) (forall ((o2_1@@115 T@Ref) (f_8@@145 T@Field_7740_53) ) (!  (=> (select (|PolymorphicMapType_13437_19395_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) null (PredicateMaskField_7715 pm_f_1@@14))) o2_1@@115 f_8@@145) (= (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@49) o2_1@@115 f_8@@145) (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@115 f_8@@145)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@115 f_8@@145))
))) (forall ((o2_1@@116 T@Ref) (f_8@@146 T@Field_7740_12962) ) (!  (=> (select (|PolymorphicMapType_13437_19395_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) null (PredicateMaskField_7715 pm_f_1@@14))) o2_1@@116 f_8@@146) (= (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@49) o2_1@@116 f_8@@146) (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@116 f_8@@146)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@116 f_8@@146))
))) (forall ((o2_1@@117 T@Ref) (f_8@@147 T@Field_19408_19413) ) (!  (=> (select (|PolymorphicMapType_13437_19395_55117#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) null (PredicateMaskField_7715 pm_f_1@@14))) o2_1@@117 f_8@@147) (= (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@49) o2_1@@117 f_8@@147) (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@117 f_8@@147)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@117 f_8@@147))
))) (forall ((o2_1@@118 T@Ref) (f_8@@148 T@Field_19395_19396) ) (!  (=> (select (|PolymorphicMapType_13437_19395_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@49) null (PredicateMaskField_7715 pm_f_1@@14))) o2_1@@118 f_8@@148) (= (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@49) o2_1@@118 f_8@@148) (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@118 f_8@@148)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| ExhaleHeap@@46) o2_1@@118 f_8@@148))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@46 Mask@@107) (IsPredicateField_7715_7716 pm_f_1@@14))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_12888) (ExhaleHeap@@47 T@PolymorphicMapType_12888) (Mask@@108 T@PolymorphicMapType_12909) (pm_f_1@@15 T@Field_19395_19396) ) (!  (=> (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@47 Mask@@108) (=> (and (HasDirectPerm_7740_7741 Mask@@108 null pm_f_1@@15) (IsPredicateField_7740_7741 pm_f_1@@15)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@119 T@Ref) (f_8@@149 T@Field_18410_2323) ) (!  (=> (select (|PolymorphicMapType_13437_7712_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) null (PredicateMaskField_7740 pm_f_1@@15))) o2_1@@119 f_8@@149) (= (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@50) o2_1@@119 f_8@@149) (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@119 f_8@@149)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@119 f_8@@149))
)) (forall ((o2_1@@120 T@Ref) (f_8@@150 T@Field_12948_53) ) (!  (=> (select (|PolymorphicMapType_13437_7712_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) null (PredicateMaskField_7740 pm_f_1@@15))) o2_1@@120 f_8@@150) (= (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@50) o2_1@@120 f_8@@150) (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@120 f_8@@150)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@120 f_8@@150))
))) (forall ((o2_1@@121 T@Ref) (f_8@@151 T@Field_12961_12962) ) (!  (=> (select (|PolymorphicMapType_13437_7712_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) null (PredicateMaskField_7740 pm_f_1@@15))) o2_1@@121 f_8@@151) (= (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@50) o2_1@@121 f_8@@151) (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@121 f_8@@151)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@121 f_8@@151))
))) (forall ((o2_1@@122 T@Ref) (f_8@@152 T@Field_7712_16298) ) (!  (=> (select (|PolymorphicMapType_13437_7712_49877#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) null (PredicateMaskField_7740 pm_f_1@@15))) o2_1@@122 f_8@@152) (= (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@50) o2_1@@122 f_8@@152) (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@122 f_8@@152)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@122 f_8@@152))
))) (forall ((o2_1@@123 T@Ref) (f_8@@153 T@Field_7712_7741) ) (!  (=> (select (|PolymorphicMapType_13437_7712_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) null (PredicateMaskField_7740 pm_f_1@@15))) o2_1@@123 f_8@@153) (= (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@50) o2_1@@123 f_8@@153) (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@123 f_8@@153)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@123 f_8@@153))
))) (forall ((o2_1@@124 T@Ref) (f_8@@154 T@Field_16278_1219) ) (!  (=> (select (|PolymorphicMapType_13437_16278_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) null (PredicateMaskField_7740 pm_f_1@@15))) o2_1@@124 f_8@@154) (= (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@50) o2_1@@124 f_8@@154) (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@124 f_8@@154)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@124 f_8@@154))
))) (forall ((o2_1@@125 T@Ref) (f_8@@155 T@Field_16278_53) ) (!  (=> (select (|PolymorphicMapType_13437_16278_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) null (PredicateMaskField_7740 pm_f_1@@15))) o2_1@@125 f_8@@155) (= (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@50) o2_1@@125 f_8@@155) (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@125 f_8@@155)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@125 f_8@@155))
))) (forall ((o2_1@@126 T@Ref) (f_8@@156 T@Field_16278_12962) ) (!  (=> (select (|PolymorphicMapType_13437_16278_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) null (PredicateMaskField_7740 pm_f_1@@15))) o2_1@@126 f_8@@156) (= (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@50) o2_1@@126 f_8@@156) (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@126 f_8@@156)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@126 f_8@@156))
))) (forall ((o2_1@@127 T@Ref) (f_8@@157 T@Field_16293_16298) ) (!  (=> (select (|PolymorphicMapType_13437_16278_50925#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) null (PredicateMaskField_7740 pm_f_1@@15))) o2_1@@127 f_8@@157) (= (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@50) o2_1@@127 f_8@@157) (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@127 f_8@@157)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@127 f_8@@157))
))) (forall ((o2_1@@128 T@Ref) (f_8@@158 T@Field_16311_16312) ) (!  (=> (select (|PolymorphicMapType_13437_16278_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) null (PredicateMaskField_7740 pm_f_1@@15))) o2_1@@128 f_8@@158) (= (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@50) o2_1@@128 f_8@@158) (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@128 f_8@@158)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@128 f_8@@158))
))) (forall ((o2_1@@129 T@Ref) (f_8@@159 T@Field_17211_1749) ) (!  (=> (select (|PolymorphicMapType_13437_17211_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) null (PredicateMaskField_7740 pm_f_1@@15))) o2_1@@129 f_8@@159) (= (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@50) o2_1@@129 f_8@@159) (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@129 f_8@@159)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@129 f_8@@159))
))) (forall ((o2_1@@130 T@Ref) (f_8@@160 T@Field_17211_53) ) (!  (=> (select (|PolymorphicMapType_13437_17211_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) null (PredicateMaskField_7740 pm_f_1@@15))) o2_1@@130 f_8@@160) (= (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@50) o2_1@@130 f_8@@160) (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@130 f_8@@160)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@130 f_8@@160))
))) (forall ((o2_1@@131 T@Ref) (f_8@@161 T@Field_17211_12962) ) (!  (=> (select (|PolymorphicMapType_13437_17211_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) null (PredicateMaskField_7740 pm_f_1@@15))) o2_1@@131 f_8@@161) (= (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@50) o2_1@@131 f_8@@161) (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@131 f_8@@161)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@131 f_8@@161))
))) (forall ((o2_1@@132 T@Ref) (f_8@@162 T@Field_17223_17228) ) (!  (=> (select (|PolymorphicMapType_13437_17211_51973#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) null (PredicateMaskField_7740 pm_f_1@@15))) o2_1@@132 f_8@@162) (= (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@50) o2_1@@132 f_8@@162) (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@132 f_8@@162)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@132 f_8@@162))
))) (forall ((o2_1@@133 T@Ref) (f_8@@163 T@Field_17238_17239) ) (!  (=> (select (|PolymorphicMapType_13437_17211_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) null (PredicateMaskField_7740 pm_f_1@@15))) o2_1@@133 f_8@@163) (= (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@50) o2_1@@133 f_8@@163) (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@133 f_8@@163)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@133 f_8@@163))
))) (forall ((o2_1@@134 T@Ref) (f_8@@164 T@Field_17768_2018) ) (!  (=> (select (|PolymorphicMapType_13437_17768_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) null (PredicateMaskField_7740 pm_f_1@@15))) o2_1@@134 f_8@@164) (= (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@50) o2_1@@134 f_8@@164) (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@134 f_8@@164)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@134 f_8@@164))
))) (forall ((o2_1@@135 T@Ref) (f_8@@165 T@Field_17768_53) ) (!  (=> (select (|PolymorphicMapType_13437_17768_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) null (PredicateMaskField_7740 pm_f_1@@15))) o2_1@@135 f_8@@165) (= (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@50) o2_1@@135 f_8@@165) (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@135 f_8@@165)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@135 f_8@@165))
))) (forall ((o2_1@@136 T@Ref) (f_8@@166 T@Field_17768_12962) ) (!  (=> (select (|PolymorphicMapType_13437_17768_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) null (PredicateMaskField_7740 pm_f_1@@15))) o2_1@@136 f_8@@166) (= (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@50) o2_1@@136 f_8@@166) (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@136 f_8@@166)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@136 f_8@@166))
))) (forall ((o2_1@@137 T@Ref) (f_8@@167 T@Field_17781_17786) ) (!  (=> (select (|PolymorphicMapType_13437_17768_53021#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) null (PredicateMaskField_7740 pm_f_1@@15))) o2_1@@137 f_8@@167) (= (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@50) o2_1@@137 f_8@@167) (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@137 f_8@@167)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@137 f_8@@167))
))) (forall ((o2_1@@138 T@Ref) (f_8@@168 T@Field_17797_17798) ) (!  (=> (select (|PolymorphicMapType_13437_17768_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) null (PredicateMaskField_7740 pm_f_1@@15))) o2_1@@138 f_8@@168) (= (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@50) o2_1@@138 f_8@@168) (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@138 f_8@@168)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@138 f_8@@168))
))) (forall ((o2_1@@139 T@Ref) (f_8@@169 T@Field_7715_2323) ) (!  (=> (select (|PolymorphicMapType_13437_18457_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) null (PredicateMaskField_7740 pm_f_1@@15))) o2_1@@139 f_8@@169) (= (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@50) o2_1@@139 f_8@@169) (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@139 f_8@@169)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@139 f_8@@169))
))) (forall ((o2_1@@140 T@Ref) (f_8@@170 T@Field_7715_53) ) (!  (=> (select (|PolymorphicMapType_13437_18457_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) null (PredicateMaskField_7740 pm_f_1@@15))) o2_1@@140 f_8@@170) (= (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@50) o2_1@@140 f_8@@170) (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@140 f_8@@170)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@140 f_8@@170))
))) (forall ((o2_1@@141 T@Ref) (f_8@@171 T@Field_7715_12962) ) (!  (=> (select (|PolymorphicMapType_13437_18457_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) null (PredicateMaskField_7740 pm_f_1@@15))) o2_1@@141 f_8@@171) (= (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@50) o2_1@@141 f_8@@171) (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@141 f_8@@171)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@141 f_8@@171))
))) (forall ((o2_1@@142 T@Ref) (f_8@@172 T@Field_18470_18475) ) (!  (=> (select (|PolymorphicMapType_13437_18457_54069#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) null (PredicateMaskField_7740 pm_f_1@@15))) o2_1@@142 f_8@@172) (= (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@50) o2_1@@142 f_8@@172) (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@142 f_8@@172)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@142 f_8@@172))
))) (forall ((o2_1@@143 T@Ref) (f_8@@173 T@Field_18457_18458) ) (!  (=> (select (|PolymorphicMapType_13437_18457_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) null (PredicateMaskField_7740 pm_f_1@@15))) o2_1@@143 f_8@@173) (= (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@50) o2_1@@143 f_8@@173) (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@143 f_8@@173)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@143 f_8@@173))
))) (forall ((o2_1@@144 T@Ref) (f_8@@174 T@Field_7740_2323) ) (!  (=> (select (|PolymorphicMapType_13437_19395_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) null (PredicateMaskField_7740 pm_f_1@@15))) o2_1@@144 f_8@@174) (= (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@50) o2_1@@144 f_8@@174) (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@144 f_8@@174)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@144 f_8@@174))
))) (forall ((o2_1@@145 T@Ref) (f_8@@175 T@Field_7740_53) ) (!  (=> (select (|PolymorphicMapType_13437_19395_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) null (PredicateMaskField_7740 pm_f_1@@15))) o2_1@@145 f_8@@175) (= (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@50) o2_1@@145 f_8@@175) (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@145 f_8@@175)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@145 f_8@@175))
))) (forall ((o2_1@@146 T@Ref) (f_8@@176 T@Field_7740_12962) ) (!  (=> (select (|PolymorphicMapType_13437_19395_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) null (PredicateMaskField_7740 pm_f_1@@15))) o2_1@@146 f_8@@176) (= (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@50) o2_1@@146 f_8@@176) (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@146 f_8@@176)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@146 f_8@@176))
))) (forall ((o2_1@@147 T@Ref) (f_8@@177 T@Field_19408_19413) ) (!  (=> (select (|PolymorphicMapType_13437_19395_55117#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) null (PredicateMaskField_7740 pm_f_1@@15))) o2_1@@147 f_8@@177) (= (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) o2_1@@147 f_8@@177) (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@147 f_8@@177)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@147 f_8@@177))
))) (forall ((o2_1@@148 T@Ref) (f_8@@178 T@Field_19395_19396) ) (!  (=> (select (|PolymorphicMapType_13437_19395_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@50) null (PredicateMaskField_7740 pm_f_1@@15))) o2_1@@148 f_8@@178) (= (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@50) o2_1@@148 f_8@@178) (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@148 f_8@@178)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| ExhaleHeap@@47) o2_1@@148 f_8@@178))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@47 Mask@@108) (IsPredicateField_7740_7741 pm_f_1@@15))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_12888) (ExhaleHeap@@48 T@PolymorphicMapType_12888) (Mask@@109 T@PolymorphicMapType_12909) (pm_f_1@@16 T@Field_7712_7741) ) (!  (=> (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@48 Mask@@109) (=> (and (HasDirectPerm_7712_7741 Mask@@109 null pm_f_1@@16) (IsPredicateField_7712_47234 pm_f_1@@16)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@149 T@Ref) (f_8@@179 T@Field_18410_2323) ) (!  (=> (select (|PolymorphicMapType_13437_7712_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) null (PredicateMaskField_7712 pm_f_1@@16))) o2_1@@149 f_8@@179) (= (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@51) o2_1@@149 f_8@@179) (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@149 f_8@@179)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@149 f_8@@179))
)) (forall ((o2_1@@150 T@Ref) (f_8@@180 T@Field_12948_53) ) (!  (=> (select (|PolymorphicMapType_13437_7712_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) null (PredicateMaskField_7712 pm_f_1@@16))) o2_1@@150 f_8@@180) (= (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@51) o2_1@@150 f_8@@180) (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@150 f_8@@180)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@150 f_8@@180))
))) (forall ((o2_1@@151 T@Ref) (f_8@@181 T@Field_12961_12962) ) (!  (=> (select (|PolymorphicMapType_13437_7712_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) null (PredicateMaskField_7712 pm_f_1@@16))) o2_1@@151 f_8@@181) (= (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@51) o2_1@@151 f_8@@181) (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@151 f_8@@181)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@151 f_8@@181))
))) (forall ((o2_1@@152 T@Ref) (f_8@@182 T@Field_7712_16298) ) (!  (=> (select (|PolymorphicMapType_13437_7712_49877#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) null (PredicateMaskField_7712 pm_f_1@@16))) o2_1@@152 f_8@@182) (= (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) o2_1@@152 f_8@@182) (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@152 f_8@@182)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@152 f_8@@182))
))) (forall ((o2_1@@153 T@Ref) (f_8@@183 T@Field_7712_7741) ) (!  (=> (select (|PolymorphicMapType_13437_7712_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) null (PredicateMaskField_7712 pm_f_1@@16))) o2_1@@153 f_8@@183) (= (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@51) o2_1@@153 f_8@@183) (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@153 f_8@@183)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@153 f_8@@183))
))) (forall ((o2_1@@154 T@Ref) (f_8@@184 T@Field_16278_1219) ) (!  (=> (select (|PolymorphicMapType_13437_16278_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) null (PredicateMaskField_7712 pm_f_1@@16))) o2_1@@154 f_8@@184) (= (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@51) o2_1@@154 f_8@@184) (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@154 f_8@@184)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@154 f_8@@184))
))) (forall ((o2_1@@155 T@Ref) (f_8@@185 T@Field_16278_53) ) (!  (=> (select (|PolymorphicMapType_13437_16278_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) null (PredicateMaskField_7712 pm_f_1@@16))) o2_1@@155 f_8@@185) (= (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@51) o2_1@@155 f_8@@185) (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@155 f_8@@185)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@155 f_8@@185))
))) (forall ((o2_1@@156 T@Ref) (f_8@@186 T@Field_16278_12962) ) (!  (=> (select (|PolymorphicMapType_13437_16278_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) null (PredicateMaskField_7712 pm_f_1@@16))) o2_1@@156 f_8@@186) (= (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@51) o2_1@@156 f_8@@186) (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@156 f_8@@186)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@156 f_8@@186))
))) (forall ((o2_1@@157 T@Ref) (f_8@@187 T@Field_16293_16298) ) (!  (=> (select (|PolymorphicMapType_13437_16278_50925#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) null (PredicateMaskField_7712 pm_f_1@@16))) o2_1@@157 f_8@@187) (= (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@51) o2_1@@157 f_8@@187) (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@157 f_8@@187)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@157 f_8@@187))
))) (forall ((o2_1@@158 T@Ref) (f_8@@188 T@Field_16311_16312) ) (!  (=> (select (|PolymorphicMapType_13437_16278_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) null (PredicateMaskField_7712 pm_f_1@@16))) o2_1@@158 f_8@@188) (= (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@51) o2_1@@158 f_8@@188) (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@158 f_8@@188)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@158 f_8@@188))
))) (forall ((o2_1@@159 T@Ref) (f_8@@189 T@Field_17211_1749) ) (!  (=> (select (|PolymorphicMapType_13437_17211_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) null (PredicateMaskField_7712 pm_f_1@@16))) o2_1@@159 f_8@@189) (= (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@51) o2_1@@159 f_8@@189) (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@159 f_8@@189)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@159 f_8@@189))
))) (forall ((o2_1@@160 T@Ref) (f_8@@190 T@Field_17211_53) ) (!  (=> (select (|PolymorphicMapType_13437_17211_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) null (PredicateMaskField_7712 pm_f_1@@16))) o2_1@@160 f_8@@190) (= (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@51) o2_1@@160 f_8@@190) (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@160 f_8@@190)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@160 f_8@@190))
))) (forall ((o2_1@@161 T@Ref) (f_8@@191 T@Field_17211_12962) ) (!  (=> (select (|PolymorphicMapType_13437_17211_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) null (PredicateMaskField_7712 pm_f_1@@16))) o2_1@@161 f_8@@191) (= (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@51) o2_1@@161 f_8@@191) (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@161 f_8@@191)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@161 f_8@@191))
))) (forall ((o2_1@@162 T@Ref) (f_8@@192 T@Field_17223_17228) ) (!  (=> (select (|PolymorphicMapType_13437_17211_51973#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) null (PredicateMaskField_7712 pm_f_1@@16))) o2_1@@162 f_8@@192) (= (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@51) o2_1@@162 f_8@@192) (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@162 f_8@@192)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@162 f_8@@192))
))) (forall ((o2_1@@163 T@Ref) (f_8@@193 T@Field_17238_17239) ) (!  (=> (select (|PolymorphicMapType_13437_17211_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) null (PredicateMaskField_7712 pm_f_1@@16))) o2_1@@163 f_8@@193) (= (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@51) o2_1@@163 f_8@@193) (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@163 f_8@@193)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@163 f_8@@193))
))) (forall ((o2_1@@164 T@Ref) (f_8@@194 T@Field_17768_2018) ) (!  (=> (select (|PolymorphicMapType_13437_17768_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) null (PredicateMaskField_7712 pm_f_1@@16))) o2_1@@164 f_8@@194) (= (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@51) o2_1@@164 f_8@@194) (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@164 f_8@@194)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@164 f_8@@194))
))) (forall ((o2_1@@165 T@Ref) (f_8@@195 T@Field_17768_53) ) (!  (=> (select (|PolymorphicMapType_13437_17768_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) null (PredicateMaskField_7712 pm_f_1@@16))) o2_1@@165 f_8@@195) (= (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@51) o2_1@@165 f_8@@195) (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@165 f_8@@195)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@165 f_8@@195))
))) (forall ((o2_1@@166 T@Ref) (f_8@@196 T@Field_17768_12962) ) (!  (=> (select (|PolymorphicMapType_13437_17768_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) null (PredicateMaskField_7712 pm_f_1@@16))) o2_1@@166 f_8@@196) (= (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@51) o2_1@@166 f_8@@196) (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@166 f_8@@196)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@166 f_8@@196))
))) (forall ((o2_1@@167 T@Ref) (f_8@@197 T@Field_17781_17786) ) (!  (=> (select (|PolymorphicMapType_13437_17768_53021#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) null (PredicateMaskField_7712 pm_f_1@@16))) o2_1@@167 f_8@@197) (= (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@51) o2_1@@167 f_8@@197) (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@167 f_8@@197)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@167 f_8@@197))
))) (forall ((o2_1@@168 T@Ref) (f_8@@198 T@Field_17797_17798) ) (!  (=> (select (|PolymorphicMapType_13437_17768_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) null (PredicateMaskField_7712 pm_f_1@@16))) o2_1@@168 f_8@@198) (= (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@51) o2_1@@168 f_8@@198) (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@168 f_8@@198)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@168 f_8@@198))
))) (forall ((o2_1@@169 T@Ref) (f_8@@199 T@Field_7715_2323) ) (!  (=> (select (|PolymorphicMapType_13437_18457_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) null (PredicateMaskField_7712 pm_f_1@@16))) o2_1@@169 f_8@@199) (= (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@51) o2_1@@169 f_8@@199) (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@169 f_8@@199)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@169 f_8@@199))
))) (forall ((o2_1@@170 T@Ref) (f_8@@200 T@Field_7715_53) ) (!  (=> (select (|PolymorphicMapType_13437_18457_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) null (PredicateMaskField_7712 pm_f_1@@16))) o2_1@@170 f_8@@200) (= (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@51) o2_1@@170 f_8@@200) (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@170 f_8@@200)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@170 f_8@@200))
))) (forall ((o2_1@@171 T@Ref) (f_8@@201 T@Field_7715_12962) ) (!  (=> (select (|PolymorphicMapType_13437_18457_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) null (PredicateMaskField_7712 pm_f_1@@16))) o2_1@@171 f_8@@201) (= (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@51) o2_1@@171 f_8@@201) (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@171 f_8@@201)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@171 f_8@@201))
))) (forall ((o2_1@@172 T@Ref) (f_8@@202 T@Field_18470_18475) ) (!  (=> (select (|PolymorphicMapType_13437_18457_54069#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) null (PredicateMaskField_7712 pm_f_1@@16))) o2_1@@172 f_8@@202) (= (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@51) o2_1@@172 f_8@@202) (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@172 f_8@@202)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@172 f_8@@202))
))) (forall ((o2_1@@173 T@Ref) (f_8@@203 T@Field_18457_18458) ) (!  (=> (select (|PolymorphicMapType_13437_18457_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) null (PredicateMaskField_7712 pm_f_1@@16))) o2_1@@173 f_8@@203) (= (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@51) o2_1@@173 f_8@@203) (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@173 f_8@@203)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@173 f_8@@203))
))) (forall ((o2_1@@174 T@Ref) (f_8@@204 T@Field_7740_2323) ) (!  (=> (select (|PolymorphicMapType_13437_19395_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) null (PredicateMaskField_7712 pm_f_1@@16))) o2_1@@174 f_8@@204) (= (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@51) o2_1@@174 f_8@@204) (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@174 f_8@@204)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@174 f_8@@204))
))) (forall ((o2_1@@175 T@Ref) (f_8@@205 T@Field_7740_53) ) (!  (=> (select (|PolymorphicMapType_13437_19395_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) null (PredicateMaskField_7712 pm_f_1@@16))) o2_1@@175 f_8@@205) (= (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@51) o2_1@@175 f_8@@205) (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@175 f_8@@205)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@175 f_8@@205))
))) (forall ((o2_1@@176 T@Ref) (f_8@@206 T@Field_7740_12962) ) (!  (=> (select (|PolymorphicMapType_13437_19395_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) null (PredicateMaskField_7712 pm_f_1@@16))) o2_1@@176 f_8@@206) (= (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@51) o2_1@@176 f_8@@206) (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@176 f_8@@206)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@176 f_8@@206))
))) (forall ((o2_1@@177 T@Ref) (f_8@@207 T@Field_19408_19413) ) (!  (=> (select (|PolymorphicMapType_13437_19395_55117#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) null (PredicateMaskField_7712 pm_f_1@@16))) o2_1@@177 f_8@@207) (= (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@51) o2_1@@177 f_8@@207) (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@177 f_8@@207)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@177 f_8@@207))
))) (forall ((o2_1@@178 T@Ref) (f_8@@208 T@Field_19395_19396) ) (!  (=> (select (|PolymorphicMapType_13437_19395_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@51) null (PredicateMaskField_7712 pm_f_1@@16))) o2_1@@178 f_8@@208) (= (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@51) o2_1@@178 f_8@@208) (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@178 f_8@@208)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| ExhaleHeap@@48) o2_1@@178 f_8@@208))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@48 Mask@@109) (IsPredicateField_7712_47234 pm_f_1@@16))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_12888) (ExhaleHeap@@49 T@PolymorphicMapType_12888) (Mask@@110 T@PolymorphicMapType_12909) (pm_f_1@@17 T@Field_17797_17798) ) (!  (=> (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@49 Mask@@110) (=> (and (HasDirectPerm_17768_7741 Mask@@110 null pm_f_1@@17) (IsWandField_7677_7678 pm_f_1@@17)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@179 T@Ref) (f_8@@209 T@Field_18410_2323) ) (!  (=> (select (|PolymorphicMapType_13437_7712_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) null (WandMaskField_7677 pm_f_1@@17))) o2_1@@179 f_8@@209) (= (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@52) o2_1@@179 f_8@@209) (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@179 f_8@@209)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@179 f_8@@209))
)) (forall ((o2_1@@180 T@Ref) (f_8@@210 T@Field_12948_53) ) (!  (=> (select (|PolymorphicMapType_13437_7712_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) null (WandMaskField_7677 pm_f_1@@17))) o2_1@@180 f_8@@210) (= (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@52) o2_1@@180 f_8@@210) (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@180 f_8@@210)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@180 f_8@@210))
))) (forall ((o2_1@@181 T@Ref) (f_8@@211 T@Field_12961_12962) ) (!  (=> (select (|PolymorphicMapType_13437_7712_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) null (WandMaskField_7677 pm_f_1@@17))) o2_1@@181 f_8@@211) (= (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@52) o2_1@@181 f_8@@211) (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@181 f_8@@211)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@181 f_8@@211))
))) (forall ((o2_1@@182 T@Ref) (f_8@@212 T@Field_7712_16298) ) (!  (=> (select (|PolymorphicMapType_13437_7712_49877#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) null (WandMaskField_7677 pm_f_1@@17))) o2_1@@182 f_8@@212) (= (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@52) o2_1@@182 f_8@@212) (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@182 f_8@@212)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@182 f_8@@212))
))) (forall ((o2_1@@183 T@Ref) (f_8@@213 T@Field_7712_7741) ) (!  (=> (select (|PolymorphicMapType_13437_7712_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) null (WandMaskField_7677 pm_f_1@@17))) o2_1@@183 f_8@@213) (= (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@52) o2_1@@183 f_8@@213) (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@183 f_8@@213)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@183 f_8@@213))
))) (forall ((o2_1@@184 T@Ref) (f_8@@214 T@Field_16278_1219) ) (!  (=> (select (|PolymorphicMapType_13437_16278_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) null (WandMaskField_7677 pm_f_1@@17))) o2_1@@184 f_8@@214) (= (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@52) o2_1@@184 f_8@@214) (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@184 f_8@@214)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@184 f_8@@214))
))) (forall ((o2_1@@185 T@Ref) (f_8@@215 T@Field_16278_53) ) (!  (=> (select (|PolymorphicMapType_13437_16278_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) null (WandMaskField_7677 pm_f_1@@17))) o2_1@@185 f_8@@215) (= (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@52) o2_1@@185 f_8@@215) (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@185 f_8@@215)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@185 f_8@@215))
))) (forall ((o2_1@@186 T@Ref) (f_8@@216 T@Field_16278_12962) ) (!  (=> (select (|PolymorphicMapType_13437_16278_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) null (WandMaskField_7677 pm_f_1@@17))) o2_1@@186 f_8@@216) (= (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@52) o2_1@@186 f_8@@216) (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@186 f_8@@216)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@186 f_8@@216))
))) (forall ((o2_1@@187 T@Ref) (f_8@@217 T@Field_16293_16298) ) (!  (=> (select (|PolymorphicMapType_13437_16278_50925#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) null (WandMaskField_7677 pm_f_1@@17))) o2_1@@187 f_8@@217) (= (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@52) o2_1@@187 f_8@@217) (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@187 f_8@@217)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@187 f_8@@217))
))) (forall ((o2_1@@188 T@Ref) (f_8@@218 T@Field_16311_16312) ) (!  (=> (select (|PolymorphicMapType_13437_16278_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) null (WandMaskField_7677 pm_f_1@@17))) o2_1@@188 f_8@@218) (= (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@52) o2_1@@188 f_8@@218) (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@188 f_8@@218)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@188 f_8@@218))
))) (forall ((o2_1@@189 T@Ref) (f_8@@219 T@Field_17211_1749) ) (!  (=> (select (|PolymorphicMapType_13437_17211_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) null (WandMaskField_7677 pm_f_1@@17))) o2_1@@189 f_8@@219) (= (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@52) o2_1@@189 f_8@@219) (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@189 f_8@@219)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@189 f_8@@219))
))) (forall ((o2_1@@190 T@Ref) (f_8@@220 T@Field_17211_53) ) (!  (=> (select (|PolymorphicMapType_13437_17211_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) null (WandMaskField_7677 pm_f_1@@17))) o2_1@@190 f_8@@220) (= (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@52) o2_1@@190 f_8@@220) (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@190 f_8@@220)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@190 f_8@@220))
))) (forall ((o2_1@@191 T@Ref) (f_8@@221 T@Field_17211_12962) ) (!  (=> (select (|PolymorphicMapType_13437_17211_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) null (WandMaskField_7677 pm_f_1@@17))) o2_1@@191 f_8@@221) (= (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@52) o2_1@@191 f_8@@221) (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@191 f_8@@221)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@191 f_8@@221))
))) (forall ((o2_1@@192 T@Ref) (f_8@@222 T@Field_17223_17228) ) (!  (=> (select (|PolymorphicMapType_13437_17211_51973#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) null (WandMaskField_7677 pm_f_1@@17))) o2_1@@192 f_8@@222) (= (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@52) o2_1@@192 f_8@@222) (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@192 f_8@@222)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@192 f_8@@222))
))) (forall ((o2_1@@193 T@Ref) (f_8@@223 T@Field_17238_17239) ) (!  (=> (select (|PolymorphicMapType_13437_17211_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) null (WandMaskField_7677 pm_f_1@@17))) o2_1@@193 f_8@@223) (= (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@52) o2_1@@193 f_8@@223) (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@193 f_8@@223)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@193 f_8@@223))
))) (forall ((o2_1@@194 T@Ref) (f_8@@224 T@Field_17768_2018) ) (!  (=> (select (|PolymorphicMapType_13437_17768_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) null (WandMaskField_7677 pm_f_1@@17))) o2_1@@194 f_8@@224) (= (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@52) o2_1@@194 f_8@@224) (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@194 f_8@@224)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@194 f_8@@224))
))) (forall ((o2_1@@195 T@Ref) (f_8@@225 T@Field_17768_53) ) (!  (=> (select (|PolymorphicMapType_13437_17768_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) null (WandMaskField_7677 pm_f_1@@17))) o2_1@@195 f_8@@225) (= (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@52) o2_1@@195 f_8@@225) (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@195 f_8@@225)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@195 f_8@@225))
))) (forall ((o2_1@@196 T@Ref) (f_8@@226 T@Field_17768_12962) ) (!  (=> (select (|PolymorphicMapType_13437_17768_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) null (WandMaskField_7677 pm_f_1@@17))) o2_1@@196 f_8@@226) (= (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@52) o2_1@@196 f_8@@226) (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@196 f_8@@226)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@196 f_8@@226))
))) (forall ((o2_1@@197 T@Ref) (f_8@@227 T@Field_17781_17786) ) (!  (=> (select (|PolymorphicMapType_13437_17768_53021#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) null (WandMaskField_7677 pm_f_1@@17))) o2_1@@197 f_8@@227) (= (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) o2_1@@197 f_8@@227) (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@197 f_8@@227)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@197 f_8@@227))
))) (forall ((o2_1@@198 T@Ref) (f_8@@228 T@Field_17797_17798) ) (!  (=> (select (|PolymorphicMapType_13437_17768_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) null (WandMaskField_7677 pm_f_1@@17))) o2_1@@198 f_8@@228) (= (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@52) o2_1@@198 f_8@@228) (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@198 f_8@@228)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@198 f_8@@228))
))) (forall ((o2_1@@199 T@Ref) (f_8@@229 T@Field_7715_2323) ) (!  (=> (select (|PolymorphicMapType_13437_18457_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) null (WandMaskField_7677 pm_f_1@@17))) o2_1@@199 f_8@@229) (= (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@52) o2_1@@199 f_8@@229) (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@199 f_8@@229)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@199 f_8@@229))
))) (forall ((o2_1@@200 T@Ref) (f_8@@230 T@Field_7715_53) ) (!  (=> (select (|PolymorphicMapType_13437_18457_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) null (WandMaskField_7677 pm_f_1@@17))) o2_1@@200 f_8@@230) (= (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@52) o2_1@@200 f_8@@230) (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@200 f_8@@230)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@200 f_8@@230))
))) (forall ((o2_1@@201 T@Ref) (f_8@@231 T@Field_7715_12962) ) (!  (=> (select (|PolymorphicMapType_13437_18457_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) null (WandMaskField_7677 pm_f_1@@17))) o2_1@@201 f_8@@231) (= (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@52) o2_1@@201 f_8@@231) (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@201 f_8@@231)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@201 f_8@@231))
))) (forall ((o2_1@@202 T@Ref) (f_8@@232 T@Field_18470_18475) ) (!  (=> (select (|PolymorphicMapType_13437_18457_54069#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) null (WandMaskField_7677 pm_f_1@@17))) o2_1@@202 f_8@@232) (= (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@52) o2_1@@202 f_8@@232) (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@202 f_8@@232)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@202 f_8@@232))
))) (forall ((o2_1@@203 T@Ref) (f_8@@233 T@Field_18457_18458) ) (!  (=> (select (|PolymorphicMapType_13437_18457_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) null (WandMaskField_7677 pm_f_1@@17))) o2_1@@203 f_8@@233) (= (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@52) o2_1@@203 f_8@@233) (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@203 f_8@@233)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@203 f_8@@233))
))) (forall ((o2_1@@204 T@Ref) (f_8@@234 T@Field_7740_2323) ) (!  (=> (select (|PolymorphicMapType_13437_19395_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) null (WandMaskField_7677 pm_f_1@@17))) o2_1@@204 f_8@@234) (= (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@52) o2_1@@204 f_8@@234) (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@204 f_8@@234)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@204 f_8@@234))
))) (forall ((o2_1@@205 T@Ref) (f_8@@235 T@Field_7740_53) ) (!  (=> (select (|PolymorphicMapType_13437_19395_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) null (WandMaskField_7677 pm_f_1@@17))) o2_1@@205 f_8@@235) (= (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@52) o2_1@@205 f_8@@235) (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@205 f_8@@235)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@205 f_8@@235))
))) (forall ((o2_1@@206 T@Ref) (f_8@@236 T@Field_7740_12962) ) (!  (=> (select (|PolymorphicMapType_13437_19395_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) null (WandMaskField_7677 pm_f_1@@17))) o2_1@@206 f_8@@236) (= (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@52) o2_1@@206 f_8@@236) (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@206 f_8@@236)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@206 f_8@@236))
))) (forall ((o2_1@@207 T@Ref) (f_8@@237 T@Field_19408_19413) ) (!  (=> (select (|PolymorphicMapType_13437_19395_55117#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) null (WandMaskField_7677 pm_f_1@@17))) o2_1@@207 f_8@@237) (= (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@52) o2_1@@207 f_8@@237) (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@207 f_8@@237)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@207 f_8@@237))
))) (forall ((o2_1@@208 T@Ref) (f_8@@238 T@Field_19395_19396) ) (!  (=> (select (|PolymorphicMapType_13437_19395_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@52) null (WandMaskField_7677 pm_f_1@@17))) o2_1@@208 f_8@@238) (= (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@52) o2_1@@208 f_8@@238) (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@208 f_8@@238)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| ExhaleHeap@@49) o2_1@@208 f_8@@238))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@49 Mask@@110) (IsWandField_7677_7678 pm_f_1@@17))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_12888) (ExhaleHeap@@50 T@PolymorphicMapType_12888) (Mask@@111 T@PolymorphicMapType_12909) (pm_f_1@@18 T@Field_17238_17239) ) (!  (=> (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@50 Mask@@111) (=> (and (HasDirectPerm_17211_7741 Mask@@111 null pm_f_1@@18) (IsWandField_7641_7642 pm_f_1@@18)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@209 T@Ref) (f_8@@239 T@Field_18410_2323) ) (!  (=> (select (|PolymorphicMapType_13437_7712_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) null (WandMaskField_7641 pm_f_1@@18))) o2_1@@209 f_8@@239) (= (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@53) o2_1@@209 f_8@@239) (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@209 f_8@@239)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@209 f_8@@239))
)) (forall ((o2_1@@210 T@Ref) (f_8@@240 T@Field_12948_53) ) (!  (=> (select (|PolymorphicMapType_13437_7712_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) null (WandMaskField_7641 pm_f_1@@18))) o2_1@@210 f_8@@240) (= (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@53) o2_1@@210 f_8@@240) (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@210 f_8@@240)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@210 f_8@@240))
))) (forall ((o2_1@@211 T@Ref) (f_8@@241 T@Field_12961_12962) ) (!  (=> (select (|PolymorphicMapType_13437_7712_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) null (WandMaskField_7641 pm_f_1@@18))) o2_1@@211 f_8@@241) (= (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@53) o2_1@@211 f_8@@241) (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@211 f_8@@241)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@211 f_8@@241))
))) (forall ((o2_1@@212 T@Ref) (f_8@@242 T@Field_7712_16298) ) (!  (=> (select (|PolymorphicMapType_13437_7712_49877#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) null (WandMaskField_7641 pm_f_1@@18))) o2_1@@212 f_8@@242) (= (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@53) o2_1@@212 f_8@@242) (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@212 f_8@@242)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@212 f_8@@242))
))) (forall ((o2_1@@213 T@Ref) (f_8@@243 T@Field_7712_7741) ) (!  (=> (select (|PolymorphicMapType_13437_7712_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) null (WandMaskField_7641 pm_f_1@@18))) o2_1@@213 f_8@@243) (= (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@53) o2_1@@213 f_8@@243) (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@213 f_8@@243)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@213 f_8@@243))
))) (forall ((o2_1@@214 T@Ref) (f_8@@244 T@Field_16278_1219) ) (!  (=> (select (|PolymorphicMapType_13437_16278_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) null (WandMaskField_7641 pm_f_1@@18))) o2_1@@214 f_8@@244) (= (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@53) o2_1@@214 f_8@@244) (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@214 f_8@@244)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@214 f_8@@244))
))) (forall ((o2_1@@215 T@Ref) (f_8@@245 T@Field_16278_53) ) (!  (=> (select (|PolymorphicMapType_13437_16278_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) null (WandMaskField_7641 pm_f_1@@18))) o2_1@@215 f_8@@245) (= (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@53) o2_1@@215 f_8@@245) (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@215 f_8@@245)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@215 f_8@@245))
))) (forall ((o2_1@@216 T@Ref) (f_8@@246 T@Field_16278_12962) ) (!  (=> (select (|PolymorphicMapType_13437_16278_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) null (WandMaskField_7641 pm_f_1@@18))) o2_1@@216 f_8@@246) (= (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@53) o2_1@@216 f_8@@246) (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@216 f_8@@246)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@216 f_8@@246))
))) (forall ((o2_1@@217 T@Ref) (f_8@@247 T@Field_16293_16298) ) (!  (=> (select (|PolymorphicMapType_13437_16278_50925#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) null (WandMaskField_7641 pm_f_1@@18))) o2_1@@217 f_8@@247) (= (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@53) o2_1@@217 f_8@@247) (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@217 f_8@@247)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@217 f_8@@247))
))) (forall ((o2_1@@218 T@Ref) (f_8@@248 T@Field_16311_16312) ) (!  (=> (select (|PolymorphicMapType_13437_16278_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) null (WandMaskField_7641 pm_f_1@@18))) o2_1@@218 f_8@@248) (= (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@53) o2_1@@218 f_8@@248) (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@218 f_8@@248)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@218 f_8@@248))
))) (forall ((o2_1@@219 T@Ref) (f_8@@249 T@Field_17211_1749) ) (!  (=> (select (|PolymorphicMapType_13437_17211_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) null (WandMaskField_7641 pm_f_1@@18))) o2_1@@219 f_8@@249) (= (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@53) o2_1@@219 f_8@@249) (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@219 f_8@@249)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@219 f_8@@249))
))) (forall ((o2_1@@220 T@Ref) (f_8@@250 T@Field_17211_53) ) (!  (=> (select (|PolymorphicMapType_13437_17211_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) null (WandMaskField_7641 pm_f_1@@18))) o2_1@@220 f_8@@250) (= (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@53) o2_1@@220 f_8@@250) (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@220 f_8@@250)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@220 f_8@@250))
))) (forall ((o2_1@@221 T@Ref) (f_8@@251 T@Field_17211_12962) ) (!  (=> (select (|PolymorphicMapType_13437_17211_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) null (WandMaskField_7641 pm_f_1@@18))) o2_1@@221 f_8@@251) (= (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@53) o2_1@@221 f_8@@251) (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@221 f_8@@251)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@221 f_8@@251))
))) (forall ((o2_1@@222 T@Ref) (f_8@@252 T@Field_17223_17228) ) (!  (=> (select (|PolymorphicMapType_13437_17211_51973#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) null (WandMaskField_7641 pm_f_1@@18))) o2_1@@222 f_8@@252) (= (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) o2_1@@222 f_8@@252) (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@222 f_8@@252)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@222 f_8@@252))
))) (forall ((o2_1@@223 T@Ref) (f_8@@253 T@Field_17238_17239) ) (!  (=> (select (|PolymorphicMapType_13437_17211_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) null (WandMaskField_7641 pm_f_1@@18))) o2_1@@223 f_8@@253) (= (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@53) o2_1@@223 f_8@@253) (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@223 f_8@@253)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@223 f_8@@253))
))) (forall ((o2_1@@224 T@Ref) (f_8@@254 T@Field_17768_2018) ) (!  (=> (select (|PolymorphicMapType_13437_17768_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) null (WandMaskField_7641 pm_f_1@@18))) o2_1@@224 f_8@@254) (= (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@53) o2_1@@224 f_8@@254) (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@224 f_8@@254)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@224 f_8@@254))
))) (forall ((o2_1@@225 T@Ref) (f_8@@255 T@Field_17768_53) ) (!  (=> (select (|PolymorphicMapType_13437_17768_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) null (WandMaskField_7641 pm_f_1@@18))) o2_1@@225 f_8@@255) (= (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@53) o2_1@@225 f_8@@255) (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@225 f_8@@255)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@225 f_8@@255))
))) (forall ((o2_1@@226 T@Ref) (f_8@@256 T@Field_17768_12962) ) (!  (=> (select (|PolymorphicMapType_13437_17768_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) null (WandMaskField_7641 pm_f_1@@18))) o2_1@@226 f_8@@256) (= (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@53) o2_1@@226 f_8@@256) (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@226 f_8@@256)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@226 f_8@@256))
))) (forall ((o2_1@@227 T@Ref) (f_8@@257 T@Field_17781_17786) ) (!  (=> (select (|PolymorphicMapType_13437_17768_53021#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) null (WandMaskField_7641 pm_f_1@@18))) o2_1@@227 f_8@@257) (= (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@53) o2_1@@227 f_8@@257) (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@227 f_8@@257)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@227 f_8@@257))
))) (forall ((o2_1@@228 T@Ref) (f_8@@258 T@Field_17797_17798) ) (!  (=> (select (|PolymorphicMapType_13437_17768_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) null (WandMaskField_7641 pm_f_1@@18))) o2_1@@228 f_8@@258) (= (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@53) o2_1@@228 f_8@@258) (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@228 f_8@@258)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@228 f_8@@258))
))) (forall ((o2_1@@229 T@Ref) (f_8@@259 T@Field_7715_2323) ) (!  (=> (select (|PolymorphicMapType_13437_18457_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) null (WandMaskField_7641 pm_f_1@@18))) o2_1@@229 f_8@@259) (= (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@53) o2_1@@229 f_8@@259) (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@229 f_8@@259)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@229 f_8@@259))
))) (forall ((o2_1@@230 T@Ref) (f_8@@260 T@Field_7715_53) ) (!  (=> (select (|PolymorphicMapType_13437_18457_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) null (WandMaskField_7641 pm_f_1@@18))) o2_1@@230 f_8@@260) (= (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@53) o2_1@@230 f_8@@260) (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@230 f_8@@260)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@230 f_8@@260))
))) (forall ((o2_1@@231 T@Ref) (f_8@@261 T@Field_7715_12962) ) (!  (=> (select (|PolymorphicMapType_13437_18457_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) null (WandMaskField_7641 pm_f_1@@18))) o2_1@@231 f_8@@261) (= (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@53) o2_1@@231 f_8@@261) (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@231 f_8@@261)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@231 f_8@@261))
))) (forall ((o2_1@@232 T@Ref) (f_8@@262 T@Field_18470_18475) ) (!  (=> (select (|PolymorphicMapType_13437_18457_54069#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) null (WandMaskField_7641 pm_f_1@@18))) o2_1@@232 f_8@@262) (= (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@53) o2_1@@232 f_8@@262) (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@232 f_8@@262)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@232 f_8@@262))
))) (forall ((o2_1@@233 T@Ref) (f_8@@263 T@Field_18457_18458) ) (!  (=> (select (|PolymorphicMapType_13437_18457_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) null (WandMaskField_7641 pm_f_1@@18))) o2_1@@233 f_8@@263) (= (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@53) o2_1@@233 f_8@@263) (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@233 f_8@@263)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@233 f_8@@263))
))) (forall ((o2_1@@234 T@Ref) (f_8@@264 T@Field_7740_2323) ) (!  (=> (select (|PolymorphicMapType_13437_19395_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) null (WandMaskField_7641 pm_f_1@@18))) o2_1@@234 f_8@@264) (= (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@53) o2_1@@234 f_8@@264) (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@234 f_8@@264)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@234 f_8@@264))
))) (forall ((o2_1@@235 T@Ref) (f_8@@265 T@Field_7740_53) ) (!  (=> (select (|PolymorphicMapType_13437_19395_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) null (WandMaskField_7641 pm_f_1@@18))) o2_1@@235 f_8@@265) (= (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@53) o2_1@@235 f_8@@265) (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@235 f_8@@265)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@235 f_8@@265))
))) (forall ((o2_1@@236 T@Ref) (f_8@@266 T@Field_7740_12962) ) (!  (=> (select (|PolymorphicMapType_13437_19395_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) null (WandMaskField_7641 pm_f_1@@18))) o2_1@@236 f_8@@266) (= (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@53) o2_1@@236 f_8@@266) (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@236 f_8@@266)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@236 f_8@@266))
))) (forall ((o2_1@@237 T@Ref) (f_8@@267 T@Field_19408_19413) ) (!  (=> (select (|PolymorphicMapType_13437_19395_55117#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) null (WandMaskField_7641 pm_f_1@@18))) o2_1@@237 f_8@@267) (= (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@53) o2_1@@237 f_8@@267) (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@237 f_8@@267)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@237 f_8@@267))
))) (forall ((o2_1@@238 T@Ref) (f_8@@268 T@Field_19395_19396) ) (!  (=> (select (|PolymorphicMapType_13437_19395_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@53) null (WandMaskField_7641 pm_f_1@@18))) o2_1@@238 f_8@@268) (= (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@53) o2_1@@238 f_8@@268) (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@238 f_8@@268)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| ExhaleHeap@@50) o2_1@@238 f_8@@268))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@50 Mask@@111) (IsWandField_7641_7642 pm_f_1@@18))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_12888) (ExhaleHeap@@51 T@PolymorphicMapType_12888) (Mask@@112 T@PolymorphicMapType_12909) (pm_f_1@@19 T@Field_16311_16312) ) (!  (=> (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@51 Mask@@112) (=> (and (HasDirectPerm_16278_7741 Mask@@112 null pm_f_1@@19) (IsWandField_7579_7580 pm_f_1@@19)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@239 T@Ref) (f_8@@269 T@Field_18410_2323) ) (!  (=> (select (|PolymorphicMapType_13437_7712_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) null (WandMaskField_7579 pm_f_1@@19))) o2_1@@239 f_8@@269) (= (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@54) o2_1@@239 f_8@@269) (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@239 f_8@@269)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@239 f_8@@269))
)) (forall ((o2_1@@240 T@Ref) (f_8@@270 T@Field_12948_53) ) (!  (=> (select (|PolymorphicMapType_13437_7712_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) null (WandMaskField_7579 pm_f_1@@19))) o2_1@@240 f_8@@270) (= (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@54) o2_1@@240 f_8@@270) (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@240 f_8@@270)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@240 f_8@@270))
))) (forall ((o2_1@@241 T@Ref) (f_8@@271 T@Field_12961_12962) ) (!  (=> (select (|PolymorphicMapType_13437_7712_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) null (WandMaskField_7579 pm_f_1@@19))) o2_1@@241 f_8@@271) (= (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@54) o2_1@@241 f_8@@271) (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@241 f_8@@271)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@241 f_8@@271))
))) (forall ((o2_1@@242 T@Ref) (f_8@@272 T@Field_7712_16298) ) (!  (=> (select (|PolymorphicMapType_13437_7712_49877#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) null (WandMaskField_7579 pm_f_1@@19))) o2_1@@242 f_8@@272) (= (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@54) o2_1@@242 f_8@@272) (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@242 f_8@@272)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@242 f_8@@272))
))) (forall ((o2_1@@243 T@Ref) (f_8@@273 T@Field_7712_7741) ) (!  (=> (select (|PolymorphicMapType_13437_7712_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) null (WandMaskField_7579 pm_f_1@@19))) o2_1@@243 f_8@@273) (= (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@54) o2_1@@243 f_8@@273) (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@243 f_8@@273)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@243 f_8@@273))
))) (forall ((o2_1@@244 T@Ref) (f_8@@274 T@Field_16278_1219) ) (!  (=> (select (|PolymorphicMapType_13437_16278_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) null (WandMaskField_7579 pm_f_1@@19))) o2_1@@244 f_8@@274) (= (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@54) o2_1@@244 f_8@@274) (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@244 f_8@@274)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@244 f_8@@274))
))) (forall ((o2_1@@245 T@Ref) (f_8@@275 T@Field_16278_53) ) (!  (=> (select (|PolymorphicMapType_13437_16278_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) null (WandMaskField_7579 pm_f_1@@19))) o2_1@@245 f_8@@275) (= (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@54) o2_1@@245 f_8@@275) (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@245 f_8@@275)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@245 f_8@@275))
))) (forall ((o2_1@@246 T@Ref) (f_8@@276 T@Field_16278_12962) ) (!  (=> (select (|PolymorphicMapType_13437_16278_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) null (WandMaskField_7579 pm_f_1@@19))) o2_1@@246 f_8@@276) (= (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@54) o2_1@@246 f_8@@276) (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@246 f_8@@276)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@246 f_8@@276))
))) (forall ((o2_1@@247 T@Ref) (f_8@@277 T@Field_16293_16298) ) (!  (=> (select (|PolymorphicMapType_13437_16278_50925#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) null (WandMaskField_7579 pm_f_1@@19))) o2_1@@247 f_8@@277) (= (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) o2_1@@247 f_8@@277) (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@247 f_8@@277)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@247 f_8@@277))
))) (forall ((o2_1@@248 T@Ref) (f_8@@278 T@Field_16311_16312) ) (!  (=> (select (|PolymorphicMapType_13437_16278_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) null (WandMaskField_7579 pm_f_1@@19))) o2_1@@248 f_8@@278) (= (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@54) o2_1@@248 f_8@@278) (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@248 f_8@@278)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@248 f_8@@278))
))) (forall ((o2_1@@249 T@Ref) (f_8@@279 T@Field_17211_1749) ) (!  (=> (select (|PolymorphicMapType_13437_17211_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) null (WandMaskField_7579 pm_f_1@@19))) o2_1@@249 f_8@@279) (= (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@54) o2_1@@249 f_8@@279) (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@249 f_8@@279)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@249 f_8@@279))
))) (forall ((o2_1@@250 T@Ref) (f_8@@280 T@Field_17211_53) ) (!  (=> (select (|PolymorphicMapType_13437_17211_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) null (WandMaskField_7579 pm_f_1@@19))) o2_1@@250 f_8@@280) (= (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@54) o2_1@@250 f_8@@280) (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@250 f_8@@280)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@250 f_8@@280))
))) (forall ((o2_1@@251 T@Ref) (f_8@@281 T@Field_17211_12962) ) (!  (=> (select (|PolymorphicMapType_13437_17211_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) null (WandMaskField_7579 pm_f_1@@19))) o2_1@@251 f_8@@281) (= (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@54) o2_1@@251 f_8@@281) (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@251 f_8@@281)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@251 f_8@@281))
))) (forall ((o2_1@@252 T@Ref) (f_8@@282 T@Field_17223_17228) ) (!  (=> (select (|PolymorphicMapType_13437_17211_51973#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) null (WandMaskField_7579 pm_f_1@@19))) o2_1@@252 f_8@@282) (= (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@54) o2_1@@252 f_8@@282) (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@252 f_8@@282)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@252 f_8@@282))
))) (forall ((o2_1@@253 T@Ref) (f_8@@283 T@Field_17238_17239) ) (!  (=> (select (|PolymorphicMapType_13437_17211_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) null (WandMaskField_7579 pm_f_1@@19))) o2_1@@253 f_8@@283) (= (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@54) o2_1@@253 f_8@@283) (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@253 f_8@@283)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@253 f_8@@283))
))) (forall ((o2_1@@254 T@Ref) (f_8@@284 T@Field_17768_2018) ) (!  (=> (select (|PolymorphicMapType_13437_17768_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) null (WandMaskField_7579 pm_f_1@@19))) o2_1@@254 f_8@@284) (= (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@54) o2_1@@254 f_8@@284) (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@254 f_8@@284)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@254 f_8@@284))
))) (forall ((o2_1@@255 T@Ref) (f_8@@285 T@Field_17768_53) ) (!  (=> (select (|PolymorphicMapType_13437_17768_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) null (WandMaskField_7579 pm_f_1@@19))) o2_1@@255 f_8@@285) (= (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@54) o2_1@@255 f_8@@285) (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@255 f_8@@285)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@255 f_8@@285))
))) (forall ((o2_1@@256 T@Ref) (f_8@@286 T@Field_17768_12962) ) (!  (=> (select (|PolymorphicMapType_13437_17768_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) null (WandMaskField_7579 pm_f_1@@19))) o2_1@@256 f_8@@286) (= (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@54) o2_1@@256 f_8@@286) (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@256 f_8@@286)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@256 f_8@@286))
))) (forall ((o2_1@@257 T@Ref) (f_8@@287 T@Field_17781_17786) ) (!  (=> (select (|PolymorphicMapType_13437_17768_53021#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) null (WandMaskField_7579 pm_f_1@@19))) o2_1@@257 f_8@@287) (= (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@54) o2_1@@257 f_8@@287) (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@257 f_8@@287)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@257 f_8@@287))
))) (forall ((o2_1@@258 T@Ref) (f_8@@288 T@Field_17797_17798) ) (!  (=> (select (|PolymorphicMapType_13437_17768_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) null (WandMaskField_7579 pm_f_1@@19))) o2_1@@258 f_8@@288) (= (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@54) o2_1@@258 f_8@@288) (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@258 f_8@@288)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@258 f_8@@288))
))) (forall ((o2_1@@259 T@Ref) (f_8@@289 T@Field_7715_2323) ) (!  (=> (select (|PolymorphicMapType_13437_18457_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) null (WandMaskField_7579 pm_f_1@@19))) o2_1@@259 f_8@@289) (= (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@54) o2_1@@259 f_8@@289) (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@259 f_8@@289)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@259 f_8@@289))
))) (forall ((o2_1@@260 T@Ref) (f_8@@290 T@Field_7715_53) ) (!  (=> (select (|PolymorphicMapType_13437_18457_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) null (WandMaskField_7579 pm_f_1@@19))) o2_1@@260 f_8@@290) (= (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@54) o2_1@@260 f_8@@290) (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@260 f_8@@290)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@260 f_8@@290))
))) (forall ((o2_1@@261 T@Ref) (f_8@@291 T@Field_7715_12962) ) (!  (=> (select (|PolymorphicMapType_13437_18457_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) null (WandMaskField_7579 pm_f_1@@19))) o2_1@@261 f_8@@291) (= (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@54) o2_1@@261 f_8@@291) (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@261 f_8@@291)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@261 f_8@@291))
))) (forall ((o2_1@@262 T@Ref) (f_8@@292 T@Field_18470_18475) ) (!  (=> (select (|PolymorphicMapType_13437_18457_54069#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) null (WandMaskField_7579 pm_f_1@@19))) o2_1@@262 f_8@@292) (= (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@54) o2_1@@262 f_8@@292) (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@262 f_8@@292)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@262 f_8@@292))
))) (forall ((o2_1@@263 T@Ref) (f_8@@293 T@Field_18457_18458) ) (!  (=> (select (|PolymorphicMapType_13437_18457_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) null (WandMaskField_7579 pm_f_1@@19))) o2_1@@263 f_8@@293) (= (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@54) o2_1@@263 f_8@@293) (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@263 f_8@@293)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@263 f_8@@293))
))) (forall ((o2_1@@264 T@Ref) (f_8@@294 T@Field_7740_2323) ) (!  (=> (select (|PolymorphicMapType_13437_19395_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) null (WandMaskField_7579 pm_f_1@@19))) o2_1@@264 f_8@@294) (= (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@54) o2_1@@264 f_8@@294) (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@264 f_8@@294)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@264 f_8@@294))
))) (forall ((o2_1@@265 T@Ref) (f_8@@295 T@Field_7740_53) ) (!  (=> (select (|PolymorphicMapType_13437_19395_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) null (WandMaskField_7579 pm_f_1@@19))) o2_1@@265 f_8@@295) (= (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@54) o2_1@@265 f_8@@295) (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@265 f_8@@295)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@265 f_8@@295))
))) (forall ((o2_1@@266 T@Ref) (f_8@@296 T@Field_7740_12962) ) (!  (=> (select (|PolymorphicMapType_13437_19395_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) null (WandMaskField_7579 pm_f_1@@19))) o2_1@@266 f_8@@296) (= (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@54) o2_1@@266 f_8@@296) (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@266 f_8@@296)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@266 f_8@@296))
))) (forall ((o2_1@@267 T@Ref) (f_8@@297 T@Field_19408_19413) ) (!  (=> (select (|PolymorphicMapType_13437_19395_55117#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) null (WandMaskField_7579 pm_f_1@@19))) o2_1@@267 f_8@@297) (= (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@54) o2_1@@267 f_8@@297) (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@267 f_8@@297)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@267 f_8@@297))
))) (forall ((o2_1@@268 T@Ref) (f_8@@298 T@Field_19395_19396) ) (!  (=> (select (|PolymorphicMapType_13437_19395_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@54) null (WandMaskField_7579 pm_f_1@@19))) o2_1@@268 f_8@@298) (= (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@54) o2_1@@268 f_8@@298) (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@268 f_8@@298)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| ExhaleHeap@@51) o2_1@@268 f_8@@298))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@51 Mask@@112) (IsWandField_7579_7580 pm_f_1@@19))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_12888) (ExhaleHeap@@52 T@PolymorphicMapType_12888) (Mask@@113 T@PolymorphicMapType_12909) (pm_f_1@@20 T@Field_18457_18458) ) (!  (=> (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@52 Mask@@113) (=> (and (HasDirectPerm_7715_7716 Mask@@113 null pm_f_1@@20) (IsWandField_7715_57967 pm_f_1@@20)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@269 T@Ref) (f_8@@299 T@Field_18410_2323) ) (!  (=> (select (|PolymorphicMapType_13437_7712_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) null (WandMaskField_7715 pm_f_1@@20))) o2_1@@269 f_8@@299) (= (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@55) o2_1@@269 f_8@@299) (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@269 f_8@@299)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@269 f_8@@299))
)) (forall ((o2_1@@270 T@Ref) (f_8@@300 T@Field_12948_53) ) (!  (=> (select (|PolymorphicMapType_13437_7712_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) null (WandMaskField_7715 pm_f_1@@20))) o2_1@@270 f_8@@300) (= (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@55) o2_1@@270 f_8@@300) (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@270 f_8@@300)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@270 f_8@@300))
))) (forall ((o2_1@@271 T@Ref) (f_8@@301 T@Field_12961_12962) ) (!  (=> (select (|PolymorphicMapType_13437_7712_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) null (WandMaskField_7715 pm_f_1@@20))) o2_1@@271 f_8@@301) (= (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@55) o2_1@@271 f_8@@301) (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@271 f_8@@301)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@271 f_8@@301))
))) (forall ((o2_1@@272 T@Ref) (f_8@@302 T@Field_7712_16298) ) (!  (=> (select (|PolymorphicMapType_13437_7712_49877#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) null (WandMaskField_7715 pm_f_1@@20))) o2_1@@272 f_8@@302) (= (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@55) o2_1@@272 f_8@@302) (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@272 f_8@@302)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@272 f_8@@302))
))) (forall ((o2_1@@273 T@Ref) (f_8@@303 T@Field_7712_7741) ) (!  (=> (select (|PolymorphicMapType_13437_7712_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) null (WandMaskField_7715 pm_f_1@@20))) o2_1@@273 f_8@@303) (= (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@55) o2_1@@273 f_8@@303) (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@273 f_8@@303)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@273 f_8@@303))
))) (forall ((o2_1@@274 T@Ref) (f_8@@304 T@Field_16278_1219) ) (!  (=> (select (|PolymorphicMapType_13437_16278_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) null (WandMaskField_7715 pm_f_1@@20))) o2_1@@274 f_8@@304) (= (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@55) o2_1@@274 f_8@@304) (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@274 f_8@@304)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@274 f_8@@304))
))) (forall ((o2_1@@275 T@Ref) (f_8@@305 T@Field_16278_53) ) (!  (=> (select (|PolymorphicMapType_13437_16278_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) null (WandMaskField_7715 pm_f_1@@20))) o2_1@@275 f_8@@305) (= (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@55) o2_1@@275 f_8@@305) (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@275 f_8@@305)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@275 f_8@@305))
))) (forall ((o2_1@@276 T@Ref) (f_8@@306 T@Field_16278_12962) ) (!  (=> (select (|PolymorphicMapType_13437_16278_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) null (WandMaskField_7715 pm_f_1@@20))) o2_1@@276 f_8@@306) (= (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@55) o2_1@@276 f_8@@306) (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@276 f_8@@306)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@276 f_8@@306))
))) (forall ((o2_1@@277 T@Ref) (f_8@@307 T@Field_16293_16298) ) (!  (=> (select (|PolymorphicMapType_13437_16278_50925#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) null (WandMaskField_7715 pm_f_1@@20))) o2_1@@277 f_8@@307) (= (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@55) o2_1@@277 f_8@@307) (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@277 f_8@@307)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@277 f_8@@307))
))) (forall ((o2_1@@278 T@Ref) (f_8@@308 T@Field_16311_16312) ) (!  (=> (select (|PolymorphicMapType_13437_16278_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) null (WandMaskField_7715 pm_f_1@@20))) o2_1@@278 f_8@@308) (= (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@55) o2_1@@278 f_8@@308) (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@278 f_8@@308)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@278 f_8@@308))
))) (forall ((o2_1@@279 T@Ref) (f_8@@309 T@Field_17211_1749) ) (!  (=> (select (|PolymorphicMapType_13437_17211_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) null (WandMaskField_7715 pm_f_1@@20))) o2_1@@279 f_8@@309) (= (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@55) o2_1@@279 f_8@@309) (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@279 f_8@@309)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@279 f_8@@309))
))) (forall ((o2_1@@280 T@Ref) (f_8@@310 T@Field_17211_53) ) (!  (=> (select (|PolymorphicMapType_13437_17211_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) null (WandMaskField_7715 pm_f_1@@20))) o2_1@@280 f_8@@310) (= (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@55) o2_1@@280 f_8@@310) (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@280 f_8@@310)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@280 f_8@@310))
))) (forall ((o2_1@@281 T@Ref) (f_8@@311 T@Field_17211_12962) ) (!  (=> (select (|PolymorphicMapType_13437_17211_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) null (WandMaskField_7715 pm_f_1@@20))) o2_1@@281 f_8@@311) (= (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@55) o2_1@@281 f_8@@311) (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@281 f_8@@311)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@281 f_8@@311))
))) (forall ((o2_1@@282 T@Ref) (f_8@@312 T@Field_17223_17228) ) (!  (=> (select (|PolymorphicMapType_13437_17211_51973#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) null (WandMaskField_7715 pm_f_1@@20))) o2_1@@282 f_8@@312) (= (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@55) o2_1@@282 f_8@@312) (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@282 f_8@@312)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@282 f_8@@312))
))) (forall ((o2_1@@283 T@Ref) (f_8@@313 T@Field_17238_17239) ) (!  (=> (select (|PolymorphicMapType_13437_17211_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) null (WandMaskField_7715 pm_f_1@@20))) o2_1@@283 f_8@@313) (= (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@55) o2_1@@283 f_8@@313) (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@283 f_8@@313)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@283 f_8@@313))
))) (forall ((o2_1@@284 T@Ref) (f_8@@314 T@Field_17768_2018) ) (!  (=> (select (|PolymorphicMapType_13437_17768_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) null (WandMaskField_7715 pm_f_1@@20))) o2_1@@284 f_8@@314) (= (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@55) o2_1@@284 f_8@@314) (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@284 f_8@@314)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@284 f_8@@314))
))) (forall ((o2_1@@285 T@Ref) (f_8@@315 T@Field_17768_53) ) (!  (=> (select (|PolymorphicMapType_13437_17768_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) null (WandMaskField_7715 pm_f_1@@20))) o2_1@@285 f_8@@315) (= (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@55) o2_1@@285 f_8@@315) (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@285 f_8@@315)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@285 f_8@@315))
))) (forall ((o2_1@@286 T@Ref) (f_8@@316 T@Field_17768_12962) ) (!  (=> (select (|PolymorphicMapType_13437_17768_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) null (WandMaskField_7715 pm_f_1@@20))) o2_1@@286 f_8@@316) (= (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@55) o2_1@@286 f_8@@316) (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@286 f_8@@316)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@286 f_8@@316))
))) (forall ((o2_1@@287 T@Ref) (f_8@@317 T@Field_17781_17786) ) (!  (=> (select (|PolymorphicMapType_13437_17768_53021#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) null (WandMaskField_7715 pm_f_1@@20))) o2_1@@287 f_8@@317) (= (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@55) o2_1@@287 f_8@@317) (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@287 f_8@@317)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@287 f_8@@317))
))) (forall ((o2_1@@288 T@Ref) (f_8@@318 T@Field_17797_17798) ) (!  (=> (select (|PolymorphicMapType_13437_17768_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) null (WandMaskField_7715 pm_f_1@@20))) o2_1@@288 f_8@@318) (= (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@55) o2_1@@288 f_8@@318) (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@288 f_8@@318)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@288 f_8@@318))
))) (forall ((o2_1@@289 T@Ref) (f_8@@319 T@Field_7715_2323) ) (!  (=> (select (|PolymorphicMapType_13437_18457_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) null (WandMaskField_7715 pm_f_1@@20))) o2_1@@289 f_8@@319) (= (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@55) o2_1@@289 f_8@@319) (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@289 f_8@@319)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@289 f_8@@319))
))) (forall ((o2_1@@290 T@Ref) (f_8@@320 T@Field_7715_53) ) (!  (=> (select (|PolymorphicMapType_13437_18457_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) null (WandMaskField_7715 pm_f_1@@20))) o2_1@@290 f_8@@320) (= (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@55) o2_1@@290 f_8@@320) (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@290 f_8@@320)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@290 f_8@@320))
))) (forall ((o2_1@@291 T@Ref) (f_8@@321 T@Field_7715_12962) ) (!  (=> (select (|PolymorphicMapType_13437_18457_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) null (WandMaskField_7715 pm_f_1@@20))) o2_1@@291 f_8@@321) (= (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@55) o2_1@@291 f_8@@321) (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@291 f_8@@321)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@291 f_8@@321))
))) (forall ((o2_1@@292 T@Ref) (f_8@@322 T@Field_18470_18475) ) (!  (=> (select (|PolymorphicMapType_13437_18457_54069#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) null (WandMaskField_7715 pm_f_1@@20))) o2_1@@292 f_8@@322) (= (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) o2_1@@292 f_8@@322) (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@292 f_8@@322)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@292 f_8@@322))
))) (forall ((o2_1@@293 T@Ref) (f_8@@323 T@Field_18457_18458) ) (!  (=> (select (|PolymorphicMapType_13437_18457_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) null (WandMaskField_7715 pm_f_1@@20))) o2_1@@293 f_8@@323) (= (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@55) o2_1@@293 f_8@@323) (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@293 f_8@@323)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@293 f_8@@323))
))) (forall ((o2_1@@294 T@Ref) (f_8@@324 T@Field_7740_2323) ) (!  (=> (select (|PolymorphicMapType_13437_19395_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) null (WandMaskField_7715 pm_f_1@@20))) o2_1@@294 f_8@@324) (= (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@55) o2_1@@294 f_8@@324) (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@294 f_8@@324)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@294 f_8@@324))
))) (forall ((o2_1@@295 T@Ref) (f_8@@325 T@Field_7740_53) ) (!  (=> (select (|PolymorphicMapType_13437_19395_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) null (WandMaskField_7715 pm_f_1@@20))) o2_1@@295 f_8@@325) (= (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@55) o2_1@@295 f_8@@325) (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@295 f_8@@325)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@295 f_8@@325))
))) (forall ((o2_1@@296 T@Ref) (f_8@@326 T@Field_7740_12962) ) (!  (=> (select (|PolymorphicMapType_13437_19395_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) null (WandMaskField_7715 pm_f_1@@20))) o2_1@@296 f_8@@326) (= (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@55) o2_1@@296 f_8@@326) (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@296 f_8@@326)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@296 f_8@@326))
))) (forall ((o2_1@@297 T@Ref) (f_8@@327 T@Field_19408_19413) ) (!  (=> (select (|PolymorphicMapType_13437_19395_55117#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) null (WandMaskField_7715 pm_f_1@@20))) o2_1@@297 f_8@@327) (= (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@55) o2_1@@297 f_8@@327) (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@297 f_8@@327)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@297 f_8@@327))
))) (forall ((o2_1@@298 T@Ref) (f_8@@328 T@Field_19395_19396) ) (!  (=> (select (|PolymorphicMapType_13437_19395_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@55) null (WandMaskField_7715 pm_f_1@@20))) o2_1@@298 f_8@@328) (= (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@55) o2_1@@298 f_8@@328) (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@298 f_8@@328)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| ExhaleHeap@@52) o2_1@@298 f_8@@328))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@52 Mask@@113) (IsWandField_7715_57967 pm_f_1@@20))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_12888) (ExhaleHeap@@53 T@PolymorphicMapType_12888) (Mask@@114 T@PolymorphicMapType_12909) (pm_f_1@@21 T@Field_19395_19396) ) (!  (=> (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@53 Mask@@114) (=> (and (HasDirectPerm_7740_7741 Mask@@114 null pm_f_1@@21) (IsWandField_7740_57610 pm_f_1@@21)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@299 T@Ref) (f_8@@329 T@Field_18410_2323) ) (!  (=> (select (|PolymorphicMapType_13437_7712_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) null (WandMaskField_7740 pm_f_1@@21))) o2_1@@299 f_8@@329) (= (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@56) o2_1@@299 f_8@@329) (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@299 f_8@@329)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@299 f_8@@329))
)) (forall ((o2_1@@300 T@Ref) (f_8@@330 T@Field_12948_53) ) (!  (=> (select (|PolymorphicMapType_13437_7712_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) null (WandMaskField_7740 pm_f_1@@21))) o2_1@@300 f_8@@330) (= (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@56) o2_1@@300 f_8@@330) (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@300 f_8@@330)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@300 f_8@@330))
))) (forall ((o2_1@@301 T@Ref) (f_8@@331 T@Field_12961_12962) ) (!  (=> (select (|PolymorphicMapType_13437_7712_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) null (WandMaskField_7740 pm_f_1@@21))) o2_1@@301 f_8@@331) (= (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@56) o2_1@@301 f_8@@331) (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@301 f_8@@331)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@301 f_8@@331))
))) (forall ((o2_1@@302 T@Ref) (f_8@@332 T@Field_7712_16298) ) (!  (=> (select (|PolymorphicMapType_13437_7712_49877#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) null (WandMaskField_7740 pm_f_1@@21))) o2_1@@302 f_8@@332) (= (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@56) o2_1@@302 f_8@@332) (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@302 f_8@@332)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@302 f_8@@332))
))) (forall ((o2_1@@303 T@Ref) (f_8@@333 T@Field_7712_7741) ) (!  (=> (select (|PolymorphicMapType_13437_7712_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) null (WandMaskField_7740 pm_f_1@@21))) o2_1@@303 f_8@@333) (= (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@56) o2_1@@303 f_8@@333) (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@303 f_8@@333)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@303 f_8@@333))
))) (forall ((o2_1@@304 T@Ref) (f_8@@334 T@Field_16278_1219) ) (!  (=> (select (|PolymorphicMapType_13437_16278_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) null (WandMaskField_7740 pm_f_1@@21))) o2_1@@304 f_8@@334) (= (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@56) o2_1@@304 f_8@@334) (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@304 f_8@@334)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@304 f_8@@334))
))) (forall ((o2_1@@305 T@Ref) (f_8@@335 T@Field_16278_53) ) (!  (=> (select (|PolymorphicMapType_13437_16278_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) null (WandMaskField_7740 pm_f_1@@21))) o2_1@@305 f_8@@335) (= (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@56) o2_1@@305 f_8@@335) (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@305 f_8@@335)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@305 f_8@@335))
))) (forall ((o2_1@@306 T@Ref) (f_8@@336 T@Field_16278_12962) ) (!  (=> (select (|PolymorphicMapType_13437_16278_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) null (WandMaskField_7740 pm_f_1@@21))) o2_1@@306 f_8@@336) (= (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@56) o2_1@@306 f_8@@336) (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@306 f_8@@336)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@306 f_8@@336))
))) (forall ((o2_1@@307 T@Ref) (f_8@@337 T@Field_16293_16298) ) (!  (=> (select (|PolymorphicMapType_13437_16278_50925#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) null (WandMaskField_7740 pm_f_1@@21))) o2_1@@307 f_8@@337) (= (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@56) o2_1@@307 f_8@@337) (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@307 f_8@@337)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@307 f_8@@337))
))) (forall ((o2_1@@308 T@Ref) (f_8@@338 T@Field_16311_16312) ) (!  (=> (select (|PolymorphicMapType_13437_16278_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) null (WandMaskField_7740 pm_f_1@@21))) o2_1@@308 f_8@@338) (= (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@56) o2_1@@308 f_8@@338) (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@308 f_8@@338)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@308 f_8@@338))
))) (forall ((o2_1@@309 T@Ref) (f_8@@339 T@Field_17211_1749) ) (!  (=> (select (|PolymorphicMapType_13437_17211_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) null (WandMaskField_7740 pm_f_1@@21))) o2_1@@309 f_8@@339) (= (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@56) o2_1@@309 f_8@@339) (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@309 f_8@@339)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@309 f_8@@339))
))) (forall ((o2_1@@310 T@Ref) (f_8@@340 T@Field_17211_53) ) (!  (=> (select (|PolymorphicMapType_13437_17211_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) null (WandMaskField_7740 pm_f_1@@21))) o2_1@@310 f_8@@340) (= (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@56) o2_1@@310 f_8@@340) (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@310 f_8@@340)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@310 f_8@@340))
))) (forall ((o2_1@@311 T@Ref) (f_8@@341 T@Field_17211_12962) ) (!  (=> (select (|PolymorphicMapType_13437_17211_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) null (WandMaskField_7740 pm_f_1@@21))) o2_1@@311 f_8@@341) (= (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@56) o2_1@@311 f_8@@341) (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@311 f_8@@341)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@311 f_8@@341))
))) (forall ((o2_1@@312 T@Ref) (f_8@@342 T@Field_17223_17228) ) (!  (=> (select (|PolymorphicMapType_13437_17211_51973#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) null (WandMaskField_7740 pm_f_1@@21))) o2_1@@312 f_8@@342) (= (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@56) o2_1@@312 f_8@@342) (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@312 f_8@@342)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@312 f_8@@342))
))) (forall ((o2_1@@313 T@Ref) (f_8@@343 T@Field_17238_17239) ) (!  (=> (select (|PolymorphicMapType_13437_17211_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) null (WandMaskField_7740 pm_f_1@@21))) o2_1@@313 f_8@@343) (= (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@56) o2_1@@313 f_8@@343) (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@313 f_8@@343)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@313 f_8@@343))
))) (forall ((o2_1@@314 T@Ref) (f_8@@344 T@Field_17768_2018) ) (!  (=> (select (|PolymorphicMapType_13437_17768_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) null (WandMaskField_7740 pm_f_1@@21))) o2_1@@314 f_8@@344) (= (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@56) o2_1@@314 f_8@@344) (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@314 f_8@@344)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@314 f_8@@344))
))) (forall ((o2_1@@315 T@Ref) (f_8@@345 T@Field_17768_53) ) (!  (=> (select (|PolymorphicMapType_13437_17768_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) null (WandMaskField_7740 pm_f_1@@21))) o2_1@@315 f_8@@345) (= (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@56) o2_1@@315 f_8@@345) (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@315 f_8@@345)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@315 f_8@@345))
))) (forall ((o2_1@@316 T@Ref) (f_8@@346 T@Field_17768_12962) ) (!  (=> (select (|PolymorphicMapType_13437_17768_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) null (WandMaskField_7740 pm_f_1@@21))) o2_1@@316 f_8@@346) (= (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@56) o2_1@@316 f_8@@346) (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@316 f_8@@346)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@316 f_8@@346))
))) (forall ((o2_1@@317 T@Ref) (f_8@@347 T@Field_17781_17786) ) (!  (=> (select (|PolymorphicMapType_13437_17768_53021#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) null (WandMaskField_7740 pm_f_1@@21))) o2_1@@317 f_8@@347) (= (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@56) o2_1@@317 f_8@@347) (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@317 f_8@@347)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@317 f_8@@347))
))) (forall ((o2_1@@318 T@Ref) (f_8@@348 T@Field_17797_17798) ) (!  (=> (select (|PolymorphicMapType_13437_17768_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) null (WandMaskField_7740 pm_f_1@@21))) o2_1@@318 f_8@@348) (= (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@56) o2_1@@318 f_8@@348) (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@318 f_8@@348)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@318 f_8@@348))
))) (forall ((o2_1@@319 T@Ref) (f_8@@349 T@Field_7715_2323) ) (!  (=> (select (|PolymorphicMapType_13437_18457_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) null (WandMaskField_7740 pm_f_1@@21))) o2_1@@319 f_8@@349) (= (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@56) o2_1@@319 f_8@@349) (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@319 f_8@@349)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@319 f_8@@349))
))) (forall ((o2_1@@320 T@Ref) (f_8@@350 T@Field_7715_53) ) (!  (=> (select (|PolymorphicMapType_13437_18457_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) null (WandMaskField_7740 pm_f_1@@21))) o2_1@@320 f_8@@350) (= (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@56) o2_1@@320 f_8@@350) (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@320 f_8@@350)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@320 f_8@@350))
))) (forall ((o2_1@@321 T@Ref) (f_8@@351 T@Field_7715_12962) ) (!  (=> (select (|PolymorphicMapType_13437_18457_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) null (WandMaskField_7740 pm_f_1@@21))) o2_1@@321 f_8@@351) (= (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@56) o2_1@@321 f_8@@351) (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@321 f_8@@351)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@321 f_8@@351))
))) (forall ((o2_1@@322 T@Ref) (f_8@@352 T@Field_18470_18475) ) (!  (=> (select (|PolymorphicMapType_13437_18457_54069#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) null (WandMaskField_7740 pm_f_1@@21))) o2_1@@322 f_8@@352) (= (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@56) o2_1@@322 f_8@@352) (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@322 f_8@@352)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@322 f_8@@352))
))) (forall ((o2_1@@323 T@Ref) (f_8@@353 T@Field_18457_18458) ) (!  (=> (select (|PolymorphicMapType_13437_18457_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) null (WandMaskField_7740 pm_f_1@@21))) o2_1@@323 f_8@@353) (= (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@56) o2_1@@323 f_8@@353) (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@323 f_8@@353)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@323 f_8@@353))
))) (forall ((o2_1@@324 T@Ref) (f_8@@354 T@Field_7740_2323) ) (!  (=> (select (|PolymorphicMapType_13437_19395_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) null (WandMaskField_7740 pm_f_1@@21))) o2_1@@324 f_8@@354) (= (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@56) o2_1@@324 f_8@@354) (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@324 f_8@@354)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@324 f_8@@354))
))) (forall ((o2_1@@325 T@Ref) (f_8@@355 T@Field_7740_53) ) (!  (=> (select (|PolymorphicMapType_13437_19395_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) null (WandMaskField_7740 pm_f_1@@21))) o2_1@@325 f_8@@355) (= (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@56) o2_1@@325 f_8@@355) (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@325 f_8@@355)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@325 f_8@@355))
))) (forall ((o2_1@@326 T@Ref) (f_8@@356 T@Field_7740_12962) ) (!  (=> (select (|PolymorphicMapType_13437_19395_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) null (WandMaskField_7740 pm_f_1@@21))) o2_1@@326 f_8@@356) (= (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@56) o2_1@@326 f_8@@356) (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@326 f_8@@356)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@326 f_8@@356))
))) (forall ((o2_1@@327 T@Ref) (f_8@@357 T@Field_19408_19413) ) (!  (=> (select (|PolymorphicMapType_13437_19395_55117#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) null (WandMaskField_7740 pm_f_1@@21))) o2_1@@327 f_8@@357) (= (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) o2_1@@327 f_8@@357) (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@327 f_8@@357)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@327 f_8@@357))
))) (forall ((o2_1@@328 T@Ref) (f_8@@358 T@Field_19395_19396) ) (!  (=> (select (|PolymorphicMapType_13437_19395_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@56) null (WandMaskField_7740 pm_f_1@@21))) o2_1@@328 f_8@@358) (= (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@56) o2_1@@328 f_8@@358) (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@328 f_8@@358)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| ExhaleHeap@@53) o2_1@@328 f_8@@358))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@53 Mask@@114) (IsWandField_7740_57610 pm_f_1@@21))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_12888) (ExhaleHeap@@54 T@PolymorphicMapType_12888) (Mask@@115 T@PolymorphicMapType_12909) (pm_f_1@@22 T@Field_7712_7741) ) (!  (=> (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@54 Mask@@115) (=> (and (HasDirectPerm_7712_7741 Mask@@115 null pm_f_1@@22) (IsWandField_7712_57253 pm_f_1@@22)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@329 T@Ref) (f_8@@359 T@Field_18410_2323) ) (!  (=> (select (|PolymorphicMapType_13437_7712_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) null (WandMaskField_7712 pm_f_1@@22))) o2_1@@329 f_8@@359) (= (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@57) o2_1@@329 f_8@@359) (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@329 f_8@@359)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@329 f_8@@359))
)) (forall ((o2_1@@330 T@Ref) (f_8@@360 T@Field_12948_53) ) (!  (=> (select (|PolymorphicMapType_13437_7712_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) null (WandMaskField_7712 pm_f_1@@22))) o2_1@@330 f_8@@360) (= (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@57) o2_1@@330 f_8@@360) (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@330 f_8@@360)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@330 f_8@@360))
))) (forall ((o2_1@@331 T@Ref) (f_8@@361 T@Field_12961_12962) ) (!  (=> (select (|PolymorphicMapType_13437_7712_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) null (WandMaskField_7712 pm_f_1@@22))) o2_1@@331 f_8@@361) (= (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@57) o2_1@@331 f_8@@361) (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@331 f_8@@361)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@331 f_8@@361))
))) (forall ((o2_1@@332 T@Ref) (f_8@@362 T@Field_7712_16298) ) (!  (=> (select (|PolymorphicMapType_13437_7712_49877#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) null (WandMaskField_7712 pm_f_1@@22))) o2_1@@332 f_8@@362) (= (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) o2_1@@332 f_8@@362) (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@332 f_8@@362)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@332 f_8@@362))
))) (forall ((o2_1@@333 T@Ref) (f_8@@363 T@Field_7712_7741) ) (!  (=> (select (|PolymorphicMapType_13437_7712_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) null (WandMaskField_7712 pm_f_1@@22))) o2_1@@333 f_8@@363) (= (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@57) o2_1@@333 f_8@@363) (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@333 f_8@@363)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@333 f_8@@363))
))) (forall ((o2_1@@334 T@Ref) (f_8@@364 T@Field_16278_1219) ) (!  (=> (select (|PolymorphicMapType_13437_16278_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) null (WandMaskField_7712 pm_f_1@@22))) o2_1@@334 f_8@@364) (= (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@57) o2_1@@334 f_8@@364) (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@334 f_8@@364)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@334 f_8@@364))
))) (forall ((o2_1@@335 T@Ref) (f_8@@365 T@Field_16278_53) ) (!  (=> (select (|PolymorphicMapType_13437_16278_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) null (WandMaskField_7712 pm_f_1@@22))) o2_1@@335 f_8@@365) (= (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@57) o2_1@@335 f_8@@365) (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@335 f_8@@365)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@335 f_8@@365))
))) (forall ((o2_1@@336 T@Ref) (f_8@@366 T@Field_16278_12962) ) (!  (=> (select (|PolymorphicMapType_13437_16278_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) null (WandMaskField_7712 pm_f_1@@22))) o2_1@@336 f_8@@366) (= (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@57) o2_1@@336 f_8@@366) (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@336 f_8@@366)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@336 f_8@@366))
))) (forall ((o2_1@@337 T@Ref) (f_8@@367 T@Field_16293_16298) ) (!  (=> (select (|PolymorphicMapType_13437_16278_50925#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) null (WandMaskField_7712 pm_f_1@@22))) o2_1@@337 f_8@@367) (= (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@57) o2_1@@337 f_8@@367) (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@337 f_8@@367)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@337 f_8@@367))
))) (forall ((o2_1@@338 T@Ref) (f_8@@368 T@Field_16311_16312) ) (!  (=> (select (|PolymorphicMapType_13437_16278_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) null (WandMaskField_7712 pm_f_1@@22))) o2_1@@338 f_8@@368) (= (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@57) o2_1@@338 f_8@@368) (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@338 f_8@@368)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@338 f_8@@368))
))) (forall ((o2_1@@339 T@Ref) (f_8@@369 T@Field_17211_1749) ) (!  (=> (select (|PolymorphicMapType_13437_17211_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) null (WandMaskField_7712 pm_f_1@@22))) o2_1@@339 f_8@@369) (= (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@57) o2_1@@339 f_8@@369) (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@339 f_8@@369)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@339 f_8@@369))
))) (forall ((o2_1@@340 T@Ref) (f_8@@370 T@Field_17211_53) ) (!  (=> (select (|PolymorphicMapType_13437_17211_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) null (WandMaskField_7712 pm_f_1@@22))) o2_1@@340 f_8@@370) (= (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@57) o2_1@@340 f_8@@370) (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@340 f_8@@370)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@340 f_8@@370))
))) (forall ((o2_1@@341 T@Ref) (f_8@@371 T@Field_17211_12962) ) (!  (=> (select (|PolymorphicMapType_13437_17211_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) null (WandMaskField_7712 pm_f_1@@22))) o2_1@@341 f_8@@371) (= (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@57) o2_1@@341 f_8@@371) (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@341 f_8@@371)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@341 f_8@@371))
))) (forall ((o2_1@@342 T@Ref) (f_8@@372 T@Field_17223_17228) ) (!  (=> (select (|PolymorphicMapType_13437_17211_51973#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) null (WandMaskField_7712 pm_f_1@@22))) o2_1@@342 f_8@@372) (= (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@57) o2_1@@342 f_8@@372) (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@342 f_8@@372)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@342 f_8@@372))
))) (forall ((o2_1@@343 T@Ref) (f_8@@373 T@Field_17238_17239) ) (!  (=> (select (|PolymorphicMapType_13437_17211_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) null (WandMaskField_7712 pm_f_1@@22))) o2_1@@343 f_8@@373) (= (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@57) o2_1@@343 f_8@@373) (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@343 f_8@@373)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@343 f_8@@373))
))) (forall ((o2_1@@344 T@Ref) (f_8@@374 T@Field_17768_2018) ) (!  (=> (select (|PolymorphicMapType_13437_17768_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) null (WandMaskField_7712 pm_f_1@@22))) o2_1@@344 f_8@@374) (= (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@57) o2_1@@344 f_8@@374) (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@344 f_8@@374)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@344 f_8@@374))
))) (forall ((o2_1@@345 T@Ref) (f_8@@375 T@Field_17768_53) ) (!  (=> (select (|PolymorphicMapType_13437_17768_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) null (WandMaskField_7712 pm_f_1@@22))) o2_1@@345 f_8@@375) (= (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@57) o2_1@@345 f_8@@375) (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@345 f_8@@375)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@345 f_8@@375))
))) (forall ((o2_1@@346 T@Ref) (f_8@@376 T@Field_17768_12962) ) (!  (=> (select (|PolymorphicMapType_13437_17768_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) null (WandMaskField_7712 pm_f_1@@22))) o2_1@@346 f_8@@376) (= (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@57) o2_1@@346 f_8@@376) (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@346 f_8@@376)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@346 f_8@@376))
))) (forall ((o2_1@@347 T@Ref) (f_8@@377 T@Field_17781_17786) ) (!  (=> (select (|PolymorphicMapType_13437_17768_53021#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) null (WandMaskField_7712 pm_f_1@@22))) o2_1@@347 f_8@@377) (= (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@57) o2_1@@347 f_8@@377) (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@347 f_8@@377)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@347 f_8@@377))
))) (forall ((o2_1@@348 T@Ref) (f_8@@378 T@Field_17797_17798) ) (!  (=> (select (|PolymorphicMapType_13437_17768_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) null (WandMaskField_7712 pm_f_1@@22))) o2_1@@348 f_8@@378) (= (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@57) o2_1@@348 f_8@@378) (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@348 f_8@@378)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@348 f_8@@378))
))) (forall ((o2_1@@349 T@Ref) (f_8@@379 T@Field_7715_2323) ) (!  (=> (select (|PolymorphicMapType_13437_18457_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) null (WandMaskField_7712 pm_f_1@@22))) o2_1@@349 f_8@@379) (= (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@57) o2_1@@349 f_8@@379) (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@349 f_8@@379)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@349 f_8@@379))
))) (forall ((o2_1@@350 T@Ref) (f_8@@380 T@Field_7715_53) ) (!  (=> (select (|PolymorphicMapType_13437_18457_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) null (WandMaskField_7712 pm_f_1@@22))) o2_1@@350 f_8@@380) (= (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@57) o2_1@@350 f_8@@380) (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@350 f_8@@380)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@350 f_8@@380))
))) (forall ((o2_1@@351 T@Ref) (f_8@@381 T@Field_7715_12962) ) (!  (=> (select (|PolymorphicMapType_13437_18457_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) null (WandMaskField_7712 pm_f_1@@22))) o2_1@@351 f_8@@381) (= (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@57) o2_1@@351 f_8@@381) (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@351 f_8@@381)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@351 f_8@@381))
))) (forall ((o2_1@@352 T@Ref) (f_8@@382 T@Field_18470_18475) ) (!  (=> (select (|PolymorphicMapType_13437_18457_54069#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) null (WandMaskField_7712 pm_f_1@@22))) o2_1@@352 f_8@@382) (= (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@57) o2_1@@352 f_8@@382) (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@352 f_8@@382)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@352 f_8@@382))
))) (forall ((o2_1@@353 T@Ref) (f_8@@383 T@Field_18457_18458) ) (!  (=> (select (|PolymorphicMapType_13437_18457_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) null (WandMaskField_7712 pm_f_1@@22))) o2_1@@353 f_8@@383) (= (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@57) o2_1@@353 f_8@@383) (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@353 f_8@@383)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@353 f_8@@383))
))) (forall ((o2_1@@354 T@Ref) (f_8@@384 T@Field_7740_2323) ) (!  (=> (select (|PolymorphicMapType_13437_19395_2323#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) null (WandMaskField_7712 pm_f_1@@22))) o2_1@@354 f_8@@384) (= (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@57) o2_1@@354 f_8@@384) (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@354 f_8@@384)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@354 f_8@@384))
))) (forall ((o2_1@@355 T@Ref) (f_8@@385 T@Field_7740_53) ) (!  (=> (select (|PolymorphicMapType_13437_19395_53#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) null (WandMaskField_7712 pm_f_1@@22))) o2_1@@355 f_8@@385) (= (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@57) o2_1@@355 f_8@@385) (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@355 f_8@@385)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@355 f_8@@385))
))) (forall ((o2_1@@356 T@Ref) (f_8@@386 T@Field_7740_12962) ) (!  (=> (select (|PolymorphicMapType_13437_19395_12962#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) null (WandMaskField_7712 pm_f_1@@22))) o2_1@@356 f_8@@386) (= (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@57) o2_1@@356 f_8@@386) (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@356 f_8@@386)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@356 f_8@@386))
))) (forall ((o2_1@@357 T@Ref) (f_8@@387 T@Field_19408_19413) ) (!  (=> (select (|PolymorphicMapType_13437_19395_55117#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) null (WandMaskField_7712 pm_f_1@@22))) o2_1@@357 f_8@@387) (= (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@57) o2_1@@357 f_8@@387) (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@357 f_8@@387)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@357 f_8@@387))
))) (forall ((o2_1@@358 T@Ref) (f_8@@388 T@Field_19395_19396) ) (!  (=> (select (|PolymorphicMapType_13437_19395_16312#PolymorphicMapType_13437| (select (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@57) null (WandMaskField_7712 pm_f_1@@22))) o2_1@@358 f_8@@388) (= (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@57) o2_1@@358 f_8@@388) (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@358 f_8@@388)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| ExhaleHeap@@54) o2_1@@358 f_8@@388))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@54 Mask@@115) (IsWandField_7712_57253 pm_f_1@@22))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_12909) (SummandMask1 T@PolymorphicMapType_12909) (SummandMask2 T@PolymorphicMapType_12909) (o_2@@119 T@Ref) (f_4@@119 T@Field_17223_17228) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_12909_7632_72483#PolymorphicMapType_12909| ResultMask) o_2@@119 f_4@@119) (+ (select (|PolymorphicMapType_12909_7632_72483#PolymorphicMapType_12909| SummandMask1) o_2@@119 f_4@@119) (select (|PolymorphicMapType_12909_7632_72483#PolymorphicMapType_12909| SummandMask2) o_2@@119 f_4@@119))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12909_7632_72483#PolymorphicMapType_12909| ResultMask) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12909_7632_72483#PolymorphicMapType_12909| SummandMask1) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12909_7632_72483#PolymorphicMapType_12909| SummandMask2) o_2@@119 f_4@@119))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_12909) (SummandMask1@@0 T@PolymorphicMapType_12909) (SummandMask2@@0 T@PolymorphicMapType_12909) (o_2@@120 T@Ref) (f_4@@120 T@Field_17211_12962) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_12909_7632_12962#PolymorphicMapType_12909| ResultMask@@0) o_2@@120 f_4@@120) (+ (select (|PolymorphicMapType_12909_7632_12962#PolymorphicMapType_12909| SummandMask1@@0) o_2@@120 f_4@@120) (select (|PolymorphicMapType_12909_7632_12962#PolymorphicMapType_12909| SummandMask2@@0) o_2@@120 f_4@@120))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12909_7632_12962#PolymorphicMapType_12909| ResultMask@@0) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12909_7632_12962#PolymorphicMapType_12909| SummandMask1@@0) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12909_7632_12962#PolymorphicMapType_12909| SummandMask2@@0) o_2@@120 f_4@@120))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_12909) (SummandMask1@@1 T@PolymorphicMapType_12909) (SummandMask2@@1 T@PolymorphicMapType_12909) (o_2@@121 T@Ref) (f_4@@121 T@Field_17211_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_12909_7632_53#PolymorphicMapType_12909| ResultMask@@1) o_2@@121 f_4@@121) (+ (select (|PolymorphicMapType_12909_7632_53#PolymorphicMapType_12909| SummandMask1@@1) o_2@@121 f_4@@121) (select (|PolymorphicMapType_12909_7632_53#PolymorphicMapType_12909| SummandMask2@@1) o_2@@121 f_4@@121))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12909_7632_53#PolymorphicMapType_12909| ResultMask@@1) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12909_7632_53#PolymorphicMapType_12909| SummandMask1@@1) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12909_7632_53#PolymorphicMapType_12909| SummandMask2@@1) o_2@@121 f_4@@121))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_12909) (SummandMask1@@2 T@PolymorphicMapType_12909) (SummandMask2@@2 T@PolymorphicMapType_12909) (o_2@@122 T@Ref) (f_4@@122 T@Field_17238_17239) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_12909_7632_7741#PolymorphicMapType_12909| ResultMask@@2) o_2@@122 f_4@@122) (+ (select (|PolymorphicMapType_12909_7632_7741#PolymorphicMapType_12909| SummandMask1@@2) o_2@@122 f_4@@122) (select (|PolymorphicMapType_12909_7632_7741#PolymorphicMapType_12909| SummandMask2@@2) o_2@@122 f_4@@122))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12909_7632_7741#PolymorphicMapType_12909| ResultMask@@2) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12909_7632_7741#PolymorphicMapType_12909| SummandMask1@@2) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12909_7632_7741#PolymorphicMapType_12909| SummandMask2@@2) o_2@@122 f_4@@122))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_12909) (SummandMask1@@3 T@PolymorphicMapType_12909) (SummandMask2@@3 T@PolymorphicMapType_12909) (o_2@@123 T@Ref) (f_4@@123 T@Field_17211_1749) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_12909_7632_1749#PolymorphicMapType_12909| ResultMask@@3) o_2@@123 f_4@@123) (+ (select (|PolymorphicMapType_12909_7632_1749#PolymorphicMapType_12909| SummandMask1@@3) o_2@@123 f_4@@123) (select (|PolymorphicMapType_12909_7632_1749#PolymorphicMapType_12909| SummandMask2@@3) o_2@@123 f_4@@123))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12909_7632_1749#PolymorphicMapType_12909| ResultMask@@3) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12909_7632_1749#PolymorphicMapType_12909| SummandMask1@@3) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12909_7632_1749#PolymorphicMapType_12909| SummandMask2@@3) o_2@@123 f_4@@123))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_12909) (SummandMask1@@4 T@PolymorphicMapType_12909) (SummandMask2@@4 T@PolymorphicMapType_12909) (o_2@@124 T@Ref) (f_4@@124 T@Field_17781_17786) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_12909_7664_72069#PolymorphicMapType_12909| ResultMask@@4) o_2@@124 f_4@@124) (+ (select (|PolymorphicMapType_12909_7664_72069#PolymorphicMapType_12909| SummandMask1@@4) o_2@@124 f_4@@124) (select (|PolymorphicMapType_12909_7664_72069#PolymorphicMapType_12909| SummandMask2@@4) o_2@@124 f_4@@124))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12909_7664_72069#PolymorphicMapType_12909| ResultMask@@4) o_2@@124 f_4@@124))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12909_7664_72069#PolymorphicMapType_12909| SummandMask1@@4) o_2@@124 f_4@@124))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12909_7664_72069#PolymorphicMapType_12909| SummandMask2@@4) o_2@@124 f_4@@124))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_12909) (SummandMask1@@5 T@PolymorphicMapType_12909) (SummandMask2@@5 T@PolymorphicMapType_12909) (o_2@@125 T@Ref) (f_4@@125 T@Field_17768_12962) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_12909_7664_12962#PolymorphicMapType_12909| ResultMask@@5) o_2@@125 f_4@@125) (+ (select (|PolymorphicMapType_12909_7664_12962#PolymorphicMapType_12909| SummandMask1@@5) o_2@@125 f_4@@125) (select (|PolymorphicMapType_12909_7664_12962#PolymorphicMapType_12909| SummandMask2@@5) o_2@@125 f_4@@125))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12909_7664_12962#PolymorphicMapType_12909| ResultMask@@5) o_2@@125 f_4@@125))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12909_7664_12962#PolymorphicMapType_12909| SummandMask1@@5) o_2@@125 f_4@@125))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12909_7664_12962#PolymorphicMapType_12909| SummandMask2@@5) o_2@@125 f_4@@125))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_12909) (SummandMask1@@6 T@PolymorphicMapType_12909) (SummandMask2@@6 T@PolymorphicMapType_12909) (o_2@@126 T@Ref) (f_4@@126 T@Field_17768_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_12909_7664_53#PolymorphicMapType_12909| ResultMask@@6) o_2@@126 f_4@@126) (+ (select (|PolymorphicMapType_12909_7664_53#PolymorphicMapType_12909| SummandMask1@@6) o_2@@126 f_4@@126) (select (|PolymorphicMapType_12909_7664_53#PolymorphicMapType_12909| SummandMask2@@6) o_2@@126 f_4@@126))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12909_7664_53#PolymorphicMapType_12909| ResultMask@@6) o_2@@126 f_4@@126))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12909_7664_53#PolymorphicMapType_12909| SummandMask1@@6) o_2@@126 f_4@@126))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12909_7664_53#PolymorphicMapType_12909| SummandMask2@@6) o_2@@126 f_4@@126))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_12909) (SummandMask1@@7 T@PolymorphicMapType_12909) (SummandMask2@@7 T@PolymorphicMapType_12909) (o_2@@127 T@Ref) (f_4@@127 T@Field_17797_17798) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_12909_7664_7741#PolymorphicMapType_12909| ResultMask@@7) o_2@@127 f_4@@127) (+ (select (|PolymorphicMapType_12909_7664_7741#PolymorphicMapType_12909| SummandMask1@@7) o_2@@127 f_4@@127) (select (|PolymorphicMapType_12909_7664_7741#PolymorphicMapType_12909| SummandMask2@@7) o_2@@127 f_4@@127))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_12909_7664_7741#PolymorphicMapType_12909| ResultMask@@7) o_2@@127 f_4@@127))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_12909_7664_7741#PolymorphicMapType_12909| SummandMask1@@7) o_2@@127 f_4@@127))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_12909_7664_7741#PolymorphicMapType_12909| SummandMask2@@7) o_2@@127 f_4@@127))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_12909) (SummandMask1@@8 T@PolymorphicMapType_12909) (SummandMask2@@8 T@PolymorphicMapType_12909) (o_2@@128 T@Ref) (f_4@@128 T@Field_17768_2018) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_12909_7664_2018#PolymorphicMapType_12909| ResultMask@@8) o_2@@128 f_4@@128) (+ (select (|PolymorphicMapType_12909_7664_2018#PolymorphicMapType_12909| SummandMask1@@8) o_2@@128 f_4@@128) (select (|PolymorphicMapType_12909_7664_2018#PolymorphicMapType_12909| SummandMask2@@8) o_2@@128 f_4@@128))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_12909_7664_2018#PolymorphicMapType_12909| ResultMask@@8) o_2@@128 f_4@@128))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_12909_7664_2018#PolymorphicMapType_12909| SummandMask1@@8) o_2@@128 f_4@@128))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_12909_7664_2018#PolymorphicMapType_12909| SummandMask2@@8) o_2@@128 f_4@@128))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_12909) (SummandMask1@@9 T@PolymorphicMapType_12909) (SummandMask2@@9 T@PolymorphicMapType_12909) (o_2@@129 T@Ref) (f_4@@129 T@Field_18470_18475) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_12909_7715_71655#PolymorphicMapType_12909| ResultMask@@9) o_2@@129 f_4@@129) (+ (select (|PolymorphicMapType_12909_7715_71655#PolymorphicMapType_12909| SummandMask1@@9) o_2@@129 f_4@@129) (select (|PolymorphicMapType_12909_7715_71655#PolymorphicMapType_12909| SummandMask2@@9) o_2@@129 f_4@@129))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_12909_7715_71655#PolymorphicMapType_12909| ResultMask@@9) o_2@@129 f_4@@129))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_12909_7715_71655#PolymorphicMapType_12909| SummandMask1@@9) o_2@@129 f_4@@129))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_12909_7715_71655#PolymorphicMapType_12909| SummandMask2@@9) o_2@@129 f_4@@129))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_12909) (SummandMask1@@10 T@PolymorphicMapType_12909) (SummandMask2@@10 T@PolymorphicMapType_12909) (o_2@@130 T@Ref) (f_4@@130 T@Field_7715_12962) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_12909_7715_12962#PolymorphicMapType_12909| ResultMask@@10) o_2@@130 f_4@@130) (+ (select (|PolymorphicMapType_12909_7715_12962#PolymorphicMapType_12909| SummandMask1@@10) o_2@@130 f_4@@130) (select (|PolymorphicMapType_12909_7715_12962#PolymorphicMapType_12909| SummandMask2@@10) o_2@@130 f_4@@130))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_12909_7715_12962#PolymorphicMapType_12909| ResultMask@@10) o_2@@130 f_4@@130))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_12909_7715_12962#PolymorphicMapType_12909| SummandMask1@@10) o_2@@130 f_4@@130))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_12909_7715_12962#PolymorphicMapType_12909| SummandMask2@@10) o_2@@130 f_4@@130))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_12909) (SummandMask1@@11 T@PolymorphicMapType_12909) (SummandMask2@@11 T@PolymorphicMapType_12909) (o_2@@131 T@Ref) (f_4@@131 T@Field_7715_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_12909_7715_53#PolymorphicMapType_12909| ResultMask@@11) o_2@@131 f_4@@131) (+ (select (|PolymorphicMapType_12909_7715_53#PolymorphicMapType_12909| SummandMask1@@11) o_2@@131 f_4@@131) (select (|PolymorphicMapType_12909_7715_53#PolymorphicMapType_12909| SummandMask2@@11) o_2@@131 f_4@@131))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_12909_7715_53#PolymorphicMapType_12909| ResultMask@@11) o_2@@131 f_4@@131))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_12909_7715_53#PolymorphicMapType_12909| SummandMask1@@11) o_2@@131 f_4@@131))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_12909_7715_53#PolymorphicMapType_12909| SummandMask2@@11) o_2@@131 f_4@@131))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_12909) (SummandMask1@@12 T@PolymorphicMapType_12909) (SummandMask2@@12 T@PolymorphicMapType_12909) (o_2@@132 T@Ref) (f_4@@132 T@Field_18457_18458) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_12909_7715_7716#PolymorphicMapType_12909| ResultMask@@12) o_2@@132 f_4@@132) (+ (select (|PolymorphicMapType_12909_7715_7716#PolymorphicMapType_12909| SummandMask1@@12) o_2@@132 f_4@@132) (select (|PolymorphicMapType_12909_7715_7716#PolymorphicMapType_12909| SummandMask2@@12) o_2@@132 f_4@@132))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_12909_7715_7716#PolymorphicMapType_12909| ResultMask@@12) o_2@@132 f_4@@132))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_12909_7715_7716#PolymorphicMapType_12909| SummandMask1@@12) o_2@@132 f_4@@132))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_12909_7715_7716#PolymorphicMapType_12909| SummandMask2@@12) o_2@@132 f_4@@132))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_12909) (SummandMask1@@13 T@PolymorphicMapType_12909) (SummandMask2@@13 T@PolymorphicMapType_12909) (o_2@@133 T@Ref) (f_4@@133 T@Field_7715_2323) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_12909_7715_2323#PolymorphicMapType_12909| ResultMask@@13) o_2@@133 f_4@@133) (+ (select (|PolymorphicMapType_12909_7715_2323#PolymorphicMapType_12909| SummandMask1@@13) o_2@@133 f_4@@133) (select (|PolymorphicMapType_12909_7715_2323#PolymorphicMapType_12909| SummandMask2@@13) o_2@@133 f_4@@133))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_12909_7715_2323#PolymorphicMapType_12909| ResultMask@@13) o_2@@133 f_4@@133))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_12909_7715_2323#PolymorphicMapType_12909| SummandMask1@@13) o_2@@133 f_4@@133))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_12909_7715_2323#PolymorphicMapType_12909| SummandMask2@@13) o_2@@133 f_4@@133))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_12909) (SummandMask1@@14 T@PolymorphicMapType_12909) (SummandMask2@@14 T@PolymorphicMapType_12909) (o_2@@134 T@Ref) (f_4@@134 T@Field_16293_16298) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_12909_7562_71244#PolymorphicMapType_12909| ResultMask@@14) o_2@@134 f_4@@134) (+ (select (|PolymorphicMapType_12909_7562_71244#PolymorphicMapType_12909| SummandMask1@@14) o_2@@134 f_4@@134) (select (|PolymorphicMapType_12909_7562_71244#PolymorphicMapType_12909| SummandMask2@@14) o_2@@134 f_4@@134))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_12909_7562_71244#PolymorphicMapType_12909| ResultMask@@14) o_2@@134 f_4@@134))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_12909_7562_71244#PolymorphicMapType_12909| SummandMask1@@14) o_2@@134 f_4@@134))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_12909_7562_71244#PolymorphicMapType_12909| SummandMask2@@14) o_2@@134 f_4@@134))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_12909) (SummandMask1@@15 T@PolymorphicMapType_12909) (SummandMask2@@15 T@PolymorphicMapType_12909) (o_2@@135 T@Ref) (f_4@@135 T@Field_16278_12962) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_12909_7562_12962#PolymorphicMapType_12909| ResultMask@@15) o_2@@135 f_4@@135) (+ (select (|PolymorphicMapType_12909_7562_12962#PolymorphicMapType_12909| SummandMask1@@15) o_2@@135 f_4@@135) (select (|PolymorphicMapType_12909_7562_12962#PolymorphicMapType_12909| SummandMask2@@15) o_2@@135 f_4@@135))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_12909_7562_12962#PolymorphicMapType_12909| ResultMask@@15) o_2@@135 f_4@@135))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_12909_7562_12962#PolymorphicMapType_12909| SummandMask1@@15) o_2@@135 f_4@@135))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_12909_7562_12962#PolymorphicMapType_12909| SummandMask2@@15) o_2@@135 f_4@@135))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_12909) (SummandMask1@@16 T@PolymorphicMapType_12909) (SummandMask2@@16 T@PolymorphicMapType_12909) (o_2@@136 T@Ref) (f_4@@136 T@Field_16278_53) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_12909_7562_53#PolymorphicMapType_12909| ResultMask@@16) o_2@@136 f_4@@136) (+ (select (|PolymorphicMapType_12909_7562_53#PolymorphicMapType_12909| SummandMask1@@16) o_2@@136 f_4@@136) (select (|PolymorphicMapType_12909_7562_53#PolymorphicMapType_12909| SummandMask2@@16) o_2@@136 f_4@@136))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_12909_7562_53#PolymorphicMapType_12909| ResultMask@@16) o_2@@136 f_4@@136))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_12909_7562_53#PolymorphicMapType_12909| SummandMask1@@16) o_2@@136 f_4@@136))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_12909_7562_53#PolymorphicMapType_12909| SummandMask2@@16) o_2@@136 f_4@@136))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_12909) (SummandMask1@@17 T@PolymorphicMapType_12909) (SummandMask2@@17 T@PolymorphicMapType_12909) (o_2@@137 T@Ref) (f_4@@137 T@Field_16311_16312) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_12909_7562_7741#PolymorphicMapType_12909| ResultMask@@17) o_2@@137 f_4@@137) (+ (select (|PolymorphicMapType_12909_7562_7741#PolymorphicMapType_12909| SummandMask1@@17) o_2@@137 f_4@@137) (select (|PolymorphicMapType_12909_7562_7741#PolymorphicMapType_12909| SummandMask2@@17) o_2@@137 f_4@@137))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_12909_7562_7741#PolymorphicMapType_12909| ResultMask@@17) o_2@@137 f_4@@137))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_12909_7562_7741#PolymorphicMapType_12909| SummandMask1@@17) o_2@@137 f_4@@137))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_12909_7562_7741#PolymorphicMapType_12909| SummandMask2@@17) o_2@@137 f_4@@137))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_12909) (SummandMask1@@18 T@PolymorphicMapType_12909) (SummandMask2@@18 T@PolymorphicMapType_12909) (o_2@@138 T@Ref) (f_4@@138 T@Field_16278_1219) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_12909_7562_1219#PolymorphicMapType_12909| ResultMask@@18) o_2@@138 f_4@@138) (+ (select (|PolymorphicMapType_12909_7562_1219#PolymorphicMapType_12909| SummandMask1@@18) o_2@@138 f_4@@138) (select (|PolymorphicMapType_12909_7562_1219#PolymorphicMapType_12909| SummandMask2@@18) o_2@@138 f_4@@138))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_12909_7562_1219#PolymorphicMapType_12909| ResultMask@@18) o_2@@138 f_4@@138))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_12909_7562_1219#PolymorphicMapType_12909| SummandMask1@@18) o_2@@138 f_4@@138))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_12909_7562_1219#PolymorphicMapType_12909| SummandMask2@@18) o_2@@138 f_4@@138))
)))
(assert (forall ((ResultMask@@19 T@PolymorphicMapType_12909) (SummandMask1@@19 T@PolymorphicMapType_12909) (SummandMask2@@19 T@PolymorphicMapType_12909) (o_2@@139 T@Ref) (f_4@@139 T@Field_19408_19413) ) (!  (=> (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (= (select (|PolymorphicMapType_12909_7740_70830#PolymorphicMapType_12909| ResultMask@@19) o_2@@139 f_4@@139) (+ (select (|PolymorphicMapType_12909_7740_70830#PolymorphicMapType_12909| SummandMask1@@19) o_2@@139 f_4@@139) (select (|PolymorphicMapType_12909_7740_70830#PolymorphicMapType_12909| SummandMask2@@19) o_2@@139 f_4@@139))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_12909_7740_70830#PolymorphicMapType_12909| ResultMask@@19) o_2@@139 f_4@@139))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_12909_7740_70830#PolymorphicMapType_12909| SummandMask1@@19) o_2@@139 f_4@@139))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_12909_7740_70830#PolymorphicMapType_12909| SummandMask2@@19) o_2@@139 f_4@@139))
)))
(assert (forall ((ResultMask@@20 T@PolymorphicMapType_12909) (SummandMask1@@20 T@PolymorphicMapType_12909) (SummandMask2@@20 T@PolymorphicMapType_12909) (o_2@@140 T@Ref) (f_4@@140 T@Field_7740_12962) ) (!  (=> (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (= (select (|PolymorphicMapType_12909_7740_12962#PolymorphicMapType_12909| ResultMask@@20) o_2@@140 f_4@@140) (+ (select (|PolymorphicMapType_12909_7740_12962#PolymorphicMapType_12909| SummandMask1@@20) o_2@@140 f_4@@140) (select (|PolymorphicMapType_12909_7740_12962#PolymorphicMapType_12909| SummandMask2@@20) o_2@@140 f_4@@140))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_12909_7740_12962#PolymorphicMapType_12909| ResultMask@@20) o_2@@140 f_4@@140))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_12909_7740_12962#PolymorphicMapType_12909| SummandMask1@@20) o_2@@140 f_4@@140))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_12909_7740_12962#PolymorphicMapType_12909| SummandMask2@@20) o_2@@140 f_4@@140))
)))
(assert (forall ((ResultMask@@21 T@PolymorphicMapType_12909) (SummandMask1@@21 T@PolymorphicMapType_12909) (SummandMask2@@21 T@PolymorphicMapType_12909) (o_2@@141 T@Ref) (f_4@@141 T@Field_7740_53) ) (!  (=> (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (= (select (|PolymorphicMapType_12909_7740_53#PolymorphicMapType_12909| ResultMask@@21) o_2@@141 f_4@@141) (+ (select (|PolymorphicMapType_12909_7740_53#PolymorphicMapType_12909| SummandMask1@@21) o_2@@141 f_4@@141) (select (|PolymorphicMapType_12909_7740_53#PolymorphicMapType_12909| SummandMask2@@21) o_2@@141 f_4@@141))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_12909_7740_53#PolymorphicMapType_12909| ResultMask@@21) o_2@@141 f_4@@141))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_12909_7740_53#PolymorphicMapType_12909| SummandMask1@@21) o_2@@141 f_4@@141))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_12909_7740_53#PolymorphicMapType_12909| SummandMask2@@21) o_2@@141 f_4@@141))
)))
(assert (forall ((ResultMask@@22 T@PolymorphicMapType_12909) (SummandMask1@@22 T@PolymorphicMapType_12909) (SummandMask2@@22 T@PolymorphicMapType_12909) (o_2@@142 T@Ref) (f_4@@142 T@Field_19395_19396) ) (!  (=> (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (= (select (|PolymorphicMapType_12909_7740_7741#PolymorphicMapType_12909| ResultMask@@22) o_2@@142 f_4@@142) (+ (select (|PolymorphicMapType_12909_7740_7741#PolymorphicMapType_12909| SummandMask1@@22) o_2@@142 f_4@@142) (select (|PolymorphicMapType_12909_7740_7741#PolymorphicMapType_12909| SummandMask2@@22) o_2@@142 f_4@@142))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_12909_7740_7741#PolymorphicMapType_12909| ResultMask@@22) o_2@@142 f_4@@142))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_12909_7740_7741#PolymorphicMapType_12909| SummandMask1@@22) o_2@@142 f_4@@142))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_12909_7740_7741#PolymorphicMapType_12909| SummandMask2@@22) o_2@@142 f_4@@142))
)))
(assert (forall ((ResultMask@@23 T@PolymorphicMapType_12909) (SummandMask1@@23 T@PolymorphicMapType_12909) (SummandMask2@@23 T@PolymorphicMapType_12909) (o_2@@143 T@Ref) (f_4@@143 T@Field_7740_2323) ) (!  (=> (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (= (select (|PolymorphicMapType_12909_7740_2323#PolymorphicMapType_12909| ResultMask@@23) o_2@@143 f_4@@143) (+ (select (|PolymorphicMapType_12909_7740_2323#PolymorphicMapType_12909| SummandMask1@@23) o_2@@143 f_4@@143) (select (|PolymorphicMapType_12909_7740_2323#PolymorphicMapType_12909| SummandMask2@@23) o_2@@143 f_4@@143))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_12909_7740_2323#PolymorphicMapType_12909| ResultMask@@23) o_2@@143 f_4@@143))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_12909_7740_2323#PolymorphicMapType_12909| SummandMask1@@23) o_2@@143 f_4@@143))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_12909_7740_2323#PolymorphicMapType_12909| SummandMask2@@23) o_2@@143 f_4@@143))
)))
(assert (forall ((ResultMask@@24 T@PolymorphicMapType_12909) (SummandMask1@@24 T@PolymorphicMapType_12909) (SummandMask2@@24 T@PolymorphicMapType_12909) (o_2@@144 T@Ref) (f_4@@144 T@Field_7712_16298) ) (!  (=> (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (= (select (|PolymorphicMapType_12909_7712_70419#PolymorphicMapType_12909| ResultMask@@24) o_2@@144 f_4@@144) (+ (select (|PolymorphicMapType_12909_7712_70419#PolymorphicMapType_12909| SummandMask1@@24) o_2@@144 f_4@@144) (select (|PolymorphicMapType_12909_7712_70419#PolymorphicMapType_12909| SummandMask2@@24) o_2@@144 f_4@@144))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (select (|PolymorphicMapType_12909_7712_70419#PolymorphicMapType_12909| ResultMask@@24) o_2@@144 f_4@@144))
 :pattern ( (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (select (|PolymorphicMapType_12909_7712_70419#PolymorphicMapType_12909| SummandMask1@@24) o_2@@144 f_4@@144))
 :pattern ( (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (select (|PolymorphicMapType_12909_7712_70419#PolymorphicMapType_12909| SummandMask2@@24) o_2@@144 f_4@@144))
)))
(assert (forall ((ResultMask@@25 T@PolymorphicMapType_12909) (SummandMask1@@25 T@PolymorphicMapType_12909) (SummandMask2@@25 T@PolymorphicMapType_12909) (o_2@@145 T@Ref) (f_4@@145 T@Field_12961_12962) ) (!  (=> (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (= (select (|PolymorphicMapType_12909_7712_12962#PolymorphicMapType_12909| ResultMask@@25) o_2@@145 f_4@@145) (+ (select (|PolymorphicMapType_12909_7712_12962#PolymorphicMapType_12909| SummandMask1@@25) o_2@@145 f_4@@145) (select (|PolymorphicMapType_12909_7712_12962#PolymorphicMapType_12909| SummandMask2@@25) o_2@@145 f_4@@145))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (select (|PolymorphicMapType_12909_7712_12962#PolymorphicMapType_12909| ResultMask@@25) o_2@@145 f_4@@145))
 :pattern ( (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (select (|PolymorphicMapType_12909_7712_12962#PolymorphicMapType_12909| SummandMask1@@25) o_2@@145 f_4@@145))
 :pattern ( (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (select (|PolymorphicMapType_12909_7712_12962#PolymorphicMapType_12909| SummandMask2@@25) o_2@@145 f_4@@145))
)))
(assert (forall ((ResultMask@@26 T@PolymorphicMapType_12909) (SummandMask1@@26 T@PolymorphicMapType_12909) (SummandMask2@@26 T@PolymorphicMapType_12909) (o_2@@146 T@Ref) (f_4@@146 T@Field_12948_53) ) (!  (=> (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (= (select (|PolymorphicMapType_12909_7712_53#PolymorphicMapType_12909| ResultMask@@26) o_2@@146 f_4@@146) (+ (select (|PolymorphicMapType_12909_7712_53#PolymorphicMapType_12909| SummandMask1@@26) o_2@@146 f_4@@146) (select (|PolymorphicMapType_12909_7712_53#PolymorphicMapType_12909| SummandMask2@@26) o_2@@146 f_4@@146))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (select (|PolymorphicMapType_12909_7712_53#PolymorphicMapType_12909| ResultMask@@26) o_2@@146 f_4@@146))
 :pattern ( (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (select (|PolymorphicMapType_12909_7712_53#PolymorphicMapType_12909| SummandMask1@@26) o_2@@146 f_4@@146))
 :pattern ( (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (select (|PolymorphicMapType_12909_7712_53#PolymorphicMapType_12909| SummandMask2@@26) o_2@@146 f_4@@146))
)))
(assert (forall ((ResultMask@@27 T@PolymorphicMapType_12909) (SummandMask1@@27 T@PolymorphicMapType_12909) (SummandMask2@@27 T@PolymorphicMapType_12909) (o_2@@147 T@Ref) (f_4@@147 T@Field_7712_7741) ) (!  (=> (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (= (select (|PolymorphicMapType_12909_7712_7741#PolymorphicMapType_12909| ResultMask@@27) o_2@@147 f_4@@147) (+ (select (|PolymorphicMapType_12909_7712_7741#PolymorphicMapType_12909| SummandMask1@@27) o_2@@147 f_4@@147) (select (|PolymorphicMapType_12909_7712_7741#PolymorphicMapType_12909| SummandMask2@@27) o_2@@147 f_4@@147))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (select (|PolymorphicMapType_12909_7712_7741#PolymorphicMapType_12909| ResultMask@@27) o_2@@147 f_4@@147))
 :pattern ( (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (select (|PolymorphicMapType_12909_7712_7741#PolymorphicMapType_12909| SummandMask1@@27) o_2@@147 f_4@@147))
 :pattern ( (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (select (|PolymorphicMapType_12909_7712_7741#PolymorphicMapType_12909| SummandMask2@@27) o_2@@147 f_4@@147))
)))
(assert (forall ((ResultMask@@28 T@PolymorphicMapType_12909) (SummandMask1@@28 T@PolymorphicMapType_12909) (SummandMask2@@28 T@PolymorphicMapType_12909) (o_2@@148 T@Ref) (f_4@@148 T@Field_18410_2323) ) (!  (=> (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (= (select (|PolymorphicMapType_12909_7712_2323#PolymorphicMapType_12909| ResultMask@@28) o_2@@148 f_4@@148) (+ (select (|PolymorphicMapType_12909_7712_2323#PolymorphicMapType_12909| SummandMask1@@28) o_2@@148 f_4@@148) (select (|PolymorphicMapType_12909_7712_2323#PolymorphicMapType_12909| SummandMask2@@28) o_2@@148 f_4@@148))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (select (|PolymorphicMapType_12909_7712_2323#PolymorphicMapType_12909| ResultMask@@28) o_2@@148 f_4@@148))
 :pattern ( (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (select (|PolymorphicMapType_12909_7712_2323#PolymorphicMapType_12909| SummandMask1@@28) o_2@@148 f_4@@148))
 :pattern ( (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (select (|PolymorphicMapType_12909_7712_2323#PolymorphicMapType_12909| SummandMask2@@28) o_2@@148 f_4@@148))
)))
(assert (forall ((arg1@@17 T@Ref) (arg2@@17 Real) (arg3@@17 T@Ref) (arg4@@10 Int) (arg5@@4 T@Ref) (arg6@@4 Real) (arg7@@4 T@Ref) (arg8@@4 Int) (arg1_2@@0 T@Ref) (arg2_2@@0 Real) (arg3_2@@0 T@Ref) (arg4_2 Int) (arg5_2 T@Ref) (arg6_2 Real) (arg7_2 T@Ref) (arg8_2 Int) ) (!  (=> (= (wand arg1@@17 arg2@@17 arg3@@17 arg4@@10 arg5@@4 arg6@@4 arg7@@4 arg8@@4) (wand arg1_2@@0 arg2_2@@0 arg3_2@@0 arg4_2 arg5_2 arg6_2 arg7_2 arg8_2)) (and (= arg1@@17 arg1_2@@0) (and (= arg2@@17 arg2_2@@0) (and (= arg3@@17 arg3_2@@0) (and (= arg4@@10 arg4_2) (and (= arg5@@4 arg5_2) (and (= arg6@@4 arg6_2) (and (= arg7@@4 arg7_2) (= arg8@@4 arg8_2)))))))))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand arg1@@17 arg2@@17 arg3@@17 arg4@@10 arg5@@4 arg6@@4 arg7@@4 arg8@@4) (wand arg1_2@@0 arg2_2@@0 arg3_2@@0 arg4_2 arg5_2 arg6_2 arg7_2 arg8_2))
)))
(assert (forall ((arg1@@18 T@Ref) (arg2@@18 Real) (arg3@@18 T@Ref) (arg4@@11 Int) (arg5@@5 T@Ref) (arg6@@5 Real) (arg7@@5 T@Ref) (arg8@@5 Int) ) (! (= (getPredWandId_7562_1219 (wand arg1@@18 arg2@@18 arg3@@18 arg4@@11 arg5@@5 arg6@@5 arg7@@5 arg8@@5)) 2)
 :qid |stdinbpl.204:15|
 :skolemid |27|
 :pattern ( (wand arg1@@18 arg2@@18 arg3@@18 arg4@@11 arg5@@5 arg6@@5 arg7@@5 arg8@@5))
)))
(assert (forall ((x@@7 T@Ref) ) (! (= (getPredWandId_7715_7716 (Q x@@7)) 0)
 :qid |stdinbpl.300:15|
 :skolemid |45|
 :pattern ( (Q x@@7))
)))
(assert (forall ((x@@8 T@Ref) ) (! (= (getPredWandId_7740_7741 (P x@@8)) 1)
 :qid |stdinbpl.356:15|
 :skolemid |51|
 :pattern ( (P x@@8))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_12888) (o_1 T@Ref) (f_9 T@Field_17238_17239) (v T@FrameType) ) (! (succHeap Heap@@58 (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@58) (store (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@58) o_1 f_9 v) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@58) (store (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@58) o_1 f_9 v) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@58) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_12888) (o_1@@0 T@Ref) (f_9@@0 T@Field_17223_17228) (v@@0 T@PolymorphicMapType_13437) ) (! (succHeap Heap@@59 (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@59) (store (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@59) o_1@@0 f_9@@0 v@@0) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@59) (store (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@59) o_1@@0 f_9@@0 v@@0) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@59) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_12888) (o_1@@1 T@Ref) (f_9@@1 T@Field_17211_1749) (v@@1 Int) ) (! (succHeap Heap@@60 (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@60) (store (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@60) o_1@@1 f_9@@1 v@@1) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@60) (store (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@60) o_1@@1 f_9@@1 v@@1) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@60) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_12888) (o_1@@2 T@Ref) (f_9@@2 T@Field_17211_12962) (v@@2 T@Ref) ) (! (succHeap Heap@@61 (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@61) (store (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@61) o_1@@2 f_9@@2 v@@2) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@61) (store (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@61) o_1@@2 f_9@@2 v@@2) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@61) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_12888) (o_1@@3 T@Ref) (f_9@@3 T@Field_17211_53) (v@@3 Bool) ) (! (succHeap Heap@@62 (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@62) (store (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@62) o_1@@3 f_9@@3 v@@3) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@62) (store (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@62) o_1@@3 f_9@@3 v@@3) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@62) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_12888) (o_1@@4 T@Ref) (f_9@@4 T@Field_18457_18458) (v@@4 T@FrameType) ) (! (succHeap Heap@@63 (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@63) (store (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@63) o_1@@4 f_9@@4 v@@4) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@63) (store (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@63) o_1@@4 f_9@@4 v@@4) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@63) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_12888) (o_1@@5 T@Ref) (f_9@@5 T@Field_18470_18475) (v@@5 T@PolymorphicMapType_13437) ) (! (succHeap Heap@@64 (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@64) (store (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@64) o_1@@5 f_9@@5 v@@5) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@64) (store (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@64) o_1@@5 f_9@@5 v@@5) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@64) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_12888) (o_1@@6 T@Ref) (f_9@@6 T@Field_7715_2323) (v@@6 Int) ) (! (succHeap Heap@@65 (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@65) (store (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@65) o_1@@6 f_9@@6 v@@6) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@65) (store (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@65) o_1@@6 f_9@@6 v@@6) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@65) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@65)))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_12888) (o_1@@7 T@Ref) (f_9@@7 T@Field_7715_12962) (v@@7 T@Ref) ) (! (succHeap Heap@@66 (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@66) (store (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@66) o_1@@7 f_9@@7 v@@7) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@66)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@66) (store (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@66) o_1@@7 f_9@@7 v@@7) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@66) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@66)))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_12888) (o_1@@8 T@Ref) (f_9@@8 T@Field_7715_53) (v@@8 Bool) ) (! (succHeap Heap@@67 (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@67) (store (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@67) o_1@@8 f_9@@8 v@@8) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@67)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@67) (store (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@67) o_1@@8 f_9@@8 v@@8) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@67) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@67)))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_12888) (o_1@@9 T@Ref) (f_9@@9 T@Field_17797_17798) (v@@9 T@FrameType) ) (! (succHeap Heap@@68 (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@68) (store (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@68) o_1@@9 f_9@@9 v@@9) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@68)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@68) (store (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@68) o_1@@9 f_9@@9 v@@9) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@68) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@68)))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_12888) (o_1@@10 T@Ref) (f_9@@10 T@Field_17781_17786) (v@@10 T@PolymorphicMapType_13437) ) (! (succHeap Heap@@69 (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@69) (store (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@69) o_1@@10 f_9@@10 v@@10) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@69)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@69) (store (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@69) o_1@@10 f_9@@10 v@@10) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@69) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@69)))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_12888) (o_1@@11 T@Ref) (f_9@@11 T@Field_17768_2018) (v@@11 Int) ) (! (succHeap Heap@@70 (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@70) (store (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@70) o_1@@11 f_9@@11 v@@11) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@70)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@70) (store (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@70) o_1@@11 f_9@@11 v@@11) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@70) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@70)))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_12888) (o_1@@12 T@Ref) (f_9@@12 T@Field_17768_12962) (v@@12 T@Ref) ) (! (succHeap Heap@@71 (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@71) (store (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@71) o_1@@12 f_9@@12 v@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@71) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@71) (store (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@71) o_1@@12 f_9@@12 v@@12)))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_12888) (o_1@@13 T@Ref) (f_9@@13 T@Field_17768_53) (v@@13 Bool) ) (! (succHeap Heap@@72 (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@72) (store (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@72) o_1@@13 f_9@@13 v@@13) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@72)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@72) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@72) (store (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@72) o_1@@13 f_9@@13 v@@13) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@72)))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_12888) (o_1@@14 T@Ref) (f_9@@14 T@Field_19395_19396) (v@@14 T@FrameType) ) (! (succHeap Heap@@73 (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@73) (store (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@73) o_1@@14 f_9@@14 v@@14) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@73)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@73) (store (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@73) o_1@@14 f_9@@14 v@@14) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@73) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@73)))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_12888) (o_1@@15 T@Ref) (f_9@@15 T@Field_19408_19413) (v@@15 T@PolymorphicMapType_13437) ) (! (succHeap Heap@@74 (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@74) (store (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@74) o_1@@15 f_9@@15 v@@15) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@74)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@74) (store (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@74) o_1@@15 f_9@@15 v@@15) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@74) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@74)))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_12888) (o_1@@16 T@Ref) (f_9@@16 T@Field_7740_2323) (v@@16 Int) ) (! (succHeap Heap@@75 (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@75) (store (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@75) o_1@@16 f_9@@16 v@@16) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@75)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@75) (store (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@75) o_1@@16 f_9@@16 v@@16) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@75) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@75)))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_12888) (o_1@@17 T@Ref) (f_9@@17 T@Field_7740_12962) (v@@17 T@Ref) ) (! (succHeap Heap@@76 (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@76) (store (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@76) o_1@@17 f_9@@17 v@@17) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@76)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@76) (store (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@76) o_1@@17 f_9@@17 v@@17) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@76) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@76)))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_12888) (o_1@@18 T@Ref) (f_9@@18 T@Field_7740_53) (v@@18 Bool) ) (! (succHeap Heap@@77 (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@77) (store (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@77) o_1@@18 f_9@@18 v@@18) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@77)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@77) (store (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@77) o_1@@18 f_9@@18 v@@18) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@77) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@77)))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_12888) (o_1@@19 T@Ref) (f_9@@19 T@Field_16311_16312) (v@@19 T@FrameType) ) (! (succHeap Heap@@78 (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@78) (store (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@78) o_1@@19 f_9@@19 v@@19) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@78)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@78) (store (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@78) o_1@@19 f_9@@19 v@@19) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@78) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@78)))
)))
(assert (forall ((Heap@@79 T@PolymorphicMapType_12888) (o_1@@20 T@Ref) (f_9@@20 T@Field_16293_16298) (v@@20 T@PolymorphicMapType_13437) ) (! (succHeap Heap@@79 (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@79) (store (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@79) o_1@@20 f_9@@20 v@@20) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@79)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@79) (store (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@79) o_1@@20 f_9@@20 v@@20) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@79) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@79)))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_12888) (o_1@@21 T@Ref) (f_9@@21 T@Field_16278_1219) (v@@21 Int) ) (! (succHeap Heap@@80 (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@80) (store (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@80) o_1@@21 f_9@@21 v@@21) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@80)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@80) (store (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@80) o_1@@21 f_9@@21 v@@21) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@80) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@80)))
)))
(assert (forall ((Heap@@81 T@PolymorphicMapType_12888) (o_1@@22 T@Ref) (f_9@@22 T@Field_16278_12962) (v@@22 T@Ref) ) (! (succHeap Heap@@81 (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@81) (store (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@81) o_1@@22 f_9@@22 v@@22) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@81)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@81) (store (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@81) o_1@@22 f_9@@22 v@@22) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@81) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@81)))
)))
(assert (forall ((Heap@@82 T@PolymorphicMapType_12888) (o_1@@23 T@Ref) (f_9@@23 T@Field_16278_53) (v@@23 Bool) ) (! (succHeap Heap@@82 (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@82) (store (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@82) o_1@@23 f_9@@23 v@@23) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@82)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@82) (store (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@82) o_1@@23 f_9@@23 v@@23) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@82) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@82)))
)))
(assert (forall ((Heap@@83 T@PolymorphicMapType_12888) (o_1@@24 T@Ref) (f_9@@24 T@Field_7712_7741) (v@@24 T@FrameType) ) (! (succHeap Heap@@83 (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@83) (store (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@83) o_1@@24 f_9@@24 v@@24) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@83)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@83) (store (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@83) o_1@@24 f_9@@24 v@@24) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@83) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@83)))
)))
(assert (forall ((Heap@@84 T@PolymorphicMapType_12888) (o_1@@25 T@Ref) (f_9@@25 T@Field_7712_16298) (v@@25 T@PolymorphicMapType_13437) ) (! (succHeap Heap@@84 (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@84) (store (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@84) o_1@@25 f_9@@25 v@@25) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@84)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@84) (store (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@84) o_1@@25 f_9@@25 v@@25) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@84) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@84)))
)))
(assert (forall ((Heap@@85 T@PolymorphicMapType_12888) (o_1@@26 T@Ref) (f_9@@26 T@Field_18410_2323) (v@@26 Int) ) (! (succHeap Heap@@85 (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@85) (store (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@85) o_1@@26 f_9@@26 v@@26) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@85)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@85) (store (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@85) o_1@@26 f_9@@26 v@@26) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@85) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@85)))
)))
(assert (forall ((Heap@@86 T@PolymorphicMapType_12888) (o_1@@27 T@Ref) (f_9@@27 T@Field_12961_12962) (v@@27 T@Ref) ) (! (succHeap Heap@@86 (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@86) (store (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@86) o_1@@27 f_9@@27 v@@27) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@86)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12888 (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@86) (store (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@86) o_1@@27 f_9@@27 v@@27) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@86) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@86)))
)))
(assert (forall ((Heap@@87 T@PolymorphicMapType_12888) (o_1@@28 T@Ref) (f_9@@28 T@Field_12948_53) (v@@28 Bool) ) (! (succHeap Heap@@87 (PolymorphicMapType_12888 (store (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@87) o_1@@28 f_9@@28 v@@28) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@87)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12888 (store (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@87) o_1@@28 f_9@@28 v@@28) (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_7712_2323#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_7570_22474#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_7740_7741#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_7744_23530#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_7670_31247#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_7715_7716#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_7719_32940#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_7712_7741#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_7712_41347#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_7740_2323#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_7740_53#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_7740_12962#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_7715_2323#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_7715_53#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_7715_12962#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_16278_2323#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_16278_7741#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_16278_53#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_16278_12962#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_17211_2323#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_17211_7741#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_17211_53#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_17211_12962#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_17211_45854#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_17768_2323#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_17768_7741#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_17768_53#PolymorphicMapType_12888| Heap@@87) (|PolymorphicMapType_12888_17768_12962#PolymorphicMapType_12888| Heap@@87)))
)))
(assert (forall ((x@@9 T@Ref) ) (! (= (PredicateMaskField_7715 (Q x@@9)) (|Q#sm| x@@9))
 :qid |stdinbpl.292:15|
 :skolemid |43|
 :pattern ( (PredicateMaskField_7715 (Q x@@9)))
)))
(assert (forall ((x@@10 T@Ref) ) (! (= (PredicateMaskField_7740 (P x@@10)) (|P#sm| x@@10))
 :qid |stdinbpl.348:15|
 :skolemid |49|
 :pattern ( (PredicateMaskField_7740 (P x@@10)))
)))
(assert (forall ((o_1@@29 T@Ref) (f_2 T@Field_12961_12962) (Heap@@88 T@PolymorphicMapType_12888) ) (!  (=> (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@88) o_1@@29 $allocated) (select (|PolymorphicMapType_12888_7428_53#PolymorphicMapType_12888| Heap@@88) (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@88) o_1@@29 f_2) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_12888_7431_7432#PolymorphicMapType_12888| Heap@@88) o_1@@29 f_2))
)))
(assert (forall ((p@@6 T@Field_19395_19396) (v_1@@5 T@FrameType) (q T@Field_19395_19396) (w@@5 T@FrameType) (r T@Field_19395_19396) (u T@FrameType) ) (!  (=> (and (InsidePredicate_19395_19395 p@@6 v_1@@5 q w@@5) (InsidePredicate_19395_19395 q w@@5 r u)) (InsidePredicate_19395_19395 p@@6 v_1@@5 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_19395 p@@6 v_1@@5 q w@@5) (InsidePredicate_19395_19395 q w@@5 r u))
)))
(assert (forall ((p@@7 T@Field_19395_19396) (v_1@@6 T@FrameType) (q@@0 T@Field_19395_19396) (w@@6 T@FrameType) (r@@0 T@Field_18457_18458) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_19395 p@@7 v_1@@6 q@@0 w@@6) (InsidePredicate_19395_18457 q@@0 w@@6 r@@0 u@@0)) (InsidePredicate_19395_18457 p@@7 v_1@@6 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_19395 p@@7 v_1@@6 q@@0 w@@6) (InsidePredicate_19395_18457 q@@0 w@@6 r@@0 u@@0))
)))
(assert (forall ((p@@8 T@Field_19395_19396) (v_1@@7 T@FrameType) (q@@1 T@Field_19395_19396) (w@@7 T@FrameType) (r@@1 T@Field_17797_17798) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_19395 p@@8 v_1@@7 q@@1 w@@7) (InsidePredicate_19395_17768 q@@1 w@@7 r@@1 u@@1)) (InsidePredicate_19395_17768 p@@8 v_1@@7 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_19395 p@@8 v_1@@7 q@@1 w@@7) (InsidePredicate_19395_17768 q@@1 w@@7 r@@1 u@@1))
)))
(assert (forall ((p@@9 T@Field_19395_19396) (v_1@@8 T@FrameType) (q@@2 T@Field_19395_19396) (w@@8 T@FrameType) (r@@2 T@Field_17238_17239) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_19395 p@@9 v_1@@8 q@@2 w@@8) (InsidePredicate_19395_17211 q@@2 w@@8 r@@2 u@@2)) (InsidePredicate_19395_17211 p@@9 v_1@@8 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_19395 p@@9 v_1@@8 q@@2 w@@8) (InsidePredicate_19395_17211 q@@2 w@@8 r@@2 u@@2))
)))
(assert (forall ((p@@10 T@Field_19395_19396) (v_1@@9 T@FrameType) (q@@3 T@Field_19395_19396) (w@@9 T@FrameType) (r@@3 T@Field_16311_16312) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_19395 p@@10 v_1@@9 q@@3 w@@9) (InsidePredicate_19395_16278 q@@3 w@@9 r@@3 u@@3)) (InsidePredicate_19395_16278 p@@10 v_1@@9 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_19395 p@@10 v_1@@9 q@@3 w@@9) (InsidePredicate_19395_16278 q@@3 w@@9 r@@3 u@@3))
)))
(assert (forall ((p@@11 T@Field_19395_19396) (v_1@@10 T@FrameType) (q@@4 T@Field_19395_19396) (w@@10 T@FrameType) (r@@4 T@Field_7712_7741) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_19395 p@@11 v_1@@10 q@@4 w@@10) (InsidePredicate_19395_12948 q@@4 w@@10 r@@4 u@@4)) (InsidePredicate_19395_12948 p@@11 v_1@@10 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_19395 p@@11 v_1@@10 q@@4 w@@10) (InsidePredicate_19395_12948 q@@4 w@@10 r@@4 u@@4))
)))
(assert (forall ((p@@12 T@Field_19395_19396) (v_1@@11 T@FrameType) (q@@5 T@Field_18457_18458) (w@@11 T@FrameType) (r@@5 T@Field_19395_19396) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_18457 p@@12 v_1@@11 q@@5 w@@11) (InsidePredicate_18457_19395 q@@5 w@@11 r@@5 u@@5)) (InsidePredicate_19395_19395 p@@12 v_1@@11 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_18457 p@@12 v_1@@11 q@@5 w@@11) (InsidePredicate_18457_19395 q@@5 w@@11 r@@5 u@@5))
)))
(assert (forall ((p@@13 T@Field_19395_19396) (v_1@@12 T@FrameType) (q@@6 T@Field_18457_18458) (w@@12 T@FrameType) (r@@6 T@Field_18457_18458) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_18457 p@@13 v_1@@12 q@@6 w@@12) (InsidePredicate_18457_18457 q@@6 w@@12 r@@6 u@@6)) (InsidePredicate_19395_18457 p@@13 v_1@@12 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_18457 p@@13 v_1@@12 q@@6 w@@12) (InsidePredicate_18457_18457 q@@6 w@@12 r@@6 u@@6))
)))
(assert (forall ((p@@14 T@Field_19395_19396) (v_1@@13 T@FrameType) (q@@7 T@Field_18457_18458) (w@@13 T@FrameType) (r@@7 T@Field_17797_17798) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_18457 p@@14 v_1@@13 q@@7 w@@13) (InsidePredicate_18457_17768 q@@7 w@@13 r@@7 u@@7)) (InsidePredicate_19395_17768 p@@14 v_1@@13 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_18457 p@@14 v_1@@13 q@@7 w@@13) (InsidePredicate_18457_17768 q@@7 w@@13 r@@7 u@@7))
)))
(assert (forall ((p@@15 T@Field_19395_19396) (v_1@@14 T@FrameType) (q@@8 T@Field_18457_18458) (w@@14 T@FrameType) (r@@8 T@Field_17238_17239) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_18457 p@@15 v_1@@14 q@@8 w@@14) (InsidePredicate_18457_17211 q@@8 w@@14 r@@8 u@@8)) (InsidePredicate_19395_17211 p@@15 v_1@@14 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_18457 p@@15 v_1@@14 q@@8 w@@14) (InsidePredicate_18457_17211 q@@8 w@@14 r@@8 u@@8))
)))
(assert (forall ((p@@16 T@Field_19395_19396) (v_1@@15 T@FrameType) (q@@9 T@Field_18457_18458) (w@@15 T@FrameType) (r@@9 T@Field_16311_16312) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_18457 p@@16 v_1@@15 q@@9 w@@15) (InsidePredicate_18457_16278 q@@9 w@@15 r@@9 u@@9)) (InsidePredicate_19395_16278 p@@16 v_1@@15 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_18457 p@@16 v_1@@15 q@@9 w@@15) (InsidePredicate_18457_16278 q@@9 w@@15 r@@9 u@@9))
)))
(assert (forall ((p@@17 T@Field_19395_19396) (v_1@@16 T@FrameType) (q@@10 T@Field_18457_18458) (w@@16 T@FrameType) (r@@10 T@Field_7712_7741) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_18457 p@@17 v_1@@16 q@@10 w@@16) (InsidePredicate_18457_12948 q@@10 w@@16 r@@10 u@@10)) (InsidePredicate_19395_12948 p@@17 v_1@@16 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_18457 p@@17 v_1@@16 q@@10 w@@16) (InsidePredicate_18457_12948 q@@10 w@@16 r@@10 u@@10))
)))
(assert (forall ((p@@18 T@Field_19395_19396) (v_1@@17 T@FrameType) (q@@11 T@Field_17797_17798) (w@@17 T@FrameType) (r@@11 T@Field_19395_19396) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_17768 p@@18 v_1@@17 q@@11 w@@17) (InsidePredicate_17768_19395 q@@11 w@@17 r@@11 u@@11)) (InsidePredicate_19395_19395 p@@18 v_1@@17 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_17768 p@@18 v_1@@17 q@@11 w@@17) (InsidePredicate_17768_19395 q@@11 w@@17 r@@11 u@@11))
)))
(assert (forall ((p@@19 T@Field_19395_19396) (v_1@@18 T@FrameType) (q@@12 T@Field_17797_17798) (w@@18 T@FrameType) (r@@12 T@Field_18457_18458) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_17768 p@@19 v_1@@18 q@@12 w@@18) (InsidePredicate_17768_18457 q@@12 w@@18 r@@12 u@@12)) (InsidePredicate_19395_18457 p@@19 v_1@@18 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_17768 p@@19 v_1@@18 q@@12 w@@18) (InsidePredicate_17768_18457 q@@12 w@@18 r@@12 u@@12))
)))
(assert (forall ((p@@20 T@Field_19395_19396) (v_1@@19 T@FrameType) (q@@13 T@Field_17797_17798) (w@@19 T@FrameType) (r@@13 T@Field_17797_17798) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_17768 p@@20 v_1@@19 q@@13 w@@19) (InsidePredicate_17768_17768 q@@13 w@@19 r@@13 u@@13)) (InsidePredicate_19395_17768 p@@20 v_1@@19 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_17768 p@@20 v_1@@19 q@@13 w@@19) (InsidePredicate_17768_17768 q@@13 w@@19 r@@13 u@@13))
)))
(assert (forall ((p@@21 T@Field_19395_19396) (v_1@@20 T@FrameType) (q@@14 T@Field_17797_17798) (w@@20 T@FrameType) (r@@14 T@Field_17238_17239) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_17768 p@@21 v_1@@20 q@@14 w@@20) (InsidePredicate_17768_17211 q@@14 w@@20 r@@14 u@@14)) (InsidePredicate_19395_17211 p@@21 v_1@@20 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_17768 p@@21 v_1@@20 q@@14 w@@20) (InsidePredicate_17768_17211 q@@14 w@@20 r@@14 u@@14))
)))
(assert (forall ((p@@22 T@Field_19395_19396) (v_1@@21 T@FrameType) (q@@15 T@Field_17797_17798) (w@@21 T@FrameType) (r@@15 T@Field_16311_16312) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_17768 p@@22 v_1@@21 q@@15 w@@21) (InsidePredicate_17768_16278 q@@15 w@@21 r@@15 u@@15)) (InsidePredicate_19395_16278 p@@22 v_1@@21 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_17768 p@@22 v_1@@21 q@@15 w@@21) (InsidePredicate_17768_16278 q@@15 w@@21 r@@15 u@@15))
)))
(assert (forall ((p@@23 T@Field_19395_19396) (v_1@@22 T@FrameType) (q@@16 T@Field_17797_17798) (w@@22 T@FrameType) (r@@16 T@Field_7712_7741) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_17768 p@@23 v_1@@22 q@@16 w@@22) (InsidePredicate_17768_12948 q@@16 w@@22 r@@16 u@@16)) (InsidePredicate_19395_12948 p@@23 v_1@@22 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_17768 p@@23 v_1@@22 q@@16 w@@22) (InsidePredicate_17768_12948 q@@16 w@@22 r@@16 u@@16))
)))
(assert (forall ((p@@24 T@Field_19395_19396) (v_1@@23 T@FrameType) (q@@17 T@Field_17238_17239) (w@@23 T@FrameType) (r@@17 T@Field_19395_19396) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_17211 p@@24 v_1@@23 q@@17 w@@23) (InsidePredicate_17211_19395 q@@17 w@@23 r@@17 u@@17)) (InsidePredicate_19395_19395 p@@24 v_1@@23 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_17211 p@@24 v_1@@23 q@@17 w@@23) (InsidePredicate_17211_19395 q@@17 w@@23 r@@17 u@@17))
)))
(assert (forall ((p@@25 T@Field_19395_19396) (v_1@@24 T@FrameType) (q@@18 T@Field_17238_17239) (w@@24 T@FrameType) (r@@18 T@Field_18457_18458) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_17211 p@@25 v_1@@24 q@@18 w@@24) (InsidePredicate_17211_18457 q@@18 w@@24 r@@18 u@@18)) (InsidePredicate_19395_18457 p@@25 v_1@@24 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_17211 p@@25 v_1@@24 q@@18 w@@24) (InsidePredicate_17211_18457 q@@18 w@@24 r@@18 u@@18))
)))
(assert (forall ((p@@26 T@Field_19395_19396) (v_1@@25 T@FrameType) (q@@19 T@Field_17238_17239) (w@@25 T@FrameType) (r@@19 T@Field_17797_17798) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_17211 p@@26 v_1@@25 q@@19 w@@25) (InsidePredicate_17211_17768 q@@19 w@@25 r@@19 u@@19)) (InsidePredicate_19395_17768 p@@26 v_1@@25 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_17211 p@@26 v_1@@25 q@@19 w@@25) (InsidePredicate_17211_17768 q@@19 w@@25 r@@19 u@@19))
)))
(assert (forall ((p@@27 T@Field_19395_19396) (v_1@@26 T@FrameType) (q@@20 T@Field_17238_17239) (w@@26 T@FrameType) (r@@20 T@Field_17238_17239) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_17211 p@@27 v_1@@26 q@@20 w@@26) (InsidePredicate_17211_17211 q@@20 w@@26 r@@20 u@@20)) (InsidePredicate_19395_17211 p@@27 v_1@@26 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_17211 p@@27 v_1@@26 q@@20 w@@26) (InsidePredicate_17211_17211 q@@20 w@@26 r@@20 u@@20))
)))
(assert (forall ((p@@28 T@Field_19395_19396) (v_1@@27 T@FrameType) (q@@21 T@Field_17238_17239) (w@@27 T@FrameType) (r@@21 T@Field_16311_16312) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_17211 p@@28 v_1@@27 q@@21 w@@27) (InsidePredicate_17211_16278 q@@21 w@@27 r@@21 u@@21)) (InsidePredicate_19395_16278 p@@28 v_1@@27 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_17211 p@@28 v_1@@27 q@@21 w@@27) (InsidePredicate_17211_16278 q@@21 w@@27 r@@21 u@@21))
)))
(assert (forall ((p@@29 T@Field_19395_19396) (v_1@@28 T@FrameType) (q@@22 T@Field_17238_17239) (w@@28 T@FrameType) (r@@22 T@Field_7712_7741) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_17211 p@@29 v_1@@28 q@@22 w@@28) (InsidePredicate_17211_12948 q@@22 w@@28 r@@22 u@@22)) (InsidePredicate_19395_12948 p@@29 v_1@@28 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_17211 p@@29 v_1@@28 q@@22 w@@28) (InsidePredicate_17211_12948 q@@22 w@@28 r@@22 u@@22))
)))
(assert (forall ((p@@30 T@Field_19395_19396) (v_1@@29 T@FrameType) (q@@23 T@Field_16311_16312) (w@@29 T@FrameType) (r@@23 T@Field_19395_19396) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_16278 p@@30 v_1@@29 q@@23 w@@29) (InsidePredicate_16278_19395 q@@23 w@@29 r@@23 u@@23)) (InsidePredicate_19395_19395 p@@30 v_1@@29 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_16278 p@@30 v_1@@29 q@@23 w@@29) (InsidePredicate_16278_19395 q@@23 w@@29 r@@23 u@@23))
)))
(assert (forall ((p@@31 T@Field_19395_19396) (v_1@@30 T@FrameType) (q@@24 T@Field_16311_16312) (w@@30 T@FrameType) (r@@24 T@Field_18457_18458) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_16278 p@@31 v_1@@30 q@@24 w@@30) (InsidePredicate_16278_18457 q@@24 w@@30 r@@24 u@@24)) (InsidePredicate_19395_18457 p@@31 v_1@@30 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_16278 p@@31 v_1@@30 q@@24 w@@30) (InsidePredicate_16278_18457 q@@24 w@@30 r@@24 u@@24))
)))
(assert (forall ((p@@32 T@Field_19395_19396) (v_1@@31 T@FrameType) (q@@25 T@Field_16311_16312) (w@@31 T@FrameType) (r@@25 T@Field_17797_17798) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_16278 p@@32 v_1@@31 q@@25 w@@31) (InsidePredicate_16278_17768 q@@25 w@@31 r@@25 u@@25)) (InsidePredicate_19395_17768 p@@32 v_1@@31 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_16278 p@@32 v_1@@31 q@@25 w@@31) (InsidePredicate_16278_17768 q@@25 w@@31 r@@25 u@@25))
)))
(assert (forall ((p@@33 T@Field_19395_19396) (v_1@@32 T@FrameType) (q@@26 T@Field_16311_16312) (w@@32 T@FrameType) (r@@26 T@Field_17238_17239) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_16278 p@@33 v_1@@32 q@@26 w@@32) (InsidePredicate_16278_17211 q@@26 w@@32 r@@26 u@@26)) (InsidePredicate_19395_17211 p@@33 v_1@@32 r@@26 u@@26))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_16278 p@@33 v_1@@32 q@@26 w@@32) (InsidePredicate_16278_17211 q@@26 w@@32 r@@26 u@@26))
)))
(assert (forall ((p@@34 T@Field_19395_19396) (v_1@@33 T@FrameType) (q@@27 T@Field_16311_16312) (w@@33 T@FrameType) (r@@27 T@Field_16311_16312) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_16278 p@@34 v_1@@33 q@@27 w@@33) (InsidePredicate_16278_16278 q@@27 w@@33 r@@27 u@@27)) (InsidePredicate_19395_16278 p@@34 v_1@@33 r@@27 u@@27))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_16278 p@@34 v_1@@33 q@@27 w@@33) (InsidePredicate_16278_16278 q@@27 w@@33 r@@27 u@@27))
)))
(assert (forall ((p@@35 T@Field_19395_19396) (v_1@@34 T@FrameType) (q@@28 T@Field_16311_16312) (w@@34 T@FrameType) (r@@28 T@Field_7712_7741) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_16278 p@@35 v_1@@34 q@@28 w@@34) (InsidePredicate_16278_12948 q@@28 w@@34 r@@28 u@@28)) (InsidePredicate_19395_12948 p@@35 v_1@@34 r@@28 u@@28))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_16278 p@@35 v_1@@34 q@@28 w@@34) (InsidePredicate_16278_12948 q@@28 w@@34 r@@28 u@@28))
)))
(assert (forall ((p@@36 T@Field_19395_19396) (v_1@@35 T@FrameType) (q@@29 T@Field_7712_7741) (w@@35 T@FrameType) (r@@29 T@Field_19395_19396) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_12948 p@@36 v_1@@35 q@@29 w@@35) (InsidePredicate_12948_19395 q@@29 w@@35 r@@29 u@@29)) (InsidePredicate_19395_19395 p@@36 v_1@@35 r@@29 u@@29))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_12948 p@@36 v_1@@35 q@@29 w@@35) (InsidePredicate_12948_19395 q@@29 w@@35 r@@29 u@@29))
)))
(assert (forall ((p@@37 T@Field_19395_19396) (v_1@@36 T@FrameType) (q@@30 T@Field_7712_7741) (w@@36 T@FrameType) (r@@30 T@Field_18457_18458) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_12948 p@@37 v_1@@36 q@@30 w@@36) (InsidePredicate_12948_18457 q@@30 w@@36 r@@30 u@@30)) (InsidePredicate_19395_18457 p@@37 v_1@@36 r@@30 u@@30))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_12948 p@@37 v_1@@36 q@@30 w@@36) (InsidePredicate_12948_18457 q@@30 w@@36 r@@30 u@@30))
)))
(assert (forall ((p@@38 T@Field_19395_19396) (v_1@@37 T@FrameType) (q@@31 T@Field_7712_7741) (w@@37 T@FrameType) (r@@31 T@Field_17797_17798) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_12948 p@@38 v_1@@37 q@@31 w@@37) (InsidePredicate_12948_17768 q@@31 w@@37 r@@31 u@@31)) (InsidePredicate_19395_17768 p@@38 v_1@@37 r@@31 u@@31))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_12948 p@@38 v_1@@37 q@@31 w@@37) (InsidePredicate_12948_17768 q@@31 w@@37 r@@31 u@@31))
)))
(assert (forall ((p@@39 T@Field_19395_19396) (v_1@@38 T@FrameType) (q@@32 T@Field_7712_7741) (w@@38 T@FrameType) (r@@32 T@Field_17238_17239) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_12948 p@@39 v_1@@38 q@@32 w@@38) (InsidePredicate_12948_17211 q@@32 w@@38 r@@32 u@@32)) (InsidePredicate_19395_17211 p@@39 v_1@@38 r@@32 u@@32))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_12948 p@@39 v_1@@38 q@@32 w@@38) (InsidePredicate_12948_17211 q@@32 w@@38 r@@32 u@@32))
)))
(assert (forall ((p@@40 T@Field_19395_19396) (v_1@@39 T@FrameType) (q@@33 T@Field_7712_7741) (w@@39 T@FrameType) (r@@33 T@Field_16311_16312) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_12948 p@@40 v_1@@39 q@@33 w@@39) (InsidePredicate_12948_16278 q@@33 w@@39 r@@33 u@@33)) (InsidePredicate_19395_16278 p@@40 v_1@@39 r@@33 u@@33))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_12948 p@@40 v_1@@39 q@@33 w@@39) (InsidePredicate_12948_16278 q@@33 w@@39 r@@33 u@@33))
)))
(assert (forall ((p@@41 T@Field_19395_19396) (v_1@@40 T@FrameType) (q@@34 T@Field_7712_7741) (w@@40 T@FrameType) (r@@34 T@Field_7712_7741) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_19395_12948 p@@41 v_1@@40 q@@34 w@@40) (InsidePredicate_12948_12948 q@@34 w@@40 r@@34 u@@34)) (InsidePredicate_19395_12948 p@@41 v_1@@40 r@@34 u@@34))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19395_12948 p@@41 v_1@@40 q@@34 w@@40) (InsidePredicate_12948_12948 q@@34 w@@40 r@@34 u@@34))
)))
(assert (forall ((p@@42 T@Field_18457_18458) (v_1@@41 T@FrameType) (q@@35 T@Field_19395_19396) (w@@41 T@FrameType) (r@@35 T@Field_19395_19396) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_19395 p@@42 v_1@@41 q@@35 w@@41) (InsidePredicate_19395_19395 q@@35 w@@41 r@@35 u@@35)) (InsidePredicate_18457_19395 p@@42 v_1@@41 r@@35 u@@35))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_19395 p@@42 v_1@@41 q@@35 w@@41) (InsidePredicate_19395_19395 q@@35 w@@41 r@@35 u@@35))
)))
(assert (forall ((p@@43 T@Field_18457_18458) (v_1@@42 T@FrameType) (q@@36 T@Field_19395_19396) (w@@42 T@FrameType) (r@@36 T@Field_18457_18458) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_19395 p@@43 v_1@@42 q@@36 w@@42) (InsidePredicate_19395_18457 q@@36 w@@42 r@@36 u@@36)) (InsidePredicate_18457_18457 p@@43 v_1@@42 r@@36 u@@36))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_19395 p@@43 v_1@@42 q@@36 w@@42) (InsidePredicate_19395_18457 q@@36 w@@42 r@@36 u@@36))
)))
(assert (forall ((p@@44 T@Field_18457_18458) (v_1@@43 T@FrameType) (q@@37 T@Field_19395_19396) (w@@43 T@FrameType) (r@@37 T@Field_17797_17798) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_19395 p@@44 v_1@@43 q@@37 w@@43) (InsidePredicate_19395_17768 q@@37 w@@43 r@@37 u@@37)) (InsidePredicate_18457_17768 p@@44 v_1@@43 r@@37 u@@37))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_19395 p@@44 v_1@@43 q@@37 w@@43) (InsidePredicate_19395_17768 q@@37 w@@43 r@@37 u@@37))
)))
(assert (forall ((p@@45 T@Field_18457_18458) (v_1@@44 T@FrameType) (q@@38 T@Field_19395_19396) (w@@44 T@FrameType) (r@@38 T@Field_17238_17239) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_19395 p@@45 v_1@@44 q@@38 w@@44) (InsidePredicate_19395_17211 q@@38 w@@44 r@@38 u@@38)) (InsidePredicate_18457_17211 p@@45 v_1@@44 r@@38 u@@38))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_19395 p@@45 v_1@@44 q@@38 w@@44) (InsidePredicate_19395_17211 q@@38 w@@44 r@@38 u@@38))
)))
(assert (forall ((p@@46 T@Field_18457_18458) (v_1@@45 T@FrameType) (q@@39 T@Field_19395_19396) (w@@45 T@FrameType) (r@@39 T@Field_16311_16312) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_19395 p@@46 v_1@@45 q@@39 w@@45) (InsidePredicate_19395_16278 q@@39 w@@45 r@@39 u@@39)) (InsidePredicate_18457_16278 p@@46 v_1@@45 r@@39 u@@39))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_19395 p@@46 v_1@@45 q@@39 w@@45) (InsidePredicate_19395_16278 q@@39 w@@45 r@@39 u@@39))
)))
(assert (forall ((p@@47 T@Field_18457_18458) (v_1@@46 T@FrameType) (q@@40 T@Field_19395_19396) (w@@46 T@FrameType) (r@@40 T@Field_7712_7741) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_19395 p@@47 v_1@@46 q@@40 w@@46) (InsidePredicate_19395_12948 q@@40 w@@46 r@@40 u@@40)) (InsidePredicate_18457_12948 p@@47 v_1@@46 r@@40 u@@40))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_19395 p@@47 v_1@@46 q@@40 w@@46) (InsidePredicate_19395_12948 q@@40 w@@46 r@@40 u@@40))
)))
(assert (forall ((p@@48 T@Field_18457_18458) (v_1@@47 T@FrameType) (q@@41 T@Field_18457_18458) (w@@47 T@FrameType) (r@@41 T@Field_19395_19396) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_18457 p@@48 v_1@@47 q@@41 w@@47) (InsidePredicate_18457_19395 q@@41 w@@47 r@@41 u@@41)) (InsidePredicate_18457_19395 p@@48 v_1@@47 r@@41 u@@41))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_18457 p@@48 v_1@@47 q@@41 w@@47) (InsidePredicate_18457_19395 q@@41 w@@47 r@@41 u@@41))
)))
(assert (forall ((p@@49 T@Field_18457_18458) (v_1@@48 T@FrameType) (q@@42 T@Field_18457_18458) (w@@48 T@FrameType) (r@@42 T@Field_18457_18458) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_18457 p@@49 v_1@@48 q@@42 w@@48) (InsidePredicate_18457_18457 q@@42 w@@48 r@@42 u@@42)) (InsidePredicate_18457_18457 p@@49 v_1@@48 r@@42 u@@42))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_18457 p@@49 v_1@@48 q@@42 w@@48) (InsidePredicate_18457_18457 q@@42 w@@48 r@@42 u@@42))
)))
(assert (forall ((p@@50 T@Field_18457_18458) (v_1@@49 T@FrameType) (q@@43 T@Field_18457_18458) (w@@49 T@FrameType) (r@@43 T@Field_17797_17798) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_18457 p@@50 v_1@@49 q@@43 w@@49) (InsidePredicate_18457_17768 q@@43 w@@49 r@@43 u@@43)) (InsidePredicate_18457_17768 p@@50 v_1@@49 r@@43 u@@43))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_18457 p@@50 v_1@@49 q@@43 w@@49) (InsidePredicate_18457_17768 q@@43 w@@49 r@@43 u@@43))
)))
(assert (forall ((p@@51 T@Field_18457_18458) (v_1@@50 T@FrameType) (q@@44 T@Field_18457_18458) (w@@50 T@FrameType) (r@@44 T@Field_17238_17239) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_18457 p@@51 v_1@@50 q@@44 w@@50) (InsidePredicate_18457_17211 q@@44 w@@50 r@@44 u@@44)) (InsidePredicate_18457_17211 p@@51 v_1@@50 r@@44 u@@44))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_18457 p@@51 v_1@@50 q@@44 w@@50) (InsidePredicate_18457_17211 q@@44 w@@50 r@@44 u@@44))
)))
(assert (forall ((p@@52 T@Field_18457_18458) (v_1@@51 T@FrameType) (q@@45 T@Field_18457_18458) (w@@51 T@FrameType) (r@@45 T@Field_16311_16312) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_18457 p@@52 v_1@@51 q@@45 w@@51) (InsidePredicate_18457_16278 q@@45 w@@51 r@@45 u@@45)) (InsidePredicate_18457_16278 p@@52 v_1@@51 r@@45 u@@45))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_18457 p@@52 v_1@@51 q@@45 w@@51) (InsidePredicate_18457_16278 q@@45 w@@51 r@@45 u@@45))
)))
(assert (forall ((p@@53 T@Field_18457_18458) (v_1@@52 T@FrameType) (q@@46 T@Field_18457_18458) (w@@52 T@FrameType) (r@@46 T@Field_7712_7741) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_18457 p@@53 v_1@@52 q@@46 w@@52) (InsidePredicate_18457_12948 q@@46 w@@52 r@@46 u@@46)) (InsidePredicate_18457_12948 p@@53 v_1@@52 r@@46 u@@46))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_18457 p@@53 v_1@@52 q@@46 w@@52) (InsidePredicate_18457_12948 q@@46 w@@52 r@@46 u@@46))
)))
(assert (forall ((p@@54 T@Field_18457_18458) (v_1@@53 T@FrameType) (q@@47 T@Field_17797_17798) (w@@53 T@FrameType) (r@@47 T@Field_19395_19396) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_17768 p@@54 v_1@@53 q@@47 w@@53) (InsidePredicate_17768_19395 q@@47 w@@53 r@@47 u@@47)) (InsidePredicate_18457_19395 p@@54 v_1@@53 r@@47 u@@47))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_17768 p@@54 v_1@@53 q@@47 w@@53) (InsidePredicate_17768_19395 q@@47 w@@53 r@@47 u@@47))
)))
(assert (forall ((p@@55 T@Field_18457_18458) (v_1@@54 T@FrameType) (q@@48 T@Field_17797_17798) (w@@54 T@FrameType) (r@@48 T@Field_18457_18458) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_17768 p@@55 v_1@@54 q@@48 w@@54) (InsidePredicate_17768_18457 q@@48 w@@54 r@@48 u@@48)) (InsidePredicate_18457_18457 p@@55 v_1@@54 r@@48 u@@48))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_17768 p@@55 v_1@@54 q@@48 w@@54) (InsidePredicate_17768_18457 q@@48 w@@54 r@@48 u@@48))
)))
(assert (forall ((p@@56 T@Field_18457_18458) (v_1@@55 T@FrameType) (q@@49 T@Field_17797_17798) (w@@55 T@FrameType) (r@@49 T@Field_17797_17798) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_17768 p@@56 v_1@@55 q@@49 w@@55) (InsidePredicate_17768_17768 q@@49 w@@55 r@@49 u@@49)) (InsidePredicate_18457_17768 p@@56 v_1@@55 r@@49 u@@49))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_17768 p@@56 v_1@@55 q@@49 w@@55) (InsidePredicate_17768_17768 q@@49 w@@55 r@@49 u@@49))
)))
(assert (forall ((p@@57 T@Field_18457_18458) (v_1@@56 T@FrameType) (q@@50 T@Field_17797_17798) (w@@56 T@FrameType) (r@@50 T@Field_17238_17239) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_17768 p@@57 v_1@@56 q@@50 w@@56) (InsidePredicate_17768_17211 q@@50 w@@56 r@@50 u@@50)) (InsidePredicate_18457_17211 p@@57 v_1@@56 r@@50 u@@50))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_17768 p@@57 v_1@@56 q@@50 w@@56) (InsidePredicate_17768_17211 q@@50 w@@56 r@@50 u@@50))
)))
(assert (forall ((p@@58 T@Field_18457_18458) (v_1@@57 T@FrameType) (q@@51 T@Field_17797_17798) (w@@57 T@FrameType) (r@@51 T@Field_16311_16312) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_17768 p@@58 v_1@@57 q@@51 w@@57) (InsidePredicate_17768_16278 q@@51 w@@57 r@@51 u@@51)) (InsidePredicate_18457_16278 p@@58 v_1@@57 r@@51 u@@51))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_17768 p@@58 v_1@@57 q@@51 w@@57) (InsidePredicate_17768_16278 q@@51 w@@57 r@@51 u@@51))
)))
(assert (forall ((p@@59 T@Field_18457_18458) (v_1@@58 T@FrameType) (q@@52 T@Field_17797_17798) (w@@58 T@FrameType) (r@@52 T@Field_7712_7741) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_17768 p@@59 v_1@@58 q@@52 w@@58) (InsidePredicate_17768_12948 q@@52 w@@58 r@@52 u@@52)) (InsidePredicate_18457_12948 p@@59 v_1@@58 r@@52 u@@52))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_17768 p@@59 v_1@@58 q@@52 w@@58) (InsidePredicate_17768_12948 q@@52 w@@58 r@@52 u@@52))
)))
(assert (forall ((p@@60 T@Field_18457_18458) (v_1@@59 T@FrameType) (q@@53 T@Field_17238_17239) (w@@59 T@FrameType) (r@@53 T@Field_19395_19396) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_17211 p@@60 v_1@@59 q@@53 w@@59) (InsidePredicate_17211_19395 q@@53 w@@59 r@@53 u@@53)) (InsidePredicate_18457_19395 p@@60 v_1@@59 r@@53 u@@53))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_17211 p@@60 v_1@@59 q@@53 w@@59) (InsidePredicate_17211_19395 q@@53 w@@59 r@@53 u@@53))
)))
(assert (forall ((p@@61 T@Field_18457_18458) (v_1@@60 T@FrameType) (q@@54 T@Field_17238_17239) (w@@60 T@FrameType) (r@@54 T@Field_18457_18458) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_17211 p@@61 v_1@@60 q@@54 w@@60) (InsidePredicate_17211_18457 q@@54 w@@60 r@@54 u@@54)) (InsidePredicate_18457_18457 p@@61 v_1@@60 r@@54 u@@54))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_17211 p@@61 v_1@@60 q@@54 w@@60) (InsidePredicate_17211_18457 q@@54 w@@60 r@@54 u@@54))
)))
(assert (forall ((p@@62 T@Field_18457_18458) (v_1@@61 T@FrameType) (q@@55 T@Field_17238_17239) (w@@61 T@FrameType) (r@@55 T@Field_17797_17798) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_17211 p@@62 v_1@@61 q@@55 w@@61) (InsidePredicate_17211_17768 q@@55 w@@61 r@@55 u@@55)) (InsidePredicate_18457_17768 p@@62 v_1@@61 r@@55 u@@55))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_17211 p@@62 v_1@@61 q@@55 w@@61) (InsidePredicate_17211_17768 q@@55 w@@61 r@@55 u@@55))
)))
(assert (forall ((p@@63 T@Field_18457_18458) (v_1@@62 T@FrameType) (q@@56 T@Field_17238_17239) (w@@62 T@FrameType) (r@@56 T@Field_17238_17239) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_17211 p@@63 v_1@@62 q@@56 w@@62) (InsidePredicate_17211_17211 q@@56 w@@62 r@@56 u@@56)) (InsidePredicate_18457_17211 p@@63 v_1@@62 r@@56 u@@56))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_17211 p@@63 v_1@@62 q@@56 w@@62) (InsidePredicate_17211_17211 q@@56 w@@62 r@@56 u@@56))
)))
(assert (forall ((p@@64 T@Field_18457_18458) (v_1@@63 T@FrameType) (q@@57 T@Field_17238_17239) (w@@63 T@FrameType) (r@@57 T@Field_16311_16312) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_17211 p@@64 v_1@@63 q@@57 w@@63) (InsidePredicate_17211_16278 q@@57 w@@63 r@@57 u@@57)) (InsidePredicate_18457_16278 p@@64 v_1@@63 r@@57 u@@57))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_17211 p@@64 v_1@@63 q@@57 w@@63) (InsidePredicate_17211_16278 q@@57 w@@63 r@@57 u@@57))
)))
(assert (forall ((p@@65 T@Field_18457_18458) (v_1@@64 T@FrameType) (q@@58 T@Field_17238_17239) (w@@64 T@FrameType) (r@@58 T@Field_7712_7741) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_17211 p@@65 v_1@@64 q@@58 w@@64) (InsidePredicate_17211_12948 q@@58 w@@64 r@@58 u@@58)) (InsidePredicate_18457_12948 p@@65 v_1@@64 r@@58 u@@58))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_17211 p@@65 v_1@@64 q@@58 w@@64) (InsidePredicate_17211_12948 q@@58 w@@64 r@@58 u@@58))
)))
(assert (forall ((p@@66 T@Field_18457_18458) (v_1@@65 T@FrameType) (q@@59 T@Field_16311_16312) (w@@65 T@FrameType) (r@@59 T@Field_19395_19396) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_16278 p@@66 v_1@@65 q@@59 w@@65) (InsidePredicate_16278_19395 q@@59 w@@65 r@@59 u@@59)) (InsidePredicate_18457_19395 p@@66 v_1@@65 r@@59 u@@59))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_16278 p@@66 v_1@@65 q@@59 w@@65) (InsidePredicate_16278_19395 q@@59 w@@65 r@@59 u@@59))
)))
(assert (forall ((p@@67 T@Field_18457_18458) (v_1@@66 T@FrameType) (q@@60 T@Field_16311_16312) (w@@66 T@FrameType) (r@@60 T@Field_18457_18458) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_16278 p@@67 v_1@@66 q@@60 w@@66) (InsidePredicate_16278_18457 q@@60 w@@66 r@@60 u@@60)) (InsidePredicate_18457_18457 p@@67 v_1@@66 r@@60 u@@60))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_16278 p@@67 v_1@@66 q@@60 w@@66) (InsidePredicate_16278_18457 q@@60 w@@66 r@@60 u@@60))
)))
(assert (forall ((p@@68 T@Field_18457_18458) (v_1@@67 T@FrameType) (q@@61 T@Field_16311_16312) (w@@67 T@FrameType) (r@@61 T@Field_17797_17798) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_16278 p@@68 v_1@@67 q@@61 w@@67) (InsidePredicate_16278_17768 q@@61 w@@67 r@@61 u@@61)) (InsidePredicate_18457_17768 p@@68 v_1@@67 r@@61 u@@61))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_16278 p@@68 v_1@@67 q@@61 w@@67) (InsidePredicate_16278_17768 q@@61 w@@67 r@@61 u@@61))
)))
(assert (forall ((p@@69 T@Field_18457_18458) (v_1@@68 T@FrameType) (q@@62 T@Field_16311_16312) (w@@68 T@FrameType) (r@@62 T@Field_17238_17239) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_16278 p@@69 v_1@@68 q@@62 w@@68) (InsidePredicate_16278_17211 q@@62 w@@68 r@@62 u@@62)) (InsidePredicate_18457_17211 p@@69 v_1@@68 r@@62 u@@62))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_16278 p@@69 v_1@@68 q@@62 w@@68) (InsidePredicate_16278_17211 q@@62 w@@68 r@@62 u@@62))
)))
(assert (forall ((p@@70 T@Field_18457_18458) (v_1@@69 T@FrameType) (q@@63 T@Field_16311_16312) (w@@69 T@FrameType) (r@@63 T@Field_16311_16312) (u@@63 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_16278 p@@70 v_1@@69 q@@63 w@@69) (InsidePredicate_16278_16278 q@@63 w@@69 r@@63 u@@63)) (InsidePredicate_18457_16278 p@@70 v_1@@69 r@@63 u@@63))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_16278 p@@70 v_1@@69 q@@63 w@@69) (InsidePredicate_16278_16278 q@@63 w@@69 r@@63 u@@63))
)))
(assert (forall ((p@@71 T@Field_18457_18458) (v_1@@70 T@FrameType) (q@@64 T@Field_16311_16312) (w@@70 T@FrameType) (r@@64 T@Field_7712_7741) (u@@64 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_16278 p@@71 v_1@@70 q@@64 w@@70) (InsidePredicate_16278_12948 q@@64 w@@70 r@@64 u@@64)) (InsidePredicate_18457_12948 p@@71 v_1@@70 r@@64 u@@64))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_16278 p@@71 v_1@@70 q@@64 w@@70) (InsidePredicate_16278_12948 q@@64 w@@70 r@@64 u@@64))
)))
(assert (forall ((p@@72 T@Field_18457_18458) (v_1@@71 T@FrameType) (q@@65 T@Field_7712_7741) (w@@71 T@FrameType) (r@@65 T@Field_19395_19396) (u@@65 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_12948 p@@72 v_1@@71 q@@65 w@@71) (InsidePredicate_12948_19395 q@@65 w@@71 r@@65 u@@65)) (InsidePredicate_18457_19395 p@@72 v_1@@71 r@@65 u@@65))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_12948 p@@72 v_1@@71 q@@65 w@@71) (InsidePredicate_12948_19395 q@@65 w@@71 r@@65 u@@65))
)))
(assert (forall ((p@@73 T@Field_18457_18458) (v_1@@72 T@FrameType) (q@@66 T@Field_7712_7741) (w@@72 T@FrameType) (r@@66 T@Field_18457_18458) (u@@66 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_12948 p@@73 v_1@@72 q@@66 w@@72) (InsidePredicate_12948_18457 q@@66 w@@72 r@@66 u@@66)) (InsidePredicate_18457_18457 p@@73 v_1@@72 r@@66 u@@66))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_12948 p@@73 v_1@@72 q@@66 w@@72) (InsidePredicate_12948_18457 q@@66 w@@72 r@@66 u@@66))
)))
(assert (forall ((p@@74 T@Field_18457_18458) (v_1@@73 T@FrameType) (q@@67 T@Field_7712_7741) (w@@73 T@FrameType) (r@@67 T@Field_17797_17798) (u@@67 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_12948 p@@74 v_1@@73 q@@67 w@@73) (InsidePredicate_12948_17768 q@@67 w@@73 r@@67 u@@67)) (InsidePredicate_18457_17768 p@@74 v_1@@73 r@@67 u@@67))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_12948 p@@74 v_1@@73 q@@67 w@@73) (InsidePredicate_12948_17768 q@@67 w@@73 r@@67 u@@67))
)))
(assert (forall ((p@@75 T@Field_18457_18458) (v_1@@74 T@FrameType) (q@@68 T@Field_7712_7741) (w@@74 T@FrameType) (r@@68 T@Field_17238_17239) (u@@68 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_12948 p@@75 v_1@@74 q@@68 w@@74) (InsidePredicate_12948_17211 q@@68 w@@74 r@@68 u@@68)) (InsidePredicate_18457_17211 p@@75 v_1@@74 r@@68 u@@68))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_12948 p@@75 v_1@@74 q@@68 w@@74) (InsidePredicate_12948_17211 q@@68 w@@74 r@@68 u@@68))
)))
(assert (forall ((p@@76 T@Field_18457_18458) (v_1@@75 T@FrameType) (q@@69 T@Field_7712_7741) (w@@75 T@FrameType) (r@@69 T@Field_16311_16312) (u@@69 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_12948 p@@76 v_1@@75 q@@69 w@@75) (InsidePredicate_12948_16278 q@@69 w@@75 r@@69 u@@69)) (InsidePredicate_18457_16278 p@@76 v_1@@75 r@@69 u@@69))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_12948 p@@76 v_1@@75 q@@69 w@@75) (InsidePredicate_12948_16278 q@@69 w@@75 r@@69 u@@69))
)))
(assert (forall ((p@@77 T@Field_18457_18458) (v_1@@76 T@FrameType) (q@@70 T@Field_7712_7741) (w@@76 T@FrameType) (r@@70 T@Field_7712_7741) (u@@70 T@FrameType) ) (!  (=> (and (InsidePredicate_18457_12948 p@@77 v_1@@76 q@@70 w@@76) (InsidePredicate_12948_12948 q@@70 w@@76 r@@70 u@@70)) (InsidePredicate_18457_12948 p@@77 v_1@@76 r@@70 u@@70))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18457_12948 p@@77 v_1@@76 q@@70 w@@76) (InsidePredicate_12948_12948 q@@70 w@@76 r@@70 u@@70))
)))
(assert (forall ((p@@78 T@Field_17797_17798) (v_1@@77 T@FrameType) (q@@71 T@Field_19395_19396) (w@@77 T@FrameType) (r@@71 T@Field_19395_19396) (u@@71 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_19395 p@@78 v_1@@77 q@@71 w@@77) (InsidePredicate_19395_19395 q@@71 w@@77 r@@71 u@@71)) (InsidePredicate_17768_19395 p@@78 v_1@@77 r@@71 u@@71))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_19395 p@@78 v_1@@77 q@@71 w@@77) (InsidePredicate_19395_19395 q@@71 w@@77 r@@71 u@@71))
)))
(assert (forall ((p@@79 T@Field_17797_17798) (v_1@@78 T@FrameType) (q@@72 T@Field_19395_19396) (w@@78 T@FrameType) (r@@72 T@Field_18457_18458) (u@@72 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_19395 p@@79 v_1@@78 q@@72 w@@78) (InsidePredicate_19395_18457 q@@72 w@@78 r@@72 u@@72)) (InsidePredicate_17768_18457 p@@79 v_1@@78 r@@72 u@@72))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_19395 p@@79 v_1@@78 q@@72 w@@78) (InsidePredicate_19395_18457 q@@72 w@@78 r@@72 u@@72))
)))
(assert (forall ((p@@80 T@Field_17797_17798) (v_1@@79 T@FrameType) (q@@73 T@Field_19395_19396) (w@@79 T@FrameType) (r@@73 T@Field_17797_17798) (u@@73 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_19395 p@@80 v_1@@79 q@@73 w@@79) (InsidePredicate_19395_17768 q@@73 w@@79 r@@73 u@@73)) (InsidePredicate_17768_17768 p@@80 v_1@@79 r@@73 u@@73))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_19395 p@@80 v_1@@79 q@@73 w@@79) (InsidePredicate_19395_17768 q@@73 w@@79 r@@73 u@@73))
)))
(assert (forall ((p@@81 T@Field_17797_17798) (v_1@@80 T@FrameType) (q@@74 T@Field_19395_19396) (w@@80 T@FrameType) (r@@74 T@Field_17238_17239) (u@@74 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_19395 p@@81 v_1@@80 q@@74 w@@80) (InsidePredicate_19395_17211 q@@74 w@@80 r@@74 u@@74)) (InsidePredicate_17768_17211 p@@81 v_1@@80 r@@74 u@@74))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_19395 p@@81 v_1@@80 q@@74 w@@80) (InsidePredicate_19395_17211 q@@74 w@@80 r@@74 u@@74))
)))
(assert (forall ((p@@82 T@Field_17797_17798) (v_1@@81 T@FrameType) (q@@75 T@Field_19395_19396) (w@@81 T@FrameType) (r@@75 T@Field_16311_16312) (u@@75 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_19395 p@@82 v_1@@81 q@@75 w@@81) (InsidePredicate_19395_16278 q@@75 w@@81 r@@75 u@@75)) (InsidePredicate_17768_16278 p@@82 v_1@@81 r@@75 u@@75))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_19395 p@@82 v_1@@81 q@@75 w@@81) (InsidePredicate_19395_16278 q@@75 w@@81 r@@75 u@@75))
)))
(assert (forall ((p@@83 T@Field_17797_17798) (v_1@@82 T@FrameType) (q@@76 T@Field_19395_19396) (w@@82 T@FrameType) (r@@76 T@Field_7712_7741) (u@@76 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_19395 p@@83 v_1@@82 q@@76 w@@82) (InsidePredicate_19395_12948 q@@76 w@@82 r@@76 u@@76)) (InsidePredicate_17768_12948 p@@83 v_1@@82 r@@76 u@@76))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_19395 p@@83 v_1@@82 q@@76 w@@82) (InsidePredicate_19395_12948 q@@76 w@@82 r@@76 u@@76))
)))
(assert (forall ((p@@84 T@Field_17797_17798) (v_1@@83 T@FrameType) (q@@77 T@Field_18457_18458) (w@@83 T@FrameType) (r@@77 T@Field_19395_19396) (u@@77 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_18457 p@@84 v_1@@83 q@@77 w@@83) (InsidePredicate_18457_19395 q@@77 w@@83 r@@77 u@@77)) (InsidePredicate_17768_19395 p@@84 v_1@@83 r@@77 u@@77))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_18457 p@@84 v_1@@83 q@@77 w@@83) (InsidePredicate_18457_19395 q@@77 w@@83 r@@77 u@@77))
)))
(assert (forall ((p@@85 T@Field_17797_17798) (v_1@@84 T@FrameType) (q@@78 T@Field_18457_18458) (w@@84 T@FrameType) (r@@78 T@Field_18457_18458) (u@@78 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_18457 p@@85 v_1@@84 q@@78 w@@84) (InsidePredicate_18457_18457 q@@78 w@@84 r@@78 u@@78)) (InsidePredicate_17768_18457 p@@85 v_1@@84 r@@78 u@@78))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_18457 p@@85 v_1@@84 q@@78 w@@84) (InsidePredicate_18457_18457 q@@78 w@@84 r@@78 u@@78))
)))
(assert (forall ((p@@86 T@Field_17797_17798) (v_1@@85 T@FrameType) (q@@79 T@Field_18457_18458) (w@@85 T@FrameType) (r@@79 T@Field_17797_17798) (u@@79 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_18457 p@@86 v_1@@85 q@@79 w@@85) (InsidePredicate_18457_17768 q@@79 w@@85 r@@79 u@@79)) (InsidePredicate_17768_17768 p@@86 v_1@@85 r@@79 u@@79))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_18457 p@@86 v_1@@85 q@@79 w@@85) (InsidePredicate_18457_17768 q@@79 w@@85 r@@79 u@@79))
)))
(assert (forall ((p@@87 T@Field_17797_17798) (v_1@@86 T@FrameType) (q@@80 T@Field_18457_18458) (w@@86 T@FrameType) (r@@80 T@Field_17238_17239) (u@@80 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_18457 p@@87 v_1@@86 q@@80 w@@86) (InsidePredicate_18457_17211 q@@80 w@@86 r@@80 u@@80)) (InsidePredicate_17768_17211 p@@87 v_1@@86 r@@80 u@@80))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_18457 p@@87 v_1@@86 q@@80 w@@86) (InsidePredicate_18457_17211 q@@80 w@@86 r@@80 u@@80))
)))
(assert (forall ((p@@88 T@Field_17797_17798) (v_1@@87 T@FrameType) (q@@81 T@Field_18457_18458) (w@@87 T@FrameType) (r@@81 T@Field_16311_16312) (u@@81 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_18457 p@@88 v_1@@87 q@@81 w@@87) (InsidePredicate_18457_16278 q@@81 w@@87 r@@81 u@@81)) (InsidePredicate_17768_16278 p@@88 v_1@@87 r@@81 u@@81))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_18457 p@@88 v_1@@87 q@@81 w@@87) (InsidePredicate_18457_16278 q@@81 w@@87 r@@81 u@@81))
)))
(assert (forall ((p@@89 T@Field_17797_17798) (v_1@@88 T@FrameType) (q@@82 T@Field_18457_18458) (w@@88 T@FrameType) (r@@82 T@Field_7712_7741) (u@@82 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_18457 p@@89 v_1@@88 q@@82 w@@88) (InsidePredicate_18457_12948 q@@82 w@@88 r@@82 u@@82)) (InsidePredicate_17768_12948 p@@89 v_1@@88 r@@82 u@@82))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_18457 p@@89 v_1@@88 q@@82 w@@88) (InsidePredicate_18457_12948 q@@82 w@@88 r@@82 u@@82))
)))
(assert (forall ((p@@90 T@Field_17797_17798) (v_1@@89 T@FrameType) (q@@83 T@Field_17797_17798) (w@@89 T@FrameType) (r@@83 T@Field_19395_19396) (u@@83 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_17768 p@@90 v_1@@89 q@@83 w@@89) (InsidePredicate_17768_19395 q@@83 w@@89 r@@83 u@@83)) (InsidePredicate_17768_19395 p@@90 v_1@@89 r@@83 u@@83))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_17768 p@@90 v_1@@89 q@@83 w@@89) (InsidePredicate_17768_19395 q@@83 w@@89 r@@83 u@@83))
)))
(assert (forall ((p@@91 T@Field_17797_17798) (v_1@@90 T@FrameType) (q@@84 T@Field_17797_17798) (w@@90 T@FrameType) (r@@84 T@Field_18457_18458) (u@@84 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_17768 p@@91 v_1@@90 q@@84 w@@90) (InsidePredicate_17768_18457 q@@84 w@@90 r@@84 u@@84)) (InsidePredicate_17768_18457 p@@91 v_1@@90 r@@84 u@@84))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_17768 p@@91 v_1@@90 q@@84 w@@90) (InsidePredicate_17768_18457 q@@84 w@@90 r@@84 u@@84))
)))
(assert (forall ((p@@92 T@Field_17797_17798) (v_1@@91 T@FrameType) (q@@85 T@Field_17797_17798) (w@@91 T@FrameType) (r@@85 T@Field_17797_17798) (u@@85 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_17768 p@@92 v_1@@91 q@@85 w@@91) (InsidePredicate_17768_17768 q@@85 w@@91 r@@85 u@@85)) (InsidePredicate_17768_17768 p@@92 v_1@@91 r@@85 u@@85))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_17768 p@@92 v_1@@91 q@@85 w@@91) (InsidePredicate_17768_17768 q@@85 w@@91 r@@85 u@@85))
)))
(assert (forall ((p@@93 T@Field_17797_17798) (v_1@@92 T@FrameType) (q@@86 T@Field_17797_17798) (w@@92 T@FrameType) (r@@86 T@Field_17238_17239) (u@@86 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_17768 p@@93 v_1@@92 q@@86 w@@92) (InsidePredicate_17768_17211 q@@86 w@@92 r@@86 u@@86)) (InsidePredicate_17768_17211 p@@93 v_1@@92 r@@86 u@@86))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_17768 p@@93 v_1@@92 q@@86 w@@92) (InsidePredicate_17768_17211 q@@86 w@@92 r@@86 u@@86))
)))
(assert (forall ((p@@94 T@Field_17797_17798) (v_1@@93 T@FrameType) (q@@87 T@Field_17797_17798) (w@@93 T@FrameType) (r@@87 T@Field_16311_16312) (u@@87 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_17768 p@@94 v_1@@93 q@@87 w@@93) (InsidePredicate_17768_16278 q@@87 w@@93 r@@87 u@@87)) (InsidePredicate_17768_16278 p@@94 v_1@@93 r@@87 u@@87))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_17768 p@@94 v_1@@93 q@@87 w@@93) (InsidePredicate_17768_16278 q@@87 w@@93 r@@87 u@@87))
)))
(assert (forall ((p@@95 T@Field_17797_17798) (v_1@@94 T@FrameType) (q@@88 T@Field_17797_17798) (w@@94 T@FrameType) (r@@88 T@Field_7712_7741) (u@@88 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_17768 p@@95 v_1@@94 q@@88 w@@94) (InsidePredicate_17768_12948 q@@88 w@@94 r@@88 u@@88)) (InsidePredicate_17768_12948 p@@95 v_1@@94 r@@88 u@@88))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_17768 p@@95 v_1@@94 q@@88 w@@94) (InsidePredicate_17768_12948 q@@88 w@@94 r@@88 u@@88))
)))
(assert (forall ((p@@96 T@Field_17797_17798) (v_1@@95 T@FrameType) (q@@89 T@Field_17238_17239) (w@@95 T@FrameType) (r@@89 T@Field_19395_19396) (u@@89 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_17211 p@@96 v_1@@95 q@@89 w@@95) (InsidePredicate_17211_19395 q@@89 w@@95 r@@89 u@@89)) (InsidePredicate_17768_19395 p@@96 v_1@@95 r@@89 u@@89))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_17211 p@@96 v_1@@95 q@@89 w@@95) (InsidePredicate_17211_19395 q@@89 w@@95 r@@89 u@@89))
)))
(assert (forall ((p@@97 T@Field_17797_17798) (v_1@@96 T@FrameType) (q@@90 T@Field_17238_17239) (w@@96 T@FrameType) (r@@90 T@Field_18457_18458) (u@@90 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_17211 p@@97 v_1@@96 q@@90 w@@96) (InsidePredicate_17211_18457 q@@90 w@@96 r@@90 u@@90)) (InsidePredicate_17768_18457 p@@97 v_1@@96 r@@90 u@@90))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_17211 p@@97 v_1@@96 q@@90 w@@96) (InsidePredicate_17211_18457 q@@90 w@@96 r@@90 u@@90))
)))
(assert (forall ((p@@98 T@Field_17797_17798) (v_1@@97 T@FrameType) (q@@91 T@Field_17238_17239) (w@@97 T@FrameType) (r@@91 T@Field_17797_17798) (u@@91 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_17211 p@@98 v_1@@97 q@@91 w@@97) (InsidePredicate_17211_17768 q@@91 w@@97 r@@91 u@@91)) (InsidePredicate_17768_17768 p@@98 v_1@@97 r@@91 u@@91))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_17211 p@@98 v_1@@97 q@@91 w@@97) (InsidePredicate_17211_17768 q@@91 w@@97 r@@91 u@@91))
)))
(assert (forall ((p@@99 T@Field_17797_17798) (v_1@@98 T@FrameType) (q@@92 T@Field_17238_17239) (w@@98 T@FrameType) (r@@92 T@Field_17238_17239) (u@@92 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_17211 p@@99 v_1@@98 q@@92 w@@98) (InsidePredicate_17211_17211 q@@92 w@@98 r@@92 u@@92)) (InsidePredicate_17768_17211 p@@99 v_1@@98 r@@92 u@@92))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_17211 p@@99 v_1@@98 q@@92 w@@98) (InsidePredicate_17211_17211 q@@92 w@@98 r@@92 u@@92))
)))
(assert (forall ((p@@100 T@Field_17797_17798) (v_1@@99 T@FrameType) (q@@93 T@Field_17238_17239) (w@@99 T@FrameType) (r@@93 T@Field_16311_16312) (u@@93 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_17211 p@@100 v_1@@99 q@@93 w@@99) (InsidePredicate_17211_16278 q@@93 w@@99 r@@93 u@@93)) (InsidePredicate_17768_16278 p@@100 v_1@@99 r@@93 u@@93))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_17211 p@@100 v_1@@99 q@@93 w@@99) (InsidePredicate_17211_16278 q@@93 w@@99 r@@93 u@@93))
)))
(assert (forall ((p@@101 T@Field_17797_17798) (v_1@@100 T@FrameType) (q@@94 T@Field_17238_17239) (w@@100 T@FrameType) (r@@94 T@Field_7712_7741) (u@@94 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_17211 p@@101 v_1@@100 q@@94 w@@100) (InsidePredicate_17211_12948 q@@94 w@@100 r@@94 u@@94)) (InsidePredicate_17768_12948 p@@101 v_1@@100 r@@94 u@@94))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_17211 p@@101 v_1@@100 q@@94 w@@100) (InsidePredicate_17211_12948 q@@94 w@@100 r@@94 u@@94))
)))
(assert (forall ((p@@102 T@Field_17797_17798) (v_1@@101 T@FrameType) (q@@95 T@Field_16311_16312) (w@@101 T@FrameType) (r@@95 T@Field_19395_19396) (u@@95 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_16278 p@@102 v_1@@101 q@@95 w@@101) (InsidePredicate_16278_19395 q@@95 w@@101 r@@95 u@@95)) (InsidePredicate_17768_19395 p@@102 v_1@@101 r@@95 u@@95))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_16278 p@@102 v_1@@101 q@@95 w@@101) (InsidePredicate_16278_19395 q@@95 w@@101 r@@95 u@@95))
)))
(assert (forall ((p@@103 T@Field_17797_17798) (v_1@@102 T@FrameType) (q@@96 T@Field_16311_16312) (w@@102 T@FrameType) (r@@96 T@Field_18457_18458) (u@@96 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_16278 p@@103 v_1@@102 q@@96 w@@102) (InsidePredicate_16278_18457 q@@96 w@@102 r@@96 u@@96)) (InsidePredicate_17768_18457 p@@103 v_1@@102 r@@96 u@@96))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_16278 p@@103 v_1@@102 q@@96 w@@102) (InsidePredicate_16278_18457 q@@96 w@@102 r@@96 u@@96))
)))
(assert (forall ((p@@104 T@Field_17797_17798) (v_1@@103 T@FrameType) (q@@97 T@Field_16311_16312) (w@@103 T@FrameType) (r@@97 T@Field_17797_17798) (u@@97 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_16278 p@@104 v_1@@103 q@@97 w@@103) (InsidePredicate_16278_17768 q@@97 w@@103 r@@97 u@@97)) (InsidePredicate_17768_17768 p@@104 v_1@@103 r@@97 u@@97))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_16278 p@@104 v_1@@103 q@@97 w@@103) (InsidePredicate_16278_17768 q@@97 w@@103 r@@97 u@@97))
)))
(assert (forall ((p@@105 T@Field_17797_17798) (v_1@@104 T@FrameType) (q@@98 T@Field_16311_16312) (w@@104 T@FrameType) (r@@98 T@Field_17238_17239) (u@@98 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_16278 p@@105 v_1@@104 q@@98 w@@104) (InsidePredicate_16278_17211 q@@98 w@@104 r@@98 u@@98)) (InsidePredicate_17768_17211 p@@105 v_1@@104 r@@98 u@@98))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_16278 p@@105 v_1@@104 q@@98 w@@104) (InsidePredicate_16278_17211 q@@98 w@@104 r@@98 u@@98))
)))
(assert (forall ((p@@106 T@Field_17797_17798) (v_1@@105 T@FrameType) (q@@99 T@Field_16311_16312) (w@@105 T@FrameType) (r@@99 T@Field_16311_16312) (u@@99 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_16278 p@@106 v_1@@105 q@@99 w@@105) (InsidePredicate_16278_16278 q@@99 w@@105 r@@99 u@@99)) (InsidePredicate_17768_16278 p@@106 v_1@@105 r@@99 u@@99))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_16278 p@@106 v_1@@105 q@@99 w@@105) (InsidePredicate_16278_16278 q@@99 w@@105 r@@99 u@@99))
)))
(assert (forall ((p@@107 T@Field_17797_17798) (v_1@@106 T@FrameType) (q@@100 T@Field_16311_16312) (w@@106 T@FrameType) (r@@100 T@Field_7712_7741) (u@@100 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_16278 p@@107 v_1@@106 q@@100 w@@106) (InsidePredicate_16278_12948 q@@100 w@@106 r@@100 u@@100)) (InsidePredicate_17768_12948 p@@107 v_1@@106 r@@100 u@@100))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_16278 p@@107 v_1@@106 q@@100 w@@106) (InsidePredicate_16278_12948 q@@100 w@@106 r@@100 u@@100))
)))
(assert (forall ((p@@108 T@Field_17797_17798) (v_1@@107 T@FrameType) (q@@101 T@Field_7712_7741) (w@@107 T@FrameType) (r@@101 T@Field_19395_19396) (u@@101 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_12948 p@@108 v_1@@107 q@@101 w@@107) (InsidePredicate_12948_19395 q@@101 w@@107 r@@101 u@@101)) (InsidePredicate_17768_19395 p@@108 v_1@@107 r@@101 u@@101))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_12948 p@@108 v_1@@107 q@@101 w@@107) (InsidePredicate_12948_19395 q@@101 w@@107 r@@101 u@@101))
)))
(assert (forall ((p@@109 T@Field_17797_17798) (v_1@@108 T@FrameType) (q@@102 T@Field_7712_7741) (w@@108 T@FrameType) (r@@102 T@Field_18457_18458) (u@@102 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_12948 p@@109 v_1@@108 q@@102 w@@108) (InsidePredicate_12948_18457 q@@102 w@@108 r@@102 u@@102)) (InsidePredicate_17768_18457 p@@109 v_1@@108 r@@102 u@@102))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_12948 p@@109 v_1@@108 q@@102 w@@108) (InsidePredicate_12948_18457 q@@102 w@@108 r@@102 u@@102))
)))
(assert (forall ((p@@110 T@Field_17797_17798) (v_1@@109 T@FrameType) (q@@103 T@Field_7712_7741) (w@@109 T@FrameType) (r@@103 T@Field_17797_17798) (u@@103 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_12948 p@@110 v_1@@109 q@@103 w@@109) (InsidePredicate_12948_17768 q@@103 w@@109 r@@103 u@@103)) (InsidePredicate_17768_17768 p@@110 v_1@@109 r@@103 u@@103))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_12948 p@@110 v_1@@109 q@@103 w@@109) (InsidePredicate_12948_17768 q@@103 w@@109 r@@103 u@@103))
)))
(assert (forall ((p@@111 T@Field_17797_17798) (v_1@@110 T@FrameType) (q@@104 T@Field_7712_7741) (w@@110 T@FrameType) (r@@104 T@Field_17238_17239) (u@@104 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_12948 p@@111 v_1@@110 q@@104 w@@110) (InsidePredicate_12948_17211 q@@104 w@@110 r@@104 u@@104)) (InsidePredicate_17768_17211 p@@111 v_1@@110 r@@104 u@@104))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_12948 p@@111 v_1@@110 q@@104 w@@110) (InsidePredicate_12948_17211 q@@104 w@@110 r@@104 u@@104))
)))
(assert (forall ((p@@112 T@Field_17797_17798) (v_1@@111 T@FrameType) (q@@105 T@Field_7712_7741) (w@@111 T@FrameType) (r@@105 T@Field_16311_16312) (u@@105 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_12948 p@@112 v_1@@111 q@@105 w@@111) (InsidePredicate_12948_16278 q@@105 w@@111 r@@105 u@@105)) (InsidePredicate_17768_16278 p@@112 v_1@@111 r@@105 u@@105))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_12948 p@@112 v_1@@111 q@@105 w@@111) (InsidePredicate_12948_16278 q@@105 w@@111 r@@105 u@@105))
)))
(assert (forall ((p@@113 T@Field_17797_17798) (v_1@@112 T@FrameType) (q@@106 T@Field_7712_7741) (w@@112 T@FrameType) (r@@106 T@Field_7712_7741) (u@@106 T@FrameType) ) (!  (=> (and (InsidePredicate_17768_12948 p@@113 v_1@@112 q@@106 w@@112) (InsidePredicate_12948_12948 q@@106 w@@112 r@@106 u@@106)) (InsidePredicate_17768_12948 p@@113 v_1@@112 r@@106 u@@106))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17768_12948 p@@113 v_1@@112 q@@106 w@@112) (InsidePredicate_12948_12948 q@@106 w@@112 r@@106 u@@106))
)))
(assert (forall ((p@@114 T@Field_17238_17239) (v_1@@113 T@FrameType) (q@@107 T@Field_19395_19396) (w@@113 T@FrameType) (r@@107 T@Field_19395_19396) (u@@107 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_19395 p@@114 v_1@@113 q@@107 w@@113) (InsidePredicate_19395_19395 q@@107 w@@113 r@@107 u@@107)) (InsidePredicate_17211_19395 p@@114 v_1@@113 r@@107 u@@107))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_19395 p@@114 v_1@@113 q@@107 w@@113) (InsidePredicate_19395_19395 q@@107 w@@113 r@@107 u@@107))
)))
(assert (forall ((p@@115 T@Field_17238_17239) (v_1@@114 T@FrameType) (q@@108 T@Field_19395_19396) (w@@114 T@FrameType) (r@@108 T@Field_18457_18458) (u@@108 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_19395 p@@115 v_1@@114 q@@108 w@@114) (InsidePredicate_19395_18457 q@@108 w@@114 r@@108 u@@108)) (InsidePredicate_17211_18457 p@@115 v_1@@114 r@@108 u@@108))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_19395 p@@115 v_1@@114 q@@108 w@@114) (InsidePredicate_19395_18457 q@@108 w@@114 r@@108 u@@108))
)))
(assert (forall ((p@@116 T@Field_17238_17239) (v_1@@115 T@FrameType) (q@@109 T@Field_19395_19396) (w@@115 T@FrameType) (r@@109 T@Field_17797_17798) (u@@109 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_19395 p@@116 v_1@@115 q@@109 w@@115) (InsidePredicate_19395_17768 q@@109 w@@115 r@@109 u@@109)) (InsidePredicate_17211_17768 p@@116 v_1@@115 r@@109 u@@109))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_19395 p@@116 v_1@@115 q@@109 w@@115) (InsidePredicate_19395_17768 q@@109 w@@115 r@@109 u@@109))
)))
(assert (forall ((p@@117 T@Field_17238_17239) (v_1@@116 T@FrameType) (q@@110 T@Field_19395_19396) (w@@116 T@FrameType) (r@@110 T@Field_17238_17239) (u@@110 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_19395 p@@117 v_1@@116 q@@110 w@@116) (InsidePredicate_19395_17211 q@@110 w@@116 r@@110 u@@110)) (InsidePredicate_17211_17211 p@@117 v_1@@116 r@@110 u@@110))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_19395 p@@117 v_1@@116 q@@110 w@@116) (InsidePredicate_19395_17211 q@@110 w@@116 r@@110 u@@110))
)))
(assert (forall ((p@@118 T@Field_17238_17239) (v_1@@117 T@FrameType) (q@@111 T@Field_19395_19396) (w@@117 T@FrameType) (r@@111 T@Field_16311_16312) (u@@111 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_19395 p@@118 v_1@@117 q@@111 w@@117) (InsidePredicate_19395_16278 q@@111 w@@117 r@@111 u@@111)) (InsidePredicate_17211_16278 p@@118 v_1@@117 r@@111 u@@111))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_19395 p@@118 v_1@@117 q@@111 w@@117) (InsidePredicate_19395_16278 q@@111 w@@117 r@@111 u@@111))
)))
(assert (forall ((p@@119 T@Field_17238_17239) (v_1@@118 T@FrameType) (q@@112 T@Field_19395_19396) (w@@118 T@FrameType) (r@@112 T@Field_7712_7741) (u@@112 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_19395 p@@119 v_1@@118 q@@112 w@@118) (InsidePredicate_19395_12948 q@@112 w@@118 r@@112 u@@112)) (InsidePredicate_17211_12948 p@@119 v_1@@118 r@@112 u@@112))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_19395 p@@119 v_1@@118 q@@112 w@@118) (InsidePredicate_19395_12948 q@@112 w@@118 r@@112 u@@112))
)))
(assert (forall ((p@@120 T@Field_17238_17239) (v_1@@119 T@FrameType) (q@@113 T@Field_18457_18458) (w@@119 T@FrameType) (r@@113 T@Field_19395_19396) (u@@113 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_18457 p@@120 v_1@@119 q@@113 w@@119) (InsidePredicate_18457_19395 q@@113 w@@119 r@@113 u@@113)) (InsidePredicate_17211_19395 p@@120 v_1@@119 r@@113 u@@113))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_18457 p@@120 v_1@@119 q@@113 w@@119) (InsidePredicate_18457_19395 q@@113 w@@119 r@@113 u@@113))
)))
(assert (forall ((p@@121 T@Field_17238_17239) (v_1@@120 T@FrameType) (q@@114 T@Field_18457_18458) (w@@120 T@FrameType) (r@@114 T@Field_18457_18458) (u@@114 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_18457 p@@121 v_1@@120 q@@114 w@@120) (InsidePredicate_18457_18457 q@@114 w@@120 r@@114 u@@114)) (InsidePredicate_17211_18457 p@@121 v_1@@120 r@@114 u@@114))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_18457 p@@121 v_1@@120 q@@114 w@@120) (InsidePredicate_18457_18457 q@@114 w@@120 r@@114 u@@114))
)))
(assert (forall ((p@@122 T@Field_17238_17239) (v_1@@121 T@FrameType) (q@@115 T@Field_18457_18458) (w@@121 T@FrameType) (r@@115 T@Field_17797_17798) (u@@115 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_18457 p@@122 v_1@@121 q@@115 w@@121) (InsidePredicate_18457_17768 q@@115 w@@121 r@@115 u@@115)) (InsidePredicate_17211_17768 p@@122 v_1@@121 r@@115 u@@115))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_18457 p@@122 v_1@@121 q@@115 w@@121) (InsidePredicate_18457_17768 q@@115 w@@121 r@@115 u@@115))
)))
(assert (forall ((p@@123 T@Field_17238_17239) (v_1@@122 T@FrameType) (q@@116 T@Field_18457_18458) (w@@122 T@FrameType) (r@@116 T@Field_17238_17239) (u@@116 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_18457 p@@123 v_1@@122 q@@116 w@@122) (InsidePredicate_18457_17211 q@@116 w@@122 r@@116 u@@116)) (InsidePredicate_17211_17211 p@@123 v_1@@122 r@@116 u@@116))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_18457 p@@123 v_1@@122 q@@116 w@@122) (InsidePredicate_18457_17211 q@@116 w@@122 r@@116 u@@116))
)))
(assert (forall ((p@@124 T@Field_17238_17239) (v_1@@123 T@FrameType) (q@@117 T@Field_18457_18458) (w@@123 T@FrameType) (r@@117 T@Field_16311_16312) (u@@117 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_18457 p@@124 v_1@@123 q@@117 w@@123) (InsidePredicate_18457_16278 q@@117 w@@123 r@@117 u@@117)) (InsidePredicate_17211_16278 p@@124 v_1@@123 r@@117 u@@117))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_18457 p@@124 v_1@@123 q@@117 w@@123) (InsidePredicate_18457_16278 q@@117 w@@123 r@@117 u@@117))
)))
(assert (forall ((p@@125 T@Field_17238_17239) (v_1@@124 T@FrameType) (q@@118 T@Field_18457_18458) (w@@124 T@FrameType) (r@@118 T@Field_7712_7741) (u@@118 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_18457 p@@125 v_1@@124 q@@118 w@@124) (InsidePredicate_18457_12948 q@@118 w@@124 r@@118 u@@118)) (InsidePredicate_17211_12948 p@@125 v_1@@124 r@@118 u@@118))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_18457 p@@125 v_1@@124 q@@118 w@@124) (InsidePredicate_18457_12948 q@@118 w@@124 r@@118 u@@118))
)))
(assert (forall ((p@@126 T@Field_17238_17239) (v_1@@125 T@FrameType) (q@@119 T@Field_17797_17798) (w@@125 T@FrameType) (r@@119 T@Field_19395_19396) (u@@119 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_17768 p@@126 v_1@@125 q@@119 w@@125) (InsidePredicate_17768_19395 q@@119 w@@125 r@@119 u@@119)) (InsidePredicate_17211_19395 p@@126 v_1@@125 r@@119 u@@119))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_17768 p@@126 v_1@@125 q@@119 w@@125) (InsidePredicate_17768_19395 q@@119 w@@125 r@@119 u@@119))
)))
(assert (forall ((p@@127 T@Field_17238_17239) (v_1@@126 T@FrameType) (q@@120 T@Field_17797_17798) (w@@126 T@FrameType) (r@@120 T@Field_18457_18458) (u@@120 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_17768 p@@127 v_1@@126 q@@120 w@@126) (InsidePredicate_17768_18457 q@@120 w@@126 r@@120 u@@120)) (InsidePredicate_17211_18457 p@@127 v_1@@126 r@@120 u@@120))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_17768 p@@127 v_1@@126 q@@120 w@@126) (InsidePredicate_17768_18457 q@@120 w@@126 r@@120 u@@120))
)))
(assert (forall ((p@@128 T@Field_17238_17239) (v_1@@127 T@FrameType) (q@@121 T@Field_17797_17798) (w@@127 T@FrameType) (r@@121 T@Field_17797_17798) (u@@121 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_17768 p@@128 v_1@@127 q@@121 w@@127) (InsidePredicate_17768_17768 q@@121 w@@127 r@@121 u@@121)) (InsidePredicate_17211_17768 p@@128 v_1@@127 r@@121 u@@121))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_17768 p@@128 v_1@@127 q@@121 w@@127) (InsidePredicate_17768_17768 q@@121 w@@127 r@@121 u@@121))
)))
(assert (forall ((p@@129 T@Field_17238_17239) (v_1@@128 T@FrameType) (q@@122 T@Field_17797_17798) (w@@128 T@FrameType) (r@@122 T@Field_17238_17239) (u@@122 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_17768 p@@129 v_1@@128 q@@122 w@@128) (InsidePredicate_17768_17211 q@@122 w@@128 r@@122 u@@122)) (InsidePredicate_17211_17211 p@@129 v_1@@128 r@@122 u@@122))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_17768 p@@129 v_1@@128 q@@122 w@@128) (InsidePredicate_17768_17211 q@@122 w@@128 r@@122 u@@122))
)))
(assert (forall ((p@@130 T@Field_17238_17239) (v_1@@129 T@FrameType) (q@@123 T@Field_17797_17798) (w@@129 T@FrameType) (r@@123 T@Field_16311_16312) (u@@123 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_17768 p@@130 v_1@@129 q@@123 w@@129) (InsidePredicate_17768_16278 q@@123 w@@129 r@@123 u@@123)) (InsidePredicate_17211_16278 p@@130 v_1@@129 r@@123 u@@123))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_17768 p@@130 v_1@@129 q@@123 w@@129) (InsidePredicate_17768_16278 q@@123 w@@129 r@@123 u@@123))
)))
(assert (forall ((p@@131 T@Field_17238_17239) (v_1@@130 T@FrameType) (q@@124 T@Field_17797_17798) (w@@130 T@FrameType) (r@@124 T@Field_7712_7741) (u@@124 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_17768 p@@131 v_1@@130 q@@124 w@@130) (InsidePredicate_17768_12948 q@@124 w@@130 r@@124 u@@124)) (InsidePredicate_17211_12948 p@@131 v_1@@130 r@@124 u@@124))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_17768 p@@131 v_1@@130 q@@124 w@@130) (InsidePredicate_17768_12948 q@@124 w@@130 r@@124 u@@124))
)))
(assert (forall ((p@@132 T@Field_17238_17239) (v_1@@131 T@FrameType) (q@@125 T@Field_17238_17239) (w@@131 T@FrameType) (r@@125 T@Field_19395_19396) (u@@125 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_17211 p@@132 v_1@@131 q@@125 w@@131) (InsidePredicate_17211_19395 q@@125 w@@131 r@@125 u@@125)) (InsidePredicate_17211_19395 p@@132 v_1@@131 r@@125 u@@125))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_17211 p@@132 v_1@@131 q@@125 w@@131) (InsidePredicate_17211_19395 q@@125 w@@131 r@@125 u@@125))
)))
(assert (forall ((p@@133 T@Field_17238_17239) (v_1@@132 T@FrameType) (q@@126 T@Field_17238_17239) (w@@132 T@FrameType) (r@@126 T@Field_18457_18458) (u@@126 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_17211 p@@133 v_1@@132 q@@126 w@@132) (InsidePredicate_17211_18457 q@@126 w@@132 r@@126 u@@126)) (InsidePredicate_17211_18457 p@@133 v_1@@132 r@@126 u@@126))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_17211 p@@133 v_1@@132 q@@126 w@@132) (InsidePredicate_17211_18457 q@@126 w@@132 r@@126 u@@126))
)))
(assert (forall ((p@@134 T@Field_17238_17239) (v_1@@133 T@FrameType) (q@@127 T@Field_17238_17239) (w@@133 T@FrameType) (r@@127 T@Field_17797_17798) (u@@127 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_17211 p@@134 v_1@@133 q@@127 w@@133) (InsidePredicate_17211_17768 q@@127 w@@133 r@@127 u@@127)) (InsidePredicate_17211_17768 p@@134 v_1@@133 r@@127 u@@127))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_17211 p@@134 v_1@@133 q@@127 w@@133) (InsidePredicate_17211_17768 q@@127 w@@133 r@@127 u@@127))
)))
(assert (forall ((p@@135 T@Field_17238_17239) (v_1@@134 T@FrameType) (q@@128 T@Field_17238_17239) (w@@134 T@FrameType) (r@@128 T@Field_17238_17239) (u@@128 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_17211 p@@135 v_1@@134 q@@128 w@@134) (InsidePredicate_17211_17211 q@@128 w@@134 r@@128 u@@128)) (InsidePredicate_17211_17211 p@@135 v_1@@134 r@@128 u@@128))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_17211 p@@135 v_1@@134 q@@128 w@@134) (InsidePredicate_17211_17211 q@@128 w@@134 r@@128 u@@128))
)))
(assert (forall ((p@@136 T@Field_17238_17239) (v_1@@135 T@FrameType) (q@@129 T@Field_17238_17239) (w@@135 T@FrameType) (r@@129 T@Field_16311_16312) (u@@129 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_17211 p@@136 v_1@@135 q@@129 w@@135) (InsidePredicate_17211_16278 q@@129 w@@135 r@@129 u@@129)) (InsidePredicate_17211_16278 p@@136 v_1@@135 r@@129 u@@129))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_17211 p@@136 v_1@@135 q@@129 w@@135) (InsidePredicate_17211_16278 q@@129 w@@135 r@@129 u@@129))
)))
(assert (forall ((p@@137 T@Field_17238_17239) (v_1@@136 T@FrameType) (q@@130 T@Field_17238_17239) (w@@136 T@FrameType) (r@@130 T@Field_7712_7741) (u@@130 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_17211 p@@137 v_1@@136 q@@130 w@@136) (InsidePredicate_17211_12948 q@@130 w@@136 r@@130 u@@130)) (InsidePredicate_17211_12948 p@@137 v_1@@136 r@@130 u@@130))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_17211 p@@137 v_1@@136 q@@130 w@@136) (InsidePredicate_17211_12948 q@@130 w@@136 r@@130 u@@130))
)))
(assert (forall ((p@@138 T@Field_17238_17239) (v_1@@137 T@FrameType) (q@@131 T@Field_16311_16312) (w@@137 T@FrameType) (r@@131 T@Field_19395_19396) (u@@131 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_16278 p@@138 v_1@@137 q@@131 w@@137) (InsidePredicate_16278_19395 q@@131 w@@137 r@@131 u@@131)) (InsidePredicate_17211_19395 p@@138 v_1@@137 r@@131 u@@131))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_16278 p@@138 v_1@@137 q@@131 w@@137) (InsidePredicate_16278_19395 q@@131 w@@137 r@@131 u@@131))
)))
(assert (forall ((p@@139 T@Field_17238_17239) (v_1@@138 T@FrameType) (q@@132 T@Field_16311_16312) (w@@138 T@FrameType) (r@@132 T@Field_18457_18458) (u@@132 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_16278 p@@139 v_1@@138 q@@132 w@@138) (InsidePredicate_16278_18457 q@@132 w@@138 r@@132 u@@132)) (InsidePredicate_17211_18457 p@@139 v_1@@138 r@@132 u@@132))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_16278 p@@139 v_1@@138 q@@132 w@@138) (InsidePredicate_16278_18457 q@@132 w@@138 r@@132 u@@132))
)))
(assert (forall ((p@@140 T@Field_17238_17239) (v_1@@139 T@FrameType) (q@@133 T@Field_16311_16312) (w@@139 T@FrameType) (r@@133 T@Field_17797_17798) (u@@133 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_16278 p@@140 v_1@@139 q@@133 w@@139) (InsidePredicate_16278_17768 q@@133 w@@139 r@@133 u@@133)) (InsidePredicate_17211_17768 p@@140 v_1@@139 r@@133 u@@133))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_16278 p@@140 v_1@@139 q@@133 w@@139) (InsidePredicate_16278_17768 q@@133 w@@139 r@@133 u@@133))
)))
(assert (forall ((p@@141 T@Field_17238_17239) (v_1@@140 T@FrameType) (q@@134 T@Field_16311_16312) (w@@140 T@FrameType) (r@@134 T@Field_17238_17239) (u@@134 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_16278 p@@141 v_1@@140 q@@134 w@@140) (InsidePredicate_16278_17211 q@@134 w@@140 r@@134 u@@134)) (InsidePredicate_17211_17211 p@@141 v_1@@140 r@@134 u@@134))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_16278 p@@141 v_1@@140 q@@134 w@@140) (InsidePredicate_16278_17211 q@@134 w@@140 r@@134 u@@134))
)))
(assert (forall ((p@@142 T@Field_17238_17239) (v_1@@141 T@FrameType) (q@@135 T@Field_16311_16312) (w@@141 T@FrameType) (r@@135 T@Field_16311_16312) (u@@135 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_16278 p@@142 v_1@@141 q@@135 w@@141) (InsidePredicate_16278_16278 q@@135 w@@141 r@@135 u@@135)) (InsidePredicate_17211_16278 p@@142 v_1@@141 r@@135 u@@135))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_16278 p@@142 v_1@@141 q@@135 w@@141) (InsidePredicate_16278_16278 q@@135 w@@141 r@@135 u@@135))
)))
(assert (forall ((p@@143 T@Field_17238_17239) (v_1@@142 T@FrameType) (q@@136 T@Field_16311_16312) (w@@142 T@FrameType) (r@@136 T@Field_7712_7741) (u@@136 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_16278 p@@143 v_1@@142 q@@136 w@@142) (InsidePredicate_16278_12948 q@@136 w@@142 r@@136 u@@136)) (InsidePredicate_17211_12948 p@@143 v_1@@142 r@@136 u@@136))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_16278 p@@143 v_1@@142 q@@136 w@@142) (InsidePredicate_16278_12948 q@@136 w@@142 r@@136 u@@136))
)))
(assert (forall ((p@@144 T@Field_17238_17239) (v_1@@143 T@FrameType) (q@@137 T@Field_7712_7741) (w@@143 T@FrameType) (r@@137 T@Field_19395_19396) (u@@137 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_12948 p@@144 v_1@@143 q@@137 w@@143) (InsidePredicate_12948_19395 q@@137 w@@143 r@@137 u@@137)) (InsidePredicate_17211_19395 p@@144 v_1@@143 r@@137 u@@137))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_12948 p@@144 v_1@@143 q@@137 w@@143) (InsidePredicate_12948_19395 q@@137 w@@143 r@@137 u@@137))
)))
(assert (forall ((p@@145 T@Field_17238_17239) (v_1@@144 T@FrameType) (q@@138 T@Field_7712_7741) (w@@144 T@FrameType) (r@@138 T@Field_18457_18458) (u@@138 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_12948 p@@145 v_1@@144 q@@138 w@@144) (InsidePredicate_12948_18457 q@@138 w@@144 r@@138 u@@138)) (InsidePredicate_17211_18457 p@@145 v_1@@144 r@@138 u@@138))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_12948 p@@145 v_1@@144 q@@138 w@@144) (InsidePredicate_12948_18457 q@@138 w@@144 r@@138 u@@138))
)))
(assert (forall ((p@@146 T@Field_17238_17239) (v_1@@145 T@FrameType) (q@@139 T@Field_7712_7741) (w@@145 T@FrameType) (r@@139 T@Field_17797_17798) (u@@139 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_12948 p@@146 v_1@@145 q@@139 w@@145) (InsidePredicate_12948_17768 q@@139 w@@145 r@@139 u@@139)) (InsidePredicate_17211_17768 p@@146 v_1@@145 r@@139 u@@139))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_12948 p@@146 v_1@@145 q@@139 w@@145) (InsidePredicate_12948_17768 q@@139 w@@145 r@@139 u@@139))
)))
(assert (forall ((p@@147 T@Field_17238_17239) (v_1@@146 T@FrameType) (q@@140 T@Field_7712_7741) (w@@146 T@FrameType) (r@@140 T@Field_17238_17239) (u@@140 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_12948 p@@147 v_1@@146 q@@140 w@@146) (InsidePredicate_12948_17211 q@@140 w@@146 r@@140 u@@140)) (InsidePredicate_17211_17211 p@@147 v_1@@146 r@@140 u@@140))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_12948 p@@147 v_1@@146 q@@140 w@@146) (InsidePredicate_12948_17211 q@@140 w@@146 r@@140 u@@140))
)))
(assert (forall ((p@@148 T@Field_17238_17239) (v_1@@147 T@FrameType) (q@@141 T@Field_7712_7741) (w@@147 T@FrameType) (r@@141 T@Field_16311_16312) (u@@141 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_12948 p@@148 v_1@@147 q@@141 w@@147) (InsidePredicate_12948_16278 q@@141 w@@147 r@@141 u@@141)) (InsidePredicate_17211_16278 p@@148 v_1@@147 r@@141 u@@141))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_12948 p@@148 v_1@@147 q@@141 w@@147) (InsidePredicate_12948_16278 q@@141 w@@147 r@@141 u@@141))
)))
(assert (forall ((p@@149 T@Field_17238_17239) (v_1@@148 T@FrameType) (q@@142 T@Field_7712_7741) (w@@148 T@FrameType) (r@@142 T@Field_7712_7741) (u@@142 T@FrameType) ) (!  (=> (and (InsidePredicate_17211_12948 p@@149 v_1@@148 q@@142 w@@148) (InsidePredicate_12948_12948 q@@142 w@@148 r@@142 u@@142)) (InsidePredicate_17211_12948 p@@149 v_1@@148 r@@142 u@@142))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17211_12948 p@@149 v_1@@148 q@@142 w@@148) (InsidePredicate_12948_12948 q@@142 w@@148 r@@142 u@@142))
)))
(assert (forall ((p@@150 T@Field_16311_16312) (v_1@@149 T@FrameType) (q@@143 T@Field_19395_19396) (w@@149 T@FrameType) (r@@143 T@Field_19395_19396) (u@@143 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_19395 p@@150 v_1@@149 q@@143 w@@149) (InsidePredicate_19395_19395 q@@143 w@@149 r@@143 u@@143)) (InsidePredicate_16278_19395 p@@150 v_1@@149 r@@143 u@@143))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_19395 p@@150 v_1@@149 q@@143 w@@149) (InsidePredicate_19395_19395 q@@143 w@@149 r@@143 u@@143))
)))
(assert (forall ((p@@151 T@Field_16311_16312) (v_1@@150 T@FrameType) (q@@144 T@Field_19395_19396) (w@@150 T@FrameType) (r@@144 T@Field_18457_18458) (u@@144 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_19395 p@@151 v_1@@150 q@@144 w@@150) (InsidePredicate_19395_18457 q@@144 w@@150 r@@144 u@@144)) (InsidePredicate_16278_18457 p@@151 v_1@@150 r@@144 u@@144))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_19395 p@@151 v_1@@150 q@@144 w@@150) (InsidePredicate_19395_18457 q@@144 w@@150 r@@144 u@@144))
)))
(assert (forall ((p@@152 T@Field_16311_16312) (v_1@@151 T@FrameType) (q@@145 T@Field_19395_19396) (w@@151 T@FrameType) (r@@145 T@Field_17797_17798) (u@@145 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_19395 p@@152 v_1@@151 q@@145 w@@151) (InsidePredicate_19395_17768 q@@145 w@@151 r@@145 u@@145)) (InsidePredicate_16278_17768 p@@152 v_1@@151 r@@145 u@@145))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_19395 p@@152 v_1@@151 q@@145 w@@151) (InsidePredicate_19395_17768 q@@145 w@@151 r@@145 u@@145))
)))
(assert (forall ((p@@153 T@Field_16311_16312) (v_1@@152 T@FrameType) (q@@146 T@Field_19395_19396) (w@@152 T@FrameType) (r@@146 T@Field_17238_17239) (u@@146 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_19395 p@@153 v_1@@152 q@@146 w@@152) (InsidePredicate_19395_17211 q@@146 w@@152 r@@146 u@@146)) (InsidePredicate_16278_17211 p@@153 v_1@@152 r@@146 u@@146))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_19395 p@@153 v_1@@152 q@@146 w@@152) (InsidePredicate_19395_17211 q@@146 w@@152 r@@146 u@@146))
)))
(assert (forall ((p@@154 T@Field_16311_16312) (v_1@@153 T@FrameType) (q@@147 T@Field_19395_19396) (w@@153 T@FrameType) (r@@147 T@Field_16311_16312) (u@@147 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_19395 p@@154 v_1@@153 q@@147 w@@153) (InsidePredicate_19395_16278 q@@147 w@@153 r@@147 u@@147)) (InsidePredicate_16278_16278 p@@154 v_1@@153 r@@147 u@@147))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_19395 p@@154 v_1@@153 q@@147 w@@153) (InsidePredicate_19395_16278 q@@147 w@@153 r@@147 u@@147))
)))
(assert (forall ((p@@155 T@Field_16311_16312) (v_1@@154 T@FrameType) (q@@148 T@Field_19395_19396) (w@@154 T@FrameType) (r@@148 T@Field_7712_7741) (u@@148 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_19395 p@@155 v_1@@154 q@@148 w@@154) (InsidePredicate_19395_12948 q@@148 w@@154 r@@148 u@@148)) (InsidePredicate_16278_12948 p@@155 v_1@@154 r@@148 u@@148))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_19395 p@@155 v_1@@154 q@@148 w@@154) (InsidePredicate_19395_12948 q@@148 w@@154 r@@148 u@@148))
)))
(assert (forall ((p@@156 T@Field_16311_16312) (v_1@@155 T@FrameType) (q@@149 T@Field_18457_18458) (w@@155 T@FrameType) (r@@149 T@Field_19395_19396) (u@@149 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_18457 p@@156 v_1@@155 q@@149 w@@155) (InsidePredicate_18457_19395 q@@149 w@@155 r@@149 u@@149)) (InsidePredicate_16278_19395 p@@156 v_1@@155 r@@149 u@@149))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_18457 p@@156 v_1@@155 q@@149 w@@155) (InsidePredicate_18457_19395 q@@149 w@@155 r@@149 u@@149))
)))
(assert (forall ((p@@157 T@Field_16311_16312) (v_1@@156 T@FrameType) (q@@150 T@Field_18457_18458) (w@@156 T@FrameType) (r@@150 T@Field_18457_18458) (u@@150 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_18457 p@@157 v_1@@156 q@@150 w@@156) (InsidePredicate_18457_18457 q@@150 w@@156 r@@150 u@@150)) (InsidePredicate_16278_18457 p@@157 v_1@@156 r@@150 u@@150))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_18457 p@@157 v_1@@156 q@@150 w@@156) (InsidePredicate_18457_18457 q@@150 w@@156 r@@150 u@@150))
)))
(assert (forall ((p@@158 T@Field_16311_16312) (v_1@@157 T@FrameType) (q@@151 T@Field_18457_18458) (w@@157 T@FrameType) (r@@151 T@Field_17797_17798) (u@@151 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_18457 p@@158 v_1@@157 q@@151 w@@157) (InsidePredicate_18457_17768 q@@151 w@@157 r@@151 u@@151)) (InsidePredicate_16278_17768 p@@158 v_1@@157 r@@151 u@@151))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_18457 p@@158 v_1@@157 q@@151 w@@157) (InsidePredicate_18457_17768 q@@151 w@@157 r@@151 u@@151))
)))
(assert (forall ((p@@159 T@Field_16311_16312) (v_1@@158 T@FrameType) (q@@152 T@Field_18457_18458) (w@@158 T@FrameType) (r@@152 T@Field_17238_17239) (u@@152 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_18457 p@@159 v_1@@158 q@@152 w@@158) (InsidePredicate_18457_17211 q@@152 w@@158 r@@152 u@@152)) (InsidePredicate_16278_17211 p@@159 v_1@@158 r@@152 u@@152))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_18457 p@@159 v_1@@158 q@@152 w@@158) (InsidePredicate_18457_17211 q@@152 w@@158 r@@152 u@@152))
)))
(assert (forall ((p@@160 T@Field_16311_16312) (v_1@@159 T@FrameType) (q@@153 T@Field_18457_18458) (w@@159 T@FrameType) (r@@153 T@Field_16311_16312) (u@@153 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_18457 p@@160 v_1@@159 q@@153 w@@159) (InsidePredicate_18457_16278 q@@153 w@@159 r@@153 u@@153)) (InsidePredicate_16278_16278 p@@160 v_1@@159 r@@153 u@@153))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_18457 p@@160 v_1@@159 q@@153 w@@159) (InsidePredicate_18457_16278 q@@153 w@@159 r@@153 u@@153))
)))
(assert (forall ((p@@161 T@Field_16311_16312) (v_1@@160 T@FrameType) (q@@154 T@Field_18457_18458) (w@@160 T@FrameType) (r@@154 T@Field_7712_7741) (u@@154 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_18457 p@@161 v_1@@160 q@@154 w@@160) (InsidePredicate_18457_12948 q@@154 w@@160 r@@154 u@@154)) (InsidePredicate_16278_12948 p@@161 v_1@@160 r@@154 u@@154))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_18457 p@@161 v_1@@160 q@@154 w@@160) (InsidePredicate_18457_12948 q@@154 w@@160 r@@154 u@@154))
)))
(assert (forall ((p@@162 T@Field_16311_16312) (v_1@@161 T@FrameType) (q@@155 T@Field_17797_17798) (w@@161 T@FrameType) (r@@155 T@Field_19395_19396) (u@@155 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_17768 p@@162 v_1@@161 q@@155 w@@161) (InsidePredicate_17768_19395 q@@155 w@@161 r@@155 u@@155)) (InsidePredicate_16278_19395 p@@162 v_1@@161 r@@155 u@@155))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_17768 p@@162 v_1@@161 q@@155 w@@161) (InsidePredicate_17768_19395 q@@155 w@@161 r@@155 u@@155))
)))
(assert (forall ((p@@163 T@Field_16311_16312) (v_1@@162 T@FrameType) (q@@156 T@Field_17797_17798) (w@@162 T@FrameType) (r@@156 T@Field_18457_18458) (u@@156 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_17768 p@@163 v_1@@162 q@@156 w@@162) (InsidePredicate_17768_18457 q@@156 w@@162 r@@156 u@@156)) (InsidePredicate_16278_18457 p@@163 v_1@@162 r@@156 u@@156))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_17768 p@@163 v_1@@162 q@@156 w@@162) (InsidePredicate_17768_18457 q@@156 w@@162 r@@156 u@@156))
)))
(assert (forall ((p@@164 T@Field_16311_16312) (v_1@@163 T@FrameType) (q@@157 T@Field_17797_17798) (w@@163 T@FrameType) (r@@157 T@Field_17797_17798) (u@@157 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_17768 p@@164 v_1@@163 q@@157 w@@163) (InsidePredicate_17768_17768 q@@157 w@@163 r@@157 u@@157)) (InsidePredicate_16278_17768 p@@164 v_1@@163 r@@157 u@@157))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_17768 p@@164 v_1@@163 q@@157 w@@163) (InsidePredicate_17768_17768 q@@157 w@@163 r@@157 u@@157))
)))
(assert (forall ((p@@165 T@Field_16311_16312) (v_1@@164 T@FrameType) (q@@158 T@Field_17797_17798) (w@@164 T@FrameType) (r@@158 T@Field_17238_17239) (u@@158 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_17768 p@@165 v_1@@164 q@@158 w@@164) (InsidePredicate_17768_17211 q@@158 w@@164 r@@158 u@@158)) (InsidePredicate_16278_17211 p@@165 v_1@@164 r@@158 u@@158))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_17768 p@@165 v_1@@164 q@@158 w@@164) (InsidePredicate_17768_17211 q@@158 w@@164 r@@158 u@@158))
)))
(assert (forall ((p@@166 T@Field_16311_16312) (v_1@@165 T@FrameType) (q@@159 T@Field_17797_17798) (w@@165 T@FrameType) (r@@159 T@Field_16311_16312) (u@@159 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_17768 p@@166 v_1@@165 q@@159 w@@165) (InsidePredicate_17768_16278 q@@159 w@@165 r@@159 u@@159)) (InsidePredicate_16278_16278 p@@166 v_1@@165 r@@159 u@@159))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_17768 p@@166 v_1@@165 q@@159 w@@165) (InsidePredicate_17768_16278 q@@159 w@@165 r@@159 u@@159))
)))
(assert (forall ((p@@167 T@Field_16311_16312) (v_1@@166 T@FrameType) (q@@160 T@Field_17797_17798) (w@@166 T@FrameType) (r@@160 T@Field_7712_7741) (u@@160 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_17768 p@@167 v_1@@166 q@@160 w@@166) (InsidePredicate_17768_12948 q@@160 w@@166 r@@160 u@@160)) (InsidePredicate_16278_12948 p@@167 v_1@@166 r@@160 u@@160))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_17768 p@@167 v_1@@166 q@@160 w@@166) (InsidePredicate_17768_12948 q@@160 w@@166 r@@160 u@@160))
)))
(assert (forall ((p@@168 T@Field_16311_16312) (v_1@@167 T@FrameType) (q@@161 T@Field_17238_17239) (w@@167 T@FrameType) (r@@161 T@Field_19395_19396) (u@@161 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_17211 p@@168 v_1@@167 q@@161 w@@167) (InsidePredicate_17211_19395 q@@161 w@@167 r@@161 u@@161)) (InsidePredicate_16278_19395 p@@168 v_1@@167 r@@161 u@@161))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_17211 p@@168 v_1@@167 q@@161 w@@167) (InsidePredicate_17211_19395 q@@161 w@@167 r@@161 u@@161))
)))
(assert (forall ((p@@169 T@Field_16311_16312) (v_1@@168 T@FrameType) (q@@162 T@Field_17238_17239) (w@@168 T@FrameType) (r@@162 T@Field_18457_18458) (u@@162 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_17211 p@@169 v_1@@168 q@@162 w@@168) (InsidePredicate_17211_18457 q@@162 w@@168 r@@162 u@@162)) (InsidePredicate_16278_18457 p@@169 v_1@@168 r@@162 u@@162))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_17211 p@@169 v_1@@168 q@@162 w@@168) (InsidePredicate_17211_18457 q@@162 w@@168 r@@162 u@@162))
)))
(assert (forall ((p@@170 T@Field_16311_16312) (v_1@@169 T@FrameType) (q@@163 T@Field_17238_17239) (w@@169 T@FrameType) (r@@163 T@Field_17797_17798) (u@@163 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_17211 p@@170 v_1@@169 q@@163 w@@169) (InsidePredicate_17211_17768 q@@163 w@@169 r@@163 u@@163)) (InsidePredicate_16278_17768 p@@170 v_1@@169 r@@163 u@@163))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_17211 p@@170 v_1@@169 q@@163 w@@169) (InsidePredicate_17211_17768 q@@163 w@@169 r@@163 u@@163))
)))
(assert (forall ((p@@171 T@Field_16311_16312) (v_1@@170 T@FrameType) (q@@164 T@Field_17238_17239) (w@@170 T@FrameType) (r@@164 T@Field_17238_17239) (u@@164 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_17211 p@@171 v_1@@170 q@@164 w@@170) (InsidePredicate_17211_17211 q@@164 w@@170 r@@164 u@@164)) (InsidePredicate_16278_17211 p@@171 v_1@@170 r@@164 u@@164))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_17211 p@@171 v_1@@170 q@@164 w@@170) (InsidePredicate_17211_17211 q@@164 w@@170 r@@164 u@@164))
)))
(assert (forall ((p@@172 T@Field_16311_16312) (v_1@@171 T@FrameType) (q@@165 T@Field_17238_17239) (w@@171 T@FrameType) (r@@165 T@Field_16311_16312) (u@@165 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_17211 p@@172 v_1@@171 q@@165 w@@171) (InsidePredicate_17211_16278 q@@165 w@@171 r@@165 u@@165)) (InsidePredicate_16278_16278 p@@172 v_1@@171 r@@165 u@@165))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_17211 p@@172 v_1@@171 q@@165 w@@171) (InsidePredicate_17211_16278 q@@165 w@@171 r@@165 u@@165))
)))
(assert (forall ((p@@173 T@Field_16311_16312) (v_1@@172 T@FrameType) (q@@166 T@Field_17238_17239) (w@@172 T@FrameType) (r@@166 T@Field_7712_7741) (u@@166 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_17211 p@@173 v_1@@172 q@@166 w@@172) (InsidePredicate_17211_12948 q@@166 w@@172 r@@166 u@@166)) (InsidePredicate_16278_12948 p@@173 v_1@@172 r@@166 u@@166))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_17211 p@@173 v_1@@172 q@@166 w@@172) (InsidePredicate_17211_12948 q@@166 w@@172 r@@166 u@@166))
)))
(assert (forall ((p@@174 T@Field_16311_16312) (v_1@@173 T@FrameType) (q@@167 T@Field_16311_16312) (w@@173 T@FrameType) (r@@167 T@Field_19395_19396) (u@@167 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_16278 p@@174 v_1@@173 q@@167 w@@173) (InsidePredicate_16278_19395 q@@167 w@@173 r@@167 u@@167)) (InsidePredicate_16278_19395 p@@174 v_1@@173 r@@167 u@@167))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_16278 p@@174 v_1@@173 q@@167 w@@173) (InsidePredicate_16278_19395 q@@167 w@@173 r@@167 u@@167))
)))
(assert (forall ((p@@175 T@Field_16311_16312) (v_1@@174 T@FrameType) (q@@168 T@Field_16311_16312) (w@@174 T@FrameType) (r@@168 T@Field_18457_18458) (u@@168 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_16278 p@@175 v_1@@174 q@@168 w@@174) (InsidePredicate_16278_18457 q@@168 w@@174 r@@168 u@@168)) (InsidePredicate_16278_18457 p@@175 v_1@@174 r@@168 u@@168))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_16278 p@@175 v_1@@174 q@@168 w@@174) (InsidePredicate_16278_18457 q@@168 w@@174 r@@168 u@@168))
)))
(assert (forall ((p@@176 T@Field_16311_16312) (v_1@@175 T@FrameType) (q@@169 T@Field_16311_16312) (w@@175 T@FrameType) (r@@169 T@Field_17797_17798) (u@@169 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_16278 p@@176 v_1@@175 q@@169 w@@175) (InsidePredicate_16278_17768 q@@169 w@@175 r@@169 u@@169)) (InsidePredicate_16278_17768 p@@176 v_1@@175 r@@169 u@@169))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_16278 p@@176 v_1@@175 q@@169 w@@175) (InsidePredicate_16278_17768 q@@169 w@@175 r@@169 u@@169))
)))
(assert (forall ((p@@177 T@Field_16311_16312) (v_1@@176 T@FrameType) (q@@170 T@Field_16311_16312) (w@@176 T@FrameType) (r@@170 T@Field_17238_17239) (u@@170 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_16278 p@@177 v_1@@176 q@@170 w@@176) (InsidePredicate_16278_17211 q@@170 w@@176 r@@170 u@@170)) (InsidePredicate_16278_17211 p@@177 v_1@@176 r@@170 u@@170))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_16278 p@@177 v_1@@176 q@@170 w@@176) (InsidePredicate_16278_17211 q@@170 w@@176 r@@170 u@@170))
)))
(assert (forall ((p@@178 T@Field_16311_16312) (v_1@@177 T@FrameType) (q@@171 T@Field_16311_16312) (w@@177 T@FrameType) (r@@171 T@Field_16311_16312) (u@@171 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_16278 p@@178 v_1@@177 q@@171 w@@177) (InsidePredicate_16278_16278 q@@171 w@@177 r@@171 u@@171)) (InsidePredicate_16278_16278 p@@178 v_1@@177 r@@171 u@@171))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_16278 p@@178 v_1@@177 q@@171 w@@177) (InsidePredicate_16278_16278 q@@171 w@@177 r@@171 u@@171))
)))
(assert (forall ((p@@179 T@Field_16311_16312) (v_1@@178 T@FrameType) (q@@172 T@Field_16311_16312) (w@@178 T@FrameType) (r@@172 T@Field_7712_7741) (u@@172 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_16278 p@@179 v_1@@178 q@@172 w@@178) (InsidePredicate_16278_12948 q@@172 w@@178 r@@172 u@@172)) (InsidePredicate_16278_12948 p@@179 v_1@@178 r@@172 u@@172))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_16278 p@@179 v_1@@178 q@@172 w@@178) (InsidePredicate_16278_12948 q@@172 w@@178 r@@172 u@@172))
)))
(assert (forall ((p@@180 T@Field_16311_16312) (v_1@@179 T@FrameType) (q@@173 T@Field_7712_7741) (w@@179 T@FrameType) (r@@173 T@Field_19395_19396) (u@@173 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_12948 p@@180 v_1@@179 q@@173 w@@179) (InsidePredicate_12948_19395 q@@173 w@@179 r@@173 u@@173)) (InsidePredicate_16278_19395 p@@180 v_1@@179 r@@173 u@@173))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_12948 p@@180 v_1@@179 q@@173 w@@179) (InsidePredicate_12948_19395 q@@173 w@@179 r@@173 u@@173))
)))
(assert (forall ((p@@181 T@Field_16311_16312) (v_1@@180 T@FrameType) (q@@174 T@Field_7712_7741) (w@@180 T@FrameType) (r@@174 T@Field_18457_18458) (u@@174 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_12948 p@@181 v_1@@180 q@@174 w@@180) (InsidePredicate_12948_18457 q@@174 w@@180 r@@174 u@@174)) (InsidePredicate_16278_18457 p@@181 v_1@@180 r@@174 u@@174))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_12948 p@@181 v_1@@180 q@@174 w@@180) (InsidePredicate_12948_18457 q@@174 w@@180 r@@174 u@@174))
)))
(assert (forall ((p@@182 T@Field_16311_16312) (v_1@@181 T@FrameType) (q@@175 T@Field_7712_7741) (w@@181 T@FrameType) (r@@175 T@Field_17797_17798) (u@@175 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_12948 p@@182 v_1@@181 q@@175 w@@181) (InsidePredicate_12948_17768 q@@175 w@@181 r@@175 u@@175)) (InsidePredicate_16278_17768 p@@182 v_1@@181 r@@175 u@@175))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_12948 p@@182 v_1@@181 q@@175 w@@181) (InsidePredicate_12948_17768 q@@175 w@@181 r@@175 u@@175))
)))
(assert (forall ((p@@183 T@Field_16311_16312) (v_1@@182 T@FrameType) (q@@176 T@Field_7712_7741) (w@@182 T@FrameType) (r@@176 T@Field_17238_17239) (u@@176 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_12948 p@@183 v_1@@182 q@@176 w@@182) (InsidePredicate_12948_17211 q@@176 w@@182 r@@176 u@@176)) (InsidePredicate_16278_17211 p@@183 v_1@@182 r@@176 u@@176))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_12948 p@@183 v_1@@182 q@@176 w@@182) (InsidePredicate_12948_17211 q@@176 w@@182 r@@176 u@@176))
)))
(assert (forall ((p@@184 T@Field_16311_16312) (v_1@@183 T@FrameType) (q@@177 T@Field_7712_7741) (w@@183 T@FrameType) (r@@177 T@Field_16311_16312) (u@@177 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_12948 p@@184 v_1@@183 q@@177 w@@183) (InsidePredicate_12948_16278 q@@177 w@@183 r@@177 u@@177)) (InsidePredicate_16278_16278 p@@184 v_1@@183 r@@177 u@@177))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_12948 p@@184 v_1@@183 q@@177 w@@183) (InsidePredicate_12948_16278 q@@177 w@@183 r@@177 u@@177))
)))
(assert (forall ((p@@185 T@Field_16311_16312) (v_1@@184 T@FrameType) (q@@178 T@Field_7712_7741) (w@@184 T@FrameType) (r@@178 T@Field_7712_7741) (u@@178 T@FrameType) ) (!  (=> (and (InsidePredicate_16278_12948 p@@185 v_1@@184 q@@178 w@@184) (InsidePredicate_12948_12948 q@@178 w@@184 r@@178 u@@178)) (InsidePredicate_16278_12948 p@@185 v_1@@184 r@@178 u@@178))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16278_12948 p@@185 v_1@@184 q@@178 w@@184) (InsidePredicate_12948_12948 q@@178 w@@184 r@@178 u@@178))
)))
(assert (forall ((p@@186 T@Field_7712_7741) (v_1@@185 T@FrameType) (q@@179 T@Field_19395_19396) (w@@185 T@FrameType) (r@@179 T@Field_19395_19396) (u@@179 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_19395 p@@186 v_1@@185 q@@179 w@@185) (InsidePredicate_19395_19395 q@@179 w@@185 r@@179 u@@179)) (InsidePredicate_12948_19395 p@@186 v_1@@185 r@@179 u@@179))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_19395 p@@186 v_1@@185 q@@179 w@@185) (InsidePredicate_19395_19395 q@@179 w@@185 r@@179 u@@179))
)))
(assert (forall ((p@@187 T@Field_7712_7741) (v_1@@186 T@FrameType) (q@@180 T@Field_19395_19396) (w@@186 T@FrameType) (r@@180 T@Field_18457_18458) (u@@180 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_19395 p@@187 v_1@@186 q@@180 w@@186) (InsidePredicate_19395_18457 q@@180 w@@186 r@@180 u@@180)) (InsidePredicate_12948_18457 p@@187 v_1@@186 r@@180 u@@180))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_19395 p@@187 v_1@@186 q@@180 w@@186) (InsidePredicate_19395_18457 q@@180 w@@186 r@@180 u@@180))
)))
(assert (forall ((p@@188 T@Field_7712_7741) (v_1@@187 T@FrameType) (q@@181 T@Field_19395_19396) (w@@187 T@FrameType) (r@@181 T@Field_17797_17798) (u@@181 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_19395 p@@188 v_1@@187 q@@181 w@@187) (InsidePredicate_19395_17768 q@@181 w@@187 r@@181 u@@181)) (InsidePredicate_12948_17768 p@@188 v_1@@187 r@@181 u@@181))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_19395 p@@188 v_1@@187 q@@181 w@@187) (InsidePredicate_19395_17768 q@@181 w@@187 r@@181 u@@181))
)))
(assert (forall ((p@@189 T@Field_7712_7741) (v_1@@188 T@FrameType) (q@@182 T@Field_19395_19396) (w@@188 T@FrameType) (r@@182 T@Field_17238_17239) (u@@182 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_19395 p@@189 v_1@@188 q@@182 w@@188) (InsidePredicate_19395_17211 q@@182 w@@188 r@@182 u@@182)) (InsidePredicate_12948_17211 p@@189 v_1@@188 r@@182 u@@182))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_19395 p@@189 v_1@@188 q@@182 w@@188) (InsidePredicate_19395_17211 q@@182 w@@188 r@@182 u@@182))
)))
(assert (forall ((p@@190 T@Field_7712_7741) (v_1@@189 T@FrameType) (q@@183 T@Field_19395_19396) (w@@189 T@FrameType) (r@@183 T@Field_16311_16312) (u@@183 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_19395 p@@190 v_1@@189 q@@183 w@@189) (InsidePredicate_19395_16278 q@@183 w@@189 r@@183 u@@183)) (InsidePredicate_12948_16278 p@@190 v_1@@189 r@@183 u@@183))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_19395 p@@190 v_1@@189 q@@183 w@@189) (InsidePredicate_19395_16278 q@@183 w@@189 r@@183 u@@183))
)))
(assert (forall ((p@@191 T@Field_7712_7741) (v_1@@190 T@FrameType) (q@@184 T@Field_19395_19396) (w@@190 T@FrameType) (r@@184 T@Field_7712_7741) (u@@184 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_19395 p@@191 v_1@@190 q@@184 w@@190) (InsidePredicate_19395_12948 q@@184 w@@190 r@@184 u@@184)) (InsidePredicate_12948_12948 p@@191 v_1@@190 r@@184 u@@184))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_19395 p@@191 v_1@@190 q@@184 w@@190) (InsidePredicate_19395_12948 q@@184 w@@190 r@@184 u@@184))
)))
(assert (forall ((p@@192 T@Field_7712_7741) (v_1@@191 T@FrameType) (q@@185 T@Field_18457_18458) (w@@191 T@FrameType) (r@@185 T@Field_19395_19396) (u@@185 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_18457 p@@192 v_1@@191 q@@185 w@@191) (InsidePredicate_18457_19395 q@@185 w@@191 r@@185 u@@185)) (InsidePredicate_12948_19395 p@@192 v_1@@191 r@@185 u@@185))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_18457 p@@192 v_1@@191 q@@185 w@@191) (InsidePredicate_18457_19395 q@@185 w@@191 r@@185 u@@185))
)))
(assert (forall ((p@@193 T@Field_7712_7741) (v_1@@192 T@FrameType) (q@@186 T@Field_18457_18458) (w@@192 T@FrameType) (r@@186 T@Field_18457_18458) (u@@186 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_18457 p@@193 v_1@@192 q@@186 w@@192) (InsidePredicate_18457_18457 q@@186 w@@192 r@@186 u@@186)) (InsidePredicate_12948_18457 p@@193 v_1@@192 r@@186 u@@186))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_18457 p@@193 v_1@@192 q@@186 w@@192) (InsidePredicate_18457_18457 q@@186 w@@192 r@@186 u@@186))
)))
(assert (forall ((p@@194 T@Field_7712_7741) (v_1@@193 T@FrameType) (q@@187 T@Field_18457_18458) (w@@193 T@FrameType) (r@@187 T@Field_17797_17798) (u@@187 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_18457 p@@194 v_1@@193 q@@187 w@@193) (InsidePredicate_18457_17768 q@@187 w@@193 r@@187 u@@187)) (InsidePredicate_12948_17768 p@@194 v_1@@193 r@@187 u@@187))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_18457 p@@194 v_1@@193 q@@187 w@@193) (InsidePredicate_18457_17768 q@@187 w@@193 r@@187 u@@187))
)))
(assert (forall ((p@@195 T@Field_7712_7741) (v_1@@194 T@FrameType) (q@@188 T@Field_18457_18458) (w@@194 T@FrameType) (r@@188 T@Field_17238_17239) (u@@188 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_18457 p@@195 v_1@@194 q@@188 w@@194) (InsidePredicate_18457_17211 q@@188 w@@194 r@@188 u@@188)) (InsidePredicate_12948_17211 p@@195 v_1@@194 r@@188 u@@188))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_18457 p@@195 v_1@@194 q@@188 w@@194) (InsidePredicate_18457_17211 q@@188 w@@194 r@@188 u@@188))
)))
(assert (forall ((p@@196 T@Field_7712_7741) (v_1@@195 T@FrameType) (q@@189 T@Field_18457_18458) (w@@195 T@FrameType) (r@@189 T@Field_16311_16312) (u@@189 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_18457 p@@196 v_1@@195 q@@189 w@@195) (InsidePredicate_18457_16278 q@@189 w@@195 r@@189 u@@189)) (InsidePredicate_12948_16278 p@@196 v_1@@195 r@@189 u@@189))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_18457 p@@196 v_1@@195 q@@189 w@@195) (InsidePredicate_18457_16278 q@@189 w@@195 r@@189 u@@189))
)))
(assert (forall ((p@@197 T@Field_7712_7741) (v_1@@196 T@FrameType) (q@@190 T@Field_18457_18458) (w@@196 T@FrameType) (r@@190 T@Field_7712_7741) (u@@190 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_18457 p@@197 v_1@@196 q@@190 w@@196) (InsidePredicate_18457_12948 q@@190 w@@196 r@@190 u@@190)) (InsidePredicate_12948_12948 p@@197 v_1@@196 r@@190 u@@190))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_18457 p@@197 v_1@@196 q@@190 w@@196) (InsidePredicate_18457_12948 q@@190 w@@196 r@@190 u@@190))
)))
(assert (forall ((p@@198 T@Field_7712_7741) (v_1@@197 T@FrameType) (q@@191 T@Field_17797_17798) (w@@197 T@FrameType) (r@@191 T@Field_19395_19396) (u@@191 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_17768 p@@198 v_1@@197 q@@191 w@@197) (InsidePredicate_17768_19395 q@@191 w@@197 r@@191 u@@191)) (InsidePredicate_12948_19395 p@@198 v_1@@197 r@@191 u@@191))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_17768 p@@198 v_1@@197 q@@191 w@@197) (InsidePredicate_17768_19395 q@@191 w@@197 r@@191 u@@191))
)))
(assert (forall ((p@@199 T@Field_7712_7741) (v_1@@198 T@FrameType) (q@@192 T@Field_17797_17798) (w@@198 T@FrameType) (r@@192 T@Field_18457_18458) (u@@192 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_17768 p@@199 v_1@@198 q@@192 w@@198) (InsidePredicate_17768_18457 q@@192 w@@198 r@@192 u@@192)) (InsidePredicate_12948_18457 p@@199 v_1@@198 r@@192 u@@192))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_17768 p@@199 v_1@@198 q@@192 w@@198) (InsidePredicate_17768_18457 q@@192 w@@198 r@@192 u@@192))
)))
(assert (forall ((p@@200 T@Field_7712_7741) (v_1@@199 T@FrameType) (q@@193 T@Field_17797_17798) (w@@199 T@FrameType) (r@@193 T@Field_17797_17798) (u@@193 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_17768 p@@200 v_1@@199 q@@193 w@@199) (InsidePredicate_17768_17768 q@@193 w@@199 r@@193 u@@193)) (InsidePredicate_12948_17768 p@@200 v_1@@199 r@@193 u@@193))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_17768 p@@200 v_1@@199 q@@193 w@@199) (InsidePredicate_17768_17768 q@@193 w@@199 r@@193 u@@193))
)))
(assert (forall ((p@@201 T@Field_7712_7741) (v_1@@200 T@FrameType) (q@@194 T@Field_17797_17798) (w@@200 T@FrameType) (r@@194 T@Field_17238_17239) (u@@194 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_17768 p@@201 v_1@@200 q@@194 w@@200) (InsidePredicate_17768_17211 q@@194 w@@200 r@@194 u@@194)) (InsidePredicate_12948_17211 p@@201 v_1@@200 r@@194 u@@194))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_17768 p@@201 v_1@@200 q@@194 w@@200) (InsidePredicate_17768_17211 q@@194 w@@200 r@@194 u@@194))
)))
(assert (forall ((p@@202 T@Field_7712_7741) (v_1@@201 T@FrameType) (q@@195 T@Field_17797_17798) (w@@201 T@FrameType) (r@@195 T@Field_16311_16312) (u@@195 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_17768 p@@202 v_1@@201 q@@195 w@@201) (InsidePredicate_17768_16278 q@@195 w@@201 r@@195 u@@195)) (InsidePredicate_12948_16278 p@@202 v_1@@201 r@@195 u@@195))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_17768 p@@202 v_1@@201 q@@195 w@@201) (InsidePredicate_17768_16278 q@@195 w@@201 r@@195 u@@195))
)))
(assert (forall ((p@@203 T@Field_7712_7741) (v_1@@202 T@FrameType) (q@@196 T@Field_17797_17798) (w@@202 T@FrameType) (r@@196 T@Field_7712_7741) (u@@196 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_17768 p@@203 v_1@@202 q@@196 w@@202) (InsidePredicate_17768_12948 q@@196 w@@202 r@@196 u@@196)) (InsidePredicate_12948_12948 p@@203 v_1@@202 r@@196 u@@196))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_17768 p@@203 v_1@@202 q@@196 w@@202) (InsidePredicate_17768_12948 q@@196 w@@202 r@@196 u@@196))
)))
(assert (forall ((p@@204 T@Field_7712_7741) (v_1@@203 T@FrameType) (q@@197 T@Field_17238_17239) (w@@203 T@FrameType) (r@@197 T@Field_19395_19396) (u@@197 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_17211 p@@204 v_1@@203 q@@197 w@@203) (InsidePredicate_17211_19395 q@@197 w@@203 r@@197 u@@197)) (InsidePredicate_12948_19395 p@@204 v_1@@203 r@@197 u@@197))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_17211 p@@204 v_1@@203 q@@197 w@@203) (InsidePredicate_17211_19395 q@@197 w@@203 r@@197 u@@197))
)))
(assert (forall ((p@@205 T@Field_7712_7741) (v_1@@204 T@FrameType) (q@@198 T@Field_17238_17239) (w@@204 T@FrameType) (r@@198 T@Field_18457_18458) (u@@198 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_17211 p@@205 v_1@@204 q@@198 w@@204) (InsidePredicate_17211_18457 q@@198 w@@204 r@@198 u@@198)) (InsidePredicate_12948_18457 p@@205 v_1@@204 r@@198 u@@198))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_17211 p@@205 v_1@@204 q@@198 w@@204) (InsidePredicate_17211_18457 q@@198 w@@204 r@@198 u@@198))
)))
(assert (forall ((p@@206 T@Field_7712_7741) (v_1@@205 T@FrameType) (q@@199 T@Field_17238_17239) (w@@205 T@FrameType) (r@@199 T@Field_17797_17798) (u@@199 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_17211 p@@206 v_1@@205 q@@199 w@@205) (InsidePredicate_17211_17768 q@@199 w@@205 r@@199 u@@199)) (InsidePredicate_12948_17768 p@@206 v_1@@205 r@@199 u@@199))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_17211 p@@206 v_1@@205 q@@199 w@@205) (InsidePredicate_17211_17768 q@@199 w@@205 r@@199 u@@199))
)))
(assert (forall ((p@@207 T@Field_7712_7741) (v_1@@206 T@FrameType) (q@@200 T@Field_17238_17239) (w@@206 T@FrameType) (r@@200 T@Field_17238_17239) (u@@200 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_17211 p@@207 v_1@@206 q@@200 w@@206) (InsidePredicate_17211_17211 q@@200 w@@206 r@@200 u@@200)) (InsidePredicate_12948_17211 p@@207 v_1@@206 r@@200 u@@200))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_17211 p@@207 v_1@@206 q@@200 w@@206) (InsidePredicate_17211_17211 q@@200 w@@206 r@@200 u@@200))
)))
(assert (forall ((p@@208 T@Field_7712_7741) (v_1@@207 T@FrameType) (q@@201 T@Field_17238_17239) (w@@207 T@FrameType) (r@@201 T@Field_16311_16312) (u@@201 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_17211 p@@208 v_1@@207 q@@201 w@@207) (InsidePredicate_17211_16278 q@@201 w@@207 r@@201 u@@201)) (InsidePredicate_12948_16278 p@@208 v_1@@207 r@@201 u@@201))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_17211 p@@208 v_1@@207 q@@201 w@@207) (InsidePredicate_17211_16278 q@@201 w@@207 r@@201 u@@201))
)))
(assert (forall ((p@@209 T@Field_7712_7741) (v_1@@208 T@FrameType) (q@@202 T@Field_17238_17239) (w@@208 T@FrameType) (r@@202 T@Field_7712_7741) (u@@202 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_17211 p@@209 v_1@@208 q@@202 w@@208) (InsidePredicate_17211_12948 q@@202 w@@208 r@@202 u@@202)) (InsidePredicate_12948_12948 p@@209 v_1@@208 r@@202 u@@202))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_17211 p@@209 v_1@@208 q@@202 w@@208) (InsidePredicate_17211_12948 q@@202 w@@208 r@@202 u@@202))
)))
(assert (forall ((p@@210 T@Field_7712_7741) (v_1@@209 T@FrameType) (q@@203 T@Field_16311_16312) (w@@209 T@FrameType) (r@@203 T@Field_19395_19396) (u@@203 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_16278 p@@210 v_1@@209 q@@203 w@@209) (InsidePredicate_16278_19395 q@@203 w@@209 r@@203 u@@203)) (InsidePredicate_12948_19395 p@@210 v_1@@209 r@@203 u@@203))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_16278 p@@210 v_1@@209 q@@203 w@@209) (InsidePredicate_16278_19395 q@@203 w@@209 r@@203 u@@203))
)))
(assert (forall ((p@@211 T@Field_7712_7741) (v_1@@210 T@FrameType) (q@@204 T@Field_16311_16312) (w@@210 T@FrameType) (r@@204 T@Field_18457_18458) (u@@204 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_16278 p@@211 v_1@@210 q@@204 w@@210) (InsidePredicate_16278_18457 q@@204 w@@210 r@@204 u@@204)) (InsidePredicate_12948_18457 p@@211 v_1@@210 r@@204 u@@204))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_16278 p@@211 v_1@@210 q@@204 w@@210) (InsidePredicate_16278_18457 q@@204 w@@210 r@@204 u@@204))
)))
(assert (forall ((p@@212 T@Field_7712_7741) (v_1@@211 T@FrameType) (q@@205 T@Field_16311_16312) (w@@211 T@FrameType) (r@@205 T@Field_17797_17798) (u@@205 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_16278 p@@212 v_1@@211 q@@205 w@@211) (InsidePredicate_16278_17768 q@@205 w@@211 r@@205 u@@205)) (InsidePredicate_12948_17768 p@@212 v_1@@211 r@@205 u@@205))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_16278 p@@212 v_1@@211 q@@205 w@@211) (InsidePredicate_16278_17768 q@@205 w@@211 r@@205 u@@205))
)))
(assert (forall ((p@@213 T@Field_7712_7741) (v_1@@212 T@FrameType) (q@@206 T@Field_16311_16312) (w@@212 T@FrameType) (r@@206 T@Field_17238_17239) (u@@206 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_16278 p@@213 v_1@@212 q@@206 w@@212) (InsidePredicate_16278_17211 q@@206 w@@212 r@@206 u@@206)) (InsidePredicate_12948_17211 p@@213 v_1@@212 r@@206 u@@206))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_16278 p@@213 v_1@@212 q@@206 w@@212) (InsidePredicate_16278_17211 q@@206 w@@212 r@@206 u@@206))
)))
(assert (forall ((p@@214 T@Field_7712_7741) (v_1@@213 T@FrameType) (q@@207 T@Field_16311_16312) (w@@213 T@FrameType) (r@@207 T@Field_16311_16312) (u@@207 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_16278 p@@214 v_1@@213 q@@207 w@@213) (InsidePredicate_16278_16278 q@@207 w@@213 r@@207 u@@207)) (InsidePredicate_12948_16278 p@@214 v_1@@213 r@@207 u@@207))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_16278 p@@214 v_1@@213 q@@207 w@@213) (InsidePredicate_16278_16278 q@@207 w@@213 r@@207 u@@207))
)))
(assert (forall ((p@@215 T@Field_7712_7741) (v_1@@214 T@FrameType) (q@@208 T@Field_16311_16312) (w@@214 T@FrameType) (r@@208 T@Field_7712_7741) (u@@208 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_16278 p@@215 v_1@@214 q@@208 w@@214) (InsidePredicate_16278_12948 q@@208 w@@214 r@@208 u@@208)) (InsidePredicate_12948_12948 p@@215 v_1@@214 r@@208 u@@208))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_16278 p@@215 v_1@@214 q@@208 w@@214) (InsidePredicate_16278_12948 q@@208 w@@214 r@@208 u@@208))
)))
(assert (forall ((p@@216 T@Field_7712_7741) (v_1@@215 T@FrameType) (q@@209 T@Field_7712_7741) (w@@215 T@FrameType) (r@@209 T@Field_19395_19396) (u@@209 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_12948 p@@216 v_1@@215 q@@209 w@@215) (InsidePredicate_12948_19395 q@@209 w@@215 r@@209 u@@209)) (InsidePredicate_12948_19395 p@@216 v_1@@215 r@@209 u@@209))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_12948 p@@216 v_1@@215 q@@209 w@@215) (InsidePredicate_12948_19395 q@@209 w@@215 r@@209 u@@209))
)))
(assert (forall ((p@@217 T@Field_7712_7741) (v_1@@216 T@FrameType) (q@@210 T@Field_7712_7741) (w@@216 T@FrameType) (r@@210 T@Field_18457_18458) (u@@210 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_12948 p@@217 v_1@@216 q@@210 w@@216) (InsidePredicate_12948_18457 q@@210 w@@216 r@@210 u@@210)) (InsidePredicate_12948_18457 p@@217 v_1@@216 r@@210 u@@210))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_12948 p@@217 v_1@@216 q@@210 w@@216) (InsidePredicate_12948_18457 q@@210 w@@216 r@@210 u@@210))
)))
(assert (forall ((p@@218 T@Field_7712_7741) (v_1@@217 T@FrameType) (q@@211 T@Field_7712_7741) (w@@217 T@FrameType) (r@@211 T@Field_17797_17798) (u@@211 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_12948 p@@218 v_1@@217 q@@211 w@@217) (InsidePredicate_12948_17768 q@@211 w@@217 r@@211 u@@211)) (InsidePredicate_12948_17768 p@@218 v_1@@217 r@@211 u@@211))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_12948 p@@218 v_1@@217 q@@211 w@@217) (InsidePredicate_12948_17768 q@@211 w@@217 r@@211 u@@211))
)))
(assert (forall ((p@@219 T@Field_7712_7741) (v_1@@218 T@FrameType) (q@@212 T@Field_7712_7741) (w@@218 T@FrameType) (r@@212 T@Field_17238_17239) (u@@212 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_12948 p@@219 v_1@@218 q@@212 w@@218) (InsidePredicate_12948_17211 q@@212 w@@218 r@@212 u@@212)) (InsidePredicate_12948_17211 p@@219 v_1@@218 r@@212 u@@212))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_12948 p@@219 v_1@@218 q@@212 w@@218) (InsidePredicate_12948_17211 q@@212 w@@218 r@@212 u@@212))
)))
(assert (forall ((p@@220 T@Field_7712_7741) (v_1@@219 T@FrameType) (q@@213 T@Field_7712_7741) (w@@219 T@FrameType) (r@@213 T@Field_16311_16312) (u@@213 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_12948 p@@220 v_1@@219 q@@213 w@@219) (InsidePredicate_12948_16278 q@@213 w@@219 r@@213 u@@213)) (InsidePredicate_12948_16278 p@@220 v_1@@219 r@@213 u@@213))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_12948 p@@220 v_1@@219 q@@213 w@@219) (InsidePredicate_12948_16278 q@@213 w@@219 r@@213 u@@213))
)))
(assert (forall ((p@@221 T@Field_7712_7741) (v_1@@220 T@FrameType) (q@@214 T@Field_7712_7741) (w@@220 T@FrameType) (r@@214 T@Field_7712_7741) (u@@214 T@FrameType) ) (!  (=> (and (InsidePredicate_12948_12948 p@@221 v_1@@220 q@@214 w@@220) (InsidePredicate_12948_12948 q@@214 w@@220 r@@214 u@@214)) (InsidePredicate_12948_12948 p@@221 v_1@@220 r@@214 u@@214))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12948_12948 p@@221 v_1@@220 q@@214 w@@220) (InsidePredicate_12948_12948 q@@214 w@@220 r@@214 u@@214))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((arg1@@19 T@Ref) (arg2@@19 Real) (arg3@@19 T@Ref) (arg4@@12 Real) (arg1_2@@1 T@Ref) (arg2_2@@1 Real) (arg3_2@@1 T@Ref) (arg4_2@@0 Real) ) (!  (=> (= (wand_2 arg1@@19 arg2@@19 arg3@@19 arg4@@12) (wand_2 arg1_2@@1 arg2_2@@1 arg3_2@@1 arg4_2@@0)) (and (= arg1@@19 arg1_2@@1) (and (= arg2@@19 arg2_2@@1) (and (= arg3@@19 arg3_2@@1) (= arg4@@12 arg4_2@@0)))))
 :qid |stdinbpl.272:15|
 :skolemid |42|
 :pattern ( (wand_2 arg1@@19 arg2@@19 arg3@@19 arg4@@12) (wand_2 arg1_2@@1 arg2_2@@1 arg3_2@@1 arg4_2@@0))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |P#definedness|)
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
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid