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
(declare-sort T@Field_7350_53 0)
(declare-sort T@Field_7363_7364 0)
(declare-sort T@Field_11967_11968 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_11683_1683 0)
(declare-sort T@Field_10688_10693 0)
(declare-sort T@Field_13419_13424 0)
(declare-sort T@Field_10910_10915 0)
(declare-sort T@Field_7350_10693 0)
(declare-sort T@Field_7350_10703 0)
(declare-sort T@Field_10677_53 0)
(declare-sort T@Field_10677_7364 0)
(declare-sort T@Field_10677_1190 0)
(declare-sort T@Field_10702_10703 0)
(declare-sort T@Field_10896_53 0)
(declare-sort T@Field_10896_7364 0)
(declare-sort T@Field_10896_1272 0)
(declare-sort T@Field_10927_10928 0)
(declare-sort T@Field_11967_53 0)
(declare-sort T@Field_11967_7364 0)
(declare-sort T@Field_11967_1190 0)
(declare-datatypes ((T@PolymorphicMapType_7311 0)) (((PolymorphicMapType_7311 (|PolymorphicMapType_7311_4288_4289#PolymorphicMapType_7311| (Array T@Ref T@Field_11967_11968 Real)) (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| (Array T@Ref T@Field_11683_1683 Real)) (|PolymorphicMapType_7311_4182_1190#PolymorphicMapType_7311| (Array T@Ref T@Field_10677_1190 Real)) (|PolymorphicMapType_7311_4195_1272#PolymorphicMapType_7311| (Array T@Ref T@Field_10896_1272 Real)) (|PolymorphicMapType_7311_4288_1683#PolymorphicMapType_7311| (Array T@Ref T@Field_11967_1190 Real)) (|PolymorphicMapType_7311_4288_53#PolymorphicMapType_7311| (Array T@Ref T@Field_11967_53 Real)) (|PolymorphicMapType_7311_4288_7364#PolymorphicMapType_7311| (Array T@Ref T@Field_11967_7364 Real)) (|PolymorphicMapType_7311_4288_40979#PolymorphicMapType_7311| (Array T@Ref T@Field_13419_13424 Real)) (|PolymorphicMapType_7311_4253_4289#PolymorphicMapType_7311| (Array T@Ref T@Field_7350_10703 Real)) (|PolymorphicMapType_7311_4253_53#PolymorphicMapType_7311| (Array T@Ref T@Field_7350_53 Real)) (|PolymorphicMapType_7311_4253_7364#PolymorphicMapType_7311| (Array T@Ref T@Field_7363_7364 Real)) (|PolymorphicMapType_7311_4253_41393#PolymorphicMapType_7311| (Array T@Ref T@Field_7350_10693 Real)) (|PolymorphicMapType_7311_4182_4289#PolymorphicMapType_7311| (Array T@Ref T@Field_10702_10703 Real)) (|PolymorphicMapType_7311_4182_53#PolymorphicMapType_7311| (Array T@Ref T@Field_10677_53 Real)) (|PolymorphicMapType_7311_4182_7364#PolymorphicMapType_7311| (Array T@Ref T@Field_10677_7364 Real)) (|PolymorphicMapType_7311_4182_41807#PolymorphicMapType_7311| (Array T@Ref T@Field_10688_10693 Real)) (|PolymorphicMapType_7311_4195_4289#PolymorphicMapType_7311| (Array T@Ref T@Field_10927_10928 Real)) (|PolymorphicMapType_7311_4195_53#PolymorphicMapType_7311| (Array T@Ref T@Field_10896_53 Real)) (|PolymorphicMapType_7311_4195_7364#PolymorphicMapType_7311| (Array T@Ref T@Field_10896_7364 Real)) (|PolymorphicMapType_7311_4195_42221#PolymorphicMapType_7311| (Array T@Ref T@Field_10910_10915 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7839 0)) (((PolymorphicMapType_7839 (|PolymorphicMapType_7839_4253_1683#PolymorphicMapType_7839| (Array T@Ref T@Field_11683_1683 Bool)) (|PolymorphicMapType_7839_4253_53#PolymorphicMapType_7839| (Array T@Ref T@Field_7350_53 Bool)) (|PolymorphicMapType_7839_4253_7364#PolymorphicMapType_7839| (Array T@Ref T@Field_7363_7364 Bool)) (|PolymorphicMapType_7839_4253_27404#PolymorphicMapType_7839| (Array T@Ref T@Field_7350_10693 Bool)) (|PolymorphicMapType_7839_4253_10703#PolymorphicMapType_7839| (Array T@Ref T@Field_7350_10703 Bool)) (|PolymorphicMapType_7839_10677_1683#PolymorphicMapType_7839| (Array T@Ref T@Field_10677_1190 Bool)) (|PolymorphicMapType_7839_10677_53#PolymorphicMapType_7839| (Array T@Ref T@Field_10677_53 Bool)) (|PolymorphicMapType_7839_10677_7364#PolymorphicMapType_7839| (Array T@Ref T@Field_10677_7364 Bool)) (|PolymorphicMapType_7839_10677_28452#PolymorphicMapType_7839| (Array T@Ref T@Field_10688_10693 Bool)) (|PolymorphicMapType_7839_10677_10703#PolymorphicMapType_7839| (Array T@Ref T@Field_10702_10703 Bool)) (|PolymorphicMapType_7839_10896_1683#PolymorphicMapType_7839| (Array T@Ref T@Field_10896_1272 Bool)) (|PolymorphicMapType_7839_10896_53#PolymorphicMapType_7839| (Array T@Ref T@Field_10896_53 Bool)) (|PolymorphicMapType_7839_10896_7364#PolymorphicMapType_7839| (Array T@Ref T@Field_10896_7364 Bool)) (|PolymorphicMapType_7839_10896_29500#PolymorphicMapType_7839| (Array T@Ref T@Field_10910_10915 Bool)) (|PolymorphicMapType_7839_10896_10703#PolymorphicMapType_7839| (Array T@Ref T@Field_10927_10928 Bool)) (|PolymorphicMapType_7839_11967_1683#PolymorphicMapType_7839| (Array T@Ref T@Field_11967_1190 Bool)) (|PolymorphicMapType_7839_11967_53#PolymorphicMapType_7839| (Array T@Ref T@Field_11967_53 Bool)) (|PolymorphicMapType_7839_11967_7364#PolymorphicMapType_7839| (Array T@Ref T@Field_11967_7364 Bool)) (|PolymorphicMapType_7839_11967_30548#PolymorphicMapType_7839| (Array T@Ref T@Field_13419_13424 Bool)) (|PolymorphicMapType_7839_11967_10703#PolymorphicMapType_7839| (Array T@Ref T@Field_11967_11968 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7290 0)) (((PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| (Array T@Ref T@Field_7350_53 Bool)) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| (Array T@Ref T@Field_7363_7364 T@Ref)) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| (Array T@Ref T@Field_11967_11968 T@FrameType)) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| (Array T@Ref T@Field_11683_1683 Int)) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| (Array T@Ref T@Field_10688_10693 T@PolymorphicMapType_7839)) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| (Array T@Ref T@Field_13419_13424 T@PolymorphicMapType_7839)) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| (Array T@Ref T@Field_10910_10915 T@PolymorphicMapType_7839)) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| (Array T@Ref T@Field_7350_10693 T@PolymorphicMapType_7839)) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| (Array T@Ref T@Field_7350_10703 T@FrameType)) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| (Array T@Ref T@Field_10677_53 Bool)) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| (Array T@Ref T@Field_10677_7364 T@Ref)) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| (Array T@Ref T@Field_10677_1190 Int)) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| (Array T@Ref T@Field_10702_10703 T@FrameType)) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| (Array T@Ref T@Field_10896_53 Bool)) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| (Array T@Ref T@Field_10896_7364 T@Ref)) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| (Array T@Ref T@Field_10896_1272 Int)) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| (Array T@Ref T@Field_10927_10928 T@FrameType)) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| (Array T@Ref T@Field_11967_53 Bool)) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| (Array T@Ref T@Field_11967_7364 T@Ref)) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| (Array T@Ref T@Field_11967_1190 Int)) ) ) ))
(declare-fun $allocated () T@Field_7350_53)
(declare-fun v_35 () T@Field_11683_1683)
(declare-fun succHeap (T@PolymorphicMapType_7290 T@PolymorphicMapType_7290) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7290 T@PolymorphicMapType_7290) Bool)
(declare-fun state (T@PolymorphicMapType_7290 T@PolymorphicMapType_7311) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7311) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7839)
(declare-fun |f2'| (T@PolymorphicMapType_7290 T@Ref Int) Int)
(declare-fun dummyFunction_2166 (Int) Bool)
(declare-fun |f2#triggerStateless| (T@Ref Int) Int)
(declare-fun IsWandField_4182_1190 (T@Field_10677_1190) Bool)
(declare-fun wand () T@Field_10677_1190)
(declare-fun IsWandField_4187_4188 (T@Field_10702_10703) Bool)
(declare-fun |wand#ft| () T@Field_10702_10703)
(declare-fun IsPredicateField_4288_4289 (T@Field_11967_11968) Bool)
(declare-fun P () T@Field_11967_11968)
(declare-fun getPredWandId_4288_4289 (T@Field_11967_11968) Int)
(declare-fun getPredWandId_4182_1190 (T@Field_10677_1190) Int)
(declare-fun IsPredicateField_4182_1190 (T@Field_10677_1190) Bool)
(declare-fun IsPredicateField_4187_4188 (T@Field_10702_10703) Bool)
(declare-fun |f4'| (T@PolymorphicMapType_7290 Int) Bool)
(declare-fun dummyFunction_1879 (Bool) Bool)
(declare-fun |f4#triggerStateless| (Int) Bool)
(declare-fun WandMaskField_4210 (T@Field_10927_10928) T@Field_10910_10915)
(declare-fun |wand_1#ft| (T@Ref Real T@Ref Real Int T@Ref) T@Field_10927_10928)
(declare-fun |wand_1#sm| (T@Ref Real T@Ref Real Int T@Ref) T@Field_10910_10915)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7290 T@PolymorphicMapType_7290 T@PolymorphicMapType_7311) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4288 (T@Field_11967_11968) T@Field_13419_13424)
(declare-fun HasDirectPerm_11967_10703 (T@PolymorphicMapType_7311 T@Ref T@Field_11967_11968) Bool)
(declare-fun IsPredicateField_4210_4211 (T@Field_10927_10928) Bool)
(declare-fun PredicateMaskField_10896 (T@Field_10927_10928) T@Field_10910_10915)
(declare-fun HasDirectPerm_10896_10703 (T@PolymorphicMapType_7311 T@Ref T@Field_10927_10928) Bool)
(declare-fun PredicateMaskField_10677 (T@Field_10702_10703) T@Field_10688_10693)
(declare-fun HasDirectPerm_10677_10703 (T@PolymorphicMapType_7311 T@Ref T@Field_10702_10703) Bool)
(declare-fun IsPredicateField_7350_25436 (T@Field_7350_10703) Bool)
(declare-fun PredicateMaskField_7350 (T@Field_7350_10703) T@Field_7350_10693)
(declare-fun HasDirectPerm_7350_10703 (T@PolymorphicMapType_7311 T@Ref T@Field_7350_10703) Bool)
(declare-fun IsWandField_11967_33129 (T@Field_11967_11968) Bool)
(declare-fun WandMaskField_11967 (T@Field_11967_11968) T@Field_13419_13424)
(declare-fun IsWandField_4210_4211 (T@Field_10927_10928) Bool)
(declare-fun WandMaskField_4187 (T@Field_10702_10703) T@Field_10688_10693)
(declare-fun IsWandField_7350_32122 (T@Field_7350_10703) Bool)
(declare-fun WandMaskField_7350 (T@Field_7350_10703) T@Field_7350_10693)
(declare-fun f4 (T@PolymorphicMapType_7290 Int) Bool)
(declare-fun |P#trigger_4288| (T@PolymorphicMapType_7290 T@Field_11967_11968) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun f2 (T@PolymorphicMapType_7290 T@Ref Int) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_7290)
(declare-fun ZeroMask () T@PolymorphicMapType_7311)
(declare-fun InsidePredicate_11967_11967 (T@Field_11967_11968 T@FrameType T@Field_11967_11968 T@FrameType) Bool)
(declare-fun InsidePredicate_10896_10896 (T@Field_10927_10928 T@FrameType T@Field_10927_10928 T@FrameType) Bool)
(declare-fun InsidePredicate_10677_10677 (T@Field_10702_10703 T@FrameType T@Field_10702_10703 T@FrameType) Bool)
(declare-fun InsidePredicate_7350_7350 (T@Field_7350_10703 T@FrameType T@Field_7350_10703 T@FrameType) Bool)
(declare-fun IsPredicateField_4253_1683 (T@Field_11683_1683) Bool)
(declare-fun IsWandField_4253_1683 (T@Field_11683_1683) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4195_46811 (T@Field_10910_10915) Bool)
(declare-fun IsWandField_4195_46827 (T@Field_10910_10915) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4195_7364 (T@Field_10896_7364) Bool)
(declare-fun IsWandField_4195_7364 (T@Field_10896_7364) Bool)
(declare-fun IsPredicateField_4195_53 (T@Field_10896_53) Bool)
(declare-fun IsWandField_4195_53 (T@Field_10896_53) Bool)
(declare-fun IsPredicateField_4195_1272 (T@Field_10896_1272) Bool)
(declare-fun IsWandField_4195_1272 (T@Field_10896_1272) Bool)
(declare-fun IsPredicateField_4182_45994 (T@Field_10688_10693) Bool)
(declare-fun IsWandField_4182_46010 (T@Field_10688_10693) Bool)
(declare-fun IsPredicateField_4182_7364 (T@Field_10677_7364) Bool)
(declare-fun IsWandField_4182_7364 (T@Field_10677_7364) Bool)
(declare-fun IsPredicateField_4182_53 (T@Field_10677_53) Bool)
(declare-fun IsWandField_4182_53 (T@Field_10677_53) Bool)
(declare-fun IsPredicateField_4253_45177 (T@Field_7350_10693) Bool)
(declare-fun IsWandField_4253_45193 (T@Field_7350_10693) Bool)
(declare-fun IsPredicateField_4253_7364 (T@Field_7363_7364) Bool)
(declare-fun IsWandField_4253_7364 (T@Field_7363_7364) Bool)
(declare-fun IsPredicateField_4253_53 (T@Field_7350_53) Bool)
(declare-fun IsWandField_4253_53 (T@Field_7350_53) Bool)
(declare-fun IsPredicateField_4288_44360 (T@Field_13419_13424) Bool)
(declare-fun IsWandField_4288_44376 (T@Field_13419_13424) Bool)
(declare-fun IsPredicateField_4288_7364 (T@Field_11967_7364) Bool)
(declare-fun IsWandField_4288_7364 (T@Field_11967_7364) Bool)
(declare-fun IsPredicateField_4288_53 (T@Field_11967_53) Bool)
(declare-fun IsWandField_4288_53 (T@Field_11967_53) Bool)
(declare-fun IsPredicateField_4288_1683 (T@Field_11967_1190) Bool)
(declare-fun IsWandField_4288_1683 (T@Field_11967_1190) Bool)
(declare-fun HasDirectPerm_11967_24980 (T@PolymorphicMapType_7311 T@Ref T@Field_13419_13424) Bool)
(declare-fun HasDirectPerm_11967_1190 (T@PolymorphicMapType_7311 T@Ref T@Field_11967_1190) Bool)
(declare-fun HasDirectPerm_11967_7364 (T@PolymorphicMapType_7311 T@Ref T@Field_11967_7364) Bool)
(declare-fun HasDirectPerm_11967_53 (T@PolymorphicMapType_7311 T@Ref T@Field_11967_53) Bool)
(declare-fun HasDirectPerm_10896_23845 (T@PolymorphicMapType_7311 T@Ref T@Field_10910_10915) Bool)
(declare-fun HasDirectPerm_10896_1190 (T@PolymorphicMapType_7311 T@Ref T@Field_10896_1272) Bool)
(declare-fun HasDirectPerm_10896_7364 (T@PolymorphicMapType_7311 T@Ref T@Field_10896_7364) Bool)
(declare-fun HasDirectPerm_10896_53 (T@PolymorphicMapType_7311 T@Ref T@Field_10896_53) Bool)
(declare-fun HasDirectPerm_10677_22711 (T@PolymorphicMapType_7311 T@Ref T@Field_10688_10693) Bool)
(declare-fun HasDirectPerm_10677_1190 (T@PolymorphicMapType_7311 T@Ref T@Field_10677_1190) Bool)
(declare-fun HasDirectPerm_10677_7364 (T@PolymorphicMapType_7311 T@Ref T@Field_10677_7364) Bool)
(declare-fun HasDirectPerm_10677_53 (T@PolymorphicMapType_7311 T@Ref T@Field_10677_53) Bool)
(declare-fun HasDirectPerm_7350_21533 (T@PolymorphicMapType_7311 T@Ref T@Field_7350_10693) Bool)
(declare-fun HasDirectPerm_7350_1190 (T@PolymorphicMapType_7311 T@Ref T@Field_11683_1683) Bool)
(declare-fun HasDirectPerm_7350_7364 (T@PolymorphicMapType_7311 T@Ref T@Field_7363_7364) Bool)
(declare-fun HasDirectPerm_7350_53 (T@PolymorphicMapType_7311 T@Ref T@Field_7350_53) Bool)
(declare-fun wand_1 (T@Ref Real T@Ref Real Int T@Ref) T@Field_10896_1272)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun getPredWandId_4195_1272 (T@Field_10896_1272) Int)
(declare-fun sumMask (T@PolymorphicMapType_7311 T@PolymorphicMapType_7311 T@PolymorphicMapType_7311) Bool)
(declare-fun |f4#frame| (T@FrameType Int) Bool)
(declare-fun |f2#frame| (T@FrameType T@Ref Int) Int)
(declare-fun FrameFragment_1683 (Int) T@FrameType)
(declare-fun |P#everUsed_4288| (T@Field_11967_11968) Bool)
(declare-fun |P#sm| () T@Field_13419_13424)
(declare-fun |wand#sm| () T@Field_10688_10693)
(declare-fun InsidePredicate_11967_10896 (T@Field_11967_11968 T@FrameType T@Field_10927_10928 T@FrameType) Bool)
(declare-fun InsidePredicate_11967_10677 (T@Field_11967_11968 T@FrameType T@Field_10702_10703 T@FrameType) Bool)
(declare-fun InsidePredicate_11967_7350 (T@Field_11967_11968 T@FrameType T@Field_7350_10703 T@FrameType) Bool)
(declare-fun InsidePredicate_10896_11967 (T@Field_10927_10928 T@FrameType T@Field_11967_11968 T@FrameType) Bool)
(declare-fun InsidePredicate_10896_10677 (T@Field_10927_10928 T@FrameType T@Field_10702_10703 T@FrameType) Bool)
(declare-fun InsidePredicate_10896_7350 (T@Field_10927_10928 T@FrameType T@Field_7350_10703 T@FrameType) Bool)
(declare-fun InsidePredicate_10677_11967 (T@Field_10702_10703 T@FrameType T@Field_11967_11968 T@FrameType) Bool)
(declare-fun InsidePredicate_10677_10896 (T@Field_10702_10703 T@FrameType T@Field_10927_10928 T@FrameType) Bool)
(declare-fun InsidePredicate_10677_7350 (T@Field_10702_10703 T@FrameType T@Field_7350_10703 T@FrameType) Bool)
(declare-fun InsidePredicate_7350_11967 (T@Field_7350_10703 T@FrameType T@Field_11967_11968 T@FrameType) Bool)
(declare-fun InsidePredicate_7350_10896 (T@Field_7350_10703 T@FrameType T@Field_10927_10928 T@FrameType) Bool)
(declare-fun InsidePredicate_7350_10677 (T@Field_7350_10703 T@FrameType T@Field_10702_10703 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_7290) (Heap1 T@PolymorphicMapType_7290) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7290) (Mask T@PolymorphicMapType_7311) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7290) (Heap1@@0 T@PolymorphicMapType_7290) (Heap2 T@PolymorphicMapType_7290) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_11967_11968) ) (!  (not (select (|PolymorphicMapType_7839_11967_10703#PolymorphicMapType_7839| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7839_11967_10703#PolymorphicMapType_7839| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_13419_13424) ) (!  (not (select (|PolymorphicMapType_7839_11967_30548#PolymorphicMapType_7839| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7839_11967_30548#PolymorphicMapType_7839| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11967_7364) ) (!  (not (select (|PolymorphicMapType_7839_11967_7364#PolymorphicMapType_7839| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7839_11967_7364#PolymorphicMapType_7839| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11967_53) ) (!  (not (select (|PolymorphicMapType_7839_11967_53#PolymorphicMapType_7839| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7839_11967_53#PolymorphicMapType_7839| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_11967_1190) ) (!  (not (select (|PolymorphicMapType_7839_11967_1683#PolymorphicMapType_7839| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7839_11967_1683#PolymorphicMapType_7839| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_10927_10928) ) (!  (not (select (|PolymorphicMapType_7839_10896_10703#PolymorphicMapType_7839| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7839_10896_10703#PolymorphicMapType_7839| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_10910_10915) ) (!  (not (select (|PolymorphicMapType_7839_10896_29500#PolymorphicMapType_7839| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7839_10896_29500#PolymorphicMapType_7839| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_10896_7364) ) (!  (not (select (|PolymorphicMapType_7839_10896_7364#PolymorphicMapType_7839| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7839_10896_7364#PolymorphicMapType_7839| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_10896_53) ) (!  (not (select (|PolymorphicMapType_7839_10896_53#PolymorphicMapType_7839| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7839_10896_53#PolymorphicMapType_7839| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_10896_1272) ) (!  (not (select (|PolymorphicMapType_7839_10896_1683#PolymorphicMapType_7839| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7839_10896_1683#PolymorphicMapType_7839| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_10702_10703) ) (!  (not (select (|PolymorphicMapType_7839_10677_10703#PolymorphicMapType_7839| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7839_10677_10703#PolymorphicMapType_7839| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_10688_10693) ) (!  (not (select (|PolymorphicMapType_7839_10677_28452#PolymorphicMapType_7839| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7839_10677_28452#PolymorphicMapType_7839| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_10677_7364) ) (!  (not (select (|PolymorphicMapType_7839_10677_7364#PolymorphicMapType_7839| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7839_10677_7364#PolymorphicMapType_7839| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_10677_53) ) (!  (not (select (|PolymorphicMapType_7839_10677_53#PolymorphicMapType_7839| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7839_10677_53#PolymorphicMapType_7839| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_10677_1190) ) (!  (not (select (|PolymorphicMapType_7839_10677_1683#PolymorphicMapType_7839| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7839_10677_1683#PolymorphicMapType_7839| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_7350_10703) ) (!  (not (select (|PolymorphicMapType_7839_4253_10703#PolymorphicMapType_7839| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7839_4253_10703#PolymorphicMapType_7839| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_7350_10693) ) (!  (not (select (|PolymorphicMapType_7839_4253_27404#PolymorphicMapType_7839| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7839_4253_27404#PolymorphicMapType_7839| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_7363_7364) ) (!  (not (select (|PolymorphicMapType_7839_4253_7364#PolymorphicMapType_7839| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7839_4253_7364#PolymorphicMapType_7839| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_7350_53) ) (!  (not (select (|PolymorphicMapType_7839_4253_53#PolymorphicMapType_7839| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7839_4253_53#PolymorphicMapType_7839| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_11683_1683) ) (!  (not (select (|PolymorphicMapType_7839_4253_1683#PolymorphicMapType_7839| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7839_4253_1683#PolymorphicMapType_7839| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7290) (x T@Ref) (y Int) ) (! (dummyFunction_2166 (|f2#triggerStateless| x y))
 :qid |stdinbpl.304:15|
 :skolemid |34|
 :pattern ( (|f2'| Heap@@0 x y))
)))
(assert (IsWandField_4182_1190 wand))
(assert (IsWandField_4187_4188 |wand#ft|))
(assert (IsPredicateField_4288_4289 P))
(assert (= (getPredWandId_4288_4289 P) 0))
(assert (= (getPredWandId_4182_1190 wand) 1))
(assert  (not (IsPredicateField_4182_1190 wand)))
(assert  (not (IsPredicateField_4187_4188 |wand#ft|)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7290) (j Int) ) (! (dummyFunction_1879 (|f4#triggerStateless| j))
 :qid |stdinbpl.247:15|
 :skolemid |30|
 :pattern ( (|f4'| Heap@@1 j))
)))
(assert (forall ((arg1 T@Ref) (arg2 Real) (arg3 T@Ref) (arg4 Real) (arg5 Int) (arg6 T@Ref) ) (! (= (|wand_1#sm| arg1 arg2 arg3 arg4 arg5 arg6) (WandMaskField_4210 (|wand_1#ft| arg1 arg2 arg3 arg4 arg5 arg6)))
 :qid |stdinbpl.215:15|
 :skolemid |26|
 :pattern ( (WandMaskField_4210 (|wand_1#ft| arg1 arg2 arg3 arg4 arg5 arg6)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7290) (ExhaleHeap T@PolymorphicMapType_7290) (Mask@@0 T@PolymorphicMapType_7311) (pm_f_18 T@Field_11967_11968) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_11967_10703 Mask@@0 null pm_f_18) (IsPredicateField_4288_4289 pm_f_18)) (= (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@2) null (PredicateMaskField_4288 pm_f_18)) (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| ExhaleHeap) null (PredicateMaskField_4288 pm_f_18)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_4288_4289 pm_f_18) (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| ExhaleHeap) null (PredicateMaskField_4288 pm_f_18)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7290) (ExhaleHeap@@0 T@PolymorphicMapType_7290) (Mask@@1 T@PolymorphicMapType_7311) (pm_f_18@@0 T@Field_10927_10928) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_10896_10703 Mask@@1 null pm_f_18@@0) (IsPredicateField_4210_4211 pm_f_18@@0)) (= (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@3) null (PredicateMaskField_10896 pm_f_18@@0)) (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| ExhaleHeap@@0) null (PredicateMaskField_10896 pm_f_18@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_4210_4211 pm_f_18@@0) (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| ExhaleHeap@@0) null (PredicateMaskField_10896 pm_f_18@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7290) (ExhaleHeap@@1 T@PolymorphicMapType_7290) (Mask@@2 T@PolymorphicMapType_7311) (pm_f_18@@1 T@Field_10702_10703) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_10677_10703 Mask@@2 null pm_f_18@@1) (IsPredicateField_4187_4188 pm_f_18@@1)) (= (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@4) null (PredicateMaskField_10677 pm_f_18@@1)) (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| ExhaleHeap@@1) null (PredicateMaskField_10677 pm_f_18@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_4187_4188 pm_f_18@@1) (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| ExhaleHeap@@1) null (PredicateMaskField_10677 pm_f_18@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7290) (ExhaleHeap@@2 T@PolymorphicMapType_7290) (Mask@@3 T@PolymorphicMapType_7311) (pm_f_18@@2 T@Field_7350_10703) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_7350_10703 Mask@@3 null pm_f_18@@2) (IsPredicateField_7350_25436 pm_f_18@@2)) (= (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@5) null (PredicateMaskField_7350 pm_f_18@@2)) (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| ExhaleHeap@@2) null (PredicateMaskField_7350 pm_f_18@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsPredicateField_7350_25436 pm_f_18@@2) (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| ExhaleHeap@@2) null (PredicateMaskField_7350 pm_f_18@@2)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7290) (ExhaleHeap@@3 T@PolymorphicMapType_7290) (Mask@@4 T@PolymorphicMapType_7311) (pm_f_18@@3 T@Field_11967_11968) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_11967_10703 Mask@@4 null pm_f_18@@3) (IsWandField_11967_33129 pm_f_18@@3)) (= (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@6) null (WandMaskField_11967 pm_f_18@@3)) (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| ExhaleHeap@@3) null (WandMaskField_11967 pm_f_18@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsWandField_11967_33129 pm_f_18@@3) (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| ExhaleHeap@@3) null (WandMaskField_11967 pm_f_18@@3)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7290) (ExhaleHeap@@4 T@PolymorphicMapType_7290) (Mask@@5 T@PolymorphicMapType_7311) (pm_f_18@@4 T@Field_10927_10928) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_10896_10703 Mask@@5 null pm_f_18@@4) (IsWandField_4210_4211 pm_f_18@@4)) (= (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@7) null (WandMaskField_4210 pm_f_18@@4)) (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| ExhaleHeap@@4) null (WandMaskField_4210 pm_f_18@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsWandField_4210_4211 pm_f_18@@4) (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| ExhaleHeap@@4) null (WandMaskField_4210 pm_f_18@@4)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7290) (ExhaleHeap@@5 T@PolymorphicMapType_7290) (Mask@@6 T@PolymorphicMapType_7311) (pm_f_18@@5 T@Field_10702_10703) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_10677_10703 Mask@@6 null pm_f_18@@5) (IsWandField_4187_4188 pm_f_18@@5)) (= (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@8) null (WandMaskField_4187 pm_f_18@@5)) (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| ExhaleHeap@@5) null (WandMaskField_4187 pm_f_18@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (IsWandField_4187_4188 pm_f_18@@5) (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| ExhaleHeap@@5) null (WandMaskField_4187 pm_f_18@@5)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7290) (ExhaleHeap@@6 T@PolymorphicMapType_7290) (Mask@@7 T@PolymorphicMapType_7311) (pm_f_18@@6 T@Field_7350_10703) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_7350_10703 Mask@@7 null pm_f_18@@6) (IsWandField_7350_32122 pm_f_18@@6)) (= (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@9) null (WandMaskField_7350 pm_f_18@@6)) (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| ExhaleHeap@@6) null (WandMaskField_7350 pm_f_18@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (IsWandField_7350_32122 pm_f_18@@6) (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| ExhaleHeap@@6) null (WandMaskField_7350 pm_f_18@@6)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7290) (Mask@@8 T@PolymorphicMapType_7311) (j@@0 Int) ) (!  (=> (and (state Heap@@10 Mask@@8) (< AssumeFunctionsAbove 1)) (f4 Heap@@10 j@@0))
 :qid |stdinbpl.253:15|
 :skolemid |31|
 :pattern ( (state Heap@@10 Mask@@8) (f4 Heap@@10 j@@0))
 :pattern ( (state Heap@@10 Mask@@8) (|f4#triggerStateless| j@@0) (|P#trigger_4288| Heap@@10 P))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7290) (ExhaleHeap@@7 T@PolymorphicMapType_7290) (Mask@@9 T@PolymorphicMapType_7311) (pm_f_18@@7 T@Field_11967_11968) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@9) (=> (and (HasDirectPerm_11967_10703 Mask@@9 null pm_f_18@@7) (IsPredicateField_4288_4289 pm_f_18@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_18 T@Ref) (f_21 T@Field_11683_1683) ) (!  (=> (select (|PolymorphicMapType_7839_4253_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@11) null (PredicateMaskField_4288 pm_f_18@@7))) o2_18 f_21) (= (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@11) o2_18 f_21) (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18 f_21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18 f_21))
)) (forall ((o2_18@@0 T@Ref) (f_21@@0 T@Field_7350_53) ) (!  (=> (select (|PolymorphicMapType_7839_4253_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@11) null (PredicateMaskField_4288 pm_f_18@@7))) o2_18@@0 f_21@@0) (= (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@11) o2_18@@0 f_21@@0) (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@0 f_21@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@0 f_21@@0))
))) (forall ((o2_18@@1 T@Ref) (f_21@@1 T@Field_7363_7364) ) (!  (=> (select (|PolymorphicMapType_7839_4253_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@11) null (PredicateMaskField_4288 pm_f_18@@7))) o2_18@@1 f_21@@1) (= (select (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@11) o2_18@@1 f_21@@1) (select (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@1 f_21@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@1 f_21@@1))
))) (forall ((o2_18@@2 T@Ref) (f_21@@2 T@Field_7350_10693) ) (!  (=> (select (|PolymorphicMapType_7839_4253_27404#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@11) null (PredicateMaskField_4288 pm_f_18@@7))) o2_18@@2 f_21@@2) (= (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@11) o2_18@@2 f_21@@2) (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@2 f_21@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@2 f_21@@2))
))) (forall ((o2_18@@3 T@Ref) (f_21@@3 T@Field_7350_10703) ) (!  (=> (select (|PolymorphicMapType_7839_4253_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@11) null (PredicateMaskField_4288 pm_f_18@@7))) o2_18@@3 f_21@@3) (= (select (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@11) o2_18@@3 f_21@@3) (select (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@3 f_21@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@3 f_21@@3))
))) (forall ((o2_18@@4 T@Ref) (f_21@@4 T@Field_10677_1190) ) (!  (=> (select (|PolymorphicMapType_7839_10677_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@11) null (PredicateMaskField_4288 pm_f_18@@7))) o2_18@@4 f_21@@4) (= (select (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@11) o2_18@@4 f_21@@4) (select (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@4 f_21@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@4 f_21@@4))
))) (forall ((o2_18@@5 T@Ref) (f_21@@5 T@Field_10677_53) ) (!  (=> (select (|PolymorphicMapType_7839_10677_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@11) null (PredicateMaskField_4288 pm_f_18@@7))) o2_18@@5 f_21@@5) (= (select (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@11) o2_18@@5 f_21@@5) (select (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@5 f_21@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@5 f_21@@5))
))) (forall ((o2_18@@6 T@Ref) (f_21@@6 T@Field_10677_7364) ) (!  (=> (select (|PolymorphicMapType_7839_10677_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@11) null (PredicateMaskField_4288 pm_f_18@@7))) o2_18@@6 f_21@@6) (= (select (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@11) o2_18@@6 f_21@@6) (select (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@6 f_21@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@6 f_21@@6))
))) (forall ((o2_18@@7 T@Ref) (f_21@@7 T@Field_10688_10693) ) (!  (=> (select (|PolymorphicMapType_7839_10677_28452#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@11) null (PredicateMaskField_4288 pm_f_18@@7))) o2_18@@7 f_21@@7) (= (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@11) o2_18@@7 f_21@@7) (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@7 f_21@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@7 f_21@@7))
))) (forall ((o2_18@@8 T@Ref) (f_21@@8 T@Field_10702_10703) ) (!  (=> (select (|PolymorphicMapType_7839_10677_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@11) null (PredicateMaskField_4288 pm_f_18@@7))) o2_18@@8 f_21@@8) (= (select (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@11) o2_18@@8 f_21@@8) (select (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@8 f_21@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@8 f_21@@8))
))) (forall ((o2_18@@9 T@Ref) (f_21@@9 T@Field_10896_1272) ) (!  (=> (select (|PolymorphicMapType_7839_10896_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@11) null (PredicateMaskField_4288 pm_f_18@@7))) o2_18@@9 f_21@@9) (= (select (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@11) o2_18@@9 f_21@@9) (select (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@9 f_21@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@9 f_21@@9))
))) (forall ((o2_18@@10 T@Ref) (f_21@@10 T@Field_10896_53) ) (!  (=> (select (|PolymorphicMapType_7839_10896_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@11) null (PredicateMaskField_4288 pm_f_18@@7))) o2_18@@10 f_21@@10) (= (select (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@11) o2_18@@10 f_21@@10) (select (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@10 f_21@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@10 f_21@@10))
))) (forall ((o2_18@@11 T@Ref) (f_21@@11 T@Field_10896_7364) ) (!  (=> (select (|PolymorphicMapType_7839_10896_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@11) null (PredicateMaskField_4288 pm_f_18@@7))) o2_18@@11 f_21@@11) (= (select (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@11) o2_18@@11 f_21@@11) (select (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@11 f_21@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@11 f_21@@11))
))) (forall ((o2_18@@12 T@Ref) (f_21@@12 T@Field_10910_10915) ) (!  (=> (select (|PolymorphicMapType_7839_10896_29500#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@11) null (PredicateMaskField_4288 pm_f_18@@7))) o2_18@@12 f_21@@12) (= (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@11) o2_18@@12 f_21@@12) (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@12 f_21@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@12 f_21@@12))
))) (forall ((o2_18@@13 T@Ref) (f_21@@13 T@Field_10927_10928) ) (!  (=> (select (|PolymorphicMapType_7839_10896_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@11) null (PredicateMaskField_4288 pm_f_18@@7))) o2_18@@13 f_21@@13) (= (select (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@11) o2_18@@13 f_21@@13) (select (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@13 f_21@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@13 f_21@@13))
))) (forall ((o2_18@@14 T@Ref) (f_21@@14 T@Field_11967_1190) ) (!  (=> (select (|PolymorphicMapType_7839_11967_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@11) null (PredicateMaskField_4288 pm_f_18@@7))) o2_18@@14 f_21@@14) (= (select (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@11) o2_18@@14 f_21@@14) (select (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@14 f_21@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@14 f_21@@14))
))) (forall ((o2_18@@15 T@Ref) (f_21@@15 T@Field_11967_53) ) (!  (=> (select (|PolymorphicMapType_7839_11967_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@11) null (PredicateMaskField_4288 pm_f_18@@7))) o2_18@@15 f_21@@15) (= (select (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@11) o2_18@@15 f_21@@15) (select (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@15 f_21@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@15 f_21@@15))
))) (forall ((o2_18@@16 T@Ref) (f_21@@16 T@Field_11967_7364) ) (!  (=> (select (|PolymorphicMapType_7839_11967_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@11) null (PredicateMaskField_4288 pm_f_18@@7))) o2_18@@16 f_21@@16) (= (select (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@11) o2_18@@16 f_21@@16) (select (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@16 f_21@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@16 f_21@@16))
))) (forall ((o2_18@@17 T@Ref) (f_21@@17 T@Field_13419_13424) ) (!  (=> (select (|PolymorphicMapType_7839_11967_30548#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@11) null (PredicateMaskField_4288 pm_f_18@@7))) o2_18@@17 f_21@@17) (= (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@11) o2_18@@17 f_21@@17) (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@17 f_21@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@17 f_21@@17))
))) (forall ((o2_18@@18 T@Ref) (f_21@@18 T@Field_11967_11968) ) (!  (=> (select (|PolymorphicMapType_7839_11967_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@11) null (PredicateMaskField_4288 pm_f_18@@7))) o2_18@@18 f_21@@18) (= (select (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@11) o2_18@@18 f_21@@18) (select (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@18 f_21@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| ExhaleHeap@@7) o2_18@@18 f_21@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@9) (IsPredicateField_4288_4289 pm_f_18@@7))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7290) (ExhaleHeap@@8 T@PolymorphicMapType_7290) (Mask@@10 T@PolymorphicMapType_7311) (pm_f_18@@8 T@Field_10927_10928) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@10) (=> (and (HasDirectPerm_10896_10703 Mask@@10 null pm_f_18@@8) (IsPredicateField_4210_4211 pm_f_18@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_18@@19 T@Ref) (f_21@@19 T@Field_11683_1683) ) (!  (=> (select (|PolymorphicMapType_7839_4253_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@12) null (PredicateMaskField_10896 pm_f_18@@8))) o2_18@@19 f_21@@19) (= (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@12) o2_18@@19 f_21@@19) (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@19 f_21@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@19 f_21@@19))
)) (forall ((o2_18@@20 T@Ref) (f_21@@20 T@Field_7350_53) ) (!  (=> (select (|PolymorphicMapType_7839_4253_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@12) null (PredicateMaskField_10896 pm_f_18@@8))) o2_18@@20 f_21@@20) (= (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@12) o2_18@@20 f_21@@20) (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@20 f_21@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@20 f_21@@20))
))) (forall ((o2_18@@21 T@Ref) (f_21@@21 T@Field_7363_7364) ) (!  (=> (select (|PolymorphicMapType_7839_4253_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@12) null (PredicateMaskField_10896 pm_f_18@@8))) o2_18@@21 f_21@@21) (= (select (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@12) o2_18@@21 f_21@@21) (select (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@21 f_21@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@21 f_21@@21))
))) (forall ((o2_18@@22 T@Ref) (f_21@@22 T@Field_7350_10693) ) (!  (=> (select (|PolymorphicMapType_7839_4253_27404#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@12) null (PredicateMaskField_10896 pm_f_18@@8))) o2_18@@22 f_21@@22) (= (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@12) o2_18@@22 f_21@@22) (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@22 f_21@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@22 f_21@@22))
))) (forall ((o2_18@@23 T@Ref) (f_21@@23 T@Field_7350_10703) ) (!  (=> (select (|PolymorphicMapType_7839_4253_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@12) null (PredicateMaskField_10896 pm_f_18@@8))) o2_18@@23 f_21@@23) (= (select (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@12) o2_18@@23 f_21@@23) (select (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@23 f_21@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@23 f_21@@23))
))) (forall ((o2_18@@24 T@Ref) (f_21@@24 T@Field_10677_1190) ) (!  (=> (select (|PolymorphicMapType_7839_10677_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@12) null (PredicateMaskField_10896 pm_f_18@@8))) o2_18@@24 f_21@@24) (= (select (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@12) o2_18@@24 f_21@@24) (select (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@24 f_21@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@24 f_21@@24))
))) (forall ((o2_18@@25 T@Ref) (f_21@@25 T@Field_10677_53) ) (!  (=> (select (|PolymorphicMapType_7839_10677_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@12) null (PredicateMaskField_10896 pm_f_18@@8))) o2_18@@25 f_21@@25) (= (select (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@12) o2_18@@25 f_21@@25) (select (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@25 f_21@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@25 f_21@@25))
))) (forall ((o2_18@@26 T@Ref) (f_21@@26 T@Field_10677_7364) ) (!  (=> (select (|PolymorphicMapType_7839_10677_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@12) null (PredicateMaskField_10896 pm_f_18@@8))) o2_18@@26 f_21@@26) (= (select (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@12) o2_18@@26 f_21@@26) (select (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@26 f_21@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@26 f_21@@26))
))) (forall ((o2_18@@27 T@Ref) (f_21@@27 T@Field_10688_10693) ) (!  (=> (select (|PolymorphicMapType_7839_10677_28452#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@12) null (PredicateMaskField_10896 pm_f_18@@8))) o2_18@@27 f_21@@27) (= (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@12) o2_18@@27 f_21@@27) (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@27 f_21@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@27 f_21@@27))
))) (forall ((o2_18@@28 T@Ref) (f_21@@28 T@Field_10702_10703) ) (!  (=> (select (|PolymorphicMapType_7839_10677_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@12) null (PredicateMaskField_10896 pm_f_18@@8))) o2_18@@28 f_21@@28) (= (select (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@12) o2_18@@28 f_21@@28) (select (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@28 f_21@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@28 f_21@@28))
))) (forall ((o2_18@@29 T@Ref) (f_21@@29 T@Field_10896_1272) ) (!  (=> (select (|PolymorphicMapType_7839_10896_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@12) null (PredicateMaskField_10896 pm_f_18@@8))) o2_18@@29 f_21@@29) (= (select (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@12) o2_18@@29 f_21@@29) (select (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@29 f_21@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@29 f_21@@29))
))) (forall ((o2_18@@30 T@Ref) (f_21@@30 T@Field_10896_53) ) (!  (=> (select (|PolymorphicMapType_7839_10896_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@12) null (PredicateMaskField_10896 pm_f_18@@8))) o2_18@@30 f_21@@30) (= (select (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@12) o2_18@@30 f_21@@30) (select (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@30 f_21@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@30 f_21@@30))
))) (forall ((o2_18@@31 T@Ref) (f_21@@31 T@Field_10896_7364) ) (!  (=> (select (|PolymorphicMapType_7839_10896_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@12) null (PredicateMaskField_10896 pm_f_18@@8))) o2_18@@31 f_21@@31) (= (select (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@12) o2_18@@31 f_21@@31) (select (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@31 f_21@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@31 f_21@@31))
))) (forall ((o2_18@@32 T@Ref) (f_21@@32 T@Field_10910_10915) ) (!  (=> (select (|PolymorphicMapType_7839_10896_29500#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@12) null (PredicateMaskField_10896 pm_f_18@@8))) o2_18@@32 f_21@@32) (= (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@12) o2_18@@32 f_21@@32) (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@32 f_21@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@32 f_21@@32))
))) (forall ((o2_18@@33 T@Ref) (f_21@@33 T@Field_10927_10928) ) (!  (=> (select (|PolymorphicMapType_7839_10896_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@12) null (PredicateMaskField_10896 pm_f_18@@8))) o2_18@@33 f_21@@33) (= (select (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@12) o2_18@@33 f_21@@33) (select (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@33 f_21@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@33 f_21@@33))
))) (forall ((o2_18@@34 T@Ref) (f_21@@34 T@Field_11967_1190) ) (!  (=> (select (|PolymorphicMapType_7839_11967_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@12) null (PredicateMaskField_10896 pm_f_18@@8))) o2_18@@34 f_21@@34) (= (select (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@12) o2_18@@34 f_21@@34) (select (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@34 f_21@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@34 f_21@@34))
))) (forall ((o2_18@@35 T@Ref) (f_21@@35 T@Field_11967_53) ) (!  (=> (select (|PolymorphicMapType_7839_11967_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@12) null (PredicateMaskField_10896 pm_f_18@@8))) o2_18@@35 f_21@@35) (= (select (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@12) o2_18@@35 f_21@@35) (select (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@35 f_21@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@35 f_21@@35))
))) (forall ((o2_18@@36 T@Ref) (f_21@@36 T@Field_11967_7364) ) (!  (=> (select (|PolymorphicMapType_7839_11967_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@12) null (PredicateMaskField_10896 pm_f_18@@8))) o2_18@@36 f_21@@36) (= (select (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@12) o2_18@@36 f_21@@36) (select (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@36 f_21@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@36 f_21@@36))
))) (forall ((o2_18@@37 T@Ref) (f_21@@37 T@Field_13419_13424) ) (!  (=> (select (|PolymorphicMapType_7839_11967_30548#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@12) null (PredicateMaskField_10896 pm_f_18@@8))) o2_18@@37 f_21@@37) (= (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@12) o2_18@@37 f_21@@37) (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@37 f_21@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@37 f_21@@37))
))) (forall ((o2_18@@38 T@Ref) (f_21@@38 T@Field_11967_11968) ) (!  (=> (select (|PolymorphicMapType_7839_11967_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@12) null (PredicateMaskField_10896 pm_f_18@@8))) o2_18@@38 f_21@@38) (= (select (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@12) o2_18@@38 f_21@@38) (select (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@38 f_21@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| ExhaleHeap@@8) o2_18@@38 f_21@@38))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@10) (IsPredicateField_4210_4211 pm_f_18@@8))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7290) (ExhaleHeap@@9 T@PolymorphicMapType_7290) (Mask@@11 T@PolymorphicMapType_7311) (pm_f_18@@9 T@Field_10702_10703) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@11) (=> (and (HasDirectPerm_10677_10703 Mask@@11 null pm_f_18@@9) (IsPredicateField_4187_4188 pm_f_18@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_18@@39 T@Ref) (f_21@@39 T@Field_11683_1683) ) (!  (=> (select (|PolymorphicMapType_7839_4253_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@13) null (PredicateMaskField_10677 pm_f_18@@9))) o2_18@@39 f_21@@39) (= (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@13) o2_18@@39 f_21@@39) (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@39 f_21@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@39 f_21@@39))
)) (forall ((o2_18@@40 T@Ref) (f_21@@40 T@Field_7350_53) ) (!  (=> (select (|PolymorphicMapType_7839_4253_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@13) null (PredicateMaskField_10677 pm_f_18@@9))) o2_18@@40 f_21@@40) (= (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@13) o2_18@@40 f_21@@40) (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@40 f_21@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@40 f_21@@40))
))) (forall ((o2_18@@41 T@Ref) (f_21@@41 T@Field_7363_7364) ) (!  (=> (select (|PolymorphicMapType_7839_4253_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@13) null (PredicateMaskField_10677 pm_f_18@@9))) o2_18@@41 f_21@@41) (= (select (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@13) o2_18@@41 f_21@@41) (select (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@41 f_21@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@41 f_21@@41))
))) (forall ((o2_18@@42 T@Ref) (f_21@@42 T@Field_7350_10693) ) (!  (=> (select (|PolymorphicMapType_7839_4253_27404#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@13) null (PredicateMaskField_10677 pm_f_18@@9))) o2_18@@42 f_21@@42) (= (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@13) o2_18@@42 f_21@@42) (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@42 f_21@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@42 f_21@@42))
))) (forall ((o2_18@@43 T@Ref) (f_21@@43 T@Field_7350_10703) ) (!  (=> (select (|PolymorphicMapType_7839_4253_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@13) null (PredicateMaskField_10677 pm_f_18@@9))) o2_18@@43 f_21@@43) (= (select (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@13) o2_18@@43 f_21@@43) (select (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@43 f_21@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@43 f_21@@43))
))) (forall ((o2_18@@44 T@Ref) (f_21@@44 T@Field_10677_1190) ) (!  (=> (select (|PolymorphicMapType_7839_10677_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@13) null (PredicateMaskField_10677 pm_f_18@@9))) o2_18@@44 f_21@@44) (= (select (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@13) o2_18@@44 f_21@@44) (select (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@44 f_21@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@44 f_21@@44))
))) (forall ((o2_18@@45 T@Ref) (f_21@@45 T@Field_10677_53) ) (!  (=> (select (|PolymorphicMapType_7839_10677_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@13) null (PredicateMaskField_10677 pm_f_18@@9))) o2_18@@45 f_21@@45) (= (select (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@13) o2_18@@45 f_21@@45) (select (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@45 f_21@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@45 f_21@@45))
))) (forall ((o2_18@@46 T@Ref) (f_21@@46 T@Field_10677_7364) ) (!  (=> (select (|PolymorphicMapType_7839_10677_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@13) null (PredicateMaskField_10677 pm_f_18@@9))) o2_18@@46 f_21@@46) (= (select (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@13) o2_18@@46 f_21@@46) (select (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@46 f_21@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@46 f_21@@46))
))) (forall ((o2_18@@47 T@Ref) (f_21@@47 T@Field_10688_10693) ) (!  (=> (select (|PolymorphicMapType_7839_10677_28452#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@13) null (PredicateMaskField_10677 pm_f_18@@9))) o2_18@@47 f_21@@47) (= (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@13) o2_18@@47 f_21@@47) (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@47 f_21@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@47 f_21@@47))
))) (forall ((o2_18@@48 T@Ref) (f_21@@48 T@Field_10702_10703) ) (!  (=> (select (|PolymorphicMapType_7839_10677_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@13) null (PredicateMaskField_10677 pm_f_18@@9))) o2_18@@48 f_21@@48) (= (select (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@13) o2_18@@48 f_21@@48) (select (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@48 f_21@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@48 f_21@@48))
))) (forall ((o2_18@@49 T@Ref) (f_21@@49 T@Field_10896_1272) ) (!  (=> (select (|PolymorphicMapType_7839_10896_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@13) null (PredicateMaskField_10677 pm_f_18@@9))) o2_18@@49 f_21@@49) (= (select (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@13) o2_18@@49 f_21@@49) (select (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@49 f_21@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@49 f_21@@49))
))) (forall ((o2_18@@50 T@Ref) (f_21@@50 T@Field_10896_53) ) (!  (=> (select (|PolymorphicMapType_7839_10896_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@13) null (PredicateMaskField_10677 pm_f_18@@9))) o2_18@@50 f_21@@50) (= (select (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@13) o2_18@@50 f_21@@50) (select (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@50 f_21@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@50 f_21@@50))
))) (forall ((o2_18@@51 T@Ref) (f_21@@51 T@Field_10896_7364) ) (!  (=> (select (|PolymorphicMapType_7839_10896_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@13) null (PredicateMaskField_10677 pm_f_18@@9))) o2_18@@51 f_21@@51) (= (select (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@13) o2_18@@51 f_21@@51) (select (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@51 f_21@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@51 f_21@@51))
))) (forall ((o2_18@@52 T@Ref) (f_21@@52 T@Field_10910_10915) ) (!  (=> (select (|PolymorphicMapType_7839_10896_29500#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@13) null (PredicateMaskField_10677 pm_f_18@@9))) o2_18@@52 f_21@@52) (= (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@13) o2_18@@52 f_21@@52) (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@52 f_21@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@52 f_21@@52))
))) (forall ((o2_18@@53 T@Ref) (f_21@@53 T@Field_10927_10928) ) (!  (=> (select (|PolymorphicMapType_7839_10896_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@13) null (PredicateMaskField_10677 pm_f_18@@9))) o2_18@@53 f_21@@53) (= (select (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@13) o2_18@@53 f_21@@53) (select (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@53 f_21@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@53 f_21@@53))
))) (forall ((o2_18@@54 T@Ref) (f_21@@54 T@Field_11967_1190) ) (!  (=> (select (|PolymorphicMapType_7839_11967_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@13) null (PredicateMaskField_10677 pm_f_18@@9))) o2_18@@54 f_21@@54) (= (select (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@13) o2_18@@54 f_21@@54) (select (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@54 f_21@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@54 f_21@@54))
))) (forall ((o2_18@@55 T@Ref) (f_21@@55 T@Field_11967_53) ) (!  (=> (select (|PolymorphicMapType_7839_11967_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@13) null (PredicateMaskField_10677 pm_f_18@@9))) o2_18@@55 f_21@@55) (= (select (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@13) o2_18@@55 f_21@@55) (select (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@55 f_21@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@55 f_21@@55))
))) (forall ((o2_18@@56 T@Ref) (f_21@@56 T@Field_11967_7364) ) (!  (=> (select (|PolymorphicMapType_7839_11967_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@13) null (PredicateMaskField_10677 pm_f_18@@9))) o2_18@@56 f_21@@56) (= (select (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@13) o2_18@@56 f_21@@56) (select (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@56 f_21@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@56 f_21@@56))
))) (forall ((o2_18@@57 T@Ref) (f_21@@57 T@Field_13419_13424) ) (!  (=> (select (|PolymorphicMapType_7839_11967_30548#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@13) null (PredicateMaskField_10677 pm_f_18@@9))) o2_18@@57 f_21@@57) (= (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@13) o2_18@@57 f_21@@57) (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@57 f_21@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@57 f_21@@57))
))) (forall ((o2_18@@58 T@Ref) (f_21@@58 T@Field_11967_11968) ) (!  (=> (select (|PolymorphicMapType_7839_11967_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@13) null (PredicateMaskField_10677 pm_f_18@@9))) o2_18@@58 f_21@@58) (= (select (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@13) o2_18@@58 f_21@@58) (select (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@58 f_21@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| ExhaleHeap@@9) o2_18@@58 f_21@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@11) (IsPredicateField_4187_4188 pm_f_18@@9))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7290) (ExhaleHeap@@10 T@PolymorphicMapType_7290) (Mask@@12 T@PolymorphicMapType_7311) (pm_f_18@@10 T@Field_7350_10703) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@12) (=> (and (HasDirectPerm_7350_10703 Mask@@12 null pm_f_18@@10) (IsPredicateField_7350_25436 pm_f_18@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_18@@59 T@Ref) (f_21@@59 T@Field_11683_1683) ) (!  (=> (select (|PolymorphicMapType_7839_4253_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@14) null (PredicateMaskField_7350 pm_f_18@@10))) o2_18@@59 f_21@@59) (= (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@14) o2_18@@59 f_21@@59) (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@59 f_21@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@59 f_21@@59))
)) (forall ((o2_18@@60 T@Ref) (f_21@@60 T@Field_7350_53) ) (!  (=> (select (|PolymorphicMapType_7839_4253_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@14) null (PredicateMaskField_7350 pm_f_18@@10))) o2_18@@60 f_21@@60) (= (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@14) o2_18@@60 f_21@@60) (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@60 f_21@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@60 f_21@@60))
))) (forall ((o2_18@@61 T@Ref) (f_21@@61 T@Field_7363_7364) ) (!  (=> (select (|PolymorphicMapType_7839_4253_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@14) null (PredicateMaskField_7350 pm_f_18@@10))) o2_18@@61 f_21@@61) (= (select (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@14) o2_18@@61 f_21@@61) (select (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@61 f_21@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@61 f_21@@61))
))) (forall ((o2_18@@62 T@Ref) (f_21@@62 T@Field_7350_10693) ) (!  (=> (select (|PolymorphicMapType_7839_4253_27404#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@14) null (PredicateMaskField_7350 pm_f_18@@10))) o2_18@@62 f_21@@62) (= (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@14) o2_18@@62 f_21@@62) (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@62 f_21@@62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@62 f_21@@62))
))) (forall ((o2_18@@63 T@Ref) (f_21@@63 T@Field_7350_10703) ) (!  (=> (select (|PolymorphicMapType_7839_4253_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@14) null (PredicateMaskField_7350 pm_f_18@@10))) o2_18@@63 f_21@@63) (= (select (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@14) o2_18@@63 f_21@@63) (select (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@63 f_21@@63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@63 f_21@@63))
))) (forall ((o2_18@@64 T@Ref) (f_21@@64 T@Field_10677_1190) ) (!  (=> (select (|PolymorphicMapType_7839_10677_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@14) null (PredicateMaskField_7350 pm_f_18@@10))) o2_18@@64 f_21@@64) (= (select (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@14) o2_18@@64 f_21@@64) (select (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@64 f_21@@64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@64 f_21@@64))
))) (forall ((o2_18@@65 T@Ref) (f_21@@65 T@Field_10677_53) ) (!  (=> (select (|PolymorphicMapType_7839_10677_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@14) null (PredicateMaskField_7350 pm_f_18@@10))) o2_18@@65 f_21@@65) (= (select (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@14) o2_18@@65 f_21@@65) (select (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@65 f_21@@65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@65 f_21@@65))
))) (forall ((o2_18@@66 T@Ref) (f_21@@66 T@Field_10677_7364) ) (!  (=> (select (|PolymorphicMapType_7839_10677_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@14) null (PredicateMaskField_7350 pm_f_18@@10))) o2_18@@66 f_21@@66) (= (select (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@14) o2_18@@66 f_21@@66) (select (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@66 f_21@@66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@66 f_21@@66))
))) (forall ((o2_18@@67 T@Ref) (f_21@@67 T@Field_10688_10693) ) (!  (=> (select (|PolymorphicMapType_7839_10677_28452#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@14) null (PredicateMaskField_7350 pm_f_18@@10))) o2_18@@67 f_21@@67) (= (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@14) o2_18@@67 f_21@@67) (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@67 f_21@@67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@67 f_21@@67))
))) (forall ((o2_18@@68 T@Ref) (f_21@@68 T@Field_10702_10703) ) (!  (=> (select (|PolymorphicMapType_7839_10677_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@14) null (PredicateMaskField_7350 pm_f_18@@10))) o2_18@@68 f_21@@68) (= (select (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@14) o2_18@@68 f_21@@68) (select (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@68 f_21@@68)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@68 f_21@@68))
))) (forall ((o2_18@@69 T@Ref) (f_21@@69 T@Field_10896_1272) ) (!  (=> (select (|PolymorphicMapType_7839_10896_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@14) null (PredicateMaskField_7350 pm_f_18@@10))) o2_18@@69 f_21@@69) (= (select (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@14) o2_18@@69 f_21@@69) (select (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@69 f_21@@69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@69 f_21@@69))
))) (forall ((o2_18@@70 T@Ref) (f_21@@70 T@Field_10896_53) ) (!  (=> (select (|PolymorphicMapType_7839_10896_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@14) null (PredicateMaskField_7350 pm_f_18@@10))) o2_18@@70 f_21@@70) (= (select (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@14) o2_18@@70 f_21@@70) (select (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@70 f_21@@70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@70 f_21@@70))
))) (forall ((o2_18@@71 T@Ref) (f_21@@71 T@Field_10896_7364) ) (!  (=> (select (|PolymorphicMapType_7839_10896_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@14) null (PredicateMaskField_7350 pm_f_18@@10))) o2_18@@71 f_21@@71) (= (select (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@14) o2_18@@71 f_21@@71) (select (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@71 f_21@@71)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@71 f_21@@71))
))) (forall ((o2_18@@72 T@Ref) (f_21@@72 T@Field_10910_10915) ) (!  (=> (select (|PolymorphicMapType_7839_10896_29500#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@14) null (PredicateMaskField_7350 pm_f_18@@10))) o2_18@@72 f_21@@72) (= (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@14) o2_18@@72 f_21@@72) (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@72 f_21@@72)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@72 f_21@@72))
))) (forall ((o2_18@@73 T@Ref) (f_21@@73 T@Field_10927_10928) ) (!  (=> (select (|PolymorphicMapType_7839_10896_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@14) null (PredicateMaskField_7350 pm_f_18@@10))) o2_18@@73 f_21@@73) (= (select (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@14) o2_18@@73 f_21@@73) (select (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@73 f_21@@73)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@73 f_21@@73))
))) (forall ((o2_18@@74 T@Ref) (f_21@@74 T@Field_11967_1190) ) (!  (=> (select (|PolymorphicMapType_7839_11967_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@14) null (PredicateMaskField_7350 pm_f_18@@10))) o2_18@@74 f_21@@74) (= (select (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@14) o2_18@@74 f_21@@74) (select (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@74 f_21@@74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@74 f_21@@74))
))) (forall ((o2_18@@75 T@Ref) (f_21@@75 T@Field_11967_53) ) (!  (=> (select (|PolymorphicMapType_7839_11967_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@14) null (PredicateMaskField_7350 pm_f_18@@10))) o2_18@@75 f_21@@75) (= (select (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@14) o2_18@@75 f_21@@75) (select (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@75 f_21@@75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@75 f_21@@75))
))) (forall ((o2_18@@76 T@Ref) (f_21@@76 T@Field_11967_7364) ) (!  (=> (select (|PolymorphicMapType_7839_11967_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@14) null (PredicateMaskField_7350 pm_f_18@@10))) o2_18@@76 f_21@@76) (= (select (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@14) o2_18@@76 f_21@@76) (select (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@76 f_21@@76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@76 f_21@@76))
))) (forall ((o2_18@@77 T@Ref) (f_21@@77 T@Field_13419_13424) ) (!  (=> (select (|PolymorphicMapType_7839_11967_30548#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@14) null (PredicateMaskField_7350 pm_f_18@@10))) o2_18@@77 f_21@@77) (= (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@14) o2_18@@77 f_21@@77) (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@77 f_21@@77)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@77 f_21@@77))
))) (forall ((o2_18@@78 T@Ref) (f_21@@78 T@Field_11967_11968) ) (!  (=> (select (|PolymorphicMapType_7839_11967_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@14) null (PredicateMaskField_7350 pm_f_18@@10))) o2_18@@78 f_21@@78) (= (select (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@14) o2_18@@78 f_21@@78) (select (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@78 f_21@@78)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| ExhaleHeap@@10) o2_18@@78 f_21@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@12) (IsPredicateField_7350_25436 pm_f_18@@10))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7290) (ExhaleHeap@@11 T@PolymorphicMapType_7290) (Mask@@13 T@PolymorphicMapType_7311) (pm_f_18@@11 T@Field_11967_11968) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@13) (=> (and (HasDirectPerm_11967_10703 Mask@@13 null pm_f_18@@11) (IsWandField_11967_33129 pm_f_18@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_18@@79 T@Ref) (f_21@@79 T@Field_11683_1683) ) (!  (=> (select (|PolymorphicMapType_7839_4253_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@15) null (WandMaskField_11967 pm_f_18@@11))) o2_18@@79 f_21@@79) (= (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@15) o2_18@@79 f_21@@79) (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@79 f_21@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@79 f_21@@79))
)) (forall ((o2_18@@80 T@Ref) (f_21@@80 T@Field_7350_53) ) (!  (=> (select (|PolymorphicMapType_7839_4253_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@15) null (WandMaskField_11967 pm_f_18@@11))) o2_18@@80 f_21@@80) (= (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@15) o2_18@@80 f_21@@80) (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@80 f_21@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@80 f_21@@80))
))) (forall ((o2_18@@81 T@Ref) (f_21@@81 T@Field_7363_7364) ) (!  (=> (select (|PolymorphicMapType_7839_4253_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@15) null (WandMaskField_11967 pm_f_18@@11))) o2_18@@81 f_21@@81) (= (select (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@15) o2_18@@81 f_21@@81) (select (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@81 f_21@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@81 f_21@@81))
))) (forall ((o2_18@@82 T@Ref) (f_21@@82 T@Field_7350_10693) ) (!  (=> (select (|PolymorphicMapType_7839_4253_27404#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@15) null (WandMaskField_11967 pm_f_18@@11))) o2_18@@82 f_21@@82) (= (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@15) o2_18@@82 f_21@@82) (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@82 f_21@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@82 f_21@@82))
))) (forall ((o2_18@@83 T@Ref) (f_21@@83 T@Field_7350_10703) ) (!  (=> (select (|PolymorphicMapType_7839_4253_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@15) null (WandMaskField_11967 pm_f_18@@11))) o2_18@@83 f_21@@83) (= (select (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@15) o2_18@@83 f_21@@83) (select (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@83 f_21@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@83 f_21@@83))
))) (forall ((o2_18@@84 T@Ref) (f_21@@84 T@Field_10677_1190) ) (!  (=> (select (|PolymorphicMapType_7839_10677_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@15) null (WandMaskField_11967 pm_f_18@@11))) o2_18@@84 f_21@@84) (= (select (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@15) o2_18@@84 f_21@@84) (select (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@84 f_21@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@84 f_21@@84))
))) (forall ((o2_18@@85 T@Ref) (f_21@@85 T@Field_10677_53) ) (!  (=> (select (|PolymorphicMapType_7839_10677_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@15) null (WandMaskField_11967 pm_f_18@@11))) o2_18@@85 f_21@@85) (= (select (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@15) o2_18@@85 f_21@@85) (select (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@85 f_21@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@85 f_21@@85))
))) (forall ((o2_18@@86 T@Ref) (f_21@@86 T@Field_10677_7364) ) (!  (=> (select (|PolymorphicMapType_7839_10677_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@15) null (WandMaskField_11967 pm_f_18@@11))) o2_18@@86 f_21@@86) (= (select (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@15) o2_18@@86 f_21@@86) (select (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@86 f_21@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@86 f_21@@86))
))) (forall ((o2_18@@87 T@Ref) (f_21@@87 T@Field_10688_10693) ) (!  (=> (select (|PolymorphicMapType_7839_10677_28452#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@15) null (WandMaskField_11967 pm_f_18@@11))) o2_18@@87 f_21@@87) (= (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@15) o2_18@@87 f_21@@87) (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@87 f_21@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@87 f_21@@87))
))) (forall ((o2_18@@88 T@Ref) (f_21@@88 T@Field_10702_10703) ) (!  (=> (select (|PolymorphicMapType_7839_10677_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@15) null (WandMaskField_11967 pm_f_18@@11))) o2_18@@88 f_21@@88) (= (select (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@15) o2_18@@88 f_21@@88) (select (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@88 f_21@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@88 f_21@@88))
))) (forall ((o2_18@@89 T@Ref) (f_21@@89 T@Field_10896_1272) ) (!  (=> (select (|PolymorphicMapType_7839_10896_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@15) null (WandMaskField_11967 pm_f_18@@11))) o2_18@@89 f_21@@89) (= (select (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@15) o2_18@@89 f_21@@89) (select (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@89 f_21@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@89 f_21@@89))
))) (forall ((o2_18@@90 T@Ref) (f_21@@90 T@Field_10896_53) ) (!  (=> (select (|PolymorphicMapType_7839_10896_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@15) null (WandMaskField_11967 pm_f_18@@11))) o2_18@@90 f_21@@90) (= (select (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@15) o2_18@@90 f_21@@90) (select (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@90 f_21@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@90 f_21@@90))
))) (forall ((o2_18@@91 T@Ref) (f_21@@91 T@Field_10896_7364) ) (!  (=> (select (|PolymorphicMapType_7839_10896_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@15) null (WandMaskField_11967 pm_f_18@@11))) o2_18@@91 f_21@@91) (= (select (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@15) o2_18@@91 f_21@@91) (select (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@91 f_21@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@91 f_21@@91))
))) (forall ((o2_18@@92 T@Ref) (f_21@@92 T@Field_10910_10915) ) (!  (=> (select (|PolymorphicMapType_7839_10896_29500#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@15) null (WandMaskField_11967 pm_f_18@@11))) o2_18@@92 f_21@@92) (= (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@15) o2_18@@92 f_21@@92) (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@92 f_21@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@92 f_21@@92))
))) (forall ((o2_18@@93 T@Ref) (f_21@@93 T@Field_10927_10928) ) (!  (=> (select (|PolymorphicMapType_7839_10896_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@15) null (WandMaskField_11967 pm_f_18@@11))) o2_18@@93 f_21@@93) (= (select (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@15) o2_18@@93 f_21@@93) (select (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@93 f_21@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@93 f_21@@93))
))) (forall ((o2_18@@94 T@Ref) (f_21@@94 T@Field_11967_1190) ) (!  (=> (select (|PolymorphicMapType_7839_11967_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@15) null (WandMaskField_11967 pm_f_18@@11))) o2_18@@94 f_21@@94) (= (select (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@15) o2_18@@94 f_21@@94) (select (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@94 f_21@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@94 f_21@@94))
))) (forall ((o2_18@@95 T@Ref) (f_21@@95 T@Field_11967_53) ) (!  (=> (select (|PolymorphicMapType_7839_11967_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@15) null (WandMaskField_11967 pm_f_18@@11))) o2_18@@95 f_21@@95) (= (select (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@15) o2_18@@95 f_21@@95) (select (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@95 f_21@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@95 f_21@@95))
))) (forall ((o2_18@@96 T@Ref) (f_21@@96 T@Field_11967_7364) ) (!  (=> (select (|PolymorphicMapType_7839_11967_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@15) null (WandMaskField_11967 pm_f_18@@11))) o2_18@@96 f_21@@96) (= (select (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@15) o2_18@@96 f_21@@96) (select (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@96 f_21@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@96 f_21@@96))
))) (forall ((o2_18@@97 T@Ref) (f_21@@97 T@Field_13419_13424) ) (!  (=> (select (|PolymorphicMapType_7839_11967_30548#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@15) null (WandMaskField_11967 pm_f_18@@11))) o2_18@@97 f_21@@97) (= (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@15) o2_18@@97 f_21@@97) (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@97 f_21@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@97 f_21@@97))
))) (forall ((o2_18@@98 T@Ref) (f_21@@98 T@Field_11967_11968) ) (!  (=> (select (|PolymorphicMapType_7839_11967_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@15) null (WandMaskField_11967 pm_f_18@@11))) o2_18@@98 f_21@@98) (= (select (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@15) o2_18@@98 f_21@@98) (select (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@98 f_21@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| ExhaleHeap@@11) o2_18@@98 f_21@@98))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@13) (IsWandField_11967_33129 pm_f_18@@11))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7290) (ExhaleHeap@@12 T@PolymorphicMapType_7290) (Mask@@14 T@PolymorphicMapType_7311) (pm_f_18@@12 T@Field_10927_10928) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@14) (=> (and (HasDirectPerm_10896_10703 Mask@@14 null pm_f_18@@12) (IsWandField_4210_4211 pm_f_18@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_18@@99 T@Ref) (f_21@@99 T@Field_11683_1683) ) (!  (=> (select (|PolymorphicMapType_7839_4253_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@16) null (WandMaskField_4210 pm_f_18@@12))) o2_18@@99 f_21@@99) (= (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@16) o2_18@@99 f_21@@99) (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@99 f_21@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@99 f_21@@99))
)) (forall ((o2_18@@100 T@Ref) (f_21@@100 T@Field_7350_53) ) (!  (=> (select (|PolymorphicMapType_7839_4253_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@16) null (WandMaskField_4210 pm_f_18@@12))) o2_18@@100 f_21@@100) (= (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@16) o2_18@@100 f_21@@100) (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@100 f_21@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@100 f_21@@100))
))) (forall ((o2_18@@101 T@Ref) (f_21@@101 T@Field_7363_7364) ) (!  (=> (select (|PolymorphicMapType_7839_4253_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@16) null (WandMaskField_4210 pm_f_18@@12))) o2_18@@101 f_21@@101) (= (select (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@16) o2_18@@101 f_21@@101) (select (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@101 f_21@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@101 f_21@@101))
))) (forall ((o2_18@@102 T@Ref) (f_21@@102 T@Field_7350_10693) ) (!  (=> (select (|PolymorphicMapType_7839_4253_27404#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@16) null (WandMaskField_4210 pm_f_18@@12))) o2_18@@102 f_21@@102) (= (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@16) o2_18@@102 f_21@@102) (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@102 f_21@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@102 f_21@@102))
))) (forall ((o2_18@@103 T@Ref) (f_21@@103 T@Field_7350_10703) ) (!  (=> (select (|PolymorphicMapType_7839_4253_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@16) null (WandMaskField_4210 pm_f_18@@12))) o2_18@@103 f_21@@103) (= (select (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@16) o2_18@@103 f_21@@103) (select (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@103 f_21@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@103 f_21@@103))
))) (forall ((o2_18@@104 T@Ref) (f_21@@104 T@Field_10677_1190) ) (!  (=> (select (|PolymorphicMapType_7839_10677_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@16) null (WandMaskField_4210 pm_f_18@@12))) o2_18@@104 f_21@@104) (= (select (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@16) o2_18@@104 f_21@@104) (select (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@104 f_21@@104)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@104 f_21@@104))
))) (forall ((o2_18@@105 T@Ref) (f_21@@105 T@Field_10677_53) ) (!  (=> (select (|PolymorphicMapType_7839_10677_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@16) null (WandMaskField_4210 pm_f_18@@12))) o2_18@@105 f_21@@105) (= (select (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@16) o2_18@@105 f_21@@105) (select (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@105 f_21@@105)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@105 f_21@@105))
))) (forall ((o2_18@@106 T@Ref) (f_21@@106 T@Field_10677_7364) ) (!  (=> (select (|PolymorphicMapType_7839_10677_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@16) null (WandMaskField_4210 pm_f_18@@12))) o2_18@@106 f_21@@106) (= (select (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@16) o2_18@@106 f_21@@106) (select (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@106 f_21@@106)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@106 f_21@@106))
))) (forall ((o2_18@@107 T@Ref) (f_21@@107 T@Field_10688_10693) ) (!  (=> (select (|PolymorphicMapType_7839_10677_28452#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@16) null (WandMaskField_4210 pm_f_18@@12))) o2_18@@107 f_21@@107) (= (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@16) o2_18@@107 f_21@@107) (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@107 f_21@@107)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@107 f_21@@107))
))) (forall ((o2_18@@108 T@Ref) (f_21@@108 T@Field_10702_10703) ) (!  (=> (select (|PolymorphicMapType_7839_10677_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@16) null (WandMaskField_4210 pm_f_18@@12))) o2_18@@108 f_21@@108) (= (select (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@16) o2_18@@108 f_21@@108) (select (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@108 f_21@@108)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@108 f_21@@108))
))) (forall ((o2_18@@109 T@Ref) (f_21@@109 T@Field_10896_1272) ) (!  (=> (select (|PolymorphicMapType_7839_10896_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@16) null (WandMaskField_4210 pm_f_18@@12))) o2_18@@109 f_21@@109) (= (select (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@16) o2_18@@109 f_21@@109) (select (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@109 f_21@@109)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@109 f_21@@109))
))) (forall ((o2_18@@110 T@Ref) (f_21@@110 T@Field_10896_53) ) (!  (=> (select (|PolymorphicMapType_7839_10896_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@16) null (WandMaskField_4210 pm_f_18@@12))) o2_18@@110 f_21@@110) (= (select (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@16) o2_18@@110 f_21@@110) (select (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@110 f_21@@110)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@110 f_21@@110))
))) (forall ((o2_18@@111 T@Ref) (f_21@@111 T@Field_10896_7364) ) (!  (=> (select (|PolymorphicMapType_7839_10896_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@16) null (WandMaskField_4210 pm_f_18@@12))) o2_18@@111 f_21@@111) (= (select (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@16) o2_18@@111 f_21@@111) (select (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@111 f_21@@111)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@111 f_21@@111))
))) (forall ((o2_18@@112 T@Ref) (f_21@@112 T@Field_10910_10915) ) (!  (=> (select (|PolymorphicMapType_7839_10896_29500#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@16) null (WandMaskField_4210 pm_f_18@@12))) o2_18@@112 f_21@@112) (= (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@16) o2_18@@112 f_21@@112) (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@112 f_21@@112)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@112 f_21@@112))
))) (forall ((o2_18@@113 T@Ref) (f_21@@113 T@Field_10927_10928) ) (!  (=> (select (|PolymorphicMapType_7839_10896_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@16) null (WandMaskField_4210 pm_f_18@@12))) o2_18@@113 f_21@@113) (= (select (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@16) o2_18@@113 f_21@@113) (select (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@113 f_21@@113)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@113 f_21@@113))
))) (forall ((o2_18@@114 T@Ref) (f_21@@114 T@Field_11967_1190) ) (!  (=> (select (|PolymorphicMapType_7839_11967_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@16) null (WandMaskField_4210 pm_f_18@@12))) o2_18@@114 f_21@@114) (= (select (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@16) o2_18@@114 f_21@@114) (select (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@114 f_21@@114)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@114 f_21@@114))
))) (forall ((o2_18@@115 T@Ref) (f_21@@115 T@Field_11967_53) ) (!  (=> (select (|PolymorphicMapType_7839_11967_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@16) null (WandMaskField_4210 pm_f_18@@12))) o2_18@@115 f_21@@115) (= (select (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@16) o2_18@@115 f_21@@115) (select (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@115 f_21@@115)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@115 f_21@@115))
))) (forall ((o2_18@@116 T@Ref) (f_21@@116 T@Field_11967_7364) ) (!  (=> (select (|PolymorphicMapType_7839_11967_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@16) null (WandMaskField_4210 pm_f_18@@12))) o2_18@@116 f_21@@116) (= (select (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@16) o2_18@@116 f_21@@116) (select (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@116 f_21@@116)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@116 f_21@@116))
))) (forall ((o2_18@@117 T@Ref) (f_21@@117 T@Field_13419_13424) ) (!  (=> (select (|PolymorphicMapType_7839_11967_30548#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@16) null (WandMaskField_4210 pm_f_18@@12))) o2_18@@117 f_21@@117) (= (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@16) o2_18@@117 f_21@@117) (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@117 f_21@@117)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@117 f_21@@117))
))) (forall ((o2_18@@118 T@Ref) (f_21@@118 T@Field_11967_11968) ) (!  (=> (select (|PolymorphicMapType_7839_11967_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@16) null (WandMaskField_4210 pm_f_18@@12))) o2_18@@118 f_21@@118) (= (select (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@16) o2_18@@118 f_21@@118) (select (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@118 f_21@@118)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| ExhaleHeap@@12) o2_18@@118 f_21@@118))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@14) (IsWandField_4210_4211 pm_f_18@@12))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7290) (ExhaleHeap@@13 T@PolymorphicMapType_7290) (Mask@@15 T@PolymorphicMapType_7311) (pm_f_18@@13 T@Field_10702_10703) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@15) (=> (and (HasDirectPerm_10677_10703 Mask@@15 null pm_f_18@@13) (IsWandField_4187_4188 pm_f_18@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_18@@119 T@Ref) (f_21@@119 T@Field_11683_1683) ) (!  (=> (select (|PolymorphicMapType_7839_4253_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@17) null (WandMaskField_4187 pm_f_18@@13))) o2_18@@119 f_21@@119) (= (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@17) o2_18@@119 f_21@@119) (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@119 f_21@@119)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@119 f_21@@119))
)) (forall ((o2_18@@120 T@Ref) (f_21@@120 T@Field_7350_53) ) (!  (=> (select (|PolymorphicMapType_7839_4253_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@17) null (WandMaskField_4187 pm_f_18@@13))) o2_18@@120 f_21@@120) (= (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@17) o2_18@@120 f_21@@120) (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@120 f_21@@120)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@120 f_21@@120))
))) (forall ((o2_18@@121 T@Ref) (f_21@@121 T@Field_7363_7364) ) (!  (=> (select (|PolymorphicMapType_7839_4253_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@17) null (WandMaskField_4187 pm_f_18@@13))) o2_18@@121 f_21@@121) (= (select (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@17) o2_18@@121 f_21@@121) (select (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@121 f_21@@121)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@121 f_21@@121))
))) (forall ((o2_18@@122 T@Ref) (f_21@@122 T@Field_7350_10693) ) (!  (=> (select (|PolymorphicMapType_7839_4253_27404#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@17) null (WandMaskField_4187 pm_f_18@@13))) o2_18@@122 f_21@@122) (= (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@17) o2_18@@122 f_21@@122) (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@122 f_21@@122)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@122 f_21@@122))
))) (forall ((o2_18@@123 T@Ref) (f_21@@123 T@Field_7350_10703) ) (!  (=> (select (|PolymorphicMapType_7839_4253_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@17) null (WandMaskField_4187 pm_f_18@@13))) o2_18@@123 f_21@@123) (= (select (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@17) o2_18@@123 f_21@@123) (select (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@123 f_21@@123)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@123 f_21@@123))
))) (forall ((o2_18@@124 T@Ref) (f_21@@124 T@Field_10677_1190) ) (!  (=> (select (|PolymorphicMapType_7839_10677_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@17) null (WandMaskField_4187 pm_f_18@@13))) o2_18@@124 f_21@@124) (= (select (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@17) o2_18@@124 f_21@@124) (select (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@124 f_21@@124)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@124 f_21@@124))
))) (forall ((o2_18@@125 T@Ref) (f_21@@125 T@Field_10677_53) ) (!  (=> (select (|PolymorphicMapType_7839_10677_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@17) null (WandMaskField_4187 pm_f_18@@13))) o2_18@@125 f_21@@125) (= (select (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@17) o2_18@@125 f_21@@125) (select (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@125 f_21@@125)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@125 f_21@@125))
))) (forall ((o2_18@@126 T@Ref) (f_21@@126 T@Field_10677_7364) ) (!  (=> (select (|PolymorphicMapType_7839_10677_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@17) null (WandMaskField_4187 pm_f_18@@13))) o2_18@@126 f_21@@126) (= (select (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@17) o2_18@@126 f_21@@126) (select (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@126 f_21@@126)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@126 f_21@@126))
))) (forall ((o2_18@@127 T@Ref) (f_21@@127 T@Field_10688_10693) ) (!  (=> (select (|PolymorphicMapType_7839_10677_28452#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@17) null (WandMaskField_4187 pm_f_18@@13))) o2_18@@127 f_21@@127) (= (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@17) o2_18@@127 f_21@@127) (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@127 f_21@@127)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@127 f_21@@127))
))) (forall ((o2_18@@128 T@Ref) (f_21@@128 T@Field_10702_10703) ) (!  (=> (select (|PolymorphicMapType_7839_10677_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@17) null (WandMaskField_4187 pm_f_18@@13))) o2_18@@128 f_21@@128) (= (select (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@17) o2_18@@128 f_21@@128) (select (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@128 f_21@@128)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@128 f_21@@128))
))) (forall ((o2_18@@129 T@Ref) (f_21@@129 T@Field_10896_1272) ) (!  (=> (select (|PolymorphicMapType_7839_10896_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@17) null (WandMaskField_4187 pm_f_18@@13))) o2_18@@129 f_21@@129) (= (select (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@17) o2_18@@129 f_21@@129) (select (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@129 f_21@@129)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@129 f_21@@129))
))) (forall ((o2_18@@130 T@Ref) (f_21@@130 T@Field_10896_53) ) (!  (=> (select (|PolymorphicMapType_7839_10896_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@17) null (WandMaskField_4187 pm_f_18@@13))) o2_18@@130 f_21@@130) (= (select (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@17) o2_18@@130 f_21@@130) (select (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@130 f_21@@130)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@130 f_21@@130))
))) (forall ((o2_18@@131 T@Ref) (f_21@@131 T@Field_10896_7364) ) (!  (=> (select (|PolymorphicMapType_7839_10896_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@17) null (WandMaskField_4187 pm_f_18@@13))) o2_18@@131 f_21@@131) (= (select (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@17) o2_18@@131 f_21@@131) (select (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@131 f_21@@131)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@131 f_21@@131))
))) (forall ((o2_18@@132 T@Ref) (f_21@@132 T@Field_10910_10915) ) (!  (=> (select (|PolymorphicMapType_7839_10896_29500#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@17) null (WandMaskField_4187 pm_f_18@@13))) o2_18@@132 f_21@@132) (= (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@17) o2_18@@132 f_21@@132) (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@132 f_21@@132)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@132 f_21@@132))
))) (forall ((o2_18@@133 T@Ref) (f_21@@133 T@Field_10927_10928) ) (!  (=> (select (|PolymorphicMapType_7839_10896_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@17) null (WandMaskField_4187 pm_f_18@@13))) o2_18@@133 f_21@@133) (= (select (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@17) o2_18@@133 f_21@@133) (select (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@133 f_21@@133)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@133 f_21@@133))
))) (forall ((o2_18@@134 T@Ref) (f_21@@134 T@Field_11967_1190) ) (!  (=> (select (|PolymorphicMapType_7839_11967_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@17) null (WandMaskField_4187 pm_f_18@@13))) o2_18@@134 f_21@@134) (= (select (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@17) o2_18@@134 f_21@@134) (select (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@134 f_21@@134)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@134 f_21@@134))
))) (forall ((o2_18@@135 T@Ref) (f_21@@135 T@Field_11967_53) ) (!  (=> (select (|PolymorphicMapType_7839_11967_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@17) null (WandMaskField_4187 pm_f_18@@13))) o2_18@@135 f_21@@135) (= (select (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@17) o2_18@@135 f_21@@135) (select (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@135 f_21@@135)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@135 f_21@@135))
))) (forall ((o2_18@@136 T@Ref) (f_21@@136 T@Field_11967_7364) ) (!  (=> (select (|PolymorphicMapType_7839_11967_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@17) null (WandMaskField_4187 pm_f_18@@13))) o2_18@@136 f_21@@136) (= (select (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@17) o2_18@@136 f_21@@136) (select (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@136 f_21@@136)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@136 f_21@@136))
))) (forall ((o2_18@@137 T@Ref) (f_21@@137 T@Field_13419_13424) ) (!  (=> (select (|PolymorphicMapType_7839_11967_30548#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@17) null (WandMaskField_4187 pm_f_18@@13))) o2_18@@137 f_21@@137) (= (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@17) o2_18@@137 f_21@@137) (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@137 f_21@@137)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@137 f_21@@137))
))) (forall ((o2_18@@138 T@Ref) (f_21@@138 T@Field_11967_11968) ) (!  (=> (select (|PolymorphicMapType_7839_11967_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@17) null (WandMaskField_4187 pm_f_18@@13))) o2_18@@138 f_21@@138) (= (select (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@17) o2_18@@138 f_21@@138) (select (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@138 f_21@@138)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| ExhaleHeap@@13) o2_18@@138 f_21@@138))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@15) (IsWandField_4187_4188 pm_f_18@@13))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7290) (ExhaleHeap@@14 T@PolymorphicMapType_7290) (Mask@@16 T@PolymorphicMapType_7311) (pm_f_18@@14 T@Field_7350_10703) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@16) (=> (and (HasDirectPerm_7350_10703 Mask@@16 null pm_f_18@@14) (IsWandField_7350_32122 pm_f_18@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_18@@139 T@Ref) (f_21@@139 T@Field_11683_1683) ) (!  (=> (select (|PolymorphicMapType_7839_4253_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@18) null (WandMaskField_7350 pm_f_18@@14))) o2_18@@139 f_21@@139) (= (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@18) o2_18@@139 f_21@@139) (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@139 f_21@@139)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@139 f_21@@139))
)) (forall ((o2_18@@140 T@Ref) (f_21@@140 T@Field_7350_53) ) (!  (=> (select (|PolymorphicMapType_7839_4253_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@18) null (WandMaskField_7350 pm_f_18@@14))) o2_18@@140 f_21@@140) (= (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@18) o2_18@@140 f_21@@140) (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@140 f_21@@140)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@140 f_21@@140))
))) (forall ((o2_18@@141 T@Ref) (f_21@@141 T@Field_7363_7364) ) (!  (=> (select (|PolymorphicMapType_7839_4253_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@18) null (WandMaskField_7350 pm_f_18@@14))) o2_18@@141 f_21@@141) (= (select (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@18) o2_18@@141 f_21@@141) (select (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@141 f_21@@141)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@141 f_21@@141))
))) (forall ((o2_18@@142 T@Ref) (f_21@@142 T@Field_7350_10693) ) (!  (=> (select (|PolymorphicMapType_7839_4253_27404#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@18) null (WandMaskField_7350 pm_f_18@@14))) o2_18@@142 f_21@@142) (= (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@18) o2_18@@142 f_21@@142) (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@142 f_21@@142)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@142 f_21@@142))
))) (forall ((o2_18@@143 T@Ref) (f_21@@143 T@Field_7350_10703) ) (!  (=> (select (|PolymorphicMapType_7839_4253_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@18) null (WandMaskField_7350 pm_f_18@@14))) o2_18@@143 f_21@@143) (= (select (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@18) o2_18@@143 f_21@@143) (select (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@143 f_21@@143)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@143 f_21@@143))
))) (forall ((o2_18@@144 T@Ref) (f_21@@144 T@Field_10677_1190) ) (!  (=> (select (|PolymorphicMapType_7839_10677_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@18) null (WandMaskField_7350 pm_f_18@@14))) o2_18@@144 f_21@@144) (= (select (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@18) o2_18@@144 f_21@@144) (select (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@144 f_21@@144)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@144 f_21@@144))
))) (forall ((o2_18@@145 T@Ref) (f_21@@145 T@Field_10677_53) ) (!  (=> (select (|PolymorphicMapType_7839_10677_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@18) null (WandMaskField_7350 pm_f_18@@14))) o2_18@@145 f_21@@145) (= (select (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@18) o2_18@@145 f_21@@145) (select (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@145 f_21@@145)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@145 f_21@@145))
))) (forall ((o2_18@@146 T@Ref) (f_21@@146 T@Field_10677_7364) ) (!  (=> (select (|PolymorphicMapType_7839_10677_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@18) null (WandMaskField_7350 pm_f_18@@14))) o2_18@@146 f_21@@146) (= (select (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@18) o2_18@@146 f_21@@146) (select (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@146 f_21@@146)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@146 f_21@@146))
))) (forall ((o2_18@@147 T@Ref) (f_21@@147 T@Field_10688_10693) ) (!  (=> (select (|PolymorphicMapType_7839_10677_28452#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@18) null (WandMaskField_7350 pm_f_18@@14))) o2_18@@147 f_21@@147) (= (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@18) o2_18@@147 f_21@@147) (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@147 f_21@@147)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@147 f_21@@147))
))) (forall ((o2_18@@148 T@Ref) (f_21@@148 T@Field_10702_10703) ) (!  (=> (select (|PolymorphicMapType_7839_10677_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@18) null (WandMaskField_7350 pm_f_18@@14))) o2_18@@148 f_21@@148) (= (select (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@18) o2_18@@148 f_21@@148) (select (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@148 f_21@@148)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@148 f_21@@148))
))) (forall ((o2_18@@149 T@Ref) (f_21@@149 T@Field_10896_1272) ) (!  (=> (select (|PolymorphicMapType_7839_10896_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@18) null (WandMaskField_7350 pm_f_18@@14))) o2_18@@149 f_21@@149) (= (select (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@18) o2_18@@149 f_21@@149) (select (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@149 f_21@@149)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@149 f_21@@149))
))) (forall ((o2_18@@150 T@Ref) (f_21@@150 T@Field_10896_53) ) (!  (=> (select (|PolymorphicMapType_7839_10896_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@18) null (WandMaskField_7350 pm_f_18@@14))) o2_18@@150 f_21@@150) (= (select (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@18) o2_18@@150 f_21@@150) (select (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@150 f_21@@150)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@150 f_21@@150))
))) (forall ((o2_18@@151 T@Ref) (f_21@@151 T@Field_10896_7364) ) (!  (=> (select (|PolymorphicMapType_7839_10896_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@18) null (WandMaskField_7350 pm_f_18@@14))) o2_18@@151 f_21@@151) (= (select (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@18) o2_18@@151 f_21@@151) (select (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@151 f_21@@151)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@151 f_21@@151))
))) (forall ((o2_18@@152 T@Ref) (f_21@@152 T@Field_10910_10915) ) (!  (=> (select (|PolymorphicMapType_7839_10896_29500#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@18) null (WandMaskField_7350 pm_f_18@@14))) o2_18@@152 f_21@@152) (= (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@18) o2_18@@152 f_21@@152) (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@152 f_21@@152)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@152 f_21@@152))
))) (forall ((o2_18@@153 T@Ref) (f_21@@153 T@Field_10927_10928) ) (!  (=> (select (|PolymorphicMapType_7839_10896_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@18) null (WandMaskField_7350 pm_f_18@@14))) o2_18@@153 f_21@@153) (= (select (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@18) o2_18@@153 f_21@@153) (select (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@153 f_21@@153)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@153 f_21@@153))
))) (forall ((o2_18@@154 T@Ref) (f_21@@154 T@Field_11967_1190) ) (!  (=> (select (|PolymorphicMapType_7839_11967_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@18) null (WandMaskField_7350 pm_f_18@@14))) o2_18@@154 f_21@@154) (= (select (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@18) o2_18@@154 f_21@@154) (select (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@154 f_21@@154)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@154 f_21@@154))
))) (forall ((o2_18@@155 T@Ref) (f_21@@155 T@Field_11967_53) ) (!  (=> (select (|PolymorphicMapType_7839_11967_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@18) null (WandMaskField_7350 pm_f_18@@14))) o2_18@@155 f_21@@155) (= (select (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@18) o2_18@@155 f_21@@155) (select (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@155 f_21@@155)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@155 f_21@@155))
))) (forall ((o2_18@@156 T@Ref) (f_21@@156 T@Field_11967_7364) ) (!  (=> (select (|PolymorphicMapType_7839_11967_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@18) null (WandMaskField_7350 pm_f_18@@14))) o2_18@@156 f_21@@156) (= (select (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@18) o2_18@@156 f_21@@156) (select (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@156 f_21@@156)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@156 f_21@@156))
))) (forall ((o2_18@@157 T@Ref) (f_21@@157 T@Field_13419_13424) ) (!  (=> (select (|PolymorphicMapType_7839_11967_30548#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@18) null (WandMaskField_7350 pm_f_18@@14))) o2_18@@157 f_21@@157) (= (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@18) o2_18@@157 f_21@@157) (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@157 f_21@@157)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@157 f_21@@157))
))) (forall ((o2_18@@158 T@Ref) (f_21@@158 T@Field_11967_11968) ) (!  (=> (select (|PolymorphicMapType_7839_11967_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@18) null (WandMaskField_7350 pm_f_18@@14))) o2_18@@158 f_21@@158) (= (select (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@18) o2_18@@158 f_21@@158) (select (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@158 f_21@@158)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| ExhaleHeap@@14) o2_18@@158 f_21@@158))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@16) (IsWandField_7350_32122 pm_f_18@@14))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7290) (Mask@@17 T@PolymorphicMapType_7311) (x@@0 T@Ref) (y@@0 Int) ) (!  (=> (and (state Heap@@19 Mask@@17) (< AssumeFunctionsAbove 0)) (= (f2 Heap@@19 x@@0 y@@0) y@@0))
 :qid |stdinbpl.310:15|
 :skolemid |35|
 :pattern ( (state Heap@@19 Mask@@17) (f2 Heap@@19 x@@0 y@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@20 T@PolymorphicMapType_7290) (ExhaleHeap@@15 T@PolymorphicMapType_7290) (Mask@@18 T@PolymorphicMapType_7311) (o_39 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@18) (=> (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@20) o_39 $allocated) (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| ExhaleHeap@@15) o_39 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@18) (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| ExhaleHeap@@15) o_39 $allocated))
)))
(assert (forall ((p T@Field_11967_11968) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11967_11967 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11967_11967 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_10927_10928) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_10896_10896 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10896_10896 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_10702_10703) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_10677_10677 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10677_10677 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_7350_10703) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_7350_7350 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7350_7350 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert  (not (IsPredicateField_4253_1683 v_35)))
(assert  (not (IsWandField_4253_1683 v_35)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_7290) (ExhaleHeap@@16 T@PolymorphicMapType_7290) (Mask@@19 T@PolymorphicMapType_7311) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@19) (succHeap Heap@@21 ExhaleHeap@@16))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@19))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_7311) (o_2@@19 T@Ref) (f_4@@19 T@Field_10910_10915) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_7311_4195_42221#PolymorphicMapType_7311| Mask@@20) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_4195_46811 f_4@@19))) (not (IsWandField_4195_46827 f_4@@19))) (<= (select (|PolymorphicMapType_7311_4195_42221#PolymorphicMapType_7311| Mask@@20) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_7311_4195_42221#PolymorphicMapType_7311| Mask@@20) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_7311) (o_2@@20 T@Ref) (f_4@@20 T@Field_10896_7364) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_7311_4195_7364#PolymorphicMapType_7311| Mask@@21) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_4195_7364 f_4@@20))) (not (IsWandField_4195_7364 f_4@@20))) (<= (select (|PolymorphicMapType_7311_4195_7364#PolymorphicMapType_7311| Mask@@21) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_7311_4195_7364#PolymorphicMapType_7311| Mask@@21) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_7311) (o_2@@21 T@Ref) (f_4@@21 T@Field_10896_53) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_7311_4195_53#PolymorphicMapType_7311| Mask@@22) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_4195_53 f_4@@21))) (not (IsWandField_4195_53 f_4@@21))) (<= (select (|PolymorphicMapType_7311_4195_53#PolymorphicMapType_7311| Mask@@22) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_7311_4195_53#PolymorphicMapType_7311| Mask@@22) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_7311) (o_2@@22 T@Ref) (f_4@@22 T@Field_10896_1272) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_7311_4195_1272#PolymorphicMapType_7311| Mask@@23) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_4195_1272 f_4@@22))) (not (IsWandField_4195_1272 f_4@@22))) (<= (select (|PolymorphicMapType_7311_4195_1272#PolymorphicMapType_7311| Mask@@23) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_7311_4195_1272#PolymorphicMapType_7311| Mask@@23) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_7311) (o_2@@23 T@Ref) (f_4@@23 T@Field_10927_10928) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_7311_4195_4289#PolymorphicMapType_7311| Mask@@24) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_4210_4211 f_4@@23))) (not (IsWandField_4210_4211 f_4@@23))) (<= (select (|PolymorphicMapType_7311_4195_4289#PolymorphicMapType_7311| Mask@@24) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_7311_4195_4289#PolymorphicMapType_7311| Mask@@24) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_7311) (o_2@@24 T@Ref) (f_4@@24 T@Field_10688_10693) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_7311_4182_41807#PolymorphicMapType_7311| Mask@@25) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_4182_45994 f_4@@24))) (not (IsWandField_4182_46010 f_4@@24))) (<= (select (|PolymorphicMapType_7311_4182_41807#PolymorphicMapType_7311| Mask@@25) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_7311_4182_41807#PolymorphicMapType_7311| Mask@@25) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_7311) (o_2@@25 T@Ref) (f_4@@25 T@Field_10677_7364) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_7311_4182_7364#PolymorphicMapType_7311| Mask@@26) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_4182_7364 f_4@@25))) (not (IsWandField_4182_7364 f_4@@25))) (<= (select (|PolymorphicMapType_7311_4182_7364#PolymorphicMapType_7311| Mask@@26) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_7311_4182_7364#PolymorphicMapType_7311| Mask@@26) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_7311) (o_2@@26 T@Ref) (f_4@@26 T@Field_10677_53) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_7311_4182_53#PolymorphicMapType_7311| Mask@@27) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_4182_53 f_4@@26))) (not (IsWandField_4182_53 f_4@@26))) (<= (select (|PolymorphicMapType_7311_4182_53#PolymorphicMapType_7311| Mask@@27) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_7311_4182_53#PolymorphicMapType_7311| Mask@@27) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_7311) (o_2@@27 T@Ref) (f_4@@27 T@Field_10677_1190) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_7311_4182_1190#PolymorphicMapType_7311| Mask@@28) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_4182_1190 f_4@@27))) (not (IsWandField_4182_1190 f_4@@27))) (<= (select (|PolymorphicMapType_7311_4182_1190#PolymorphicMapType_7311| Mask@@28) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_7311_4182_1190#PolymorphicMapType_7311| Mask@@28) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_7311) (o_2@@28 T@Ref) (f_4@@28 T@Field_10702_10703) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_7311_4182_4289#PolymorphicMapType_7311| Mask@@29) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_4187_4188 f_4@@28))) (not (IsWandField_4187_4188 f_4@@28))) (<= (select (|PolymorphicMapType_7311_4182_4289#PolymorphicMapType_7311| Mask@@29) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_7311_4182_4289#PolymorphicMapType_7311| Mask@@29) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_7311) (o_2@@29 T@Ref) (f_4@@29 T@Field_7350_10693) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_7311_4253_41393#PolymorphicMapType_7311| Mask@@30) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_4253_45177 f_4@@29))) (not (IsWandField_4253_45193 f_4@@29))) (<= (select (|PolymorphicMapType_7311_4253_41393#PolymorphicMapType_7311| Mask@@30) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_7311_4253_41393#PolymorphicMapType_7311| Mask@@30) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_7311) (o_2@@30 T@Ref) (f_4@@30 T@Field_7363_7364) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_7311_4253_7364#PolymorphicMapType_7311| Mask@@31) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_4253_7364 f_4@@30))) (not (IsWandField_4253_7364 f_4@@30))) (<= (select (|PolymorphicMapType_7311_4253_7364#PolymorphicMapType_7311| Mask@@31) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_7311_4253_7364#PolymorphicMapType_7311| Mask@@31) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_7311) (o_2@@31 T@Ref) (f_4@@31 T@Field_7350_53) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_7311_4253_53#PolymorphicMapType_7311| Mask@@32) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_4253_53 f_4@@31))) (not (IsWandField_4253_53 f_4@@31))) (<= (select (|PolymorphicMapType_7311_4253_53#PolymorphicMapType_7311| Mask@@32) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_7311_4253_53#PolymorphicMapType_7311| Mask@@32) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_7311) (o_2@@32 T@Ref) (f_4@@32 T@Field_11683_1683) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| Mask@@33) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_4253_1683 f_4@@32))) (not (IsWandField_4253_1683 f_4@@32))) (<= (select (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| Mask@@33) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| Mask@@33) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_7311) (o_2@@33 T@Ref) (f_4@@33 T@Field_7350_10703) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_7311_4253_4289#PolymorphicMapType_7311| Mask@@34) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_7350_25436 f_4@@33))) (not (IsWandField_7350_32122 f_4@@33))) (<= (select (|PolymorphicMapType_7311_4253_4289#PolymorphicMapType_7311| Mask@@34) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_7311_4253_4289#PolymorphicMapType_7311| Mask@@34) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_7311) (o_2@@34 T@Ref) (f_4@@34 T@Field_13419_13424) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_7311_4288_40979#PolymorphicMapType_7311| Mask@@35) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_4288_44360 f_4@@34))) (not (IsWandField_4288_44376 f_4@@34))) (<= (select (|PolymorphicMapType_7311_4288_40979#PolymorphicMapType_7311| Mask@@35) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_7311_4288_40979#PolymorphicMapType_7311| Mask@@35) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_7311) (o_2@@35 T@Ref) (f_4@@35 T@Field_11967_7364) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_7311_4288_7364#PolymorphicMapType_7311| Mask@@36) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_4288_7364 f_4@@35))) (not (IsWandField_4288_7364 f_4@@35))) (<= (select (|PolymorphicMapType_7311_4288_7364#PolymorphicMapType_7311| Mask@@36) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_7311_4288_7364#PolymorphicMapType_7311| Mask@@36) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_7311) (o_2@@36 T@Ref) (f_4@@36 T@Field_11967_53) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_7311_4288_53#PolymorphicMapType_7311| Mask@@37) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_4288_53 f_4@@36))) (not (IsWandField_4288_53 f_4@@36))) (<= (select (|PolymorphicMapType_7311_4288_53#PolymorphicMapType_7311| Mask@@37) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_7311_4288_53#PolymorphicMapType_7311| Mask@@37) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_7311) (o_2@@37 T@Ref) (f_4@@37 T@Field_11967_1190) ) (!  (=> (GoodMask Mask@@38) (and (>= (select (|PolymorphicMapType_7311_4288_1683#PolymorphicMapType_7311| Mask@@38) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@38) AssumePermUpperBound) (not (IsPredicateField_4288_1683 f_4@@37))) (not (IsWandField_4288_1683 f_4@@37))) (<= (select (|PolymorphicMapType_7311_4288_1683#PolymorphicMapType_7311| Mask@@38) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@38) (select (|PolymorphicMapType_7311_4288_1683#PolymorphicMapType_7311| Mask@@38) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_7311) (o_2@@38 T@Ref) (f_4@@38 T@Field_11967_11968) ) (!  (=> (GoodMask Mask@@39) (and (>= (select (|PolymorphicMapType_7311_4288_4289#PolymorphicMapType_7311| Mask@@39) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@39) AssumePermUpperBound) (not (IsPredicateField_4288_4289 f_4@@38))) (not (IsWandField_11967_33129 f_4@@38))) (<= (select (|PolymorphicMapType_7311_4288_4289#PolymorphicMapType_7311| Mask@@39) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@39) (select (|PolymorphicMapType_7311_4288_4289#PolymorphicMapType_7311| Mask@@39) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_7311) (o_2@@39 T@Ref) (f_4@@39 T@Field_11967_11968) ) (! (= (HasDirectPerm_11967_10703 Mask@@40 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_7311_4288_4289#PolymorphicMapType_7311| Mask@@40) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11967_10703 Mask@@40 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_7311) (o_2@@40 T@Ref) (f_4@@40 T@Field_13419_13424) ) (! (= (HasDirectPerm_11967_24980 Mask@@41 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_7311_4288_40979#PolymorphicMapType_7311| Mask@@41) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11967_24980 Mask@@41 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_7311) (o_2@@41 T@Ref) (f_4@@41 T@Field_11967_1190) ) (! (= (HasDirectPerm_11967_1190 Mask@@42 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_7311_4288_1683#PolymorphicMapType_7311| Mask@@42) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11967_1190 Mask@@42 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_7311) (o_2@@42 T@Ref) (f_4@@42 T@Field_11967_7364) ) (! (= (HasDirectPerm_11967_7364 Mask@@43 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_7311_4288_7364#PolymorphicMapType_7311| Mask@@43) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11967_7364 Mask@@43 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_7311) (o_2@@43 T@Ref) (f_4@@43 T@Field_11967_53) ) (! (= (HasDirectPerm_11967_53 Mask@@44 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_7311_4288_53#PolymorphicMapType_7311| Mask@@44) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11967_53 Mask@@44 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_7311) (o_2@@44 T@Ref) (f_4@@44 T@Field_10927_10928) ) (! (= (HasDirectPerm_10896_10703 Mask@@45 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_7311_4195_4289#PolymorphicMapType_7311| Mask@@45) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10896_10703 Mask@@45 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_7311) (o_2@@45 T@Ref) (f_4@@45 T@Field_10910_10915) ) (! (= (HasDirectPerm_10896_23845 Mask@@46 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_7311_4195_42221#PolymorphicMapType_7311| Mask@@46) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10896_23845 Mask@@46 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_7311) (o_2@@46 T@Ref) (f_4@@46 T@Field_10896_1272) ) (! (= (HasDirectPerm_10896_1190 Mask@@47 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_7311_4195_1272#PolymorphicMapType_7311| Mask@@47) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10896_1190 Mask@@47 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_7311) (o_2@@47 T@Ref) (f_4@@47 T@Field_10896_7364) ) (! (= (HasDirectPerm_10896_7364 Mask@@48 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_7311_4195_7364#PolymorphicMapType_7311| Mask@@48) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10896_7364 Mask@@48 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_7311) (o_2@@48 T@Ref) (f_4@@48 T@Field_10896_53) ) (! (= (HasDirectPerm_10896_53 Mask@@49 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_7311_4195_53#PolymorphicMapType_7311| Mask@@49) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10896_53 Mask@@49 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_7311) (o_2@@49 T@Ref) (f_4@@49 T@Field_10702_10703) ) (! (= (HasDirectPerm_10677_10703 Mask@@50 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_7311_4182_4289#PolymorphicMapType_7311| Mask@@50) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10677_10703 Mask@@50 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_7311) (o_2@@50 T@Ref) (f_4@@50 T@Field_10688_10693) ) (! (= (HasDirectPerm_10677_22711 Mask@@51 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_7311_4182_41807#PolymorphicMapType_7311| Mask@@51) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10677_22711 Mask@@51 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_7311) (o_2@@51 T@Ref) (f_4@@51 T@Field_10677_1190) ) (! (= (HasDirectPerm_10677_1190 Mask@@52 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_7311_4182_1190#PolymorphicMapType_7311| Mask@@52) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10677_1190 Mask@@52 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_7311) (o_2@@52 T@Ref) (f_4@@52 T@Field_10677_7364) ) (! (= (HasDirectPerm_10677_7364 Mask@@53 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_7311_4182_7364#PolymorphicMapType_7311| Mask@@53) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10677_7364 Mask@@53 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_7311) (o_2@@53 T@Ref) (f_4@@53 T@Field_10677_53) ) (! (= (HasDirectPerm_10677_53 Mask@@54 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_7311_4182_53#PolymorphicMapType_7311| Mask@@54) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10677_53 Mask@@54 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_7311) (o_2@@54 T@Ref) (f_4@@54 T@Field_7350_10703) ) (! (= (HasDirectPerm_7350_10703 Mask@@55 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_7311_4253_4289#PolymorphicMapType_7311| Mask@@55) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7350_10703 Mask@@55 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_7311) (o_2@@55 T@Ref) (f_4@@55 T@Field_7350_10693) ) (! (= (HasDirectPerm_7350_21533 Mask@@56 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_7311_4253_41393#PolymorphicMapType_7311| Mask@@56) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7350_21533 Mask@@56 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_7311) (o_2@@56 T@Ref) (f_4@@56 T@Field_11683_1683) ) (! (= (HasDirectPerm_7350_1190 Mask@@57 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| Mask@@57) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7350_1190 Mask@@57 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_7311) (o_2@@57 T@Ref) (f_4@@57 T@Field_7363_7364) ) (! (= (HasDirectPerm_7350_7364 Mask@@58 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_7311_4253_7364#PolymorphicMapType_7311| Mask@@58) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7350_7364 Mask@@58 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_7311) (o_2@@58 T@Ref) (f_4@@58 T@Field_7350_53) ) (! (= (HasDirectPerm_7350_53 Mask@@59 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_7311_4253_53#PolymorphicMapType_7311| Mask@@59) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7350_53 Mask@@59 o_2@@58 f_4@@58))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 Real) (arg3@@0 T@Ref) (arg4@@0 Real) (arg5@@0 Int) (arg6@@0 T@Ref) (arg1_2 T@Ref) (arg2_2 Real) (arg3_2 T@Ref) (arg4_2 Real) (arg5_2 Int) (arg6_2 T@Ref) ) (!  (=> (= (wand_1 arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0) (wand_1 arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2)) (and (= arg1@@0 arg1_2) (and (= arg2@@0 arg2_2) (and (= arg3@@0 arg3_2) (and (= arg4@@0 arg4_2) (and (= arg5@@0 arg5_2) (= arg6@@0 arg6_2)))))))
 :qid |stdinbpl.223:15|
 :skolemid |28|
 :pattern ( (wand_1 arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0) (wand_1 arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_7290) (ExhaleHeap@@17 T@PolymorphicMapType_7290) (Mask@@60 T@PolymorphicMapType_7311) (o_39@@0 T@Ref) (f_21@@159 T@Field_11967_11968) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@60) (=> (HasDirectPerm_11967_10703 Mask@@60 o_39@@0 f_21@@159) (= (select (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@22) o_39@@0 f_21@@159) (select (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| ExhaleHeap@@17) o_39@@0 f_21@@159))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@60) (select (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| ExhaleHeap@@17) o_39@@0 f_21@@159))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_7290) (ExhaleHeap@@18 T@PolymorphicMapType_7290) (Mask@@61 T@PolymorphicMapType_7311) (o_39@@1 T@Ref) (f_21@@160 T@Field_13419_13424) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@61) (=> (HasDirectPerm_11967_24980 Mask@@61 o_39@@1 f_21@@160) (= (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@23) o_39@@1 f_21@@160) (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| ExhaleHeap@@18) o_39@@1 f_21@@160))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@61) (select (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| ExhaleHeap@@18) o_39@@1 f_21@@160))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_7290) (ExhaleHeap@@19 T@PolymorphicMapType_7290) (Mask@@62 T@PolymorphicMapType_7311) (o_39@@2 T@Ref) (f_21@@161 T@Field_11967_1190) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@62) (=> (HasDirectPerm_11967_1190 Mask@@62 o_39@@2 f_21@@161) (= (select (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@24) o_39@@2 f_21@@161) (select (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| ExhaleHeap@@19) o_39@@2 f_21@@161))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@62) (select (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| ExhaleHeap@@19) o_39@@2 f_21@@161))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_7290) (ExhaleHeap@@20 T@PolymorphicMapType_7290) (Mask@@63 T@PolymorphicMapType_7311) (o_39@@3 T@Ref) (f_21@@162 T@Field_11967_7364) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@63) (=> (HasDirectPerm_11967_7364 Mask@@63 o_39@@3 f_21@@162) (= (select (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@25) o_39@@3 f_21@@162) (select (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| ExhaleHeap@@20) o_39@@3 f_21@@162))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@63) (select (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| ExhaleHeap@@20) o_39@@3 f_21@@162))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_7290) (ExhaleHeap@@21 T@PolymorphicMapType_7290) (Mask@@64 T@PolymorphicMapType_7311) (o_39@@4 T@Ref) (f_21@@163 T@Field_11967_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@64) (=> (HasDirectPerm_11967_53 Mask@@64 o_39@@4 f_21@@163) (= (select (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@26) o_39@@4 f_21@@163) (select (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| ExhaleHeap@@21) o_39@@4 f_21@@163))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@64) (select (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| ExhaleHeap@@21) o_39@@4 f_21@@163))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_7290) (ExhaleHeap@@22 T@PolymorphicMapType_7290) (Mask@@65 T@PolymorphicMapType_7311) (o_39@@5 T@Ref) (f_21@@164 T@Field_10927_10928) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@22 Mask@@65) (=> (HasDirectPerm_10896_10703 Mask@@65 o_39@@5 f_21@@164) (= (select (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@27) o_39@@5 f_21@@164) (select (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| ExhaleHeap@@22) o_39@@5 f_21@@164))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@22 Mask@@65) (select (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| ExhaleHeap@@22) o_39@@5 f_21@@164))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_7290) (ExhaleHeap@@23 T@PolymorphicMapType_7290) (Mask@@66 T@PolymorphicMapType_7311) (o_39@@6 T@Ref) (f_21@@165 T@Field_10910_10915) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@23 Mask@@66) (=> (HasDirectPerm_10896_23845 Mask@@66 o_39@@6 f_21@@165) (= (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@28) o_39@@6 f_21@@165) (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| ExhaleHeap@@23) o_39@@6 f_21@@165))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@23 Mask@@66) (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| ExhaleHeap@@23) o_39@@6 f_21@@165))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_7290) (ExhaleHeap@@24 T@PolymorphicMapType_7290) (Mask@@67 T@PolymorphicMapType_7311) (o_39@@7 T@Ref) (f_21@@166 T@Field_10896_1272) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@24 Mask@@67) (=> (HasDirectPerm_10896_1190 Mask@@67 o_39@@7 f_21@@166) (= (select (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@29) o_39@@7 f_21@@166) (select (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| ExhaleHeap@@24) o_39@@7 f_21@@166))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@24 Mask@@67) (select (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| ExhaleHeap@@24) o_39@@7 f_21@@166))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_7290) (ExhaleHeap@@25 T@PolymorphicMapType_7290) (Mask@@68 T@PolymorphicMapType_7311) (o_39@@8 T@Ref) (f_21@@167 T@Field_10896_7364) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@25 Mask@@68) (=> (HasDirectPerm_10896_7364 Mask@@68 o_39@@8 f_21@@167) (= (select (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@30) o_39@@8 f_21@@167) (select (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| ExhaleHeap@@25) o_39@@8 f_21@@167))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@25 Mask@@68) (select (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| ExhaleHeap@@25) o_39@@8 f_21@@167))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_7290) (ExhaleHeap@@26 T@PolymorphicMapType_7290) (Mask@@69 T@PolymorphicMapType_7311) (o_39@@9 T@Ref) (f_21@@168 T@Field_10896_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@26 Mask@@69) (=> (HasDirectPerm_10896_53 Mask@@69 o_39@@9 f_21@@168) (= (select (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@31) o_39@@9 f_21@@168) (select (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| ExhaleHeap@@26) o_39@@9 f_21@@168))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@26 Mask@@69) (select (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| ExhaleHeap@@26) o_39@@9 f_21@@168))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_7290) (ExhaleHeap@@27 T@PolymorphicMapType_7290) (Mask@@70 T@PolymorphicMapType_7311) (o_39@@10 T@Ref) (f_21@@169 T@Field_10702_10703) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@27 Mask@@70) (=> (HasDirectPerm_10677_10703 Mask@@70 o_39@@10 f_21@@169) (= (select (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@32) o_39@@10 f_21@@169) (select (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| ExhaleHeap@@27) o_39@@10 f_21@@169))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@27 Mask@@70) (select (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| ExhaleHeap@@27) o_39@@10 f_21@@169))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_7290) (ExhaleHeap@@28 T@PolymorphicMapType_7290) (Mask@@71 T@PolymorphicMapType_7311) (o_39@@11 T@Ref) (f_21@@170 T@Field_10688_10693) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@28 Mask@@71) (=> (HasDirectPerm_10677_22711 Mask@@71 o_39@@11 f_21@@170) (= (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@33) o_39@@11 f_21@@170) (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| ExhaleHeap@@28) o_39@@11 f_21@@170))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@28 Mask@@71) (select (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| ExhaleHeap@@28) o_39@@11 f_21@@170))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_7290) (ExhaleHeap@@29 T@PolymorphicMapType_7290) (Mask@@72 T@PolymorphicMapType_7311) (o_39@@12 T@Ref) (f_21@@171 T@Field_10677_1190) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@29 Mask@@72) (=> (HasDirectPerm_10677_1190 Mask@@72 o_39@@12 f_21@@171) (= (select (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@34) o_39@@12 f_21@@171) (select (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| ExhaleHeap@@29) o_39@@12 f_21@@171))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@29 Mask@@72) (select (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| ExhaleHeap@@29) o_39@@12 f_21@@171))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_7290) (ExhaleHeap@@30 T@PolymorphicMapType_7290) (Mask@@73 T@PolymorphicMapType_7311) (o_39@@13 T@Ref) (f_21@@172 T@Field_10677_7364) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@30 Mask@@73) (=> (HasDirectPerm_10677_7364 Mask@@73 o_39@@13 f_21@@172) (= (select (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@35) o_39@@13 f_21@@172) (select (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| ExhaleHeap@@30) o_39@@13 f_21@@172))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@30 Mask@@73) (select (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| ExhaleHeap@@30) o_39@@13 f_21@@172))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_7290) (ExhaleHeap@@31 T@PolymorphicMapType_7290) (Mask@@74 T@PolymorphicMapType_7311) (o_39@@14 T@Ref) (f_21@@173 T@Field_10677_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@31 Mask@@74) (=> (HasDirectPerm_10677_53 Mask@@74 o_39@@14 f_21@@173) (= (select (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@36) o_39@@14 f_21@@173) (select (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| ExhaleHeap@@31) o_39@@14 f_21@@173))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@31 Mask@@74) (select (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| ExhaleHeap@@31) o_39@@14 f_21@@173))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_7290) (ExhaleHeap@@32 T@PolymorphicMapType_7290) (Mask@@75 T@PolymorphicMapType_7311) (o_39@@15 T@Ref) (f_21@@174 T@Field_7350_10703) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@32 Mask@@75) (=> (HasDirectPerm_7350_10703 Mask@@75 o_39@@15 f_21@@174) (= (select (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@37) o_39@@15 f_21@@174) (select (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| ExhaleHeap@@32) o_39@@15 f_21@@174))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@32 Mask@@75) (select (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| ExhaleHeap@@32) o_39@@15 f_21@@174))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_7290) (ExhaleHeap@@33 T@PolymorphicMapType_7290) (Mask@@76 T@PolymorphicMapType_7311) (o_39@@16 T@Ref) (f_21@@175 T@Field_7350_10693) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@33 Mask@@76) (=> (HasDirectPerm_7350_21533 Mask@@76 o_39@@16 f_21@@175) (= (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@38) o_39@@16 f_21@@175) (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| ExhaleHeap@@33) o_39@@16 f_21@@175))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@33 Mask@@76) (select (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| ExhaleHeap@@33) o_39@@16 f_21@@175))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_7290) (ExhaleHeap@@34 T@PolymorphicMapType_7290) (Mask@@77 T@PolymorphicMapType_7311) (o_39@@17 T@Ref) (f_21@@176 T@Field_11683_1683) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@34 Mask@@77) (=> (HasDirectPerm_7350_1190 Mask@@77 o_39@@17 f_21@@176) (= (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@39) o_39@@17 f_21@@176) (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| ExhaleHeap@@34) o_39@@17 f_21@@176))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@34 Mask@@77) (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| ExhaleHeap@@34) o_39@@17 f_21@@176))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_7290) (ExhaleHeap@@35 T@PolymorphicMapType_7290) (Mask@@78 T@PolymorphicMapType_7311) (o_39@@18 T@Ref) (f_21@@177 T@Field_7363_7364) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@35 Mask@@78) (=> (HasDirectPerm_7350_7364 Mask@@78 o_39@@18 f_21@@177) (= (select (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@40) o_39@@18 f_21@@177) (select (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| ExhaleHeap@@35) o_39@@18 f_21@@177))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@35 Mask@@78) (select (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| ExhaleHeap@@35) o_39@@18 f_21@@177))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_7290) (ExhaleHeap@@36 T@PolymorphicMapType_7290) (Mask@@79 T@PolymorphicMapType_7311) (o_39@@19 T@Ref) (f_21@@178 T@Field_7350_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@36 Mask@@79) (=> (HasDirectPerm_7350_53 Mask@@79 o_39@@19 f_21@@178) (= (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@41) o_39@@19 f_21@@178) (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| ExhaleHeap@@36) o_39@@19 f_21@@178))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@36 Mask@@79) (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| ExhaleHeap@@36) o_39@@19 f_21@@178))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_10910_10915) ) (! (= (select (|PolymorphicMapType_7311_4195_42221#PolymorphicMapType_7311| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7311_4195_42221#PolymorphicMapType_7311| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_10896_7364) ) (! (= (select (|PolymorphicMapType_7311_4195_7364#PolymorphicMapType_7311| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7311_4195_7364#PolymorphicMapType_7311| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_10896_53) ) (! (= (select (|PolymorphicMapType_7311_4195_53#PolymorphicMapType_7311| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7311_4195_53#PolymorphicMapType_7311| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_10896_1272) ) (! (= (select (|PolymorphicMapType_7311_4195_1272#PolymorphicMapType_7311| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7311_4195_1272#PolymorphicMapType_7311| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_10927_10928) ) (! (= (select (|PolymorphicMapType_7311_4195_4289#PolymorphicMapType_7311| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7311_4195_4289#PolymorphicMapType_7311| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_10688_10693) ) (! (= (select (|PolymorphicMapType_7311_4182_41807#PolymorphicMapType_7311| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7311_4182_41807#PolymorphicMapType_7311| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_10677_7364) ) (! (= (select (|PolymorphicMapType_7311_4182_7364#PolymorphicMapType_7311| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7311_4182_7364#PolymorphicMapType_7311| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_10677_53) ) (! (= (select (|PolymorphicMapType_7311_4182_53#PolymorphicMapType_7311| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7311_4182_53#PolymorphicMapType_7311| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_10677_1190) ) (! (= (select (|PolymorphicMapType_7311_4182_1190#PolymorphicMapType_7311| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7311_4182_1190#PolymorphicMapType_7311| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_10702_10703) ) (! (= (select (|PolymorphicMapType_7311_4182_4289#PolymorphicMapType_7311| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7311_4182_4289#PolymorphicMapType_7311| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_7350_10693) ) (! (= (select (|PolymorphicMapType_7311_4253_41393#PolymorphicMapType_7311| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7311_4253_41393#PolymorphicMapType_7311| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_7363_7364) ) (! (= (select (|PolymorphicMapType_7311_4253_7364#PolymorphicMapType_7311| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7311_4253_7364#PolymorphicMapType_7311| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((o_2@@71 T@Ref) (f_4@@71 T@Field_7350_53) ) (! (= (select (|PolymorphicMapType_7311_4253_53#PolymorphicMapType_7311| ZeroMask) o_2@@71 f_4@@71) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7311_4253_53#PolymorphicMapType_7311| ZeroMask) o_2@@71 f_4@@71))
)))
(assert (forall ((o_2@@72 T@Ref) (f_4@@72 T@Field_11683_1683) ) (! (= (select (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| ZeroMask) o_2@@72 f_4@@72) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| ZeroMask) o_2@@72 f_4@@72))
)))
(assert (forall ((o_2@@73 T@Ref) (f_4@@73 T@Field_7350_10703) ) (! (= (select (|PolymorphicMapType_7311_4253_4289#PolymorphicMapType_7311| ZeroMask) o_2@@73 f_4@@73) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7311_4253_4289#PolymorphicMapType_7311| ZeroMask) o_2@@73 f_4@@73))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_13419_13424) ) (! (= (select (|PolymorphicMapType_7311_4288_40979#PolymorphicMapType_7311| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7311_4288_40979#PolymorphicMapType_7311| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_11967_7364) ) (! (= (select (|PolymorphicMapType_7311_4288_7364#PolymorphicMapType_7311| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7311_4288_7364#PolymorphicMapType_7311| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_11967_53) ) (! (= (select (|PolymorphicMapType_7311_4288_53#PolymorphicMapType_7311| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7311_4288_53#PolymorphicMapType_7311| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_11967_1190) ) (! (= (select (|PolymorphicMapType_7311_4288_1683#PolymorphicMapType_7311| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7311_4288_1683#PolymorphicMapType_7311| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_11967_11968) ) (! (= (select (|PolymorphicMapType_7311_4288_4289#PolymorphicMapType_7311| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7311_4288_4289#PolymorphicMapType_7311| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_7290) (x@@1 T@Ref) (y@@1 Int) ) (!  (and (= (f2 Heap@@42 x@@1 y@@1) (|f2'| Heap@@42 x@@1 y@@1)) (dummyFunction_2166 (|f2#triggerStateless| x@@1 y@@1)))
 :qid |stdinbpl.300:15|
 :skolemid |33|
 :pattern ( (f2 Heap@@42 x@@1 y@@1))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 Real) (arg3@@1 T@Ref) (arg4@@1 Real) (arg5@@1 Int) (arg6@@1 T@Ref) ) (! (= (getPredWandId_4195_1272 (wand_1 arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1)) 2)
 :qid |stdinbpl.219:15|
 :skolemid |27|
 :pattern ( (wand_1 arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7311) (SummandMask1 T@PolymorphicMapType_7311) (SummandMask2 T@PolymorphicMapType_7311) (o_2@@79 T@Ref) (f_4@@79 T@Field_10910_10915) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7311_4195_42221#PolymorphicMapType_7311| ResultMask) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_7311_4195_42221#PolymorphicMapType_7311| SummandMask1) o_2@@79 f_4@@79) (select (|PolymorphicMapType_7311_4195_42221#PolymorphicMapType_7311| SummandMask2) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7311_4195_42221#PolymorphicMapType_7311| ResultMask) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7311_4195_42221#PolymorphicMapType_7311| SummandMask1) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7311_4195_42221#PolymorphicMapType_7311| SummandMask2) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7311) (SummandMask1@@0 T@PolymorphicMapType_7311) (SummandMask2@@0 T@PolymorphicMapType_7311) (o_2@@80 T@Ref) (f_4@@80 T@Field_10896_7364) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7311_4195_7364#PolymorphicMapType_7311| ResultMask@@0) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_7311_4195_7364#PolymorphicMapType_7311| SummandMask1@@0) o_2@@80 f_4@@80) (select (|PolymorphicMapType_7311_4195_7364#PolymorphicMapType_7311| SummandMask2@@0) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7311_4195_7364#PolymorphicMapType_7311| ResultMask@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7311_4195_7364#PolymorphicMapType_7311| SummandMask1@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7311_4195_7364#PolymorphicMapType_7311| SummandMask2@@0) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7311) (SummandMask1@@1 T@PolymorphicMapType_7311) (SummandMask2@@1 T@PolymorphicMapType_7311) (o_2@@81 T@Ref) (f_4@@81 T@Field_10896_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7311_4195_53#PolymorphicMapType_7311| ResultMask@@1) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_7311_4195_53#PolymorphicMapType_7311| SummandMask1@@1) o_2@@81 f_4@@81) (select (|PolymorphicMapType_7311_4195_53#PolymorphicMapType_7311| SummandMask2@@1) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7311_4195_53#PolymorphicMapType_7311| ResultMask@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7311_4195_53#PolymorphicMapType_7311| SummandMask1@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7311_4195_53#PolymorphicMapType_7311| SummandMask2@@1) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7311) (SummandMask1@@2 T@PolymorphicMapType_7311) (SummandMask2@@2 T@PolymorphicMapType_7311) (o_2@@82 T@Ref) (f_4@@82 T@Field_10896_1272) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7311_4195_1272#PolymorphicMapType_7311| ResultMask@@2) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_7311_4195_1272#PolymorphicMapType_7311| SummandMask1@@2) o_2@@82 f_4@@82) (select (|PolymorphicMapType_7311_4195_1272#PolymorphicMapType_7311| SummandMask2@@2) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7311_4195_1272#PolymorphicMapType_7311| ResultMask@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7311_4195_1272#PolymorphicMapType_7311| SummandMask1@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7311_4195_1272#PolymorphicMapType_7311| SummandMask2@@2) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7311) (SummandMask1@@3 T@PolymorphicMapType_7311) (SummandMask2@@3 T@PolymorphicMapType_7311) (o_2@@83 T@Ref) (f_4@@83 T@Field_10927_10928) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7311_4195_4289#PolymorphicMapType_7311| ResultMask@@3) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_7311_4195_4289#PolymorphicMapType_7311| SummandMask1@@3) o_2@@83 f_4@@83) (select (|PolymorphicMapType_7311_4195_4289#PolymorphicMapType_7311| SummandMask2@@3) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7311_4195_4289#PolymorphicMapType_7311| ResultMask@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7311_4195_4289#PolymorphicMapType_7311| SummandMask1@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7311_4195_4289#PolymorphicMapType_7311| SummandMask2@@3) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_7311) (SummandMask1@@4 T@PolymorphicMapType_7311) (SummandMask2@@4 T@PolymorphicMapType_7311) (o_2@@84 T@Ref) (f_4@@84 T@Field_10688_10693) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_7311_4182_41807#PolymorphicMapType_7311| ResultMask@@4) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_7311_4182_41807#PolymorphicMapType_7311| SummandMask1@@4) o_2@@84 f_4@@84) (select (|PolymorphicMapType_7311_4182_41807#PolymorphicMapType_7311| SummandMask2@@4) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7311_4182_41807#PolymorphicMapType_7311| ResultMask@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7311_4182_41807#PolymorphicMapType_7311| SummandMask1@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7311_4182_41807#PolymorphicMapType_7311| SummandMask2@@4) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_7311) (SummandMask1@@5 T@PolymorphicMapType_7311) (SummandMask2@@5 T@PolymorphicMapType_7311) (o_2@@85 T@Ref) (f_4@@85 T@Field_10677_7364) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_7311_4182_7364#PolymorphicMapType_7311| ResultMask@@5) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_7311_4182_7364#PolymorphicMapType_7311| SummandMask1@@5) o_2@@85 f_4@@85) (select (|PolymorphicMapType_7311_4182_7364#PolymorphicMapType_7311| SummandMask2@@5) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7311_4182_7364#PolymorphicMapType_7311| ResultMask@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7311_4182_7364#PolymorphicMapType_7311| SummandMask1@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7311_4182_7364#PolymorphicMapType_7311| SummandMask2@@5) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_7311) (SummandMask1@@6 T@PolymorphicMapType_7311) (SummandMask2@@6 T@PolymorphicMapType_7311) (o_2@@86 T@Ref) (f_4@@86 T@Field_10677_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_7311_4182_53#PolymorphicMapType_7311| ResultMask@@6) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_7311_4182_53#PolymorphicMapType_7311| SummandMask1@@6) o_2@@86 f_4@@86) (select (|PolymorphicMapType_7311_4182_53#PolymorphicMapType_7311| SummandMask2@@6) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7311_4182_53#PolymorphicMapType_7311| ResultMask@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7311_4182_53#PolymorphicMapType_7311| SummandMask1@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7311_4182_53#PolymorphicMapType_7311| SummandMask2@@6) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_7311) (SummandMask1@@7 T@PolymorphicMapType_7311) (SummandMask2@@7 T@PolymorphicMapType_7311) (o_2@@87 T@Ref) (f_4@@87 T@Field_10677_1190) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_7311_4182_1190#PolymorphicMapType_7311| ResultMask@@7) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_7311_4182_1190#PolymorphicMapType_7311| SummandMask1@@7) o_2@@87 f_4@@87) (select (|PolymorphicMapType_7311_4182_1190#PolymorphicMapType_7311| SummandMask2@@7) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7311_4182_1190#PolymorphicMapType_7311| ResultMask@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7311_4182_1190#PolymorphicMapType_7311| SummandMask1@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7311_4182_1190#PolymorphicMapType_7311| SummandMask2@@7) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_7311) (SummandMask1@@8 T@PolymorphicMapType_7311) (SummandMask2@@8 T@PolymorphicMapType_7311) (o_2@@88 T@Ref) (f_4@@88 T@Field_10702_10703) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_7311_4182_4289#PolymorphicMapType_7311| ResultMask@@8) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_7311_4182_4289#PolymorphicMapType_7311| SummandMask1@@8) o_2@@88 f_4@@88) (select (|PolymorphicMapType_7311_4182_4289#PolymorphicMapType_7311| SummandMask2@@8) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7311_4182_4289#PolymorphicMapType_7311| ResultMask@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7311_4182_4289#PolymorphicMapType_7311| SummandMask1@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7311_4182_4289#PolymorphicMapType_7311| SummandMask2@@8) o_2@@88 f_4@@88))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_7311) (SummandMask1@@9 T@PolymorphicMapType_7311) (SummandMask2@@9 T@PolymorphicMapType_7311) (o_2@@89 T@Ref) (f_4@@89 T@Field_7350_10693) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_7311_4253_41393#PolymorphicMapType_7311| ResultMask@@9) o_2@@89 f_4@@89) (+ (select (|PolymorphicMapType_7311_4253_41393#PolymorphicMapType_7311| SummandMask1@@9) o_2@@89 f_4@@89) (select (|PolymorphicMapType_7311_4253_41393#PolymorphicMapType_7311| SummandMask2@@9) o_2@@89 f_4@@89))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_7311_4253_41393#PolymorphicMapType_7311| ResultMask@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_7311_4253_41393#PolymorphicMapType_7311| SummandMask1@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_7311_4253_41393#PolymorphicMapType_7311| SummandMask2@@9) o_2@@89 f_4@@89))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_7311) (SummandMask1@@10 T@PolymorphicMapType_7311) (SummandMask2@@10 T@PolymorphicMapType_7311) (o_2@@90 T@Ref) (f_4@@90 T@Field_7363_7364) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_7311_4253_7364#PolymorphicMapType_7311| ResultMask@@10) o_2@@90 f_4@@90) (+ (select (|PolymorphicMapType_7311_4253_7364#PolymorphicMapType_7311| SummandMask1@@10) o_2@@90 f_4@@90) (select (|PolymorphicMapType_7311_4253_7364#PolymorphicMapType_7311| SummandMask2@@10) o_2@@90 f_4@@90))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_7311_4253_7364#PolymorphicMapType_7311| ResultMask@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_7311_4253_7364#PolymorphicMapType_7311| SummandMask1@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_7311_4253_7364#PolymorphicMapType_7311| SummandMask2@@10) o_2@@90 f_4@@90))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_7311) (SummandMask1@@11 T@PolymorphicMapType_7311) (SummandMask2@@11 T@PolymorphicMapType_7311) (o_2@@91 T@Ref) (f_4@@91 T@Field_7350_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_7311_4253_53#PolymorphicMapType_7311| ResultMask@@11) o_2@@91 f_4@@91) (+ (select (|PolymorphicMapType_7311_4253_53#PolymorphicMapType_7311| SummandMask1@@11) o_2@@91 f_4@@91) (select (|PolymorphicMapType_7311_4253_53#PolymorphicMapType_7311| SummandMask2@@11) o_2@@91 f_4@@91))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_7311_4253_53#PolymorphicMapType_7311| ResultMask@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_7311_4253_53#PolymorphicMapType_7311| SummandMask1@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_7311_4253_53#PolymorphicMapType_7311| SummandMask2@@11) o_2@@91 f_4@@91))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_7311) (SummandMask1@@12 T@PolymorphicMapType_7311) (SummandMask2@@12 T@PolymorphicMapType_7311) (o_2@@92 T@Ref) (f_4@@92 T@Field_11683_1683) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| ResultMask@@12) o_2@@92 f_4@@92) (+ (select (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| SummandMask1@@12) o_2@@92 f_4@@92) (select (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| SummandMask2@@12) o_2@@92 f_4@@92))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| ResultMask@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| SummandMask1@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| SummandMask2@@12) o_2@@92 f_4@@92))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_7311) (SummandMask1@@13 T@PolymorphicMapType_7311) (SummandMask2@@13 T@PolymorphicMapType_7311) (o_2@@93 T@Ref) (f_4@@93 T@Field_7350_10703) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_7311_4253_4289#PolymorphicMapType_7311| ResultMask@@13) o_2@@93 f_4@@93) (+ (select (|PolymorphicMapType_7311_4253_4289#PolymorphicMapType_7311| SummandMask1@@13) o_2@@93 f_4@@93) (select (|PolymorphicMapType_7311_4253_4289#PolymorphicMapType_7311| SummandMask2@@13) o_2@@93 f_4@@93))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_7311_4253_4289#PolymorphicMapType_7311| ResultMask@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_7311_4253_4289#PolymorphicMapType_7311| SummandMask1@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_7311_4253_4289#PolymorphicMapType_7311| SummandMask2@@13) o_2@@93 f_4@@93))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_7311) (SummandMask1@@14 T@PolymorphicMapType_7311) (SummandMask2@@14 T@PolymorphicMapType_7311) (o_2@@94 T@Ref) (f_4@@94 T@Field_13419_13424) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_7311_4288_40979#PolymorphicMapType_7311| ResultMask@@14) o_2@@94 f_4@@94) (+ (select (|PolymorphicMapType_7311_4288_40979#PolymorphicMapType_7311| SummandMask1@@14) o_2@@94 f_4@@94) (select (|PolymorphicMapType_7311_4288_40979#PolymorphicMapType_7311| SummandMask2@@14) o_2@@94 f_4@@94))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_7311_4288_40979#PolymorphicMapType_7311| ResultMask@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_7311_4288_40979#PolymorphicMapType_7311| SummandMask1@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_7311_4288_40979#PolymorphicMapType_7311| SummandMask2@@14) o_2@@94 f_4@@94))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_7311) (SummandMask1@@15 T@PolymorphicMapType_7311) (SummandMask2@@15 T@PolymorphicMapType_7311) (o_2@@95 T@Ref) (f_4@@95 T@Field_11967_7364) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_7311_4288_7364#PolymorphicMapType_7311| ResultMask@@15) o_2@@95 f_4@@95) (+ (select (|PolymorphicMapType_7311_4288_7364#PolymorphicMapType_7311| SummandMask1@@15) o_2@@95 f_4@@95) (select (|PolymorphicMapType_7311_4288_7364#PolymorphicMapType_7311| SummandMask2@@15) o_2@@95 f_4@@95))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_7311_4288_7364#PolymorphicMapType_7311| ResultMask@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_7311_4288_7364#PolymorphicMapType_7311| SummandMask1@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_7311_4288_7364#PolymorphicMapType_7311| SummandMask2@@15) o_2@@95 f_4@@95))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_7311) (SummandMask1@@16 T@PolymorphicMapType_7311) (SummandMask2@@16 T@PolymorphicMapType_7311) (o_2@@96 T@Ref) (f_4@@96 T@Field_11967_53) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_7311_4288_53#PolymorphicMapType_7311| ResultMask@@16) o_2@@96 f_4@@96) (+ (select (|PolymorphicMapType_7311_4288_53#PolymorphicMapType_7311| SummandMask1@@16) o_2@@96 f_4@@96) (select (|PolymorphicMapType_7311_4288_53#PolymorphicMapType_7311| SummandMask2@@16) o_2@@96 f_4@@96))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_7311_4288_53#PolymorphicMapType_7311| ResultMask@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_7311_4288_53#PolymorphicMapType_7311| SummandMask1@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_7311_4288_53#PolymorphicMapType_7311| SummandMask2@@16) o_2@@96 f_4@@96))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_7311) (SummandMask1@@17 T@PolymorphicMapType_7311) (SummandMask2@@17 T@PolymorphicMapType_7311) (o_2@@97 T@Ref) (f_4@@97 T@Field_11967_1190) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_7311_4288_1683#PolymorphicMapType_7311| ResultMask@@17) o_2@@97 f_4@@97) (+ (select (|PolymorphicMapType_7311_4288_1683#PolymorphicMapType_7311| SummandMask1@@17) o_2@@97 f_4@@97) (select (|PolymorphicMapType_7311_4288_1683#PolymorphicMapType_7311| SummandMask2@@17) o_2@@97 f_4@@97))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_7311_4288_1683#PolymorphicMapType_7311| ResultMask@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_7311_4288_1683#PolymorphicMapType_7311| SummandMask1@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_7311_4288_1683#PolymorphicMapType_7311| SummandMask2@@17) o_2@@97 f_4@@97))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_7311) (SummandMask1@@18 T@PolymorphicMapType_7311) (SummandMask2@@18 T@PolymorphicMapType_7311) (o_2@@98 T@Ref) (f_4@@98 T@Field_11967_11968) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_7311_4288_4289#PolymorphicMapType_7311| ResultMask@@18) o_2@@98 f_4@@98) (+ (select (|PolymorphicMapType_7311_4288_4289#PolymorphicMapType_7311| SummandMask1@@18) o_2@@98 f_4@@98) (select (|PolymorphicMapType_7311_4288_4289#PolymorphicMapType_7311| SummandMask2@@18) o_2@@98 f_4@@98))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_7311_4288_4289#PolymorphicMapType_7311| ResultMask@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_7311_4288_4289#PolymorphicMapType_7311| SummandMask1@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_7311_4288_4289#PolymorphicMapType_7311| SummandMask2@@18) o_2@@98 f_4@@98))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 Real) (arg3@@2 T@Ref) (arg4@@2 Real) (arg5@@2 Int) (arg6@@2 T@Ref) ) (! (IsWandField_4195_1272 (wand_1 arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2))
 :qid |stdinbpl.199:15|
 :skolemid |22|
 :pattern ( (wand_1 arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 Real) (arg3@@3 T@Ref) (arg4@@3 Real) (arg5@@3 Int) (arg6@@3 T@Ref) ) (! (IsWandField_4210_4211 (|wand_1#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3))
 :qid |stdinbpl.203:15|
 :skolemid |23|
 :pattern ( (|wand_1#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 Real) (arg3@@4 T@Ref) (arg4@@4 Real) (arg5@@4 Int) (arg6@@4 T@Ref) ) (!  (not (IsPredicateField_4195_1272 (wand_1 arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4)))
 :qid |stdinbpl.207:15|
 :skolemid |24|
 :pattern ( (wand_1 arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 Real) (arg3@@5 T@Ref) (arg4@@5 Real) (arg5@@5 Int) (arg6@@5 T@Ref) ) (!  (not (IsPredicateField_4210_4211 (|wand_1#ft| arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5)))
 :qid |stdinbpl.211:15|
 :skolemid |25|
 :pattern ( (|wand_1#ft| arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_7290) (Mask@@80 T@PolymorphicMapType_7311) (j@@1 Int) ) (!  (=> (state Heap@@43 Mask@@80) (= (|f4'| Heap@@43 j@@1) (|f4#frame| (select (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@43) null P) j@@1)))
 :qid |stdinbpl.260:15|
 :skolemid |32|
 :pattern ( (state Heap@@43 Mask@@80) (|f4'| Heap@@43 j@@1))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_7290) (Mask@@81 T@PolymorphicMapType_7311) (x@@2 T@Ref) (y@@2 Int) ) (!  (=> (state Heap@@44 Mask@@81) (= (|f2'| Heap@@44 x@@2 y@@2) (|f2#frame| (FrameFragment_1683 (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@44) x@@2 v_35)) x@@2 y@@2)))
 :qid |stdinbpl.317:15|
 :skolemid |36|
 :pattern ( (state Heap@@44 Mask@@81) (|f2'| Heap@@44 x@@2 y@@2))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_7290) (j@@2 Int) ) (!  (and (= (f4 Heap@@45 j@@2) (|f4'| Heap@@45 j@@2)) (dummyFunction_1879 (|f4#triggerStateless| j@@2)))
 :qid |stdinbpl.243:15|
 :skolemid |29|
 :pattern ( (f4 Heap@@45 j@@2))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_7290) ) (! (|P#everUsed_4288| P)
 :qid |stdinbpl.365:15|
 :skolemid |37|
 :pattern ( (|P#trigger_4288| Heap@@46 P))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_7290) (o_38 T@Ref) (f_23 T@Field_10910_10915) (v T@PolymorphicMapType_7839) ) (! (succHeap Heap@@47 (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@47) (store (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@47) o_38 f_23 v) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@47) (store (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@47) o_38 f_23 v) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@47) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_7290) (o_38@@0 T@Ref) (f_23@@0 T@Field_10896_1272) (v@@0 Int) ) (! (succHeap Heap@@48 (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@48) (store (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@48) o_38@@0 f_23@@0 v@@0) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@48) (store (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@48) o_38@@0 f_23@@0 v@@0) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@48) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_7290) (o_38@@1 T@Ref) (f_23@@1 T@Field_10927_10928) (v@@1 T@FrameType) ) (! (succHeap Heap@@49 (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@49) (store (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@49) o_38@@1 f_23@@1 v@@1) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@49) (store (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@49) o_38@@1 f_23@@1 v@@1) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@49) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_7290) (o_38@@2 T@Ref) (f_23@@2 T@Field_10896_7364) (v@@2 T@Ref) ) (! (succHeap Heap@@50 (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@50) (store (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@50) o_38@@2 f_23@@2 v@@2) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@50) (store (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@50) o_38@@2 f_23@@2 v@@2) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@50) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_7290) (o_38@@3 T@Ref) (f_23@@3 T@Field_10896_53) (v@@3 Bool) ) (! (succHeap Heap@@51 (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@51) (store (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@51) o_38@@3 f_23@@3 v@@3) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@51) (store (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@51) o_38@@3 f_23@@3 v@@3) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@51) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_7290) (o_38@@4 T@Ref) (f_23@@4 T@Field_10688_10693) (v@@4 T@PolymorphicMapType_7839) ) (! (succHeap Heap@@52 (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@52) (store (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@52) o_38@@4 f_23@@4 v@@4) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@52) (store (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@52) o_38@@4 f_23@@4 v@@4) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@52) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_7290) (o_38@@5 T@Ref) (f_23@@5 T@Field_10677_1190) (v@@5 Int) ) (! (succHeap Heap@@53 (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@53) (store (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@53) o_38@@5 f_23@@5 v@@5) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@53) (store (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@53) o_38@@5 f_23@@5 v@@5) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@53) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_7290) (o_38@@6 T@Ref) (f_23@@6 T@Field_10702_10703) (v@@6 T@FrameType) ) (! (succHeap Heap@@54 (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@54) (store (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@54) o_38@@6 f_23@@6 v@@6) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@54) (store (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@54) o_38@@6 f_23@@6 v@@6) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@54) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_7290) (o_38@@7 T@Ref) (f_23@@7 T@Field_10677_7364) (v@@7 T@Ref) ) (! (succHeap Heap@@55 (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@55) (store (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@55) o_38@@7 f_23@@7 v@@7) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@55) (store (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@55) o_38@@7 f_23@@7 v@@7) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@55) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_7290) (o_38@@8 T@Ref) (f_23@@8 T@Field_10677_53) (v@@8 Bool) ) (! (succHeap Heap@@56 (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@56) (store (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@56) o_38@@8 f_23@@8 v@@8) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@56) (store (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@56) o_38@@8 f_23@@8 v@@8) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@56) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_7290) (o_38@@9 T@Ref) (f_23@@9 T@Field_13419_13424) (v@@9 T@PolymorphicMapType_7839) ) (! (succHeap Heap@@57 (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@57) (store (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@57) o_38@@9 f_23@@9 v@@9) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@57) (store (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@57) o_38@@9 f_23@@9 v@@9) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@57) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_7290) (o_38@@10 T@Ref) (f_23@@10 T@Field_11967_1190) (v@@10 Int) ) (! (succHeap Heap@@58 (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@58) (store (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@58) o_38@@10 f_23@@10 v@@10)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@58) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@58) (store (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@58) o_38@@10 f_23@@10 v@@10)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_7290) (o_38@@11 T@Ref) (f_23@@11 T@Field_11967_11968) (v@@11 T@FrameType) ) (! (succHeap Heap@@59 (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@59) (store (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@59) o_38@@11 f_23@@11 v@@11) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@59) (store (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@59) o_38@@11 f_23@@11 v@@11) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@59) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_7290) (o_38@@12 T@Ref) (f_23@@12 T@Field_11967_7364) (v@@12 T@Ref) ) (! (succHeap Heap@@60 (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@60) (store (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@60) o_38@@12 f_23@@12 v@@12) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@60) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@60) (store (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@60) o_38@@12 f_23@@12 v@@12) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_7290) (o_38@@13 T@Ref) (f_23@@13 T@Field_11967_53) (v@@13 Bool) ) (! (succHeap Heap@@61 (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@61) (store (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@61) o_38@@13 f_23@@13 v@@13) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@61) (store (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@61) o_38@@13 f_23@@13 v@@13) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@61) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_7290) (o_38@@14 T@Ref) (f_23@@14 T@Field_7350_10693) (v@@14 T@PolymorphicMapType_7839) ) (! (succHeap Heap@@62 (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@62) (store (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@62) o_38@@14 f_23@@14 v@@14) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@62) (store (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@62) o_38@@14 f_23@@14 v@@14) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@62) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_7290) (o_38@@15 T@Ref) (f_23@@15 T@Field_11683_1683) (v@@15 Int) ) (! (succHeap Heap@@63 (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@63) (store (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@63) o_38@@15 f_23@@15 v@@15) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@63) (store (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@63) o_38@@15 f_23@@15 v@@15) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@63) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_7290) (o_38@@16 T@Ref) (f_23@@16 T@Field_7350_10703) (v@@16 T@FrameType) ) (! (succHeap Heap@@64 (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@64) (store (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@64) o_38@@16 f_23@@16 v@@16) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@64) (store (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@64) o_38@@16 f_23@@16 v@@16) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@64) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_7290) (o_38@@17 T@Ref) (f_23@@17 T@Field_7363_7364) (v@@17 T@Ref) ) (! (succHeap Heap@@65 (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@65) (store (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@65) o_38@@17 f_23@@17 v@@17) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@65) (store (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@65) o_38@@17 f_23@@17 v@@17) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@65) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@65)))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_7290) (o_38@@18 T@Ref) (f_23@@18 T@Field_7350_53) (v@@18 Bool) ) (! (succHeap Heap@@66 (PolymorphicMapType_7290 (store (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@66) o_38@@18 f_23@@18 v@@18) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@66)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7290 (store (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@66) o_38@@18 f_23@@18 v@@18) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@66) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@66)))
)))
(assert (= (PredicateMaskField_4288 P) |P#sm|))
(assert (= |wand#sm| (WandMaskField_4187 |wand#ft|)))
(assert (forall ((o_38@@19 T@Ref) (f_51 T@Field_7363_7364) (Heap@@67 T@PolymorphicMapType_7290) ) (!  (=> (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@67) o_38@@19 $allocated) (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@67) (select (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@67) o_38@@19 f_51) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@67) o_38@@19 f_51))
)))
(assert (forall ((p@@4 T@Field_11967_11968) (v_1@@3 T@FrameType) (q T@Field_11967_11968) (w@@3 T@FrameType) (r T@Field_11967_11968) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11967_11967 p@@4 v_1@@3 q w@@3) (InsidePredicate_11967_11967 q w@@3 r u)) (InsidePredicate_11967_11967 p@@4 v_1@@3 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11967_11967 p@@4 v_1@@3 q w@@3) (InsidePredicate_11967_11967 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_11967_11968) (v_1@@4 T@FrameType) (q@@0 T@Field_11967_11968) (w@@4 T@FrameType) (r@@0 T@Field_10927_10928) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_11967_11967 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_11967_10896 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_11967_10896 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11967_11967 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_11967_10896 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_11967_11968) (v_1@@5 T@FrameType) (q@@1 T@Field_11967_11968) (w@@5 T@FrameType) (r@@1 T@Field_10702_10703) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_11967_11967 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_11967_10677 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_11967_10677 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11967_11967 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_11967_10677 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_11967_11968) (v_1@@6 T@FrameType) (q@@2 T@Field_11967_11968) (w@@6 T@FrameType) (r@@2 T@Field_7350_10703) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_11967_11967 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_11967_7350 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_11967_7350 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11967_11967 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_11967_7350 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_11967_11968) (v_1@@7 T@FrameType) (q@@3 T@Field_10927_10928) (w@@7 T@FrameType) (r@@3 T@Field_11967_11968) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_11967_10896 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_10896_11967 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_11967_11967 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11967_10896 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_10896_11967 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_11967_11968) (v_1@@8 T@FrameType) (q@@4 T@Field_10927_10928) (w@@8 T@FrameType) (r@@4 T@Field_10927_10928) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_11967_10896 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_10896_10896 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_11967_10896 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11967_10896 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_10896_10896 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_11967_11968) (v_1@@9 T@FrameType) (q@@5 T@Field_10927_10928) (w@@9 T@FrameType) (r@@5 T@Field_10702_10703) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_11967_10896 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_10896_10677 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_11967_10677 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11967_10896 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_10896_10677 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_11967_11968) (v_1@@10 T@FrameType) (q@@6 T@Field_10927_10928) (w@@10 T@FrameType) (r@@6 T@Field_7350_10703) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_11967_10896 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_10896_7350 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_11967_7350 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11967_10896 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_10896_7350 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_11967_11968) (v_1@@11 T@FrameType) (q@@7 T@Field_10702_10703) (w@@11 T@FrameType) (r@@7 T@Field_11967_11968) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_11967_10677 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_10677_11967 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_11967_11967 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11967_10677 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_10677_11967 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_11967_11968) (v_1@@12 T@FrameType) (q@@8 T@Field_10702_10703) (w@@12 T@FrameType) (r@@8 T@Field_10927_10928) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_11967_10677 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_10677_10896 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_11967_10896 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11967_10677 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_10677_10896 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_11967_11968) (v_1@@13 T@FrameType) (q@@9 T@Field_10702_10703) (w@@13 T@FrameType) (r@@9 T@Field_10702_10703) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_11967_10677 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_10677_10677 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_11967_10677 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11967_10677 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_10677_10677 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_11967_11968) (v_1@@14 T@FrameType) (q@@10 T@Field_10702_10703) (w@@14 T@FrameType) (r@@10 T@Field_7350_10703) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_11967_10677 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_10677_7350 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_11967_7350 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11967_10677 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_10677_7350 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_11967_11968) (v_1@@15 T@FrameType) (q@@11 T@Field_7350_10703) (w@@15 T@FrameType) (r@@11 T@Field_11967_11968) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_11967_7350 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_7350_11967 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_11967_11967 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11967_7350 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_7350_11967 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_11967_11968) (v_1@@16 T@FrameType) (q@@12 T@Field_7350_10703) (w@@16 T@FrameType) (r@@12 T@Field_10927_10928) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_11967_7350 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_7350_10896 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_11967_10896 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11967_7350 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_7350_10896 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_11967_11968) (v_1@@17 T@FrameType) (q@@13 T@Field_7350_10703) (w@@17 T@FrameType) (r@@13 T@Field_10702_10703) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_11967_7350 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_7350_10677 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_11967_10677 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11967_7350 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_7350_10677 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_11967_11968) (v_1@@18 T@FrameType) (q@@14 T@Field_7350_10703) (w@@18 T@FrameType) (r@@14 T@Field_7350_10703) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_11967_7350 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_7350_7350 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_11967_7350 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11967_7350 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_7350_7350 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_10927_10928) (v_1@@19 T@FrameType) (q@@15 T@Field_11967_11968) (w@@19 T@FrameType) (r@@15 T@Field_11967_11968) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_10896_11967 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_11967_11967 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_10896_11967 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10896_11967 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_11967_11967 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_10927_10928) (v_1@@20 T@FrameType) (q@@16 T@Field_11967_11968) (w@@20 T@FrameType) (r@@16 T@Field_10927_10928) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_10896_11967 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_11967_10896 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_10896_10896 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10896_11967 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_11967_10896 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_10927_10928) (v_1@@21 T@FrameType) (q@@17 T@Field_11967_11968) (w@@21 T@FrameType) (r@@17 T@Field_10702_10703) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_10896_11967 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_11967_10677 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_10896_10677 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10896_11967 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_11967_10677 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_10927_10928) (v_1@@22 T@FrameType) (q@@18 T@Field_11967_11968) (w@@22 T@FrameType) (r@@18 T@Field_7350_10703) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_10896_11967 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_11967_7350 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_10896_7350 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10896_11967 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_11967_7350 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_10927_10928) (v_1@@23 T@FrameType) (q@@19 T@Field_10927_10928) (w@@23 T@FrameType) (r@@19 T@Field_11967_11968) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_10896_10896 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_10896_11967 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_10896_11967 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10896_10896 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_10896_11967 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_10927_10928) (v_1@@24 T@FrameType) (q@@20 T@Field_10927_10928) (w@@24 T@FrameType) (r@@20 T@Field_10927_10928) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_10896_10896 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_10896_10896 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_10896_10896 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10896_10896 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_10896_10896 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_10927_10928) (v_1@@25 T@FrameType) (q@@21 T@Field_10927_10928) (w@@25 T@FrameType) (r@@21 T@Field_10702_10703) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_10896_10896 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_10896_10677 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_10896_10677 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10896_10896 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_10896_10677 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_10927_10928) (v_1@@26 T@FrameType) (q@@22 T@Field_10927_10928) (w@@26 T@FrameType) (r@@22 T@Field_7350_10703) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_10896_10896 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_10896_7350 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_10896_7350 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10896_10896 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_10896_7350 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_10927_10928) (v_1@@27 T@FrameType) (q@@23 T@Field_10702_10703) (w@@27 T@FrameType) (r@@23 T@Field_11967_11968) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_10896_10677 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_10677_11967 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_10896_11967 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10896_10677 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_10677_11967 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_10927_10928) (v_1@@28 T@FrameType) (q@@24 T@Field_10702_10703) (w@@28 T@FrameType) (r@@24 T@Field_10927_10928) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_10896_10677 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_10677_10896 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_10896_10896 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10896_10677 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_10677_10896 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_10927_10928) (v_1@@29 T@FrameType) (q@@25 T@Field_10702_10703) (w@@29 T@FrameType) (r@@25 T@Field_10702_10703) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_10896_10677 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_10677_10677 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_10896_10677 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10896_10677 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_10677_10677 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_10927_10928) (v_1@@30 T@FrameType) (q@@26 T@Field_10702_10703) (w@@30 T@FrameType) (r@@26 T@Field_7350_10703) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_10896_10677 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_10677_7350 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_10896_7350 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10896_10677 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_10677_7350 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_10927_10928) (v_1@@31 T@FrameType) (q@@27 T@Field_7350_10703) (w@@31 T@FrameType) (r@@27 T@Field_11967_11968) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_10896_7350 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_7350_11967 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_10896_11967 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10896_7350 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_7350_11967 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_10927_10928) (v_1@@32 T@FrameType) (q@@28 T@Field_7350_10703) (w@@32 T@FrameType) (r@@28 T@Field_10927_10928) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_10896_7350 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_7350_10896 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_10896_10896 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10896_7350 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_7350_10896 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_10927_10928) (v_1@@33 T@FrameType) (q@@29 T@Field_7350_10703) (w@@33 T@FrameType) (r@@29 T@Field_10702_10703) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_10896_7350 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_7350_10677 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_10896_10677 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10896_7350 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_7350_10677 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_10927_10928) (v_1@@34 T@FrameType) (q@@30 T@Field_7350_10703) (w@@34 T@FrameType) (r@@30 T@Field_7350_10703) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_10896_7350 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_7350_7350 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_10896_7350 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10896_7350 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_7350_7350 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_10702_10703) (v_1@@35 T@FrameType) (q@@31 T@Field_11967_11968) (w@@35 T@FrameType) (r@@31 T@Field_11967_11968) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_10677_11967 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_11967_11967 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_10677_11967 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10677_11967 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_11967_11967 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_10702_10703) (v_1@@36 T@FrameType) (q@@32 T@Field_11967_11968) (w@@36 T@FrameType) (r@@32 T@Field_10927_10928) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_10677_11967 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_11967_10896 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_10677_10896 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10677_11967 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_11967_10896 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_10702_10703) (v_1@@37 T@FrameType) (q@@33 T@Field_11967_11968) (w@@37 T@FrameType) (r@@33 T@Field_10702_10703) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_10677_11967 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_11967_10677 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_10677_10677 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10677_11967 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_11967_10677 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_10702_10703) (v_1@@38 T@FrameType) (q@@34 T@Field_11967_11968) (w@@38 T@FrameType) (r@@34 T@Field_7350_10703) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_10677_11967 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_11967_7350 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_10677_7350 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10677_11967 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_11967_7350 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_10702_10703) (v_1@@39 T@FrameType) (q@@35 T@Field_10927_10928) (w@@39 T@FrameType) (r@@35 T@Field_11967_11968) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_10677_10896 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_10896_11967 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_10677_11967 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10677_10896 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_10896_11967 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_10702_10703) (v_1@@40 T@FrameType) (q@@36 T@Field_10927_10928) (w@@40 T@FrameType) (r@@36 T@Field_10927_10928) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_10677_10896 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_10896_10896 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_10677_10896 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10677_10896 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_10896_10896 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_10702_10703) (v_1@@41 T@FrameType) (q@@37 T@Field_10927_10928) (w@@41 T@FrameType) (r@@37 T@Field_10702_10703) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_10677_10896 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_10896_10677 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_10677_10677 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10677_10896 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_10896_10677 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_10702_10703) (v_1@@42 T@FrameType) (q@@38 T@Field_10927_10928) (w@@42 T@FrameType) (r@@38 T@Field_7350_10703) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_10677_10896 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_10896_7350 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_10677_7350 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10677_10896 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_10896_7350 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_10702_10703) (v_1@@43 T@FrameType) (q@@39 T@Field_10702_10703) (w@@43 T@FrameType) (r@@39 T@Field_11967_11968) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_10677_10677 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_10677_11967 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_10677_11967 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10677_10677 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_10677_11967 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_10702_10703) (v_1@@44 T@FrameType) (q@@40 T@Field_10702_10703) (w@@44 T@FrameType) (r@@40 T@Field_10927_10928) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_10677_10677 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_10677_10896 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_10677_10896 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10677_10677 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_10677_10896 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_10702_10703) (v_1@@45 T@FrameType) (q@@41 T@Field_10702_10703) (w@@45 T@FrameType) (r@@41 T@Field_10702_10703) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_10677_10677 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_10677_10677 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_10677_10677 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10677_10677 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_10677_10677 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_10702_10703) (v_1@@46 T@FrameType) (q@@42 T@Field_10702_10703) (w@@46 T@FrameType) (r@@42 T@Field_7350_10703) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_10677_10677 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_10677_7350 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_10677_7350 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10677_10677 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_10677_7350 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_10702_10703) (v_1@@47 T@FrameType) (q@@43 T@Field_7350_10703) (w@@47 T@FrameType) (r@@43 T@Field_11967_11968) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_10677_7350 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_7350_11967 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_10677_11967 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10677_7350 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_7350_11967 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_10702_10703) (v_1@@48 T@FrameType) (q@@44 T@Field_7350_10703) (w@@48 T@FrameType) (r@@44 T@Field_10927_10928) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_10677_7350 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_7350_10896 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_10677_10896 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10677_7350 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_7350_10896 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_10702_10703) (v_1@@49 T@FrameType) (q@@45 T@Field_7350_10703) (w@@49 T@FrameType) (r@@45 T@Field_10702_10703) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_10677_7350 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_7350_10677 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_10677_10677 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10677_7350 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_7350_10677 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_10702_10703) (v_1@@50 T@FrameType) (q@@46 T@Field_7350_10703) (w@@50 T@FrameType) (r@@46 T@Field_7350_10703) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_10677_7350 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_7350_7350 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_10677_7350 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10677_7350 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_7350_7350 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_7350_10703) (v_1@@51 T@FrameType) (q@@47 T@Field_11967_11968) (w@@51 T@FrameType) (r@@47 T@Field_11967_11968) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_7350_11967 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_11967_11967 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_7350_11967 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7350_11967 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_11967_11967 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_7350_10703) (v_1@@52 T@FrameType) (q@@48 T@Field_11967_11968) (w@@52 T@FrameType) (r@@48 T@Field_10927_10928) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_7350_11967 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_11967_10896 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_7350_10896 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7350_11967 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_11967_10896 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_7350_10703) (v_1@@53 T@FrameType) (q@@49 T@Field_11967_11968) (w@@53 T@FrameType) (r@@49 T@Field_10702_10703) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_7350_11967 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_11967_10677 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_7350_10677 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7350_11967 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_11967_10677 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_7350_10703) (v_1@@54 T@FrameType) (q@@50 T@Field_11967_11968) (w@@54 T@FrameType) (r@@50 T@Field_7350_10703) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_7350_11967 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_11967_7350 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_7350_7350 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7350_11967 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_11967_7350 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_7350_10703) (v_1@@55 T@FrameType) (q@@51 T@Field_10927_10928) (w@@55 T@FrameType) (r@@51 T@Field_11967_11968) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_7350_10896 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_10896_11967 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_7350_11967 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7350_10896 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_10896_11967 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_7350_10703) (v_1@@56 T@FrameType) (q@@52 T@Field_10927_10928) (w@@56 T@FrameType) (r@@52 T@Field_10927_10928) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_7350_10896 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_10896_10896 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_7350_10896 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7350_10896 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_10896_10896 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_7350_10703) (v_1@@57 T@FrameType) (q@@53 T@Field_10927_10928) (w@@57 T@FrameType) (r@@53 T@Field_10702_10703) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_7350_10896 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_10896_10677 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_7350_10677 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7350_10896 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_10896_10677 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_7350_10703) (v_1@@58 T@FrameType) (q@@54 T@Field_10927_10928) (w@@58 T@FrameType) (r@@54 T@Field_7350_10703) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_7350_10896 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_10896_7350 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_7350_7350 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7350_10896 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_10896_7350 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_7350_10703) (v_1@@59 T@FrameType) (q@@55 T@Field_10702_10703) (w@@59 T@FrameType) (r@@55 T@Field_11967_11968) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_7350_10677 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_10677_11967 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_7350_11967 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7350_10677 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_10677_11967 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_7350_10703) (v_1@@60 T@FrameType) (q@@56 T@Field_10702_10703) (w@@60 T@FrameType) (r@@56 T@Field_10927_10928) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_7350_10677 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_10677_10896 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_7350_10896 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7350_10677 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_10677_10896 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_7350_10703) (v_1@@61 T@FrameType) (q@@57 T@Field_10702_10703) (w@@61 T@FrameType) (r@@57 T@Field_10702_10703) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_7350_10677 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_10677_10677 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_7350_10677 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7350_10677 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_10677_10677 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_7350_10703) (v_1@@62 T@FrameType) (q@@58 T@Field_10702_10703) (w@@62 T@FrameType) (r@@58 T@Field_7350_10703) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_7350_10677 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_10677_7350 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_7350_7350 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7350_10677 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_10677_7350 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_7350_10703) (v_1@@63 T@FrameType) (q@@59 T@Field_7350_10703) (w@@63 T@FrameType) (r@@59 T@Field_11967_11968) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_7350_7350 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_7350_11967 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_7350_11967 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7350_7350 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_7350_11967 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_7350_10703) (v_1@@64 T@FrameType) (q@@60 T@Field_7350_10703) (w@@64 T@FrameType) (r@@60 T@Field_10927_10928) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_7350_7350 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_7350_10896 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_7350_10896 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7350_7350 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_7350_10896 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_7350_10703) (v_1@@65 T@FrameType) (q@@61 T@Field_7350_10703) (w@@65 T@FrameType) (r@@61 T@Field_10702_10703) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_7350_7350 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_7350_10677 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_7350_10677 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7350_7350 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_7350_10677 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_7350_10703) (v_1@@66 T@FrameType) (q@@62 T@Field_7350_10703) (w@@66 T@FrameType) (r@@62 T@Field_7350_10703) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_7350_7350 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_7350_7350 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_7350_7350 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7350_7350 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_7350_7350 q@@62 w@@66 r@@62 u@@62))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Result_1Mask () T@PolymorphicMapType_7311)
(declare-fun y@@3 () T@Ref)
(declare-fun j_4 () Int)
(declare-fun b_5@6 () Bool)
(declare-fun b_6@6 () Bool)
(declare-fun Result_1Heap () T@PolymorphicMapType_7290)
(declare-fun b_5@5 () Bool)
(declare-fun neededTransfer@3 () Real)
(declare-fun Used_3Mask@3 () T@PolymorphicMapType_7311)
(declare-fun initNeededTransfer@0 () Real)
(declare-fun b_7@0 () Bool)
(declare-fun b_7@1 () Bool)
(declare-fun b_7@2 () Bool)
(declare-fun Ops_3Mask@3 () T@PolymorphicMapType_7311)
(declare-fun b_7@3 () Bool)
(declare-fun Ops_3Heap@0 () T@PolymorphicMapType_7290)
(declare-fun Used_3Heap@0 () T@PolymorphicMapType_7290)
(declare-fun b_7@4 () Bool)
(declare-fun takeTransfer@1 () Real)
(declare-fun Mask@2 () T@PolymorphicMapType_7311)
(declare-fun Mask@0 () T@PolymorphicMapType_7311)
(declare-fun neededTransfer@1 () Real)
(declare-fun b_6@3 () Bool)
(declare-fun Used_3Mask@1 () T@PolymorphicMapType_7311)
(declare-fun Heap@1 () T@PolymorphicMapType_7290)
(declare-fun Heap@@68 () T@PolymorphicMapType_7290)
(declare-fun neededTransfer@2 () Real)
(declare-fun Used_3Mask@2 () T@PolymorphicMapType_7311)
(declare-fun b_6@4 () Bool)
(declare-fun b_6@5 () Bool)
(declare-fun Mask@1 () T@PolymorphicMapType_7311)
(declare-fun Heap@0 () T@PolymorphicMapType_7290)
(declare-fun maskTransfer@1 () Real)
(declare-fun takeTransfer@0 () Real)
(declare-fun Ops_3Mask@1 () T@PolymorphicMapType_7311)
(declare-fun b_6@0 () Bool)
(declare-fun neededTransfer@0 () Real)
(declare-fun Used_3Mask@0 () T@PolymorphicMapType_7311)
(declare-fun b_6@1 () Bool)
(declare-fun b_6@2 () Bool)
(declare-fun Ops_3Mask@2 () T@PolymorphicMapType_7311)
(declare-fun maskTransfer@0 () Real)
(declare-fun b_5@4 () Bool)
(declare-fun b_5@3 () Bool)
(declare-fun b_6 () Bool)
(declare-fun b_5@0 () Bool)
(declare-fun b_5@1 () Bool)
(declare-fun Ops_3Mask@0 () T@PolymorphicMapType_7311)
(declare-fun b_5@2 () Bool)
(declare-fun b_5 () Bool)
(declare-fun b_4@0 () Bool)
(declare-fun b_4 () Bool)
(declare-fun Used_2Heap@0 () T@PolymorphicMapType_7290)
(declare-fun j_2 () Int)
(set-info :boogie-vc-id test_1)
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
 (=> (= (ControlFlow 0 0) 37) (let ((anon41_Then_correct  (=> (= (ControlFlow 0 13) (- 0 12)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| Result_1Mask) y@@3 v_35))))))
(let ((anon25_correct true))
(let ((anon40_Then_correct  (=> (> j_4 0) (and (=> (= (ControlFlow 0 14) 13) anon41_Then_correct) (=> (= (ControlFlow 0 14) 10) anon25_correct)))))
(let ((anon40_Else_correct  (=> (and (>= 0 j_4) (= (ControlFlow 0 11) 10)) anon25_correct)))
(let ((anon26_correct  (=> (= (ControlFlow 0 7) (- 0 6)) (=> (and (and b_5@6 b_5@6) b_6@6) (forall ((j_5 Int) ) (!  (=> (> j_5 0) (= (f2 Result_1Heap y@@3 j_5) j_5))
 :qid |stdinbpl.746:39|
 :skolemid |41|
 :pattern ( (|f2#frame| (FrameFragment_1683 (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Result_1Heap) y@@3 v_35)) y@@3 j_5))
))))))
(let ((anon38_Then_correct  (=> b_5@6 (and (and (=> (= (ControlFlow 0 15) 7) anon26_correct) (=> (= (ControlFlow 0 15) 14) anon40_Then_correct)) (=> (= (ControlFlow 0 15) 11) anon40_Else_correct)))))
(let ((anon38_Else_correct  (=> (and (not b_5@6) (= (ControlFlow 0 9) 7)) anon26_correct)))
(let ((anon37_Then_correct  (=> (and (and b_5@6 b_5@6) b_6@6) (and (=> (= (ControlFlow 0 16) 15) anon38_Then_correct) (=> (= (ControlFlow 0 16) 9) anon38_Else_correct)))))
(let ((anon37_Else_correct  (=> (and (not (and (and b_5@6 b_5@6) b_6@6)) (= (ControlFlow 0 8) 7)) anon26_correct)))
(let ((anon19_correct  (and (=> (= (ControlFlow 0 17) (- 0 18)) (=> (and (and b_5@5 b_5@5) b_6@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| Used_3Mask@3) y@@3 v_35) initNeededTransfer@0)))) (=> (=> (and (and b_5@5 b_5@5) b_6@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| Used_3Mask@3) y@@3 v_35) initNeededTransfer@0))) (=> (and (= b_7@0  (and b_5@5 b_6@6)) (= b_7@1  (and b_7@0 (state Result_1Heap Result_1Mask)))) (=> (and (and (= b_7@2  (and b_7@1 (sumMask Result_1Mask Ops_3Mask@3 Used_3Mask@3))) (= b_7@3  (and (and b_7@2 (IdenticalOnKnownLocations Ops_3Heap@0 Result_1Heap Ops_3Mask@3)) (IdenticalOnKnownLocations Used_3Heap@0 Result_1Heap Used_3Mask@3)))) (and (= b_7@4  (and b_7@3 (state Result_1Heap Result_1Mask))) (= b_5@6  (and b_5@5 b_7@4)))) (and (=> (= (ControlFlow 0 17) 16) anon37_Then_correct) (=> (= (ControlFlow 0 17) 8) anon37_Else_correct))))))))
(let ((anon36_Else_correct  (=> (>= 0.0 takeTransfer@1) (=> (and (= Mask@2 Mask@0) (= neededTransfer@3 neededTransfer@1)) (=> (and (and (= b_6@6 b_6@3) (= Used_3Mask@3 Used_3Mask@1)) (and (= Heap@1 Heap@@68) (= (ControlFlow 0 21) 17))) anon19_correct)))))
(let ((anon36_Then_correct  (=> (> takeTransfer@1 0.0) (=> (and (and (= neededTransfer@2 (- neededTransfer@1 takeTransfer@1)) (= Used_3Mask@2 (PolymorphicMapType_7311 (|PolymorphicMapType_7311_4288_4289#PolymorphicMapType_7311| Used_3Mask@1) (store (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| Used_3Mask@1) y@@3 v_35 (+ (select (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| Used_3Mask@1) y@@3 v_35) takeTransfer@1)) (|PolymorphicMapType_7311_4182_1190#PolymorphicMapType_7311| Used_3Mask@1) (|PolymorphicMapType_7311_4195_1272#PolymorphicMapType_7311| Used_3Mask@1) (|PolymorphicMapType_7311_4288_1683#PolymorphicMapType_7311| Used_3Mask@1) (|PolymorphicMapType_7311_4288_53#PolymorphicMapType_7311| Used_3Mask@1) (|PolymorphicMapType_7311_4288_7364#PolymorphicMapType_7311| Used_3Mask@1) (|PolymorphicMapType_7311_4288_40979#PolymorphicMapType_7311| Used_3Mask@1) (|PolymorphicMapType_7311_4253_4289#PolymorphicMapType_7311| Used_3Mask@1) (|PolymorphicMapType_7311_4253_53#PolymorphicMapType_7311| Used_3Mask@1) (|PolymorphicMapType_7311_4253_7364#PolymorphicMapType_7311| Used_3Mask@1) (|PolymorphicMapType_7311_4253_41393#PolymorphicMapType_7311| Used_3Mask@1) (|PolymorphicMapType_7311_4182_4289#PolymorphicMapType_7311| Used_3Mask@1) (|PolymorphicMapType_7311_4182_53#PolymorphicMapType_7311| Used_3Mask@1) (|PolymorphicMapType_7311_4182_7364#PolymorphicMapType_7311| Used_3Mask@1) (|PolymorphicMapType_7311_4182_41807#PolymorphicMapType_7311| Used_3Mask@1) (|PolymorphicMapType_7311_4195_4289#PolymorphicMapType_7311| Used_3Mask@1) (|PolymorphicMapType_7311_4195_53#PolymorphicMapType_7311| Used_3Mask@1) (|PolymorphicMapType_7311_4195_7364#PolymorphicMapType_7311| Used_3Mask@1) (|PolymorphicMapType_7311_4195_42221#PolymorphicMapType_7311| Used_3Mask@1)))) (and (= b_6@4  (and b_6@3 (state Used_3Heap@0 Used_3Mask@2))) (= b_6@5  (and b_6@4 (= (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@68) y@@3 v_35) (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Used_3Heap@0) y@@3 v_35)))))) (=> (and (and (and (= Mask@1 (PolymorphicMapType_7311 (|PolymorphicMapType_7311_4288_4289#PolymorphicMapType_7311| Mask@0) (store (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| Mask@0) y@@3 v_35 (- (select (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| Mask@0) y@@3 v_35) takeTransfer@1)) (|PolymorphicMapType_7311_4182_1190#PolymorphicMapType_7311| Mask@0) (|PolymorphicMapType_7311_4195_1272#PolymorphicMapType_7311| Mask@0) (|PolymorphicMapType_7311_4288_1683#PolymorphicMapType_7311| Mask@0) (|PolymorphicMapType_7311_4288_53#PolymorphicMapType_7311| Mask@0) (|PolymorphicMapType_7311_4288_7364#PolymorphicMapType_7311| Mask@0) (|PolymorphicMapType_7311_4288_40979#PolymorphicMapType_7311| Mask@0) (|PolymorphicMapType_7311_4253_4289#PolymorphicMapType_7311| Mask@0) (|PolymorphicMapType_7311_4253_53#PolymorphicMapType_7311| Mask@0) (|PolymorphicMapType_7311_4253_7364#PolymorphicMapType_7311| Mask@0) (|PolymorphicMapType_7311_4253_41393#PolymorphicMapType_7311| Mask@0) (|PolymorphicMapType_7311_4182_4289#PolymorphicMapType_7311| Mask@0) (|PolymorphicMapType_7311_4182_53#PolymorphicMapType_7311| Mask@0) (|PolymorphicMapType_7311_4182_7364#PolymorphicMapType_7311| Mask@0) (|PolymorphicMapType_7311_4182_41807#PolymorphicMapType_7311| Mask@0) (|PolymorphicMapType_7311_4195_4289#PolymorphicMapType_7311| Mask@0) (|PolymorphicMapType_7311_4195_53#PolymorphicMapType_7311| Mask@0) (|PolymorphicMapType_7311_4195_7364#PolymorphicMapType_7311| Mask@0) (|PolymorphicMapType_7311_4195_42221#PolymorphicMapType_7311| Mask@0))) (= Heap@0 (PolymorphicMapType_7290 (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@68) (|PolymorphicMapType_7290_4057_4058#PolymorphicMapType_7290| Heap@@68) (|PolymorphicMapType_7290_4288_4289#PolymorphicMapType_7290| Heap@@68) (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@68) (|PolymorphicMapType_7290_4184_15656#PolymorphicMapType_7290| Heap@@68) (|PolymorphicMapType_7290_4291_15771#PolymorphicMapType_7290| Heap@@68) (store (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@68) null (|wand_1#sm| y@@3 FullPerm y@@3 FullPerm 0 y@@3) (PolymorphicMapType_7839 (store (|PolymorphicMapType_7839_4253_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@68) null (|wand_1#sm| y@@3 FullPerm y@@3 FullPerm 0 y@@3))) y@@3 v_35 true) (|PolymorphicMapType_7839_4253_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@68) null (|wand_1#sm| y@@3 FullPerm y@@3 FullPerm 0 y@@3))) (|PolymorphicMapType_7839_4253_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@68) null (|wand_1#sm| y@@3 FullPerm y@@3 FullPerm 0 y@@3))) (|PolymorphicMapType_7839_4253_27404#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@68) null (|wand_1#sm| y@@3 FullPerm y@@3 FullPerm 0 y@@3))) (|PolymorphicMapType_7839_4253_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@68) null (|wand_1#sm| y@@3 FullPerm y@@3 FullPerm 0 y@@3))) (|PolymorphicMapType_7839_10677_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@68) null (|wand_1#sm| y@@3 FullPerm y@@3 FullPerm 0 y@@3))) (|PolymorphicMapType_7839_10677_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@68) null (|wand_1#sm| y@@3 FullPerm y@@3 FullPerm 0 y@@3))) (|PolymorphicMapType_7839_10677_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@68) null (|wand_1#sm| y@@3 FullPerm y@@3 FullPerm 0 y@@3))) (|PolymorphicMapType_7839_10677_28452#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@68) null (|wand_1#sm| y@@3 FullPerm y@@3 FullPerm 0 y@@3))) (|PolymorphicMapType_7839_10677_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@68) null (|wand_1#sm| y@@3 FullPerm y@@3 FullPerm 0 y@@3))) (|PolymorphicMapType_7839_10896_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@68) null (|wand_1#sm| y@@3 FullPerm y@@3 FullPerm 0 y@@3))) (|PolymorphicMapType_7839_10896_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@68) null (|wand_1#sm| y@@3 FullPerm y@@3 FullPerm 0 y@@3))) (|PolymorphicMapType_7839_10896_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@68) null (|wand_1#sm| y@@3 FullPerm y@@3 FullPerm 0 y@@3))) (|PolymorphicMapType_7839_10896_29500#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@68) null (|wand_1#sm| y@@3 FullPerm y@@3 FullPerm 0 y@@3))) (|PolymorphicMapType_7839_10896_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@68) null (|wand_1#sm| y@@3 FullPerm y@@3 FullPerm 0 y@@3))) (|PolymorphicMapType_7839_11967_1683#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@68) null (|wand_1#sm| y@@3 FullPerm y@@3 FullPerm 0 y@@3))) (|PolymorphicMapType_7839_11967_53#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@68) null (|wand_1#sm| y@@3 FullPerm y@@3 FullPerm 0 y@@3))) (|PolymorphicMapType_7839_11967_7364#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@68) null (|wand_1#sm| y@@3 FullPerm y@@3 FullPerm 0 y@@3))) (|PolymorphicMapType_7839_11967_30548#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@68) null (|wand_1#sm| y@@3 FullPerm y@@3 FullPerm 0 y@@3))) (|PolymorphicMapType_7839_11967_10703#PolymorphicMapType_7839| (select (|PolymorphicMapType_7290_4202_19597#PolymorphicMapType_7290| Heap@@68) null (|wand_1#sm| y@@3 FullPerm y@@3 FullPerm 0 y@@3))))) (|PolymorphicMapType_7290_7350_21575#PolymorphicMapType_7290| Heap@@68) (|PolymorphicMapType_7290_7350_10703#PolymorphicMapType_7290| Heap@@68) (|PolymorphicMapType_7290_10677_53#PolymorphicMapType_7290| Heap@@68) (|PolymorphicMapType_7290_10677_7364#PolymorphicMapType_7290| Heap@@68) (|PolymorphicMapType_7290_10677_1190#PolymorphicMapType_7290| Heap@@68) (|PolymorphicMapType_7290_10677_10703#PolymorphicMapType_7290| Heap@@68) (|PolymorphicMapType_7290_10896_53#PolymorphicMapType_7290| Heap@@68) (|PolymorphicMapType_7290_10896_7364#PolymorphicMapType_7290| Heap@@68) (|PolymorphicMapType_7290_10896_1190#PolymorphicMapType_7290| Heap@@68) (|PolymorphicMapType_7290_10896_10703#PolymorphicMapType_7290| Heap@@68) (|PolymorphicMapType_7290_11967_53#PolymorphicMapType_7290| Heap@@68) (|PolymorphicMapType_7290_11967_7364#PolymorphicMapType_7290| Heap@@68) (|PolymorphicMapType_7290_11967_1190#PolymorphicMapType_7290| Heap@@68)))) (and (= Mask@2 Mask@1) (= neededTransfer@3 neededTransfer@2))) (and (and (= b_6@6 b_6@5) (= Used_3Mask@3 Used_3Mask@2)) (and (= Heap@1 Heap@0) (= (ControlFlow 0 20) 17)))) anon19_correct)))))
(let ((anon35_Else_correct  (=> (and (< maskTransfer@1 neededTransfer@1) (= takeTransfer@1 maskTransfer@1)) (and (=> (= (ControlFlow 0 23) 20) anon36_Then_correct) (=> (= (ControlFlow 0 23) 21) anon36_Else_correct)))))
(let ((anon35_Then_correct  (=> (and (<= neededTransfer@1 maskTransfer@1) (= takeTransfer@1 neededTransfer@1)) (and (=> (= (ControlFlow 0 22) 20) anon36_Then_correct) (=> (= (ControlFlow 0 22) 21) anon36_Else_correct)))))
(let ((anon34_Then_correct  (=> (and (and (and (and (and b_5@5 b_5@5) b_6@3) true) (> neededTransfer@1 0.0)) (= maskTransfer@1 (select (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| Mask@0) y@@3 v_35))) (and (=> (= (ControlFlow 0 24) 22) anon35_Then_correct) (=> (= (ControlFlow 0 24) 23) anon35_Else_correct)))))
(let ((anon34_Else_correct  (=> (not (and (and (and (and b_5@5 b_5@5) b_6@3) true) (> neededTransfer@1 0.0))) (=> (and (= Mask@2 Mask@0) (= neededTransfer@3 neededTransfer@1)) (=> (and (and (= b_6@6 b_6@3) (= Used_3Mask@3 Used_3Mask@1)) (and (= Heap@1 Heap@@68) (= (ControlFlow 0 19) 17))) anon19_correct)))))
(let ((anon33_Else_correct  (=> (>= 0.0 takeTransfer@0) (=> (and (and (= Ops_3Mask@3 Ops_3Mask@1) (= Used_3Mask@1 ZeroMask)) (and (= b_6@3 b_6@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 27) 24) anon34_Then_correct) (=> (= (ControlFlow 0 27) 19) anon34_Else_correct))))))
(let ((anon33_Then_correct  (=> (and (> takeTransfer@0 0.0) (= neededTransfer@0 (- FullPerm takeTransfer@0))) (=> (and (and (and (= Used_3Mask@0 (PolymorphicMapType_7311 (|PolymorphicMapType_7311_4288_4289#PolymorphicMapType_7311| ZeroMask) (store (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| ZeroMask) y@@3 v_35 (+ (select (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| ZeroMask) y@@3 v_35) takeTransfer@0)) (|PolymorphicMapType_7311_4182_1190#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4195_1272#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4288_1683#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4288_53#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4288_7364#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4288_40979#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4253_4289#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4253_53#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4253_7364#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4253_41393#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4182_4289#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4182_53#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4182_7364#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4182_41807#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4195_4289#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4195_53#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4195_7364#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4195_42221#PolymorphicMapType_7311| ZeroMask))) (= b_6@1  (and b_6@0 (state Used_3Heap@0 Used_3Mask@0)))) (and (= b_6@2  (and b_6@1 (= (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Ops_3Heap@0) y@@3 v_35) (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Used_3Heap@0) y@@3 v_35)))) (= Ops_3Mask@2 (PolymorphicMapType_7311 (|PolymorphicMapType_7311_4288_4289#PolymorphicMapType_7311| Ops_3Mask@1) (store (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| Ops_3Mask@1) y@@3 v_35 (- (select (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| Ops_3Mask@1) y@@3 v_35) takeTransfer@0)) (|PolymorphicMapType_7311_4182_1190#PolymorphicMapType_7311| Ops_3Mask@1) (|PolymorphicMapType_7311_4195_1272#PolymorphicMapType_7311| Ops_3Mask@1) (|PolymorphicMapType_7311_4288_1683#PolymorphicMapType_7311| Ops_3Mask@1) (|PolymorphicMapType_7311_4288_53#PolymorphicMapType_7311| Ops_3Mask@1) (|PolymorphicMapType_7311_4288_7364#PolymorphicMapType_7311| Ops_3Mask@1) (|PolymorphicMapType_7311_4288_40979#PolymorphicMapType_7311| Ops_3Mask@1) (|PolymorphicMapType_7311_4253_4289#PolymorphicMapType_7311| Ops_3Mask@1) (|PolymorphicMapType_7311_4253_53#PolymorphicMapType_7311| Ops_3Mask@1) (|PolymorphicMapType_7311_4253_7364#PolymorphicMapType_7311| Ops_3Mask@1) (|PolymorphicMapType_7311_4253_41393#PolymorphicMapType_7311| Ops_3Mask@1) (|PolymorphicMapType_7311_4182_4289#PolymorphicMapType_7311| Ops_3Mask@1) (|PolymorphicMapType_7311_4182_53#PolymorphicMapType_7311| Ops_3Mask@1) (|PolymorphicMapType_7311_4182_7364#PolymorphicMapType_7311| Ops_3Mask@1) (|PolymorphicMapType_7311_4182_41807#PolymorphicMapType_7311| Ops_3Mask@1) (|PolymorphicMapType_7311_4195_4289#PolymorphicMapType_7311| Ops_3Mask@1) (|PolymorphicMapType_7311_4195_53#PolymorphicMapType_7311| Ops_3Mask@1) (|PolymorphicMapType_7311_4195_7364#PolymorphicMapType_7311| Ops_3Mask@1) (|PolymorphicMapType_7311_4195_42221#PolymorphicMapType_7311| Ops_3Mask@1))))) (and (and (= Ops_3Mask@3 Ops_3Mask@2) (= Used_3Mask@1 Used_3Mask@0)) (and (= b_6@3 b_6@2) (= neededTransfer@1 neededTransfer@0)))) (and (=> (= (ControlFlow 0 26) 24) anon34_Then_correct) (=> (= (ControlFlow 0 26) 19) anon34_Else_correct))))))
(let ((anon32_Else_correct  (=> (and (< maskTransfer@0 FullPerm) (= takeTransfer@0 maskTransfer@0)) (and (=> (= (ControlFlow 0 29) 26) anon33_Then_correct) (=> (= (ControlFlow 0 29) 27) anon33_Else_correct)))))
(let ((anon32_Then_correct  (=> (and (<= FullPerm maskTransfer@0) (= takeTransfer@0 FullPerm)) (and (=> (= (ControlFlow 0 28) 26) anon33_Then_correct) (=> (= (ControlFlow 0 28) 27) anon33_Else_correct)))))
(let ((anon31_Then_correct  (=> (and (and (and (and (and b_5@5 b_5@5) b_6@0) true) (> FullPerm 0.0)) (= maskTransfer@0 (select (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| Ops_3Mask@1) y@@3 v_35))) (and (=> (= (ControlFlow 0 30) 28) anon32_Then_correct) (=> (= (ControlFlow 0 30) 29) anon32_Else_correct)))))
(let ((anon31_Else_correct  (=> (not (and (and (and (and b_5@5 b_5@5) b_6@0) true) (> FullPerm 0.0))) (=> (and (and (= Ops_3Mask@3 Ops_3Mask@1) (= Used_3Mask@1 ZeroMask)) (and (= b_6@3 b_6@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 25) 24) anon34_Then_correct) (=> (= (ControlFlow 0 25) 19) anon34_Else_correct))))))
(let ((anon7_correct  (=> (and (and (= b_5@4  (and b_5@3 (state Ops_3Heap@0 Ops_3Mask@1))) (= b_5@5  (and b_5@4 (state Ops_3Heap@0 Ops_3Mask@1)))) (and (= b_6@0  (and b_6 (state Used_3Heap@0 ZeroMask))) (= initNeededTransfer@0 (+ (select (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| ZeroMask) y@@3 v_35) FullPerm)))) (and (=> (= (ControlFlow 0 31) (- 0 32)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 31) 30) anon31_Then_correct) (=> (= (ControlFlow 0 31) 25) anon31_Else_correct)))))))
(let ((anon30_Else_correct  (=> (and (and (not b_5@0) (= Ops_3Mask@1 ZeroMask)) (and (= b_5@3 b_5@0) (= (ControlFlow 0 34) 31))) anon7_correct)))
(let ((anon30_Then_correct  (=> b_5@0 (=> (and (= b_5@1  (and b_5@0 (not (= y@@3 null)))) (= Ops_3Mask@0 (PolymorphicMapType_7311 (|PolymorphicMapType_7311_4288_4289#PolymorphicMapType_7311| ZeroMask) (store (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| ZeroMask) y@@3 v_35 (+ (select (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| ZeroMask) y@@3 v_35) FullPerm)) (|PolymorphicMapType_7311_4182_1190#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4195_1272#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4288_1683#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4288_53#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4288_7364#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4288_40979#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4253_4289#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4253_53#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4253_7364#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4253_41393#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4182_4289#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4182_53#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4182_7364#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4182_41807#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4195_4289#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4195_53#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4195_7364#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4195_42221#PolymorphicMapType_7311| ZeroMask)))) (=> (and (and (= b_5@2  (and b_5@1 (state Ops_3Heap@0 Ops_3Mask@0))) (= Ops_3Mask@1 Ops_3Mask@0)) (and (= b_5@3 b_5@2) (= (ControlFlow 0 33) 31))) anon7_correct)))))
(let ((anon27_Else_correct  (=> (and (and (forall ((j_1 Int) ) (!  (=> (> j_1 0) (= (f2 Heap@@68 y@@3 j_1) j_1))
 :qid |stdinbpl.622:20|
 :skolemid |40|
 :pattern ( (|f2#frame| (FrameFragment_1683 (select (|PolymorphicMapType_7290_4253_1683#PolymorphicMapType_7290| Heap@@68) y@@3 v_35)) y@@3 j_1))
)) (state Heap@@68 Mask@0)) (and (= b_5@0  (and b_5 (state Ops_3Heap@0 ZeroMask))) (= b_4@0  (and b_4 (state Used_2Heap@0 ZeroMask))))) (and (=> (= (ControlFlow 0 35) 33) anon30_Then_correct) (=> (= (ControlFlow 0 35) 34) anon30_Else_correct)))))
(let ((anon29_Then_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| Mask@0) y@@3 v_35))))))
(let ((anon4_correct true))
(let ((anon28_Then_correct  (=> (> j_2 0) (and (=> (= (ControlFlow 0 5) 4) anon29_Then_correct) (=> (= (ControlFlow 0 5) 1) anon4_correct)))))
(let ((anon28_Else_correct  (=> (and (>= 0 j_2) (= (ControlFlow 0 2) 1)) anon4_correct)))
(let ((anon0_correct  (=> (state Heap@@68 ZeroMask) (=> (and (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (select (|PolymorphicMapType_7290_4054_53#PolymorphicMapType_7290| Heap@@68) y@@3 $allocated) (not (= y@@3 null)))) (and (and (= Mask@0 (PolymorphicMapType_7311 (|PolymorphicMapType_7311_4288_4289#PolymorphicMapType_7311| ZeroMask) (store (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| ZeroMask) y@@3 v_35 (+ (select (|PolymorphicMapType_7311_4253_1683#PolymorphicMapType_7311| ZeroMask) y@@3 v_35) FullPerm)) (|PolymorphicMapType_7311_4182_1190#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4195_1272#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4288_1683#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4288_53#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4288_7364#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4288_40979#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4253_4289#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4253_53#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4253_7364#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4253_41393#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4182_4289#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4182_53#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4182_7364#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4182_41807#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4195_4289#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4195_53#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4195_7364#PolymorphicMapType_7311| ZeroMask) (|PolymorphicMapType_7311_4195_42221#PolymorphicMapType_7311| ZeroMask))) (state Heap@@68 Mask@0)) (and (state Heap@@68 Mask@0) (state Heap@@68 Mask@0)))) (and (and (=> (= (ControlFlow 0 36) 35) anon27_Else_correct) (=> (= (ControlFlow 0 36) 5) anon28_Then_correct)) (=> (= (ControlFlow 0 36) 2) anon28_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 37) 36) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
