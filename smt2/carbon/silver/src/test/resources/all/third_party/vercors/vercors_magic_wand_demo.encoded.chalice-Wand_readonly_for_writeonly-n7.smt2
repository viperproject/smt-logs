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
(declare-sort T@Field_14940_53 0)
(declare-sort T@Field_14953_14954 0)
(declare-sort T@Field_19474_19475 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_18374_1231 0)
(declare-sort T@Field_22165_22170 0)
(declare-sort T@Field_27622_27623 0)
(declare-sort T@Field_28913_28918 0)
(declare-sort T@Field_33893_33894 0)
(declare-sort T@Field_33906_33911 0)
(declare-sort T@Field_7679_7856 0)
(declare-sort T@Field_18283_645 0)
(declare-sort T@Field_7679_22170 0)
(declare-sort T@Field_7855_7680 0)
(declare-sort T@Field_7855_1291 0)
(declare-sort T@Field_7855_53 0)
(declare-sort T@Field_7855_645 0)
(declare-sort T@Field_7904_7680 0)
(declare-sort T@Field_7904_1291 0)
(declare-sort T@Field_7904_53 0)
(declare-sort T@Field_7904_645 0)
(declare-sort T@Field_7929_7680 0)
(declare-sort T@Field_7929_1291 0)
(declare-sort T@Field_7929_53 0)
(declare-sort T@Field_7929_645 0)
(declare-sort T@Field_29221_7680 0)
(declare-sort T@Field_29221_1291 0)
(declare-sort T@Field_29221_29222 0)
(declare-sort T@Field_29221_53 0)
(declare-sort T@Field_29221_645 0)
(declare-sort T@Field_29234_29239 0)
(declare-sort T@Field_32245_7680 0)
(declare-sort T@Field_32245_1291 0)
(declare-sort T@Field_32245_32246 0)
(declare-sort T@Field_32245_53 0)
(declare-sort T@Field_32245_645 0)
(declare-sort T@Field_32258_32263 0)
(declare-datatypes ((T@PolymorphicMapType_14901 0)) (((PolymorphicMapType_14901 (|PolymorphicMapType_14901_7855_7856#PolymorphicMapType_14901| (Array T@Ref T@Field_19474_19475 Real)) (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| (Array T@Ref T@Field_18374_1231 Real)) (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| (Array T@Ref T@Field_14953_14954 Real)) (|PolymorphicMapType_14901_7904_7905#PolymorphicMapType_14901| (Array T@Ref T@Field_27622_27623 Real)) (|PolymorphicMapType_14901_7929_7930#PolymorphicMapType_14901| (Array T@Ref T@Field_33893_33894 Real)) (|PolymorphicMapType_14901_7855_1231#PolymorphicMapType_14901| (Array T@Ref T@Field_7855_1291 Real)) (|PolymorphicMapType_14901_7855_7680#PolymorphicMapType_14901| (Array T@Ref T@Field_7855_7680 Real)) (|PolymorphicMapType_14901_7855_53#PolymorphicMapType_14901| (Array T@Ref T@Field_7855_53 Real)) (|PolymorphicMapType_14901_7855_645#PolymorphicMapType_14901| (Array T@Ref T@Field_7855_645 Real)) (|PolymorphicMapType_14901_7855_83807#PolymorphicMapType_14901| (Array T@Ref T@Field_22165_22170 Real)) (|PolymorphicMapType_14901_7677_7856#PolymorphicMapType_14901| (Array T@Ref T@Field_7679_7856 Real)) (|PolymorphicMapType_14901_7677_53#PolymorphicMapType_14901| (Array T@Ref T@Field_14940_53 Real)) (|PolymorphicMapType_14901_7677_645#PolymorphicMapType_14901| (Array T@Ref T@Field_18283_645 Real)) (|PolymorphicMapType_14901_7677_84286#PolymorphicMapType_14901| (Array T@Ref T@Field_7679_22170 Real)) (|PolymorphicMapType_14901_7904_1231#PolymorphicMapType_14901| (Array T@Ref T@Field_7904_1291 Real)) (|PolymorphicMapType_14901_7904_7680#PolymorphicMapType_14901| (Array T@Ref T@Field_7904_7680 Real)) (|PolymorphicMapType_14901_7904_53#PolymorphicMapType_14901| (Array T@Ref T@Field_7904_53 Real)) (|PolymorphicMapType_14901_7904_645#PolymorphicMapType_14901| (Array T@Ref T@Field_7904_645 Real)) (|PolymorphicMapType_14901_7904_84777#PolymorphicMapType_14901| (Array T@Ref T@Field_28913_28918 Real)) (|PolymorphicMapType_14901_7929_1231#PolymorphicMapType_14901| (Array T@Ref T@Field_7929_1291 Real)) (|PolymorphicMapType_14901_7929_7680#PolymorphicMapType_14901| (Array T@Ref T@Field_7929_7680 Real)) (|PolymorphicMapType_14901_7929_53#PolymorphicMapType_14901| (Array T@Ref T@Field_7929_53 Real)) (|PolymorphicMapType_14901_7929_645#PolymorphicMapType_14901| (Array T@Ref T@Field_7929_645 Real)) (|PolymorphicMapType_14901_7929_85268#PolymorphicMapType_14901| (Array T@Ref T@Field_33906_33911 Real)) (|PolymorphicMapType_14901_29221_7856#PolymorphicMapType_14901| (Array T@Ref T@Field_29221_29222 Real)) (|PolymorphicMapType_14901_29221_1231#PolymorphicMapType_14901| (Array T@Ref T@Field_29221_1291 Real)) (|PolymorphicMapType_14901_29221_7680#PolymorphicMapType_14901| (Array T@Ref T@Field_29221_7680 Real)) (|PolymorphicMapType_14901_29221_53#PolymorphicMapType_14901| (Array T@Ref T@Field_29221_53 Real)) (|PolymorphicMapType_14901_29221_645#PolymorphicMapType_14901| (Array T@Ref T@Field_29221_645 Real)) (|PolymorphicMapType_14901_29221_85774#PolymorphicMapType_14901| (Array T@Ref T@Field_29234_29239 Real)) (|PolymorphicMapType_14901_32245_7856#PolymorphicMapType_14901| (Array T@Ref T@Field_32245_32246 Real)) (|PolymorphicMapType_14901_32245_1231#PolymorphicMapType_14901| (Array T@Ref T@Field_32245_1291 Real)) (|PolymorphicMapType_14901_32245_7680#PolymorphicMapType_14901| (Array T@Ref T@Field_32245_7680 Real)) (|PolymorphicMapType_14901_32245_53#PolymorphicMapType_14901| (Array T@Ref T@Field_32245_53 Real)) (|PolymorphicMapType_14901_32245_645#PolymorphicMapType_14901| (Array T@Ref T@Field_32245_645 Real)) (|PolymorphicMapType_14901_32245_86280#PolymorphicMapType_14901| (Array T@Ref T@Field_32258_32263 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15429 0)) (((PolymorphicMapType_15429 (|PolymorphicMapType_15429_7677_1231#PolymorphicMapType_15429| (Array T@Ref T@Field_18374_1231 Bool)) (|PolymorphicMapType_15429_7679_7680#PolymorphicMapType_15429| (Array T@Ref T@Field_14953_14954 Bool)) (|PolymorphicMapType_15429_7677_53#PolymorphicMapType_15429| (Array T@Ref T@Field_14940_53 Bool)) (|PolymorphicMapType_15429_7677_645#PolymorphicMapType_15429| (Array T@Ref T@Field_18283_645 Bool)) (|PolymorphicMapType_15429_7677_19475#PolymorphicMapType_15429| (Array T@Ref T@Field_7679_7856 Bool)) (|PolymorphicMapType_15429_7677_60536#PolymorphicMapType_15429| (Array T@Ref T@Field_7679_22170 Bool)) (|PolymorphicMapType_15429_19474_1231#PolymorphicMapType_15429| (Array T@Ref T@Field_7855_1291 Bool)) (|PolymorphicMapType_15429_19474_7680#PolymorphicMapType_15429| (Array T@Ref T@Field_7855_7680 Bool)) (|PolymorphicMapType_15429_19474_53#PolymorphicMapType_15429| (Array T@Ref T@Field_7855_53 Bool)) (|PolymorphicMapType_15429_19474_645#PolymorphicMapType_15429| (Array T@Ref T@Field_7855_645 Bool)) (|PolymorphicMapType_15429_19474_19475#PolymorphicMapType_15429| (Array T@Ref T@Field_19474_19475 Bool)) (|PolymorphicMapType_15429_19474_61782#PolymorphicMapType_15429| (Array T@Ref T@Field_22165_22170 Bool)) (|PolymorphicMapType_15429_27622_1231#PolymorphicMapType_15429| (Array T@Ref T@Field_7904_1291 Bool)) (|PolymorphicMapType_15429_27622_7680#PolymorphicMapType_15429| (Array T@Ref T@Field_7904_7680 Bool)) (|PolymorphicMapType_15429_27622_53#PolymorphicMapType_15429| (Array T@Ref T@Field_7904_53 Bool)) (|PolymorphicMapType_15429_27622_645#PolymorphicMapType_15429| (Array T@Ref T@Field_7904_645 Bool)) (|PolymorphicMapType_15429_27622_19475#PolymorphicMapType_15429| (Array T@Ref T@Field_27622_27623 Bool)) (|PolymorphicMapType_15429_27622_63028#PolymorphicMapType_15429| (Array T@Ref T@Field_28913_28918 Bool)) (|PolymorphicMapType_15429_29221_1231#PolymorphicMapType_15429| (Array T@Ref T@Field_29221_1291 Bool)) (|PolymorphicMapType_15429_29221_7680#PolymorphicMapType_15429| (Array T@Ref T@Field_29221_7680 Bool)) (|PolymorphicMapType_15429_29221_53#PolymorphicMapType_15429| (Array T@Ref T@Field_29221_53 Bool)) (|PolymorphicMapType_15429_29221_645#PolymorphicMapType_15429| (Array T@Ref T@Field_29221_645 Bool)) (|PolymorphicMapType_15429_29221_19475#PolymorphicMapType_15429| (Array T@Ref T@Field_29221_29222 Bool)) (|PolymorphicMapType_15429_29221_64274#PolymorphicMapType_15429| (Array T@Ref T@Field_29234_29239 Bool)) (|PolymorphicMapType_15429_32245_1231#PolymorphicMapType_15429| (Array T@Ref T@Field_32245_1291 Bool)) (|PolymorphicMapType_15429_32245_7680#PolymorphicMapType_15429| (Array T@Ref T@Field_32245_7680 Bool)) (|PolymorphicMapType_15429_32245_53#PolymorphicMapType_15429| (Array T@Ref T@Field_32245_53 Bool)) (|PolymorphicMapType_15429_32245_645#PolymorphicMapType_15429| (Array T@Ref T@Field_32245_645 Bool)) (|PolymorphicMapType_15429_32245_19475#PolymorphicMapType_15429| (Array T@Ref T@Field_32245_32246 Bool)) (|PolymorphicMapType_15429_32245_65520#PolymorphicMapType_15429| (Array T@Ref T@Field_32258_32263 Bool)) (|PolymorphicMapType_15429_33893_1231#PolymorphicMapType_15429| (Array T@Ref T@Field_7929_1291 Bool)) (|PolymorphicMapType_15429_33893_7680#PolymorphicMapType_15429| (Array T@Ref T@Field_7929_7680 Bool)) (|PolymorphicMapType_15429_33893_53#PolymorphicMapType_15429| (Array T@Ref T@Field_7929_53 Bool)) (|PolymorphicMapType_15429_33893_645#PolymorphicMapType_15429| (Array T@Ref T@Field_7929_645 Bool)) (|PolymorphicMapType_15429_33893_19475#PolymorphicMapType_15429| (Array T@Ref T@Field_33893_33894 Bool)) (|PolymorphicMapType_15429_33893_66766#PolymorphicMapType_15429| (Array T@Ref T@Field_33906_33911 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_14880 0)) (((PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| (Array T@Ref T@Field_14940_53 Bool)) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| (Array T@Ref T@Field_14953_14954 T@Ref)) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| (Array T@Ref T@Field_19474_19475 T@FrameType)) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| (Array T@Ref T@Field_18374_1231 Int)) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| (Array T@Ref T@Field_22165_22170 T@PolymorphicMapType_15429)) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| (Array T@Ref T@Field_27622_27623 T@FrameType)) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| (Array T@Ref T@Field_28913_28918 T@PolymorphicMapType_15429)) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| (Array T@Ref T@Field_33893_33894 T@FrameType)) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| (Array T@Ref T@Field_33906_33911 T@PolymorphicMapType_15429)) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| (Array T@Ref T@Field_7679_7856 T@FrameType)) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| (Array T@Ref T@Field_18283_645 Real)) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| (Array T@Ref T@Field_7679_22170 T@PolymorphicMapType_15429)) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| (Array T@Ref T@Field_7855_7680 T@Ref)) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| (Array T@Ref T@Field_7855_1291 Int)) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| (Array T@Ref T@Field_7855_53 Bool)) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| (Array T@Ref T@Field_7855_645 Real)) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| (Array T@Ref T@Field_7904_7680 T@Ref)) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| (Array T@Ref T@Field_7904_1291 Int)) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| (Array T@Ref T@Field_7904_53 Bool)) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| (Array T@Ref T@Field_7904_645 Real)) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| (Array T@Ref T@Field_7929_7680 T@Ref)) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| (Array T@Ref T@Field_7929_1291 Int)) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| (Array T@Ref T@Field_7929_53 Bool)) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| (Array T@Ref T@Field_7929_645 Real)) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| (Array T@Ref T@Field_29221_7680 T@Ref)) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| (Array T@Ref T@Field_29221_1291 Int)) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| (Array T@Ref T@Field_29221_29222 T@FrameType)) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| (Array T@Ref T@Field_29221_53 Bool)) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| (Array T@Ref T@Field_29221_645 Real)) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| (Array T@Ref T@Field_29234_29239 T@PolymorphicMapType_15429)) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| (Array T@Ref T@Field_32245_7680 T@Ref)) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| (Array T@Ref T@Field_32245_1291 Int)) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| (Array T@Ref T@Field_32245_32246 T@FrameType)) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| (Array T@Ref T@Field_32245_53 Bool)) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| (Array T@Ref T@Field_32245_645 Real)) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| (Array T@Ref T@Field_32258_32263 T@PolymorphicMapType_15429)) ) ) ))
(declare-fun $allocated () T@Field_14940_53)
(declare-fun globalK$ () Real)
(declare-fun old$methodPermission () T@Field_18283_645)
(declare-fun joinable$ () T@Field_14940_53)
(declare-fun Wand_readonly_for_writeonlylemma$ () T@Field_18374_1231)
(declare-fun Wand_readonly_for_writeonlyin_1$ () T@Field_14953_14954)
(declare-fun Wand_readonly_for_writeonlyout_1$ () T@Field_14953_14954)
(declare-fun Wand_readonly_for_writeonlythis_1$ () T@Field_14953_14954)
(declare-fun WandDemox$ () T@Field_18374_1231)
(declare-fun old$Wand_readonly_for_writeonlyapply$0 () T@Field_14953_14954)
(declare-fun par$Wand_readonly_for_writeonlyapply$this$_3 () T@Field_14953_14954)
(declare-fun par$Wand_readonly_for_writeonlyapply$k$ () T@Field_18283_645)
(declare-fun par$Wand_readonly_for_writeonlyWand_readonly_for_writeonly_init$this$_5 () T@Field_14953_14954)
(declare-fun par$Wand_readonly_for_writeonlyWand_readonly_for_writeonly_init$k$_1 () T@Field_18283_645)
(declare-fun par$WandDemoWandDemo_init$this$_10 () T@Field_14953_14954)
(declare-fun par$WandDemoWandDemo_init$k$_2 () T@Field_18283_645)
(declare-fun par$WandDemoWand_readonly_for_writeonly_lemma_1$this$_11 () T@Field_14953_14954)
(declare-fun par$WandDemoWand_readonly_for_writeonly_lemma_1$k$_3 () T@Field_18283_645)
(declare-fun par$WandDemoWand_readonly_for_writeonly_lemma_1$__this_1 () T@Field_14953_14954)
(declare-fun par$WandDemoWand_readonly_for_writeonly_lemma_1$__in_1 () T@Field_14953_14954)
(declare-fun par$WandDemoWand_readonly_for_writeonly_lemma_1$__out_1 () T@Field_14953_14954)
(declare-fun par$WandDemoset_val$this$_12 () T@Field_14953_14954)
(declare-fun par$WandDemoset_val$k$_4 () T@Field_18283_645)
(declare-fun par$WandDemoset_val$__v () T@Field_18374_1231)
(declare-fun par$WandDemodemo$this$_13 () T@Field_14953_14954)
(declare-fun par$WandDemodemo$k$_5 () T@Field_18283_645)
(declare-fun succHeap (T@PolymorphicMapType_14880 T@PolymorphicMapType_14880) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_14880 T@PolymorphicMapType_14880) Bool)
(declare-fun state (T@PolymorphicMapType_14880 T@PolymorphicMapType_14901) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_14901) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_15429)
(declare-fun Wand_readonly_for_writeonly$MonitorInvariant (T@Ref) T@Field_29221_29222)
(declare-fun IsPredicateField_7831_7832 (T@Field_29221_29222) Bool)
(declare-fun Wand_readonly_for_writeonlyvalid_wand$ (T@Ref) T@Field_19474_19475)
(declare-fun IsPredicateField_7855_7856 (T@Field_19474_19475) Bool)
(declare-fun WandDemo$MonitorInvariant (T@Ref) T@Field_32245_32246)
(declare-fun IsPredicateField_7880_7881 (T@Field_32245_32246) Bool)
(declare-fun WandDemoreadonly$ (T@Ref) T@Field_27622_27623)
(declare-fun IsPredicateField_7904_7905 (T@Field_27622_27623) Bool)
(declare-fun WandDemowriteonly$ (T@Ref) T@Field_33893_33894)
(declare-fun IsPredicateField_7929_7930 (T@Field_33893_33894) Bool)
(declare-fun |Wand_readonly_for_writeonlyget_in_1$'| (T@PolymorphicMapType_14880 T@Ref) T@Ref)
(declare-fun dummyFunction_7762 (T@Ref) Bool)
(declare-fun |Wand_readonly_for_writeonlyget_in_1$#triggerStateless| (T@Ref) T@Ref)
(declare-fun |Wand_readonly_for_writeonlyget_out_1$'| (T@PolymorphicMapType_14880 T@Ref) T@Ref)
(declare-fun |Wand_readonly_for_writeonlyget_out_1$#triggerStateless| (T@Ref) T@Ref)
(declare-fun |WandDemoget$'| (T@PolymorphicMapType_14880 T@Ref) Int)
(declare-fun dummyFunction_3245 (Int) Bool)
(declare-fun |WandDemoget$#triggerStateless| (T@Ref) Int)
(declare-fun |Wand_readonly_for_writeonly$MonitorInvariant#trigger_7831| (T@PolymorphicMapType_14880 T@Field_29221_29222) Bool)
(declare-fun |Wand_readonly_for_writeonly$MonitorInvariant#everUsed_7831| (T@Field_29221_29222) Bool)
(declare-fun |Wand_readonly_for_writeonlyvalid_wand$#trigger_7855| (T@PolymorphicMapType_14880 T@Field_19474_19475) Bool)
(declare-fun |Wand_readonly_for_writeonlyvalid_wand$#everUsed_7855| (T@Field_19474_19475) Bool)
(declare-fun |WandDemo$MonitorInvariant#trigger_7880| (T@PolymorphicMapType_14880 T@Field_32245_32246) Bool)
(declare-fun |WandDemo$MonitorInvariant#everUsed_7880| (T@Field_32245_32246) Bool)
(declare-fun |WandDemoreadonly$#trigger_7904| (T@PolymorphicMapType_14880 T@Field_27622_27623) Bool)
(declare-fun |WandDemoreadonly$#everUsed_7904| (T@Field_27622_27623) Bool)
(declare-fun |WandDemowriteonly$#trigger_7929| (T@PolymorphicMapType_14880 T@Field_33893_33894) Bool)
(declare-fun |WandDemowriteonly$#everUsed_7929| (T@Field_33893_33894) Bool)
(declare-fun Wand_readonly_for_writeonlyget_in_1$ (T@PolymorphicMapType_14880 T@Ref) T@Ref)
(declare-fun Wand_readonly_for_writeonlyget_out_1$ (T@PolymorphicMapType_14880 T@Ref) T@Ref)
(declare-fun WandDemoget$ (T@PolymorphicMapType_14880 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_14880 T@PolymorphicMapType_14880 T@PolymorphicMapType_14901) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7880 (T@Field_32245_32246) T@Field_32258_32263)
(declare-fun HasDirectPerm_32245_7856 (T@PolymorphicMapType_14901 T@Ref T@Field_32245_32246) Bool)
(declare-fun PredicateMaskField_7831 (T@Field_29221_29222) T@Field_29234_29239)
(declare-fun HasDirectPerm_29221_7856 (T@PolymorphicMapType_14901 T@Ref T@Field_29221_29222) Bool)
(declare-fun PredicateMaskField_7929 (T@Field_33893_33894) T@Field_33906_33911)
(declare-fun HasDirectPerm_7929_7930 (T@PolymorphicMapType_14901 T@Ref T@Field_33893_33894) Bool)
(declare-fun PredicateMaskField_7904 (T@Field_27622_27623) T@Field_28913_28918)
(declare-fun HasDirectPerm_7904_7905 (T@PolymorphicMapType_14901 T@Ref T@Field_27622_27623) Bool)
(declare-fun PredicateMaskField_7855 (T@Field_19474_19475) T@Field_22165_22170)
(declare-fun HasDirectPerm_7855_7856 (T@PolymorphicMapType_14901 T@Ref T@Field_19474_19475) Bool)
(declare-fun IsPredicateField_7679_57581 (T@Field_7679_7856) Bool)
(declare-fun PredicateMaskField_7679 (T@Field_7679_7856) T@Field_7679_22170)
(declare-fun HasDirectPerm_7679_7856 (T@PolymorphicMapType_14901 T@Ref T@Field_7679_7856) Bool)
(declare-fun IsWandField_32245_70483 (T@Field_32245_32246) Bool)
(declare-fun WandMaskField_32245 (T@Field_32245_32246) T@Field_32258_32263)
(declare-fun IsWandField_29221_70126 (T@Field_29221_29222) Bool)
(declare-fun WandMaskField_29221 (T@Field_29221_29222) T@Field_29234_29239)
(declare-fun IsWandField_7929_69769 (T@Field_33893_33894) Bool)
(declare-fun WandMaskField_7929 (T@Field_33893_33894) T@Field_33906_33911)
(declare-fun IsWandField_7904_69412 (T@Field_27622_27623) Bool)
(declare-fun WandMaskField_7904 (T@Field_27622_27623) T@Field_28913_28918)
(declare-fun IsWandField_7855_69055 (T@Field_19474_19475) Bool)
(declare-fun WandMaskField_7855 (T@Field_19474_19475) T@Field_22165_22170)
(declare-fun IsWandField_7679_68698 (T@Field_7679_7856) Bool)
(declare-fun WandMaskField_7679 (T@Field_7679_7856) T@Field_7679_22170)
(declare-fun |Wand_readonly_for_writeonly$MonitorInvariant#sm| (T@Ref) T@Field_29234_29239)
(declare-fun |Wand_readonly_for_writeonlyvalid_wand$#sm| (T@Ref) T@Field_22165_22170)
(declare-fun |WandDemo$MonitorInvariant#sm| (T@Ref) T@Field_32258_32263)
(declare-fun |WandDemoreadonly$#sm| (T@Ref) T@Field_28913_28918)
(declare-fun |WandDemowriteonly$#sm| (T@Ref) T@Field_33906_33911)
(declare-fun dummyHeap () T@PolymorphicMapType_14880)
(declare-fun ZeroMask () T@PolymorphicMapType_14901)
(declare-fun InsidePredicate_33893_33893 (T@Field_33893_33894 T@FrameType T@Field_33893_33894 T@FrameType) Bool)
(declare-fun InsidePredicate_32245_32245 (T@Field_32245_32246 T@FrameType T@Field_32245_32246 T@FrameType) Bool)
(declare-fun InsidePredicate_29221_29221 (T@Field_29221_29222 T@FrameType T@Field_29221_29222 T@FrameType) Bool)
(declare-fun InsidePredicate_27622_27622 (T@Field_27622_27623 T@FrameType T@Field_27622_27623 T@FrameType) Bool)
(declare-fun InsidePredicate_19474_19474 (T@Field_19474_19475 T@FrameType T@Field_19474_19475 T@FrameType) Bool)
(declare-fun InsidePredicate_14940_14940 (T@Field_7679_7856 T@FrameType T@Field_7679_7856 T@FrameType) Bool)
(declare-fun IsPredicateField_7672_645 (T@Field_18283_645) Bool)
(declare-fun IsWandField_7672_645 (T@Field_18283_645) Bool)
(declare-fun IsPredicateField_7675_1216 (T@Field_14940_53) Bool)
(declare-fun IsWandField_7675_1216 (T@Field_14940_53) Bool)
(declare-fun IsPredicateField_7677_1231 (T@Field_18374_1231) Bool)
(declare-fun IsWandField_7677_1231 (T@Field_18374_1231) Bool)
(declare-fun IsPredicateField_7679_7680 (T@Field_14953_14954) Bool)
(declare-fun IsWandField_7679_7680 (T@Field_14953_14954) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_32245_94586 (T@Field_32258_32263) Bool)
(declare-fun IsWandField_32245_94602 (T@Field_32258_32263) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_32245_645 (T@Field_32245_645) Bool)
(declare-fun IsWandField_32245_645 (T@Field_32245_645) Bool)
(declare-fun IsPredicateField_32245_53 (T@Field_32245_53) Bool)
(declare-fun IsWandField_32245_53 (T@Field_32245_53) Bool)
(declare-fun IsPredicateField_32245_7680 (T@Field_32245_7680) Bool)
(declare-fun IsWandField_32245_7680 (T@Field_32245_7680) Bool)
(declare-fun IsPredicateField_32245_1231 (T@Field_32245_1291) Bool)
(declare-fun IsWandField_32245_1231 (T@Field_32245_1291) Bool)
(declare-fun IsPredicateField_29221_93587 (T@Field_29234_29239) Bool)
(declare-fun IsWandField_29221_93603 (T@Field_29234_29239) Bool)
(declare-fun IsPredicateField_29221_645 (T@Field_29221_645) Bool)
(declare-fun IsWandField_29221_645 (T@Field_29221_645) Bool)
(declare-fun IsPredicateField_29221_53 (T@Field_29221_53) Bool)
(declare-fun IsWandField_29221_53 (T@Field_29221_53) Bool)
(declare-fun IsPredicateField_29221_7680 (T@Field_29221_7680) Bool)
(declare-fun IsWandField_29221_7680 (T@Field_29221_7680) Bool)
(declare-fun IsPredicateField_29221_1231 (T@Field_29221_1291) Bool)
(declare-fun IsWandField_29221_1231 (T@Field_29221_1291) Bool)
(declare-fun IsPredicateField_7929_92588 (T@Field_33906_33911) Bool)
(declare-fun IsWandField_7929_92604 (T@Field_33906_33911) Bool)
(declare-fun IsPredicateField_7929_645 (T@Field_7929_645) Bool)
(declare-fun IsWandField_7929_645 (T@Field_7929_645) Bool)
(declare-fun IsPredicateField_7929_53 (T@Field_7929_53) Bool)
(declare-fun IsWandField_7929_53 (T@Field_7929_53) Bool)
(declare-fun IsPredicateField_7929_7680 (T@Field_7929_7680) Bool)
(declare-fun IsWandField_7929_7680 (T@Field_7929_7680) Bool)
(declare-fun IsPredicateField_7929_1231 (T@Field_7929_1291) Bool)
(declare-fun IsWandField_7929_1231 (T@Field_7929_1291) Bool)
(declare-fun IsPredicateField_7904_91589 (T@Field_28913_28918) Bool)
(declare-fun IsWandField_7904_91605 (T@Field_28913_28918) Bool)
(declare-fun IsPredicateField_7904_645 (T@Field_7904_645) Bool)
(declare-fun IsWandField_7904_645 (T@Field_7904_645) Bool)
(declare-fun IsPredicateField_7904_53 (T@Field_7904_53) Bool)
(declare-fun IsWandField_7904_53 (T@Field_7904_53) Bool)
(declare-fun IsPredicateField_7904_7680 (T@Field_7904_7680) Bool)
(declare-fun IsWandField_7904_7680 (T@Field_7904_7680) Bool)
(declare-fun IsPredicateField_7904_1231 (T@Field_7904_1291) Bool)
(declare-fun IsWandField_7904_1231 (T@Field_7904_1291) Bool)
(declare-fun IsPredicateField_7677_90590 (T@Field_7679_22170) Bool)
(declare-fun IsWandField_7677_90606 (T@Field_7679_22170) Bool)
(declare-fun IsPredicateField_7855_89647 (T@Field_22165_22170) Bool)
(declare-fun IsWandField_7855_89663 (T@Field_22165_22170) Bool)
(declare-fun IsPredicateField_7855_645 (T@Field_7855_645) Bool)
(declare-fun IsWandField_7855_645 (T@Field_7855_645) Bool)
(declare-fun IsPredicateField_7855_53 (T@Field_7855_53) Bool)
(declare-fun IsWandField_7855_53 (T@Field_7855_53) Bool)
(declare-fun IsPredicateField_7855_7680 (T@Field_7855_7680) Bool)
(declare-fun IsWandField_7855_7680 (T@Field_7855_7680) Bool)
(declare-fun IsPredicateField_7855_1231 (T@Field_7855_1291) Bool)
(declare-fun IsWandField_7855_1231 (T@Field_7855_1291) Bool)
(declare-fun HasDirectPerm_32245_57293 (T@PolymorphicMapType_14901 T@Ref T@Field_32258_32263) Bool)
(declare-fun HasDirectPerm_32245_645 (T@PolymorphicMapType_14901 T@Ref T@Field_32245_645) Bool)
(declare-fun HasDirectPerm_32245_53 (T@PolymorphicMapType_14901 T@Ref T@Field_32245_53) Bool)
(declare-fun HasDirectPerm_32245_1291 (T@PolymorphicMapType_14901 T@Ref T@Field_32245_1291) Bool)
(declare-fun HasDirectPerm_32245_7680 (T@PolymorphicMapType_14901 T@Ref T@Field_32245_7680) Bool)
(declare-fun HasDirectPerm_29221_55894 (T@PolymorphicMapType_14901 T@Ref T@Field_29234_29239) Bool)
(declare-fun HasDirectPerm_29221_645 (T@PolymorphicMapType_14901 T@Ref T@Field_29221_645) Bool)
(declare-fun HasDirectPerm_29221_53 (T@PolymorphicMapType_14901 T@Ref T@Field_29221_53) Bool)
(declare-fun HasDirectPerm_29221_1291 (T@PolymorphicMapType_14901 T@Ref T@Field_29221_1291) Bool)
(declare-fun HasDirectPerm_29221_7680 (T@PolymorphicMapType_14901 T@Ref T@Field_29221_7680) Bool)
(declare-fun HasDirectPerm_7929_54538 (T@PolymorphicMapType_14901 T@Ref T@Field_33906_33911) Bool)
(declare-fun HasDirectPerm_7929_645 (T@PolymorphicMapType_14901 T@Ref T@Field_7929_645) Bool)
(declare-fun HasDirectPerm_7929_53 (T@PolymorphicMapType_14901 T@Ref T@Field_7929_53) Bool)
(declare-fun HasDirectPerm_7929_1291 (T@PolymorphicMapType_14901 T@Ref T@Field_7929_1291) Bool)
(declare-fun HasDirectPerm_7929_7680 (T@PolymorphicMapType_14901 T@Ref T@Field_7929_7680) Bool)
(declare-fun HasDirectPerm_7904_53219 (T@PolymorphicMapType_14901 T@Ref T@Field_28913_28918) Bool)
(declare-fun HasDirectPerm_7904_645 (T@PolymorphicMapType_14901 T@Ref T@Field_7904_645) Bool)
(declare-fun HasDirectPerm_7904_53 (T@PolymorphicMapType_14901 T@Ref T@Field_7904_53) Bool)
(declare-fun HasDirectPerm_7904_1291 (T@PolymorphicMapType_14901 T@Ref T@Field_7904_1291) Bool)
(declare-fun HasDirectPerm_7904_7680 (T@PolymorphicMapType_14901 T@Ref T@Field_7904_7680) Bool)
(declare-fun HasDirectPerm_7855_51900 (T@PolymorphicMapType_14901 T@Ref T@Field_22165_22170) Bool)
(declare-fun HasDirectPerm_7855_645 (T@PolymorphicMapType_14901 T@Ref T@Field_7855_645) Bool)
(declare-fun HasDirectPerm_7855_53 (T@PolymorphicMapType_14901 T@Ref T@Field_7855_53) Bool)
(declare-fun HasDirectPerm_7855_1291 (T@PolymorphicMapType_14901 T@Ref T@Field_7855_1291) Bool)
(declare-fun HasDirectPerm_7855_7680 (T@PolymorphicMapType_14901 T@Ref T@Field_7855_7680) Bool)
(declare-fun HasDirectPerm_7679_50538 (T@PolymorphicMapType_14901 T@Ref T@Field_7679_22170) Bool)
(declare-fun HasDirectPerm_7679_645 (T@PolymorphicMapType_14901 T@Ref T@Field_18283_645) Bool)
(declare-fun HasDirectPerm_7679_53 (T@PolymorphicMapType_14901 T@Ref T@Field_14940_53) Bool)
(declare-fun HasDirectPerm_7688_1291 (T@PolymorphicMapType_14901 T@Ref T@Field_18374_1231) Bool)
(declare-fun HasDirectPerm_7679_7680 (T@PolymorphicMapType_14901 T@Ref T@Field_14953_14954) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_14901 T@PolymorphicMapType_14901 T@PolymorphicMapType_14901) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Wand_readonly_for_writeonlyget_in_1$#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun |Wand_readonly_for_writeonlyget_out_1$#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun |WandDemoget$#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_7831_7832 (T@Field_29221_29222) Int)
(declare-fun getPredWandId_7855_7856 (T@Field_19474_19475) Int)
(declare-fun getPredWandId_7880_7881 (T@Field_32245_32246) Int)
(declare-fun getPredWandId_7904_7905 (T@Field_27622_27623) Int)
(declare-fun getPredWandId_7929_7930 (T@Field_33893_33894) Int)
(declare-fun InsidePredicate_33893_32245 (T@Field_33893_33894 T@FrameType T@Field_32245_32246 T@FrameType) Bool)
(declare-fun InsidePredicate_33893_29221 (T@Field_33893_33894 T@FrameType T@Field_29221_29222 T@FrameType) Bool)
(declare-fun InsidePredicate_33893_27622 (T@Field_33893_33894 T@FrameType T@Field_27622_27623 T@FrameType) Bool)
(declare-fun InsidePredicate_33893_19474 (T@Field_33893_33894 T@FrameType T@Field_19474_19475 T@FrameType) Bool)
(declare-fun InsidePredicate_33893_14940 (T@Field_33893_33894 T@FrameType T@Field_7679_7856 T@FrameType) Bool)
(declare-fun InsidePredicate_32245_33893 (T@Field_32245_32246 T@FrameType T@Field_33893_33894 T@FrameType) Bool)
(declare-fun InsidePredicate_32245_29221 (T@Field_32245_32246 T@FrameType T@Field_29221_29222 T@FrameType) Bool)
(declare-fun InsidePredicate_32245_27622 (T@Field_32245_32246 T@FrameType T@Field_27622_27623 T@FrameType) Bool)
(declare-fun InsidePredicate_32245_19474 (T@Field_32245_32246 T@FrameType T@Field_19474_19475 T@FrameType) Bool)
(declare-fun InsidePredicate_32245_14940 (T@Field_32245_32246 T@FrameType T@Field_7679_7856 T@FrameType) Bool)
(declare-fun InsidePredicate_29221_33893 (T@Field_29221_29222 T@FrameType T@Field_33893_33894 T@FrameType) Bool)
(declare-fun InsidePredicate_29221_32245 (T@Field_29221_29222 T@FrameType T@Field_32245_32246 T@FrameType) Bool)
(declare-fun InsidePredicate_29221_27622 (T@Field_29221_29222 T@FrameType T@Field_27622_27623 T@FrameType) Bool)
(declare-fun InsidePredicate_29221_19474 (T@Field_29221_29222 T@FrameType T@Field_19474_19475 T@FrameType) Bool)
(declare-fun InsidePredicate_29221_14940 (T@Field_29221_29222 T@FrameType T@Field_7679_7856 T@FrameType) Bool)
(declare-fun InsidePredicate_27622_33893 (T@Field_27622_27623 T@FrameType T@Field_33893_33894 T@FrameType) Bool)
(declare-fun InsidePredicate_27622_32245 (T@Field_27622_27623 T@FrameType T@Field_32245_32246 T@FrameType) Bool)
(declare-fun InsidePredicate_27622_29221 (T@Field_27622_27623 T@FrameType T@Field_29221_29222 T@FrameType) Bool)
(declare-fun InsidePredicate_27622_19474 (T@Field_27622_27623 T@FrameType T@Field_19474_19475 T@FrameType) Bool)
(declare-fun InsidePredicate_27622_14940 (T@Field_27622_27623 T@FrameType T@Field_7679_7856 T@FrameType) Bool)
(declare-fun InsidePredicate_19474_33893 (T@Field_19474_19475 T@FrameType T@Field_33893_33894 T@FrameType) Bool)
(declare-fun InsidePredicate_19474_32245 (T@Field_19474_19475 T@FrameType T@Field_32245_32246 T@FrameType) Bool)
(declare-fun InsidePredicate_19474_29221 (T@Field_19474_19475 T@FrameType T@Field_29221_29222 T@FrameType) Bool)
(declare-fun InsidePredicate_19474_27622 (T@Field_19474_19475 T@FrameType T@Field_27622_27623 T@FrameType) Bool)
(declare-fun InsidePredicate_19474_14940 (T@Field_19474_19475 T@FrameType T@Field_7679_7856 T@FrameType) Bool)
(declare-fun InsidePredicate_14940_33893 (T@Field_7679_7856 T@FrameType T@Field_33893_33894 T@FrameType) Bool)
(declare-fun InsidePredicate_14940_32245 (T@Field_7679_7856 T@FrameType T@Field_32245_32246 T@FrameType) Bool)
(declare-fun InsidePredicate_14940_29221 (T@Field_7679_7856 T@FrameType T@Field_29221_29222 T@FrameType) Bool)
(declare-fun InsidePredicate_14940_27622 (T@Field_7679_7856 T@FrameType T@Field_27622_27623 T@FrameType) Bool)
(declare-fun InsidePredicate_14940_19474 (T@Field_7679_7856 T@FrameType T@Field_19474_19475 T@FrameType) Bool)
(assert (and (distinct $allocated joinable$)(distinct old$methodPermission par$Wand_readonly_for_writeonlyapply$k$ par$Wand_readonly_for_writeonlyWand_readonly_for_writeonly_init$k$_1 par$WandDemoWandDemo_init$k$_2 par$WandDemoWand_readonly_for_writeonly_lemma_1$k$_3 par$WandDemoset_val$k$_4 par$WandDemodemo$k$_5)(distinct Wand_readonly_for_writeonlylemma$ WandDemox$ par$WandDemoset_val$__v)(distinct Wand_readonly_for_writeonlyin_1$ Wand_readonly_for_writeonlyout_1$ Wand_readonly_for_writeonlythis_1$ old$Wand_readonly_for_writeonlyapply$0 par$Wand_readonly_for_writeonlyapply$this$_3 par$Wand_readonly_for_writeonlyWand_readonly_for_writeonly_init$this$_5 par$WandDemoWandDemo_init$this$_10 par$WandDemoWand_readonly_for_writeonly_lemma_1$this$_11 par$WandDemoWand_readonly_for_writeonly_lemma_1$__this_1 par$WandDemoWand_readonly_for_writeonly_lemma_1$__in_1 par$WandDemoWand_readonly_for_writeonly_lemma_1$__out_1 par$WandDemoset_val$this$_12 par$WandDemodemo$this$_13))
)
(assert (forall ((Heap0 T@PolymorphicMapType_14880) (Heap1 T@PolymorphicMapType_14880) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_14880) (Mask T@PolymorphicMapType_14901) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_14880) (Heap1@@0 T@PolymorphicMapType_14880) (Heap2 T@PolymorphicMapType_14880) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_33906_33911) ) (!  (not (select (|PolymorphicMapType_15429_33893_66766#PolymorphicMapType_15429| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_33893_66766#PolymorphicMapType_15429| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_33893_33894) ) (!  (not (select (|PolymorphicMapType_15429_33893_19475#PolymorphicMapType_15429| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_33893_19475#PolymorphicMapType_15429| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_7929_645) ) (!  (not (select (|PolymorphicMapType_15429_33893_645#PolymorphicMapType_15429| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_33893_645#PolymorphicMapType_15429| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7929_53) ) (!  (not (select (|PolymorphicMapType_15429_33893_53#PolymorphicMapType_15429| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_33893_53#PolymorphicMapType_15429| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7929_7680) ) (!  (not (select (|PolymorphicMapType_15429_33893_7680#PolymorphicMapType_15429| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_33893_7680#PolymorphicMapType_15429| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_7929_1291) ) (!  (not (select (|PolymorphicMapType_15429_33893_1231#PolymorphicMapType_15429| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_33893_1231#PolymorphicMapType_15429| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_32258_32263) ) (!  (not (select (|PolymorphicMapType_15429_32245_65520#PolymorphicMapType_15429| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_32245_65520#PolymorphicMapType_15429| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_32245_32246) ) (!  (not (select (|PolymorphicMapType_15429_32245_19475#PolymorphicMapType_15429| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_32245_19475#PolymorphicMapType_15429| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_32245_645) ) (!  (not (select (|PolymorphicMapType_15429_32245_645#PolymorphicMapType_15429| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_32245_645#PolymorphicMapType_15429| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_32245_53) ) (!  (not (select (|PolymorphicMapType_15429_32245_53#PolymorphicMapType_15429| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_32245_53#PolymorphicMapType_15429| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_32245_7680) ) (!  (not (select (|PolymorphicMapType_15429_32245_7680#PolymorphicMapType_15429| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_32245_7680#PolymorphicMapType_15429| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_32245_1291) ) (!  (not (select (|PolymorphicMapType_15429_32245_1231#PolymorphicMapType_15429| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_32245_1231#PolymorphicMapType_15429| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_29234_29239) ) (!  (not (select (|PolymorphicMapType_15429_29221_64274#PolymorphicMapType_15429| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_29221_64274#PolymorphicMapType_15429| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_29221_29222) ) (!  (not (select (|PolymorphicMapType_15429_29221_19475#PolymorphicMapType_15429| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_29221_19475#PolymorphicMapType_15429| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_29221_645) ) (!  (not (select (|PolymorphicMapType_15429_29221_645#PolymorphicMapType_15429| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_29221_645#PolymorphicMapType_15429| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_29221_53) ) (!  (not (select (|PolymorphicMapType_15429_29221_53#PolymorphicMapType_15429| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_29221_53#PolymorphicMapType_15429| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_29221_7680) ) (!  (not (select (|PolymorphicMapType_15429_29221_7680#PolymorphicMapType_15429| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_29221_7680#PolymorphicMapType_15429| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_29221_1291) ) (!  (not (select (|PolymorphicMapType_15429_29221_1231#PolymorphicMapType_15429| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_29221_1231#PolymorphicMapType_15429| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_28913_28918) ) (!  (not (select (|PolymorphicMapType_15429_27622_63028#PolymorphicMapType_15429| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_27622_63028#PolymorphicMapType_15429| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_27622_27623) ) (!  (not (select (|PolymorphicMapType_15429_27622_19475#PolymorphicMapType_15429| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_27622_19475#PolymorphicMapType_15429| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_7904_645) ) (!  (not (select (|PolymorphicMapType_15429_27622_645#PolymorphicMapType_15429| ZeroPMask) o_2@@19 f_4@@19))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_27622_645#PolymorphicMapType_15429| ZeroPMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_7904_53) ) (!  (not (select (|PolymorphicMapType_15429_27622_53#PolymorphicMapType_15429| ZeroPMask) o_2@@20 f_4@@20))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_27622_53#PolymorphicMapType_15429| ZeroPMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_7904_7680) ) (!  (not (select (|PolymorphicMapType_15429_27622_7680#PolymorphicMapType_15429| ZeroPMask) o_2@@21 f_4@@21))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_27622_7680#PolymorphicMapType_15429| ZeroPMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_7904_1291) ) (!  (not (select (|PolymorphicMapType_15429_27622_1231#PolymorphicMapType_15429| ZeroPMask) o_2@@22 f_4@@22))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_27622_1231#PolymorphicMapType_15429| ZeroPMask) o_2@@22 f_4@@22))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_22165_22170) ) (!  (not (select (|PolymorphicMapType_15429_19474_61782#PolymorphicMapType_15429| ZeroPMask) o_2@@23 f_4@@23))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_19474_61782#PolymorphicMapType_15429| ZeroPMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_19474_19475) ) (!  (not (select (|PolymorphicMapType_15429_19474_19475#PolymorphicMapType_15429| ZeroPMask) o_2@@24 f_4@@24))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_19474_19475#PolymorphicMapType_15429| ZeroPMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_7855_645) ) (!  (not (select (|PolymorphicMapType_15429_19474_645#PolymorphicMapType_15429| ZeroPMask) o_2@@25 f_4@@25))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_19474_645#PolymorphicMapType_15429| ZeroPMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_7855_53) ) (!  (not (select (|PolymorphicMapType_15429_19474_53#PolymorphicMapType_15429| ZeroPMask) o_2@@26 f_4@@26))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_19474_53#PolymorphicMapType_15429| ZeroPMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_7855_7680) ) (!  (not (select (|PolymorphicMapType_15429_19474_7680#PolymorphicMapType_15429| ZeroPMask) o_2@@27 f_4@@27))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_19474_7680#PolymorphicMapType_15429| ZeroPMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_7855_1291) ) (!  (not (select (|PolymorphicMapType_15429_19474_1231#PolymorphicMapType_15429| ZeroPMask) o_2@@28 f_4@@28))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_19474_1231#PolymorphicMapType_15429| ZeroPMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_7679_22170) ) (!  (not (select (|PolymorphicMapType_15429_7677_60536#PolymorphicMapType_15429| ZeroPMask) o_2@@29 f_4@@29))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_7677_60536#PolymorphicMapType_15429| ZeroPMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_7679_7856) ) (!  (not (select (|PolymorphicMapType_15429_7677_19475#PolymorphicMapType_15429| ZeroPMask) o_2@@30 f_4@@30))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_7677_19475#PolymorphicMapType_15429| ZeroPMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_18283_645) ) (!  (not (select (|PolymorphicMapType_15429_7677_645#PolymorphicMapType_15429| ZeroPMask) o_2@@31 f_4@@31))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_7677_645#PolymorphicMapType_15429| ZeroPMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_14940_53) ) (!  (not (select (|PolymorphicMapType_15429_7677_53#PolymorphicMapType_15429| ZeroPMask) o_2@@32 f_4@@32))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_7677_53#PolymorphicMapType_15429| ZeroPMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_14953_14954) ) (!  (not (select (|PolymorphicMapType_15429_7679_7680#PolymorphicMapType_15429| ZeroPMask) o_2@@33 f_4@@33))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_7679_7680#PolymorphicMapType_15429| ZeroPMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_18374_1231) ) (!  (not (select (|PolymorphicMapType_15429_7677_1231#PolymorphicMapType_15429| ZeroPMask) o_2@@34 f_4@@34))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15429_7677_1231#PolymorphicMapType_15429| ZeroPMask) o_2@@34 f_4@@34))
)))
(assert (forall ((this$ T@Ref) ) (! (IsPredicateField_7831_7832 (Wand_readonly_for_writeonly$MonitorInvariant this$))
 :qid |stdinbpl.621:15|
 :skolemid |35|
 :pattern ( (Wand_readonly_for_writeonly$MonitorInvariant this$))
)))
(assert (forall ((this$_4 T@Ref) ) (! (IsPredicateField_7855_7856 (Wand_readonly_for_writeonlyvalid_wand$ this$_4))
 :qid |stdinbpl.671:15|
 :skolemid |41|
 :pattern ( (Wand_readonly_for_writeonlyvalid_wand$ this$_4))
)))
(assert (forall ((this$_6 T@Ref) ) (! (IsPredicateField_7880_7881 (WandDemo$MonitorInvariant this$_6))
 :qid |stdinbpl.788:15|
 :skolemid |47|
 :pattern ( (WandDemo$MonitorInvariant this$_6))
)))
(assert (forall ((this$_7 T@Ref) ) (! (IsPredicateField_7904_7905 (WandDemoreadonly$ this$_7))
 :qid |stdinbpl.838:15|
 :skolemid |53|
 :pattern ( (WandDemoreadonly$ this$_7))
)))
(assert (forall ((this$_8 T@Ref) ) (! (IsPredicateField_7929_7930 (WandDemowriteonly$ this$_8))
 :qid |stdinbpl.895:15|
 :skolemid |59|
 :pattern ( (WandDemowriteonly$ this$_8))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_14880) (this$_1 T@Ref) ) (! (dummyFunction_7762 (|Wand_readonly_for_writeonlyget_in_1$#triggerStateless| this$_1))
 :qid |stdinbpl.282:15|
 :skolemid |23|
 :pattern ( (|Wand_readonly_for_writeonlyget_in_1$'| Heap@@0 this$_1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_14880) (this$_2 T@Ref) ) (! (dummyFunction_7762 (|Wand_readonly_for_writeonlyget_out_1$#triggerStateless| this$_2))
 :qid |stdinbpl.406:15|
 :skolemid |27|
 :pattern ( (|Wand_readonly_for_writeonlyget_out_1$'| Heap@@1 this$_2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_14880) (this$_9 T@Ref) ) (! (dummyFunction_3245 (|WandDemoget$#triggerStateless| this$_9))
 :qid |stdinbpl.530:15|
 :skolemid |31|
 :pattern ( (|WandDemoget$'| Heap@@2 this$_9))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_14880) (this$@@0 T@Ref) ) (! (|Wand_readonly_for_writeonly$MonitorInvariant#everUsed_7831| (Wand_readonly_for_writeonly$MonitorInvariant this$@@0))
 :qid |stdinbpl.640:15|
 :skolemid |39|
 :pattern ( (|Wand_readonly_for_writeonly$MonitorInvariant#trigger_7831| Heap@@3 (Wand_readonly_for_writeonly$MonitorInvariant this$@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_14880) (this$_4@@0 T@Ref) ) (! (|Wand_readonly_for_writeonlyvalid_wand$#everUsed_7855| (Wand_readonly_for_writeonlyvalid_wand$ this$_4@@0))
 :qid |stdinbpl.690:15|
 :skolemid |45|
 :pattern ( (|Wand_readonly_for_writeonlyvalid_wand$#trigger_7855| Heap@@4 (Wand_readonly_for_writeonlyvalid_wand$ this$_4@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_14880) (this$_6@@0 T@Ref) ) (! (|WandDemo$MonitorInvariant#everUsed_7880| (WandDemo$MonitorInvariant this$_6@@0))
 :qid |stdinbpl.807:15|
 :skolemid |51|
 :pattern ( (|WandDemo$MonitorInvariant#trigger_7880| Heap@@5 (WandDemo$MonitorInvariant this$_6@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_14880) (this$_7@@0 T@Ref) ) (! (|WandDemoreadonly$#everUsed_7904| (WandDemoreadonly$ this$_7@@0))
 :qid |stdinbpl.857:15|
 :skolemid |57|
 :pattern ( (|WandDemoreadonly$#trigger_7904| Heap@@6 (WandDemoreadonly$ this$_7@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_14880) (this$_8@@0 T@Ref) ) (! (|WandDemowriteonly$#everUsed_7929| (WandDemowriteonly$ this$_8@@0))
 :qid |stdinbpl.914:15|
 :skolemid |63|
 :pattern ( (|WandDemowriteonly$#trigger_7929| Heap@@7 (WandDemowriteonly$ this$_8@@0)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_14880) (this$_1@@0 T@Ref) ) (!  (and (= (Wand_readonly_for_writeonlyget_in_1$ Heap@@8 this$_1@@0) (|Wand_readonly_for_writeonlyget_in_1$'| Heap@@8 this$_1@@0)) (dummyFunction_7762 (|Wand_readonly_for_writeonlyget_in_1$#triggerStateless| this$_1@@0)))
 :qid |stdinbpl.278:15|
 :skolemid |22|
 :pattern ( (Wand_readonly_for_writeonlyget_in_1$ Heap@@8 this$_1@@0))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_14880) (this$_2@@0 T@Ref) ) (!  (and (= (Wand_readonly_for_writeonlyget_out_1$ Heap@@9 this$_2@@0) (|Wand_readonly_for_writeonlyget_out_1$'| Heap@@9 this$_2@@0)) (dummyFunction_7762 (|Wand_readonly_for_writeonlyget_out_1$#triggerStateless| this$_2@@0)))
 :qid |stdinbpl.402:15|
 :skolemid |26|
 :pattern ( (Wand_readonly_for_writeonlyget_out_1$ Heap@@9 this$_2@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_14880) (this$_9@@0 T@Ref) ) (!  (and (= (WandDemoget$ Heap@@10 this$_9@@0) (|WandDemoget$'| Heap@@10 this$_9@@0)) (dummyFunction_3245 (|WandDemoget$#triggerStateless| this$_9@@0)))
 :qid |stdinbpl.526:15|
 :skolemid |30|
 :pattern ( (WandDemoget$ Heap@@10 this$_9@@0))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_14880) (ExhaleHeap T@PolymorphicMapType_14880) (Mask@@0 T@PolymorphicMapType_14901) (pm_f T@Field_32245_32246) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_32245_7856 Mask@@0 null pm_f) (IsPredicateField_7880_7881 pm_f)) (= (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@11) null (PredicateMaskField_7880 pm_f)) (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| ExhaleHeap) null (PredicateMaskField_7880 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap Mask@@0) (IsPredicateField_7880_7881 pm_f) (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| ExhaleHeap) null (PredicateMaskField_7880 pm_f)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_14880) (ExhaleHeap@@0 T@PolymorphicMapType_14880) (Mask@@1 T@PolymorphicMapType_14901) (pm_f@@0 T@Field_29221_29222) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_29221_7856 Mask@@1 null pm_f@@0) (IsPredicateField_7831_7832 pm_f@@0)) (= (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@12) null (PredicateMaskField_7831 pm_f@@0)) (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| ExhaleHeap@@0) null (PredicateMaskField_7831 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@0 Mask@@1) (IsPredicateField_7831_7832 pm_f@@0) (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| ExhaleHeap@@0) null (PredicateMaskField_7831 pm_f@@0)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_14880) (ExhaleHeap@@1 T@PolymorphicMapType_14880) (Mask@@2 T@PolymorphicMapType_14901) (pm_f@@1 T@Field_33893_33894) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_7929_7930 Mask@@2 null pm_f@@1) (IsPredicateField_7929_7930 pm_f@@1)) (= (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@13) null (PredicateMaskField_7929 pm_f@@1)) (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| ExhaleHeap@@1) null (PredicateMaskField_7929 pm_f@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@1 Mask@@2) (IsPredicateField_7929_7930 pm_f@@1) (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| ExhaleHeap@@1) null (PredicateMaskField_7929 pm_f@@1)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_14880) (ExhaleHeap@@2 T@PolymorphicMapType_14880) (Mask@@3 T@PolymorphicMapType_14901) (pm_f@@2 T@Field_27622_27623) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_7904_7905 Mask@@3 null pm_f@@2) (IsPredicateField_7904_7905 pm_f@@2)) (= (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@14) null (PredicateMaskField_7904 pm_f@@2)) (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| ExhaleHeap@@2) null (PredicateMaskField_7904 pm_f@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@2 Mask@@3) (IsPredicateField_7904_7905 pm_f@@2) (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| ExhaleHeap@@2) null (PredicateMaskField_7904 pm_f@@2)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_14880) (ExhaleHeap@@3 T@PolymorphicMapType_14880) (Mask@@4 T@PolymorphicMapType_14901) (pm_f@@3 T@Field_19474_19475) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_7855_7856 Mask@@4 null pm_f@@3) (IsPredicateField_7855_7856 pm_f@@3)) (= (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@15) null (PredicateMaskField_7855 pm_f@@3)) (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| ExhaleHeap@@3) null (PredicateMaskField_7855 pm_f@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@3 Mask@@4) (IsPredicateField_7855_7856 pm_f@@3) (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| ExhaleHeap@@3) null (PredicateMaskField_7855 pm_f@@3)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_14880) (ExhaleHeap@@4 T@PolymorphicMapType_14880) (Mask@@5 T@PolymorphicMapType_14901) (pm_f@@4 T@Field_7679_7856) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_7679_7856 Mask@@5 null pm_f@@4) (IsPredicateField_7679_57581 pm_f@@4)) (= (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@16) null (PredicateMaskField_7679 pm_f@@4)) (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| ExhaleHeap@@4) null (PredicateMaskField_7679 pm_f@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@4 Mask@@5) (IsPredicateField_7679_57581 pm_f@@4) (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| ExhaleHeap@@4) null (PredicateMaskField_7679 pm_f@@4)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_14880) (ExhaleHeap@@5 T@PolymorphicMapType_14880) (Mask@@6 T@PolymorphicMapType_14901) (pm_f@@5 T@Field_32245_32246) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_32245_7856 Mask@@6 null pm_f@@5) (IsWandField_32245_70483 pm_f@@5)) (= (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@17) null (WandMaskField_32245 pm_f@@5)) (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| ExhaleHeap@@5) null (WandMaskField_32245 pm_f@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@5 Mask@@6) (IsWandField_32245_70483 pm_f@@5) (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| ExhaleHeap@@5) null (WandMaskField_32245 pm_f@@5)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_14880) (ExhaleHeap@@6 T@PolymorphicMapType_14880) (Mask@@7 T@PolymorphicMapType_14901) (pm_f@@6 T@Field_29221_29222) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_29221_7856 Mask@@7 null pm_f@@6) (IsWandField_29221_70126 pm_f@@6)) (= (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@18) null (WandMaskField_29221 pm_f@@6)) (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| ExhaleHeap@@6) null (WandMaskField_29221 pm_f@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@6 Mask@@7) (IsWandField_29221_70126 pm_f@@6) (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| ExhaleHeap@@6) null (WandMaskField_29221 pm_f@@6)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_14880) (ExhaleHeap@@7 T@PolymorphicMapType_14880) (Mask@@8 T@PolymorphicMapType_14901) (pm_f@@7 T@Field_33893_33894) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_7929_7930 Mask@@8 null pm_f@@7) (IsWandField_7929_69769 pm_f@@7)) (= (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@19) null (WandMaskField_7929 pm_f@@7)) (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| ExhaleHeap@@7) null (WandMaskField_7929 pm_f@@7)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@7 Mask@@8) (IsWandField_7929_69769 pm_f@@7) (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| ExhaleHeap@@7) null (WandMaskField_7929 pm_f@@7)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_14880) (ExhaleHeap@@8 T@PolymorphicMapType_14880) (Mask@@9 T@PolymorphicMapType_14901) (pm_f@@8 T@Field_27622_27623) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_7904_7905 Mask@@9 null pm_f@@8) (IsWandField_7904_69412 pm_f@@8)) (= (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@20) null (WandMaskField_7904 pm_f@@8)) (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| ExhaleHeap@@8) null (WandMaskField_7904 pm_f@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@8 Mask@@9) (IsWandField_7904_69412 pm_f@@8) (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| ExhaleHeap@@8) null (WandMaskField_7904 pm_f@@8)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_14880) (ExhaleHeap@@9 T@PolymorphicMapType_14880) (Mask@@10 T@PolymorphicMapType_14901) (pm_f@@9 T@Field_19474_19475) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_7855_7856 Mask@@10 null pm_f@@9) (IsWandField_7855_69055 pm_f@@9)) (= (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@21) null (WandMaskField_7855 pm_f@@9)) (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| ExhaleHeap@@9) null (WandMaskField_7855 pm_f@@9)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@9 Mask@@10) (IsWandField_7855_69055 pm_f@@9) (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| ExhaleHeap@@9) null (WandMaskField_7855 pm_f@@9)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_14880) (ExhaleHeap@@10 T@PolymorphicMapType_14880) (Mask@@11 T@PolymorphicMapType_14901) (pm_f@@10 T@Field_7679_7856) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_7679_7856 Mask@@11 null pm_f@@10) (IsWandField_7679_68698 pm_f@@10)) (= (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@22) null (WandMaskField_7679 pm_f@@10)) (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| ExhaleHeap@@10) null (WandMaskField_7679 pm_f@@10)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@10 Mask@@11) (IsWandField_7679_68698 pm_f@@10) (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| ExhaleHeap@@10) null (WandMaskField_7679 pm_f@@10)))
)))
(assert (forall ((this$@@1 T@Ref) (this$2 T@Ref) ) (!  (=> (= (Wand_readonly_for_writeonly$MonitorInvariant this$@@1) (Wand_readonly_for_writeonly$MonitorInvariant this$2)) (= this$@@1 this$2))
 :qid |stdinbpl.631:15|
 :skolemid |37|
 :pattern ( (Wand_readonly_for_writeonly$MonitorInvariant this$@@1) (Wand_readonly_for_writeonly$MonitorInvariant this$2))
)))
(assert (forall ((this$@@2 T@Ref) (this$2@@0 T@Ref) ) (!  (=> (= (|Wand_readonly_for_writeonly$MonitorInvariant#sm| this$@@2) (|Wand_readonly_for_writeonly$MonitorInvariant#sm| this$2@@0)) (= this$@@2 this$2@@0))
 :qid |stdinbpl.635:15|
 :skolemid |38|
 :pattern ( (|Wand_readonly_for_writeonly$MonitorInvariant#sm| this$@@2) (|Wand_readonly_for_writeonly$MonitorInvariant#sm| this$2@@0))
)))
(assert (forall ((this$_4@@1 T@Ref) (this$_42 T@Ref) ) (!  (=> (= (Wand_readonly_for_writeonlyvalid_wand$ this$_4@@1) (Wand_readonly_for_writeonlyvalid_wand$ this$_42)) (= this$_4@@1 this$_42))
 :qid |stdinbpl.681:15|
 :skolemid |43|
 :pattern ( (Wand_readonly_for_writeonlyvalid_wand$ this$_4@@1) (Wand_readonly_for_writeonlyvalid_wand$ this$_42))
)))
(assert (forall ((this$_4@@2 T@Ref) (this$_42@@0 T@Ref) ) (!  (=> (= (|Wand_readonly_for_writeonlyvalid_wand$#sm| this$_4@@2) (|Wand_readonly_for_writeonlyvalid_wand$#sm| this$_42@@0)) (= this$_4@@2 this$_42@@0))
 :qid |stdinbpl.685:15|
 :skolemid |44|
 :pattern ( (|Wand_readonly_for_writeonlyvalid_wand$#sm| this$_4@@2) (|Wand_readonly_for_writeonlyvalid_wand$#sm| this$_42@@0))
)))
(assert (forall ((this$_6@@1 T@Ref) (this$_62 T@Ref) ) (!  (=> (= (WandDemo$MonitorInvariant this$_6@@1) (WandDemo$MonitorInvariant this$_62)) (= this$_6@@1 this$_62))
 :qid |stdinbpl.798:15|
 :skolemid |49|
 :pattern ( (WandDemo$MonitorInvariant this$_6@@1) (WandDemo$MonitorInvariant this$_62))
)))
(assert (forall ((this$_6@@2 T@Ref) (this$_62@@0 T@Ref) ) (!  (=> (= (|WandDemo$MonitorInvariant#sm| this$_6@@2) (|WandDemo$MonitorInvariant#sm| this$_62@@0)) (= this$_6@@2 this$_62@@0))
 :qid |stdinbpl.802:15|
 :skolemid |50|
 :pattern ( (|WandDemo$MonitorInvariant#sm| this$_6@@2) (|WandDemo$MonitorInvariant#sm| this$_62@@0))
)))
(assert (forall ((this$_7@@1 T@Ref) (this$_72 T@Ref) ) (!  (=> (= (WandDemoreadonly$ this$_7@@1) (WandDemoreadonly$ this$_72)) (= this$_7@@1 this$_72))
 :qid |stdinbpl.848:15|
 :skolemid |55|
 :pattern ( (WandDemoreadonly$ this$_7@@1) (WandDemoreadonly$ this$_72))
)))
(assert (forall ((this$_7@@2 T@Ref) (this$_72@@0 T@Ref) ) (!  (=> (= (|WandDemoreadonly$#sm| this$_7@@2) (|WandDemoreadonly$#sm| this$_72@@0)) (= this$_7@@2 this$_72@@0))
 :qid |stdinbpl.852:15|
 :skolemid |56|
 :pattern ( (|WandDemoreadonly$#sm| this$_7@@2) (|WandDemoreadonly$#sm| this$_72@@0))
)))
(assert (forall ((this$_8@@1 T@Ref) (this$_82 T@Ref) ) (!  (=> (= (WandDemowriteonly$ this$_8@@1) (WandDemowriteonly$ this$_82)) (= this$_8@@1 this$_82))
 :qid |stdinbpl.905:15|
 :skolemid |61|
 :pattern ( (WandDemowriteonly$ this$_8@@1) (WandDemowriteonly$ this$_82))
)))
(assert (forall ((this$_8@@2 T@Ref) (this$_82@@0 T@Ref) ) (!  (=> (= (|WandDemowriteonly$#sm| this$_8@@2) (|WandDemowriteonly$#sm| this$_82@@0)) (= this$_8@@2 this$_82@@0))
 :qid |stdinbpl.909:15|
 :skolemid |62|
 :pattern ( (|WandDemowriteonly$#sm| this$_8@@2) (|WandDemowriteonly$#sm| this$_82@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@23 T@PolymorphicMapType_14880) (ExhaleHeap@@11 T@PolymorphicMapType_14880) (Mask@@12 T@PolymorphicMapType_14901) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@11 Mask@@12) (=> (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@23) o_1 $allocated) (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| ExhaleHeap@@11) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@11 Mask@@12) (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| ExhaleHeap@@11) o_1 $allocated))
)))
(assert (forall ((p T@Field_33893_33894) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_33893_33893 p v_1 p w))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_33893_33893 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_32245_32246) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_32245_32245 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_32245_32245 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_29221_29222) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_29221_29221 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_29221_29221 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_27622_27623) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_27622_27622 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_27622_27622 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((p@@3 T@Field_19474_19475) (v_1@@3 T@FrameType) (w@@3 T@FrameType) ) (!  (not (InsidePredicate_19474_19474 p@@3 v_1@@3 p@@3 w@@3))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_19474_19474 p@@3 v_1@@3 p@@3 w@@3))
)))
(assert (forall ((p@@4 T@Field_7679_7856) (v_1@@4 T@FrameType) (w@@4 T@FrameType) ) (!  (not (InsidePredicate_14940_14940 p@@4 v_1@@4 p@@4 w@@4))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14940_14940 p@@4 v_1@@4 p@@4 w@@4))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_14880) (ExhaleHeap@@12 T@PolymorphicMapType_14880) (Mask@@13 T@PolymorphicMapType_14901) (pm_f@@11 T@Field_32245_32246) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@12 Mask@@13) (=> (and (HasDirectPerm_32245_7856 Mask@@13 null pm_f@@11) (IsPredicateField_7880_7881 pm_f@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_18374_1231) ) (!  (=> (select (|PolymorphicMapType_15429_7677_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2 f_2) (= (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@24) o2 f_2) (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| ExhaleHeap@@12) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| ExhaleHeap@@12) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_14953_14954) ) (!  (=> (select (|PolymorphicMapType_15429_7679_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@24) o2@@0 f_2@@0) (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_14940_53) ) (!  (=> (select (|PolymorphicMapType_15429_7677_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@24) o2@@1 f_2@@1) (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_18283_645) ) (!  (=> (select (|PolymorphicMapType_15429_7677_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@24) o2@@2 f_2@@2) (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_7679_7856) ) (!  (=> (select (|PolymorphicMapType_15429_7677_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@24) o2@@3 f_2@@3) (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@3 f_2@@3))
))) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_7679_22170) ) (!  (=> (select (|PolymorphicMapType_15429_7677_60536#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@24) o2@@4 f_2@@4) (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@4 f_2@@4)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_7855_1291) ) (!  (=> (select (|PolymorphicMapType_15429_19474_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@24) o2@@5 f_2@@5) (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@5 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_7855_7680) ) (!  (=> (select (|PolymorphicMapType_15429_19474_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@24) o2@@6 f_2@@6) (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@6 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_7855_53) ) (!  (=> (select (|PolymorphicMapType_15429_19474_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@24) o2@@7 f_2@@7) (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@7 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_7855_645) ) (!  (=> (select (|PolymorphicMapType_15429_19474_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@24) o2@@8 f_2@@8) (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@8 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@8 f_2@@8))
))) (forall ((o2@@9 T@Ref) (f_2@@9 T@Field_19474_19475) ) (!  (=> (select (|PolymorphicMapType_15429_19474_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@9 f_2@@9) (= (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@24) o2@@9 f_2@@9) (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@9 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@9 f_2@@9))
))) (forall ((o2@@10 T@Ref) (f_2@@10 T@Field_22165_22170) ) (!  (=> (select (|PolymorphicMapType_15429_19474_61782#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@10 f_2@@10) (= (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@24) o2@@10 f_2@@10) (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@10 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@10 f_2@@10))
))) (forall ((o2@@11 T@Ref) (f_2@@11 T@Field_7904_1291) ) (!  (=> (select (|PolymorphicMapType_15429_27622_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@11 f_2@@11) (= (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@24) o2@@11 f_2@@11) (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@11 f_2@@11)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@11 f_2@@11))
))) (forall ((o2@@12 T@Ref) (f_2@@12 T@Field_7904_7680) ) (!  (=> (select (|PolymorphicMapType_15429_27622_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@12 f_2@@12) (= (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@24) o2@@12 f_2@@12) (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@12 f_2@@12)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@12 f_2@@12))
))) (forall ((o2@@13 T@Ref) (f_2@@13 T@Field_7904_53) ) (!  (=> (select (|PolymorphicMapType_15429_27622_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@13 f_2@@13) (= (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@24) o2@@13 f_2@@13) (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@13 f_2@@13)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@13 f_2@@13))
))) (forall ((o2@@14 T@Ref) (f_2@@14 T@Field_7904_645) ) (!  (=> (select (|PolymorphicMapType_15429_27622_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@14 f_2@@14) (= (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@24) o2@@14 f_2@@14) (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@14 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@14 f_2@@14))
))) (forall ((o2@@15 T@Ref) (f_2@@15 T@Field_27622_27623) ) (!  (=> (select (|PolymorphicMapType_15429_27622_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@15 f_2@@15) (= (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@24) o2@@15 f_2@@15) (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@15 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@15 f_2@@15))
))) (forall ((o2@@16 T@Ref) (f_2@@16 T@Field_28913_28918) ) (!  (=> (select (|PolymorphicMapType_15429_27622_63028#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@16 f_2@@16) (= (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@24) o2@@16 f_2@@16) (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@16 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@16 f_2@@16))
))) (forall ((o2@@17 T@Ref) (f_2@@17 T@Field_29221_1291) ) (!  (=> (select (|PolymorphicMapType_15429_29221_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@17 f_2@@17) (= (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@24) o2@@17 f_2@@17) (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@17 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@17 f_2@@17))
))) (forall ((o2@@18 T@Ref) (f_2@@18 T@Field_29221_7680) ) (!  (=> (select (|PolymorphicMapType_15429_29221_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@18 f_2@@18) (= (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@24) o2@@18 f_2@@18) (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@18 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@18 f_2@@18))
))) (forall ((o2@@19 T@Ref) (f_2@@19 T@Field_29221_53) ) (!  (=> (select (|PolymorphicMapType_15429_29221_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@19 f_2@@19) (= (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@24) o2@@19 f_2@@19) (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@19 f_2@@19)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@19 f_2@@19))
))) (forall ((o2@@20 T@Ref) (f_2@@20 T@Field_29221_645) ) (!  (=> (select (|PolymorphicMapType_15429_29221_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@20 f_2@@20) (= (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@24) o2@@20 f_2@@20) (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@20 f_2@@20)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@20 f_2@@20))
))) (forall ((o2@@21 T@Ref) (f_2@@21 T@Field_29221_29222) ) (!  (=> (select (|PolymorphicMapType_15429_29221_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@21 f_2@@21) (= (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@24) o2@@21 f_2@@21) (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@21 f_2@@21)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@21 f_2@@21))
))) (forall ((o2@@22 T@Ref) (f_2@@22 T@Field_29234_29239) ) (!  (=> (select (|PolymorphicMapType_15429_29221_64274#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@22 f_2@@22) (= (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@24) o2@@22 f_2@@22) (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@22 f_2@@22)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@22 f_2@@22))
))) (forall ((o2@@23 T@Ref) (f_2@@23 T@Field_32245_1291) ) (!  (=> (select (|PolymorphicMapType_15429_32245_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@23 f_2@@23) (= (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@24) o2@@23 f_2@@23) (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@23 f_2@@23)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@23 f_2@@23))
))) (forall ((o2@@24 T@Ref) (f_2@@24 T@Field_32245_7680) ) (!  (=> (select (|PolymorphicMapType_15429_32245_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@24 f_2@@24) (= (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@24) o2@@24 f_2@@24) (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@24 f_2@@24)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@24 f_2@@24))
))) (forall ((o2@@25 T@Ref) (f_2@@25 T@Field_32245_53) ) (!  (=> (select (|PolymorphicMapType_15429_32245_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@25 f_2@@25) (= (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@24) o2@@25 f_2@@25) (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@25 f_2@@25)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@25 f_2@@25))
))) (forall ((o2@@26 T@Ref) (f_2@@26 T@Field_32245_645) ) (!  (=> (select (|PolymorphicMapType_15429_32245_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@26 f_2@@26) (= (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@24) o2@@26 f_2@@26) (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@26 f_2@@26)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@26 f_2@@26))
))) (forall ((o2@@27 T@Ref) (f_2@@27 T@Field_32245_32246) ) (!  (=> (select (|PolymorphicMapType_15429_32245_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@27 f_2@@27) (= (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@24) o2@@27 f_2@@27) (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@27 f_2@@27)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@27 f_2@@27))
))) (forall ((o2@@28 T@Ref) (f_2@@28 T@Field_32258_32263) ) (!  (=> (select (|PolymorphicMapType_15429_32245_65520#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@28 f_2@@28) (= (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) o2@@28 f_2@@28) (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@28 f_2@@28)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@28 f_2@@28))
))) (forall ((o2@@29 T@Ref) (f_2@@29 T@Field_7929_1291) ) (!  (=> (select (|PolymorphicMapType_15429_33893_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@29 f_2@@29) (= (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@24) o2@@29 f_2@@29) (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@29 f_2@@29)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@29 f_2@@29))
))) (forall ((o2@@30 T@Ref) (f_2@@30 T@Field_7929_7680) ) (!  (=> (select (|PolymorphicMapType_15429_33893_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@30 f_2@@30) (= (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@24) o2@@30 f_2@@30) (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@30 f_2@@30)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@30 f_2@@30))
))) (forall ((o2@@31 T@Ref) (f_2@@31 T@Field_7929_53) ) (!  (=> (select (|PolymorphicMapType_15429_33893_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@31 f_2@@31) (= (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@24) o2@@31 f_2@@31) (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@31 f_2@@31)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@31 f_2@@31))
))) (forall ((o2@@32 T@Ref) (f_2@@32 T@Field_7929_645) ) (!  (=> (select (|PolymorphicMapType_15429_33893_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@32 f_2@@32) (= (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@24) o2@@32 f_2@@32) (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@32 f_2@@32)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@32 f_2@@32))
))) (forall ((o2@@33 T@Ref) (f_2@@33 T@Field_33893_33894) ) (!  (=> (select (|PolymorphicMapType_15429_33893_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@33 f_2@@33) (= (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@24) o2@@33 f_2@@33) (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@33 f_2@@33)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@33 f_2@@33))
))) (forall ((o2@@34 T@Ref) (f_2@@34 T@Field_33906_33911) ) (!  (=> (select (|PolymorphicMapType_15429_33893_66766#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@24) null (PredicateMaskField_7880 pm_f@@11))) o2@@34 f_2@@34) (= (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@24) o2@@34 f_2@@34) (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@34 f_2@@34)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| ExhaleHeap@@12) o2@@34 f_2@@34))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@12 Mask@@13) (IsPredicateField_7880_7881 pm_f@@11))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_14880) (ExhaleHeap@@13 T@PolymorphicMapType_14880) (Mask@@14 T@PolymorphicMapType_14901) (pm_f@@12 T@Field_29221_29222) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@13 Mask@@14) (=> (and (HasDirectPerm_29221_7856 Mask@@14 null pm_f@@12) (IsPredicateField_7831_7832 pm_f@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@35 T@Ref) (f_2@@35 T@Field_18374_1231) ) (!  (=> (select (|PolymorphicMapType_15429_7677_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@35 f_2@@35) (= (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@25) o2@@35 f_2@@35) (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@35 f_2@@35)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@35 f_2@@35))
)) (forall ((o2@@36 T@Ref) (f_2@@36 T@Field_14953_14954) ) (!  (=> (select (|PolymorphicMapType_15429_7679_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@36 f_2@@36) (= (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@25) o2@@36 f_2@@36) (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@36 f_2@@36)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@36 f_2@@36))
))) (forall ((o2@@37 T@Ref) (f_2@@37 T@Field_14940_53) ) (!  (=> (select (|PolymorphicMapType_15429_7677_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@37 f_2@@37) (= (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@25) o2@@37 f_2@@37) (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@37 f_2@@37)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@37 f_2@@37))
))) (forall ((o2@@38 T@Ref) (f_2@@38 T@Field_18283_645) ) (!  (=> (select (|PolymorphicMapType_15429_7677_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@38 f_2@@38) (= (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@25) o2@@38 f_2@@38) (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@38 f_2@@38)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@38 f_2@@38))
))) (forall ((o2@@39 T@Ref) (f_2@@39 T@Field_7679_7856) ) (!  (=> (select (|PolymorphicMapType_15429_7677_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@39 f_2@@39) (= (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@25) o2@@39 f_2@@39) (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@39 f_2@@39)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@39 f_2@@39))
))) (forall ((o2@@40 T@Ref) (f_2@@40 T@Field_7679_22170) ) (!  (=> (select (|PolymorphicMapType_15429_7677_60536#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@40 f_2@@40) (= (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@25) o2@@40 f_2@@40) (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@40 f_2@@40)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@40 f_2@@40))
))) (forall ((o2@@41 T@Ref) (f_2@@41 T@Field_7855_1291) ) (!  (=> (select (|PolymorphicMapType_15429_19474_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@41 f_2@@41) (= (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@25) o2@@41 f_2@@41) (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@41 f_2@@41)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@41 f_2@@41))
))) (forall ((o2@@42 T@Ref) (f_2@@42 T@Field_7855_7680) ) (!  (=> (select (|PolymorphicMapType_15429_19474_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@42 f_2@@42) (= (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@25) o2@@42 f_2@@42) (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@42 f_2@@42)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@42 f_2@@42))
))) (forall ((o2@@43 T@Ref) (f_2@@43 T@Field_7855_53) ) (!  (=> (select (|PolymorphicMapType_15429_19474_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@43 f_2@@43) (= (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@25) o2@@43 f_2@@43) (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@43 f_2@@43)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@43 f_2@@43))
))) (forall ((o2@@44 T@Ref) (f_2@@44 T@Field_7855_645) ) (!  (=> (select (|PolymorphicMapType_15429_19474_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@44 f_2@@44) (= (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@25) o2@@44 f_2@@44) (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@44 f_2@@44)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@44 f_2@@44))
))) (forall ((o2@@45 T@Ref) (f_2@@45 T@Field_19474_19475) ) (!  (=> (select (|PolymorphicMapType_15429_19474_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@45 f_2@@45) (= (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@25) o2@@45 f_2@@45) (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@45 f_2@@45)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@45 f_2@@45))
))) (forall ((o2@@46 T@Ref) (f_2@@46 T@Field_22165_22170) ) (!  (=> (select (|PolymorphicMapType_15429_19474_61782#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@46 f_2@@46) (= (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@25) o2@@46 f_2@@46) (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@46 f_2@@46)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@46 f_2@@46))
))) (forall ((o2@@47 T@Ref) (f_2@@47 T@Field_7904_1291) ) (!  (=> (select (|PolymorphicMapType_15429_27622_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@47 f_2@@47) (= (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@25) o2@@47 f_2@@47) (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@47 f_2@@47)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@47 f_2@@47))
))) (forall ((o2@@48 T@Ref) (f_2@@48 T@Field_7904_7680) ) (!  (=> (select (|PolymorphicMapType_15429_27622_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@48 f_2@@48) (= (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@25) o2@@48 f_2@@48) (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@48 f_2@@48)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@48 f_2@@48))
))) (forall ((o2@@49 T@Ref) (f_2@@49 T@Field_7904_53) ) (!  (=> (select (|PolymorphicMapType_15429_27622_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@49 f_2@@49) (= (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@25) o2@@49 f_2@@49) (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@49 f_2@@49)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@49 f_2@@49))
))) (forall ((o2@@50 T@Ref) (f_2@@50 T@Field_7904_645) ) (!  (=> (select (|PolymorphicMapType_15429_27622_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@50 f_2@@50) (= (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@25) o2@@50 f_2@@50) (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@50 f_2@@50)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@50 f_2@@50))
))) (forall ((o2@@51 T@Ref) (f_2@@51 T@Field_27622_27623) ) (!  (=> (select (|PolymorphicMapType_15429_27622_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@51 f_2@@51) (= (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@25) o2@@51 f_2@@51) (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@51 f_2@@51)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@51 f_2@@51))
))) (forall ((o2@@52 T@Ref) (f_2@@52 T@Field_28913_28918) ) (!  (=> (select (|PolymorphicMapType_15429_27622_63028#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@52 f_2@@52) (= (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@25) o2@@52 f_2@@52) (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@52 f_2@@52)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@52 f_2@@52))
))) (forall ((o2@@53 T@Ref) (f_2@@53 T@Field_29221_1291) ) (!  (=> (select (|PolymorphicMapType_15429_29221_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@53 f_2@@53) (= (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@25) o2@@53 f_2@@53) (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@53 f_2@@53)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@53 f_2@@53))
))) (forall ((o2@@54 T@Ref) (f_2@@54 T@Field_29221_7680) ) (!  (=> (select (|PolymorphicMapType_15429_29221_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@54 f_2@@54) (= (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@25) o2@@54 f_2@@54) (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@54 f_2@@54)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@54 f_2@@54))
))) (forall ((o2@@55 T@Ref) (f_2@@55 T@Field_29221_53) ) (!  (=> (select (|PolymorphicMapType_15429_29221_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@55 f_2@@55) (= (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@25) o2@@55 f_2@@55) (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@55 f_2@@55)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@55 f_2@@55))
))) (forall ((o2@@56 T@Ref) (f_2@@56 T@Field_29221_645) ) (!  (=> (select (|PolymorphicMapType_15429_29221_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@56 f_2@@56) (= (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@25) o2@@56 f_2@@56) (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@56 f_2@@56)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@56 f_2@@56))
))) (forall ((o2@@57 T@Ref) (f_2@@57 T@Field_29221_29222) ) (!  (=> (select (|PolymorphicMapType_15429_29221_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@57 f_2@@57) (= (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@25) o2@@57 f_2@@57) (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@57 f_2@@57)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@57 f_2@@57))
))) (forall ((o2@@58 T@Ref) (f_2@@58 T@Field_29234_29239) ) (!  (=> (select (|PolymorphicMapType_15429_29221_64274#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@58 f_2@@58) (= (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) o2@@58 f_2@@58) (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@58 f_2@@58)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@58 f_2@@58))
))) (forall ((o2@@59 T@Ref) (f_2@@59 T@Field_32245_1291) ) (!  (=> (select (|PolymorphicMapType_15429_32245_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@59 f_2@@59) (= (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@25) o2@@59 f_2@@59) (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@59 f_2@@59)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@59 f_2@@59))
))) (forall ((o2@@60 T@Ref) (f_2@@60 T@Field_32245_7680) ) (!  (=> (select (|PolymorphicMapType_15429_32245_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@60 f_2@@60) (= (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@25) o2@@60 f_2@@60) (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@60 f_2@@60)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@60 f_2@@60))
))) (forall ((o2@@61 T@Ref) (f_2@@61 T@Field_32245_53) ) (!  (=> (select (|PolymorphicMapType_15429_32245_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@61 f_2@@61) (= (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@25) o2@@61 f_2@@61) (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@61 f_2@@61)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@61 f_2@@61))
))) (forall ((o2@@62 T@Ref) (f_2@@62 T@Field_32245_645) ) (!  (=> (select (|PolymorphicMapType_15429_32245_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@62 f_2@@62) (= (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@25) o2@@62 f_2@@62) (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@62 f_2@@62)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@62 f_2@@62))
))) (forall ((o2@@63 T@Ref) (f_2@@63 T@Field_32245_32246) ) (!  (=> (select (|PolymorphicMapType_15429_32245_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@63 f_2@@63) (= (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@25) o2@@63 f_2@@63) (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@63 f_2@@63)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@63 f_2@@63))
))) (forall ((o2@@64 T@Ref) (f_2@@64 T@Field_32258_32263) ) (!  (=> (select (|PolymorphicMapType_15429_32245_65520#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@64 f_2@@64) (= (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@25) o2@@64 f_2@@64) (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@64 f_2@@64)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@64 f_2@@64))
))) (forall ((o2@@65 T@Ref) (f_2@@65 T@Field_7929_1291) ) (!  (=> (select (|PolymorphicMapType_15429_33893_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@65 f_2@@65) (= (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@25) o2@@65 f_2@@65) (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@65 f_2@@65)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@65 f_2@@65))
))) (forall ((o2@@66 T@Ref) (f_2@@66 T@Field_7929_7680) ) (!  (=> (select (|PolymorphicMapType_15429_33893_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@66 f_2@@66) (= (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@25) o2@@66 f_2@@66) (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@66 f_2@@66)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@66 f_2@@66))
))) (forall ((o2@@67 T@Ref) (f_2@@67 T@Field_7929_53) ) (!  (=> (select (|PolymorphicMapType_15429_33893_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@67 f_2@@67) (= (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@25) o2@@67 f_2@@67) (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@67 f_2@@67)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@67 f_2@@67))
))) (forall ((o2@@68 T@Ref) (f_2@@68 T@Field_7929_645) ) (!  (=> (select (|PolymorphicMapType_15429_33893_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@68 f_2@@68) (= (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@25) o2@@68 f_2@@68) (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@68 f_2@@68)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@68 f_2@@68))
))) (forall ((o2@@69 T@Ref) (f_2@@69 T@Field_33893_33894) ) (!  (=> (select (|PolymorphicMapType_15429_33893_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@69 f_2@@69) (= (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@25) o2@@69 f_2@@69) (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@69 f_2@@69)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@69 f_2@@69))
))) (forall ((o2@@70 T@Ref) (f_2@@70 T@Field_33906_33911) ) (!  (=> (select (|PolymorphicMapType_15429_33893_66766#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@25) null (PredicateMaskField_7831 pm_f@@12))) o2@@70 f_2@@70) (= (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@25) o2@@70 f_2@@70) (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@70 f_2@@70)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| ExhaleHeap@@13) o2@@70 f_2@@70))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@13 Mask@@14) (IsPredicateField_7831_7832 pm_f@@12))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_14880) (ExhaleHeap@@14 T@PolymorphicMapType_14880) (Mask@@15 T@PolymorphicMapType_14901) (pm_f@@13 T@Field_33893_33894) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@14 Mask@@15) (=> (and (HasDirectPerm_7929_7930 Mask@@15 null pm_f@@13) (IsPredicateField_7929_7930 pm_f@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@71 T@Ref) (f_2@@71 T@Field_18374_1231) ) (!  (=> (select (|PolymorphicMapType_15429_7677_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@71 f_2@@71) (= (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@26) o2@@71 f_2@@71) (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@71 f_2@@71)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@71 f_2@@71))
)) (forall ((o2@@72 T@Ref) (f_2@@72 T@Field_14953_14954) ) (!  (=> (select (|PolymorphicMapType_15429_7679_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@72 f_2@@72) (= (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@26) o2@@72 f_2@@72) (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@72 f_2@@72)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@72 f_2@@72))
))) (forall ((o2@@73 T@Ref) (f_2@@73 T@Field_14940_53) ) (!  (=> (select (|PolymorphicMapType_15429_7677_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@73 f_2@@73) (= (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@26) o2@@73 f_2@@73) (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@73 f_2@@73)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@73 f_2@@73))
))) (forall ((o2@@74 T@Ref) (f_2@@74 T@Field_18283_645) ) (!  (=> (select (|PolymorphicMapType_15429_7677_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@74 f_2@@74) (= (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@26) o2@@74 f_2@@74) (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@74 f_2@@74)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@74 f_2@@74))
))) (forall ((o2@@75 T@Ref) (f_2@@75 T@Field_7679_7856) ) (!  (=> (select (|PolymorphicMapType_15429_7677_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@75 f_2@@75) (= (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@26) o2@@75 f_2@@75) (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@75 f_2@@75)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@75 f_2@@75))
))) (forall ((o2@@76 T@Ref) (f_2@@76 T@Field_7679_22170) ) (!  (=> (select (|PolymorphicMapType_15429_7677_60536#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@76 f_2@@76) (= (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@26) o2@@76 f_2@@76) (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@76 f_2@@76)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@76 f_2@@76))
))) (forall ((o2@@77 T@Ref) (f_2@@77 T@Field_7855_1291) ) (!  (=> (select (|PolymorphicMapType_15429_19474_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@77 f_2@@77) (= (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@26) o2@@77 f_2@@77) (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@77 f_2@@77)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@77 f_2@@77))
))) (forall ((o2@@78 T@Ref) (f_2@@78 T@Field_7855_7680) ) (!  (=> (select (|PolymorphicMapType_15429_19474_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@78 f_2@@78) (= (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@26) o2@@78 f_2@@78) (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@78 f_2@@78)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@78 f_2@@78))
))) (forall ((o2@@79 T@Ref) (f_2@@79 T@Field_7855_53) ) (!  (=> (select (|PolymorphicMapType_15429_19474_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@79 f_2@@79) (= (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@26) o2@@79 f_2@@79) (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@79 f_2@@79)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@79 f_2@@79))
))) (forall ((o2@@80 T@Ref) (f_2@@80 T@Field_7855_645) ) (!  (=> (select (|PolymorphicMapType_15429_19474_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@80 f_2@@80) (= (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@26) o2@@80 f_2@@80) (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@80 f_2@@80)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@80 f_2@@80))
))) (forall ((o2@@81 T@Ref) (f_2@@81 T@Field_19474_19475) ) (!  (=> (select (|PolymorphicMapType_15429_19474_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@81 f_2@@81) (= (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@26) o2@@81 f_2@@81) (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@81 f_2@@81)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@81 f_2@@81))
))) (forall ((o2@@82 T@Ref) (f_2@@82 T@Field_22165_22170) ) (!  (=> (select (|PolymorphicMapType_15429_19474_61782#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@82 f_2@@82) (= (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@26) o2@@82 f_2@@82) (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@82 f_2@@82)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@82 f_2@@82))
))) (forall ((o2@@83 T@Ref) (f_2@@83 T@Field_7904_1291) ) (!  (=> (select (|PolymorphicMapType_15429_27622_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@83 f_2@@83) (= (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@26) o2@@83 f_2@@83) (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@83 f_2@@83)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@83 f_2@@83))
))) (forall ((o2@@84 T@Ref) (f_2@@84 T@Field_7904_7680) ) (!  (=> (select (|PolymorphicMapType_15429_27622_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@84 f_2@@84) (= (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@26) o2@@84 f_2@@84) (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@84 f_2@@84)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@84 f_2@@84))
))) (forall ((o2@@85 T@Ref) (f_2@@85 T@Field_7904_53) ) (!  (=> (select (|PolymorphicMapType_15429_27622_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@85 f_2@@85) (= (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@26) o2@@85 f_2@@85) (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@85 f_2@@85)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@85 f_2@@85))
))) (forall ((o2@@86 T@Ref) (f_2@@86 T@Field_7904_645) ) (!  (=> (select (|PolymorphicMapType_15429_27622_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@86 f_2@@86) (= (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@26) o2@@86 f_2@@86) (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@86 f_2@@86)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@86 f_2@@86))
))) (forall ((o2@@87 T@Ref) (f_2@@87 T@Field_27622_27623) ) (!  (=> (select (|PolymorphicMapType_15429_27622_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@87 f_2@@87) (= (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@26) o2@@87 f_2@@87) (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@87 f_2@@87)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@87 f_2@@87))
))) (forall ((o2@@88 T@Ref) (f_2@@88 T@Field_28913_28918) ) (!  (=> (select (|PolymorphicMapType_15429_27622_63028#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@88 f_2@@88) (= (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@26) o2@@88 f_2@@88) (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@88 f_2@@88)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@88 f_2@@88))
))) (forall ((o2@@89 T@Ref) (f_2@@89 T@Field_29221_1291) ) (!  (=> (select (|PolymorphicMapType_15429_29221_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@89 f_2@@89) (= (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@26) o2@@89 f_2@@89) (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@89 f_2@@89)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@89 f_2@@89))
))) (forall ((o2@@90 T@Ref) (f_2@@90 T@Field_29221_7680) ) (!  (=> (select (|PolymorphicMapType_15429_29221_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@90 f_2@@90) (= (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@26) o2@@90 f_2@@90) (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@90 f_2@@90)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@90 f_2@@90))
))) (forall ((o2@@91 T@Ref) (f_2@@91 T@Field_29221_53) ) (!  (=> (select (|PolymorphicMapType_15429_29221_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@91 f_2@@91) (= (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@26) o2@@91 f_2@@91) (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@91 f_2@@91)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@91 f_2@@91))
))) (forall ((o2@@92 T@Ref) (f_2@@92 T@Field_29221_645) ) (!  (=> (select (|PolymorphicMapType_15429_29221_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@92 f_2@@92) (= (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@26) o2@@92 f_2@@92) (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@92 f_2@@92)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@92 f_2@@92))
))) (forall ((o2@@93 T@Ref) (f_2@@93 T@Field_29221_29222) ) (!  (=> (select (|PolymorphicMapType_15429_29221_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@93 f_2@@93) (= (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@26) o2@@93 f_2@@93) (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@93 f_2@@93)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@93 f_2@@93))
))) (forall ((o2@@94 T@Ref) (f_2@@94 T@Field_29234_29239) ) (!  (=> (select (|PolymorphicMapType_15429_29221_64274#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@94 f_2@@94) (= (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@26) o2@@94 f_2@@94) (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@94 f_2@@94)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@94 f_2@@94))
))) (forall ((o2@@95 T@Ref) (f_2@@95 T@Field_32245_1291) ) (!  (=> (select (|PolymorphicMapType_15429_32245_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@95 f_2@@95) (= (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@26) o2@@95 f_2@@95) (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@95 f_2@@95)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@95 f_2@@95))
))) (forall ((o2@@96 T@Ref) (f_2@@96 T@Field_32245_7680) ) (!  (=> (select (|PolymorphicMapType_15429_32245_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@96 f_2@@96) (= (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@26) o2@@96 f_2@@96) (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@96 f_2@@96)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@96 f_2@@96))
))) (forall ((o2@@97 T@Ref) (f_2@@97 T@Field_32245_53) ) (!  (=> (select (|PolymorphicMapType_15429_32245_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@97 f_2@@97) (= (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@26) o2@@97 f_2@@97) (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@97 f_2@@97)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@97 f_2@@97))
))) (forall ((o2@@98 T@Ref) (f_2@@98 T@Field_32245_645) ) (!  (=> (select (|PolymorphicMapType_15429_32245_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@98 f_2@@98) (= (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@26) o2@@98 f_2@@98) (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@98 f_2@@98)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@98 f_2@@98))
))) (forall ((o2@@99 T@Ref) (f_2@@99 T@Field_32245_32246) ) (!  (=> (select (|PolymorphicMapType_15429_32245_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@99 f_2@@99) (= (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@26) o2@@99 f_2@@99) (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@99 f_2@@99)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@99 f_2@@99))
))) (forall ((o2@@100 T@Ref) (f_2@@100 T@Field_32258_32263) ) (!  (=> (select (|PolymorphicMapType_15429_32245_65520#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@100 f_2@@100) (= (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@26) o2@@100 f_2@@100) (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@100 f_2@@100)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@100 f_2@@100))
))) (forall ((o2@@101 T@Ref) (f_2@@101 T@Field_7929_1291) ) (!  (=> (select (|PolymorphicMapType_15429_33893_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@101 f_2@@101) (= (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@26) o2@@101 f_2@@101) (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@101 f_2@@101)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@101 f_2@@101))
))) (forall ((o2@@102 T@Ref) (f_2@@102 T@Field_7929_7680) ) (!  (=> (select (|PolymorphicMapType_15429_33893_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@102 f_2@@102) (= (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@26) o2@@102 f_2@@102) (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@102 f_2@@102)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@102 f_2@@102))
))) (forall ((o2@@103 T@Ref) (f_2@@103 T@Field_7929_53) ) (!  (=> (select (|PolymorphicMapType_15429_33893_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@103 f_2@@103) (= (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@26) o2@@103 f_2@@103) (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@103 f_2@@103)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@103 f_2@@103))
))) (forall ((o2@@104 T@Ref) (f_2@@104 T@Field_7929_645) ) (!  (=> (select (|PolymorphicMapType_15429_33893_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@104 f_2@@104) (= (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@26) o2@@104 f_2@@104) (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@104 f_2@@104)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@104 f_2@@104))
))) (forall ((o2@@105 T@Ref) (f_2@@105 T@Field_33893_33894) ) (!  (=> (select (|PolymorphicMapType_15429_33893_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@105 f_2@@105) (= (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@26) o2@@105 f_2@@105) (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@105 f_2@@105)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@105 f_2@@105))
))) (forall ((o2@@106 T@Ref) (f_2@@106 T@Field_33906_33911) ) (!  (=> (select (|PolymorphicMapType_15429_33893_66766#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) null (PredicateMaskField_7929 pm_f@@13))) o2@@106 f_2@@106) (= (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@26) o2@@106 f_2@@106) (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@106 f_2@@106)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| ExhaleHeap@@14) o2@@106 f_2@@106))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@14 Mask@@15) (IsPredicateField_7929_7930 pm_f@@13))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_14880) (ExhaleHeap@@15 T@PolymorphicMapType_14880) (Mask@@16 T@PolymorphicMapType_14901) (pm_f@@14 T@Field_27622_27623) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@15 Mask@@16) (=> (and (HasDirectPerm_7904_7905 Mask@@16 null pm_f@@14) (IsPredicateField_7904_7905 pm_f@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@107 T@Ref) (f_2@@107 T@Field_18374_1231) ) (!  (=> (select (|PolymorphicMapType_15429_7677_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@107 f_2@@107) (= (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@27) o2@@107 f_2@@107) (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@107 f_2@@107)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@107 f_2@@107))
)) (forall ((o2@@108 T@Ref) (f_2@@108 T@Field_14953_14954) ) (!  (=> (select (|PolymorphicMapType_15429_7679_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@108 f_2@@108) (= (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@27) o2@@108 f_2@@108) (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@108 f_2@@108)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@108 f_2@@108))
))) (forall ((o2@@109 T@Ref) (f_2@@109 T@Field_14940_53) ) (!  (=> (select (|PolymorphicMapType_15429_7677_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@109 f_2@@109) (= (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@27) o2@@109 f_2@@109) (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@109 f_2@@109)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@109 f_2@@109))
))) (forall ((o2@@110 T@Ref) (f_2@@110 T@Field_18283_645) ) (!  (=> (select (|PolymorphicMapType_15429_7677_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@110 f_2@@110) (= (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@27) o2@@110 f_2@@110) (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@110 f_2@@110)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@110 f_2@@110))
))) (forall ((o2@@111 T@Ref) (f_2@@111 T@Field_7679_7856) ) (!  (=> (select (|PolymorphicMapType_15429_7677_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@111 f_2@@111) (= (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@27) o2@@111 f_2@@111) (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@111 f_2@@111)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@111 f_2@@111))
))) (forall ((o2@@112 T@Ref) (f_2@@112 T@Field_7679_22170) ) (!  (=> (select (|PolymorphicMapType_15429_7677_60536#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@112 f_2@@112) (= (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@27) o2@@112 f_2@@112) (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@112 f_2@@112)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@112 f_2@@112))
))) (forall ((o2@@113 T@Ref) (f_2@@113 T@Field_7855_1291) ) (!  (=> (select (|PolymorphicMapType_15429_19474_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@113 f_2@@113) (= (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@27) o2@@113 f_2@@113) (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@113 f_2@@113)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@113 f_2@@113))
))) (forall ((o2@@114 T@Ref) (f_2@@114 T@Field_7855_7680) ) (!  (=> (select (|PolymorphicMapType_15429_19474_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@114 f_2@@114) (= (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@27) o2@@114 f_2@@114) (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@114 f_2@@114)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@114 f_2@@114))
))) (forall ((o2@@115 T@Ref) (f_2@@115 T@Field_7855_53) ) (!  (=> (select (|PolymorphicMapType_15429_19474_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@115 f_2@@115) (= (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@27) o2@@115 f_2@@115) (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@115 f_2@@115)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@115 f_2@@115))
))) (forall ((o2@@116 T@Ref) (f_2@@116 T@Field_7855_645) ) (!  (=> (select (|PolymorphicMapType_15429_19474_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@116 f_2@@116) (= (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@27) o2@@116 f_2@@116) (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@116 f_2@@116)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@116 f_2@@116))
))) (forall ((o2@@117 T@Ref) (f_2@@117 T@Field_19474_19475) ) (!  (=> (select (|PolymorphicMapType_15429_19474_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@117 f_2@@117) (= (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@27) o2@@117 f_2@@117) (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@117 f_2@@117)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@117 f_2@@117))
))) (forall ((o2@@118 T@Ref) (f_2@@118 T@Field_22165_22170) ) (!  (=> (select (|PolymorphicMapType_15429_19474_61782#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@118 f_2@@118) (= (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@27) o2@@118 f_2@@118) (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@118 f_2@@118)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@118 f_2@@118))
))) (forall ((o2@@119 T@Ref) (f_2@@119 T@Field_7904_1291) ) (!  (=> (select (|PolymorphicMapType_15429_27622_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@119 f_2@@119) (= (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@27) o2@@119 f_2@@119) (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@119 f_2@@119)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@119 f_2@@119))
))) (forall ((o2@@120 T@Ref) (f_2@@120 T@Field_7904_7680) ) (!  (=> (select (|PolymorphicMapType_15429_27622_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@120 f_2@@120) (= (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@27) o2@@120 f_2@@120) (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@120 f_2@@120)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@120 f_2@@120))
))) (forall ((o2@@121 T@Ref) (f_2@@121 T@Field_7904_53) ) (!  (=> (select (|PolymorphicMapType_15429_27622_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@121 f_2@@121) (= (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@27) o2@@121 f_2@@121) (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@121 f_2@@121)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@121 f_2@@121))
))) (forall ((o2@@122 T@Ref) (f_2@@122 T@Field_7904_645) ) (!  (=> (select (|PolymorphicMapType_15429_27622_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@122 f_2@@122) (= (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@27) o2@@122 f_2@@122) (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@122 f_2@@122)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@122 f_2@@122))
))) (forall ((o2@@123 T@Ref) (f_2@@123 T@Field_27622_27623) ) (!  (=> (select (|PolymorphicMapType_15429_27622_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@123 f_2@@123) (= (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@27) o2@@123 f_2@@123) (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@123 f_2@@123)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@123 f_2@@123))
))) (forall ((o2@@124 T@Ref) (f_2@@124 T@Field_28913_28918) ) (!  (=> (select (|PolymorphicMapType_15429_27622_63028#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@124 f_2@@124) (= (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) o2@@124 f_2@@124) (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@124 f_2@@124)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@124 f_2@@124))
))) (forall ((o2@@125 T@Ref) (f_2@@125 T@Field_29221_1291) ) (!  (=> (select (|PolymorphicMapType_15429_29221_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@125 f_2@@125) (= (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@27) o2@@125 f_2@@125) (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@125 f_2@@125)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@125 f_2@@125))
))) (forall ((o2@@126 T@Ref) (f_2@@126 T@Field_29221_7680) ) (!  (=> (select (|PolymorphicMapType_15429_29221_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@126 f_2@@126) (= (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@27) o2@@126 f_2@@126) (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@126 f_2@@126)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@126 f_2@@126))
))) (forall ((o2@@127 T@Ref) (f_2@@127 T@Field_29221_53) ) (!  (=> (select (|PolymorphicMapType_15429_29221_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@127 f_2@@127) (= (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@27) o2@@127 f_2@@127) (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@127 f_2@@127)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@127 f_2@@127))
))) (forall ((o2@@128 T@Ref) (f_2@@128 T@Field_29221_645) ) (!  (=> (select (|PolymorphicMapType_15429_29221_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@128 f_2@@128) (= (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@27) o2@@128 f_2@@128) (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@128 f_2@@128)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@128 f_2@@128))
))) (forall ((o2@@129 T@Ref) (f_2@@129 T@Field_29221_29222) ) (!  (=> (select (|PolymorphicMapType_15429_29221_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@129 f_2@@129) (= (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@27) o2@@129 f_2@@129) (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@129 f_2@@129)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@129 f_2@@129))
))) (forall ((o2@@130 T@Ref) (f_2@@130 T@Field_29234_29239) ) (!  (=> (select (|PolymorphicMapType_15429_29221_64274#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@130 f_2@@130) (= (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@27) o2@@130 f_2@@130) (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@130 f_2@@130)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@130 f_2@@130))
))) (forall ((o2@@131 T@Ref) (f_2@@131 T@Field_32245_1291) ) (!  (=> (select (|PolymorphicMapType_15429_32245_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@131 f_2@@131) (= (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@27) o2@@131 f_2@@131) (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@131 f_2@@131)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@131 f_2@@131))
))) (forall ((o2@@132 T@Ref) (f_2@@132 T@Field_32245_7680) ) (!  (=> (select (|PolymorphicMapType_15429_32245_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@132 f_2@@132) (= (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@27) o2@@132 f_2@@132) (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@132 f_2@@132)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@132 f_2@@132))
))) (forall ((o2@@133 T@Ref) (f_2@@133 T@Field_32245_53) ) (!  (=> (select (|PolymorphicMapType_15429_32245_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@133 f_2@@133) (= (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@27) o2@@133 f_2@@133) (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@133 f_2@@133)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@133 f_2@@133))
))) (forall ((o2@@134 T@Ref) (f_2@@134 T@Field_32245_645) ) (!  (=> (select (|PolymorphicMapType_15429_32245_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@134 f_2@@134) (= (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@27) o2@@134 f_2@@134) (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@134 f_2@@134)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@134 f_2@@134))
))) (forall ((o2@@135 T@Ref) (f_2@@135 T@Field_32245_32246) ) (!  (=> (select (|PolymorphicMapType_15429_32245_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@135 f_2@@135) (= (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@27) o2@@135 f_2@@135) (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@135 f_2@@135)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@135 f_2@@135))
))) (forall ((o2@@136 T@Ref) (f_2@@136 T@Field_32258_32263) ) (!  (=> (select (|PolymorphicMapType_15429_32245_65520#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@136 f_2@@136) (= (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@27) o2@@136 f_2@@136) (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@136 f_2@@136)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@136 f_2@@136))
))) (forall ((o2@@137 T@Ref) (f_2@@137 T@Field_7929_1291) ) (!  (=> (select (|PolymorphicMapType_15429_33893_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@137 f_2@@137) (= (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@27) o2@@137 f_2@@137) (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@137 f_2@@137)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@137 f_2@@137))
))) (forall ((o2@@138 T@Ref) (f_2@@138 T@Field_7929_7680) ) (!  (=> (select (|PolymorphicMapType_15429_33893_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@138 f_2@@138) (= (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@27) o2@@138 f_2@@138) (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@138 f_2@@138)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@138 f_2@@138))
))) (forall ((o2@@139 T@Ref) (f_2@@139 T@Field_7929_53) ) (!  (=> (select (|PolymorphicMapType_15429_33893_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@139 f_2@@139) (= (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@27) o2@@139 f_2@@139) (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@139 f_2@@139)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@139 f_2@@139))
))) (forall ((o2@@140 T@Ref) (f_2@@140 T@Field_7929_645) ) (!  (=> (select (|PolymorphicMapType_15429_33893_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@140 f_2@@140) (= (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@27) o2@@140 f_2@@140) (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@140 f_2@@140)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@140 f_2@@140))
))) (forall ((o2@@141 T@Ref) (f_2@@141 T@Field_33893_33894) ) (!  (=> (select (|PolymorphicMapType_15429_33893_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@141 f_2@@141) (= (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@27) o2@@141 f_2@@141) (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@141 f_2@@141)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@141 f_2@@141))
))) (forall ((o2@@142 T@Ref) (f_2@@142 T@Field_33906_33911) ) (!  (=> (select (|PolymorphicMapType_15429_33893_66766#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@27) null (PredicateMaskField_7904 pm_f@@14))) o2@@142 f_2@@142) (= (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@27) o2@@142 f_2@@142) (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@142 f_2@@142)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| ExhaleHeap@@15) o2@@142 f_2@@142))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@15 Mask@@16) (IsPredicateField_7904_7905 pm_f@@14))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_14880) (ExhaleHeap@@16 T@PolymorphicMapType_14880) (Mask@@17 T@PolymorphicMapType_14901) (pm_f@@15 T@Field_19474_19475) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@16 Mask@@17) (=> (and (HasDirectPerm_7855_7856 Mask@@17 null pm_f@@15) (IsPredicateField_7855_7856 pm_f@@15)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@143 T@Ref) (f_2@@143 T@Field_18374_1231) ) (!  (=> (select (|PolymorphicMapType_15429_7677_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@143 f_2@@143) (= (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@28) o2@@143 f_2@@143) (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@143 f_2@@143)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@143 f_2@@143))
)) (forall ((o2@@144 T@Ref) (f_2@@144 T@Field_14953_14954) ) (!  (=> (select (|PolymorphicMapType_15429_7679_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@144 f_2@@144) (= (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@28) o2@@144 f_2@@144) (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@144 f_2@@144)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@144 f_2@@144))
))) (forall ((o2@@145 T@Ref) (f_2@@145 T@Field_14940_53) ) (!  (=> (select (|PolymorphicMapType_15429_7677_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@145 f_2@@145) (= (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@28) o2@@145 f_2@@145) (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@145 f_2@@145)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@145 f_2@@145))
))) (forall ((o2@@146 T@Ref) (f_2@@146 T@Field_18283_645) ) (!  (=> (select (|PolymorphicMapType_15429_7677_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@146 f_2@@146) (= (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@28) o2@@146 f_2@@146) (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@146 f_2@@146)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@146 f_2@@146))
))) (forall ((o2@@147 T@Ref) (f_2@@147 T@Field_7679_7856) ) (!  (=> (select (|PolymorphicMapType_15429_7677_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@147 f_2@@147) (= (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@28) o2@@147 f_2@@147) (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@147 f_2@@147)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@147 f_2@@147))
))) (forall ((o2@@148 T@Ref) (f_2@@148 T@Field_7679_22170) ) (!  (=> (select (|PolymorphicMapType_15429_7677_60536#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@148 f_2@@148) (= (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@28) o2@@148 f_2@@148) (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@148 f_2@@148)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@148 f_2@@148))
))) (forall ((o2@@149 T@Ref) (f_2@@149 T@Field_7855_1291) ) (!  (=> (select (|PolymorphicMapType_15429_19474_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@149 f_2@@149) (= (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@28) o2@@149 f_2@@149) (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@149 f_2@@149)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@149 f_2@@149))
))) (forall ((o2@@150 T@Ref) (f_2@@150 T@Field_7855_7680) ) (!  (=> (select (|PolymorphicMapType_15429_19474_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@150 f_2@@150) (= (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@28) o2@@150 f_2@@150) (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@150 f_2@@150)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@150 f_2@@150))
))) (forall ((o2@@151 T@Ref) (f_2@@151 T@Field_7855_53) ) (!  (=> (select (|PolymorphicMapType_15429_19474_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@151 f_2@@151) (= (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@28) o2@@151 f_2@@151) (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@151 f_2@@151)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@151 f_2@@151))
))) (forall ((o2@@152 T@Ref) (f_2@@152 T@Field_7855_645) ) (!  (=> (select (|PolymorphicMapType_15429_19474_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@152 f_2@@152) (= (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@28) o2@@152 f_2@@152) (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@152 f_2@@152)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@152 f_2@@152))
))) (forall ((o2@@153 T@Ref) (f_2@@153 T@Field_19474_19475) ) (!  (=> (select (|PolymorphicMapType_15429_19474_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@153 f_2@@153) (= (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@28) o2@@153 f_2@@153) (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@153 f_2@@153)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@153 f_2@@153))
))) (forall ((o2@@154 T@Ref) (f_2@@154 T@Field_22165_22170) ) (!  (=> (select (|PolymorphicMapType_15429_19474_61782#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@154 f_2@@154) (= (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) o2@@154 f_2@@154) (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@154 f_2@@154)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@154 f_2@@154))
))) (forall ((o2@@155 T@Ref) (f_2@@155 T@Field_7904_1291) ) (!  (=> (select (|PolymorphicMapType_15429_27622_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@155 f_2@@155) (= (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@28) o2@@155 f_2@@155) (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@155 f_2@@155)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@155 f_2@@155))
))) (forall ((o2@@156 T@Ref) (f_2@@156 T@Field_7904_7680) ) (!  (=> (select (|PolymorphicMapType_15429_27622_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@156 f_2@@156) (= (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@28) o2@@156 f_2@@156) (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@156 f_2@@156)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@156 f_2@@156))
))) (forall ((o2@@157 T@Ref) (f_2@@157 T@Field_7904_53) ) (!  (=> (select (|PolymorphicMapType_15429_27622_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@157 f_2@@157) (= (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@28) o2@@157 f_2@@157) (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@157 f_2@@157)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@157 f_2@@157))
))) (forall ((o2@@158 T@Ref) (f_2@@158 T@Field_7904_645) ) (!  (=> (select (|PolymorphicMapType_15429_27622_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@158 f_2@@158) (= (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@28) o2@@158 f_2@@158) (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@158 f_2@@158)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@158 f_2@@158))
))) (forall ((o2@@159 T@Ref) (f_2@@159 T@Field_27622_27623) ) (!  (=> (select (|PolymorphicMapType_15429_27622_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@159 f_2@@159) (= (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@28) o2@@159 f_2@@159) (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@159 f_2@@159)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@159 f_2@@159))
))) (forall ((o2@@160 T@Ref) (f_2@@160 T@Field_28913_28918) ) (!  (=> (select (|PolymorphicMapType_15429_27622_63028#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@160 f_2@@160) (= (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@28) o2@@160 f_2@@160) (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@160 f_2@@160)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@160 f_2@@160))
))) (forall ((o2@@161 T@Ref) (f_2@@161 T@Field_29221_1291) ) (!  (=> (select (|PolymorphicMapType_15429_29221_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@161 f_2@@161) (= (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@28) o2@@161 f_2@@161) (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@161 f_2@@161)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@161 f_2@@161))
))) (forall ((o2@@162 T@Ref) (f_2@@162 T@Field_29221_7680) ) (!  (=> (select (|PolymorphicMapType_15429_29221_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@162 f_2@@162) (= (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@28) o2@@162 f_2@@162) (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@162 f_2@@162)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@162 f_2@@162))
))) (forall ((o2@@163 T@Ref) (f_2@@163 T@Field_29221_53) ) (!  (=> (select (|PolymorphicMapType_15429_29221_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@163 f_2@@163) (= (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@28) o2@@163 f_2@@163) (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@163 f_2@@163)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@163 f_2@@163))
))) (forall ((o2@@164 T@Ref) (f_2@@164 T@Field_29221_645) ) (!  (=> (select (|PolymorphicMapType_15429_29221_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@164 f_2@@164) (= (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@28) o2@@164 f_2@@164) (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@164 f_2@@164)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@164 f_2@@164))
))) (forall ((o2@@165 T@Ref) (f_2@@165 T@Field_29221_29222) ) (!  (=> (select (|PolymorphicMapType_15429_29221_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@165 f_2@@165) (= (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@28) o2@@165 f_2@@165) (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@165 f_2@@165)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@165 f_2@@165))
))) (forall ((o2@@166 T@Ref) (f_2@@166 T@Field_29234_29239) ) (!  (=> (select (|PolymorphicMapType_15429_29221_64274#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@166 f_2@@166) (= (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@28) o2@@166 f_2@@166) (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@166 f_2@@166)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@166 f_2@@166))
))) (forall ((o2@@167 T@Ref) (f_2@@167 T@Field_32245_1291) ) (!  (=> (select (|PolymorphicMapType_15429_32245_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@167 f_2@@167) (= (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@28) o2@@167 f_2@@167) (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@167 f_2@@167)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@167 f_2@@167))
))) (forall ((o2@@168 T@Ref) (f_2@@168 T@Field_32245_7680) ) (!  (=> (select (|PolymorphicMapType_15429_32245_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@168 f_2@@168) (= (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@28) o2@@168 f_2@@168) (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@168 f_2@@168)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@168 f_2@@168))
))) (forall ((o2@@169 T@Ref) (f_2@@169 T@Field_32245_53) ) (!  (=> (select (|PolymorphicMapType_15429_32245_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@169 f_2@@169) (= (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@28) o2@@169 f_2@@169) (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@169 f_2@@169)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@169 f_2@@169))
))) (forall ((o2@@170 T@Ref) (f_2@@170 T@Field_32245_645) ) (!  (=> (select (|PolymorphicMapType_15429_32245_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@170 f_2@@170) (= (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@28) o2@@170 f_2@@170) (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@170 f_2@@170)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@170 f_2@@170))
))) (forall ((o2@@171 T@Ref) (f_2@@171 T@Field_32245_32246) ) (!  (=> (select (|PolymorphicMapType_15429_32245_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@171 f_2@@171) (= (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@28) o2@@171 f_2@@171) (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@171 f_2@@171)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@171 f_2@@171))
))) (forall ((o2@@172 T@Ref) (f_2@@172 T@Field_32258_32263) ) (!  (=> (select (|PolymorphicMapType_15429_32245_65520#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@172 f_2@@172) (= (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@28) o2@@172 f_2@@172) (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@172 f_2@@172)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@172 f_2@@172))
))) (forall ((o2@@173 T@Ref) (f_2@@173 T@Field_7929_1291) ) (!  (=> (select (|PolymorphicMapType_15429_33893_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@173 f_2@@173) (= (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@28) o2@@173 f_2@@173) (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@173 f_2@@173)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@173 f_2@@173))
))) (forall ((o2@@174 T@Ref) (f_2@@174 T@Field_7929_7680) ) (!  (=> (select (|PolymorphicMapType_15429_33893_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@174 f_2@@174) (= (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@28) o2@@174 f_2@@174) (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@174 f_2@@174)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@174 f_2@@174))
))) (forall ((o2@@175 T@Ref) (f_2@@175 T@Field_7929_53) ) (!  (=> (select (|PolymorphicMapType_15429_33893_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@175 f_2@@175) (= (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@28) o2@@175 f_2@@175) (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@175 f_2@@175)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@175 f_2@@175))
))) (forall ((o2@@176 T@Ref) (f_2@@176 T@Field_7929_645) ) (!  (=> (select (|PolymorphicMapType_15429_33893_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@176 f_2@@176) (= (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@28) o2@@176 f_2@@176) (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@176 f_2@@176)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@176 f_2@@176))
))) (forall ((o2@@177 T@Ref) (f_2@@177 T@Field_33893_33894) ) (!  (=> (select (|PolymorphicMapType_15429_33893_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@177 f_2@@177) (= (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@28) o2@@177 f_2@@177) (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@177 f_2@@177)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@177 f_2@@177))
))) (forall ((o2@@178 T@Ref) (f_2@@178 T@Field_33906_33911) ) (!  (=> (select (|PolymorphicMapType_15429_33893_66766#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@28) null (PredicateMaskField_7855 pm_f@@15))) o2@@178 f_2@@178) (= (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@28) o2@@178 f_2@@178) (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@178 f_2@@178)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| ExhaleHeap@@16) o2@@178 f_2@@178))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@16 Mask@@17) (IsPredicateField_7855_7856 pm_f@@15))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_14880) (ExhaleHeap@@17 T@PolymorphicMapType_14880) (Mask@@18 T@PolymorphicMapType_14901) (pm_f@@16 T@Field_7679_7856) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@17 Mask@@18) (=> (and (HasDirectPerm_7679_7856 Mask@@18 null pm_f@@16) (IsPredicateField_7679_57581 pm_f@@16)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@179 T@Ref) (f_2@@179 T@Field_18374_1231) ) (!  (=> (select (|PolymorphicMapType_15429_7677_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@179 f_2@@179) (= (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@29) o2@@179 f_2@@179) (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@179 f_2@@179)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@179 f_2@@179))
)) (forall ((o2@@180 T@Ref) (f_2@@180 T@Field_14953_14954) ) (!  (=> (select (|PolymorphicMapType_15429_7679_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@180 f_2@@180) (= (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@29) o2@@180 f_2@@180) (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@180 f_2@@180)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@180 f_2@@180))
))) (forall ((o2@@181 T@Ref) (f_2@@181 T@Field_14940_53) ) (!  (=> (select (|PolymorphicMapType_15429_7677_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@181 f_2@@181) (= (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@29) o2@@181 f_2@@181) (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@181 f_2@@181)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@181 f_2@@181))
))) (forall ((o2@@182 T@Ref) (f_2@@182 T@Field_18283_645) ) (!  (=> (select (|PolymorphicMapType_15429_7677_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@182 f_2@@182) (= (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@29) o2@@182 f_2@@182) (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@182 f_2@@182)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@182 f_2@@182))
))) (forall ((o2@@183 T@Ref) (f_2@@183 T@Field_7679_7856) ) (!  (=> (select (|PolymorphicMapType_15429_7677_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@183 f_2@@183) (= (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@29) o2@@183 f_2@@183) (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@183 f_2@@183)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@183 f_2@@183))
))) (forall ((o2@@184 T@Ref) (f_2@@184 T@Field_7679_22170) ) (!  (=> (select (|PolymorphicMapType_15429_7677_60536#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@184 f_2@@184) (= (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) o2@@184 f_2@@184) (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@184 f_2@@184)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@184 f_2@@184))
))) (forall ((o2@@185 T@Ref) (f_2@@185 T@Field_7855_1291) ) (!  (=> (select (|PolymorphicMapType_15429_19474_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@185 f_2@@185) (= (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@29) o2@@185 f_2@@185) (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@185 f_2@@185)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@185 f_2@@185))
))) (forall ((o2@@186 T@Ref) (f_2@@186 T@Field_7855_7680) ) (!  (=> (select (|PolymorphicMapType_15429_19474_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@186 f_2@@186) (= (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@29) o2@@186 f_2@@186) (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@186 f_2@@186)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@186 f_2@@186))
))) (forall ((o2@@187 T@Ref) (f_2@@187 T@Field_7855_53) ) (!  (=> (select (|PolymorphicMapType_15429_19474_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@187 f_2@@187) (= (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@29) o2@@187 f_2@@187) (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@187 f_2@@187)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@187 f_2@@187))
))) (forall ((o2@@188 T@Ref) (f_2@@188 T@Field_7855_645) ) (!  (=> (select (|PolymorphicMapType_15429_19474_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@188 f_2@@188) (= (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@29) o2@@188 f_2@@188) (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@188 f_2@@188)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@188 f_2@@188))
))) (forall ((o2@@189 T@Ref) (f_2@@189 T@Field_19474_19475) ) (!  (=> (select (|PolymorphicMapType_15429_19474_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@189 f_2@@189) (= (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@29) o2@@189 f_2@@189) (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@189 f_2@@189)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@189 f_2@@189))
))) (forall ((o2@@190 T@Ref) (f_2@@190 T@Field_22165_22170) ) (!  (=> (select (|PolymorphicMapType_15429_19474_61782#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@190 f_2@@190) (= (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@29) o2@@190 f_2@@190) (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@190 f_2@@190)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@190 f_2@@190))
))) (forall ((o2@@191 T@Ref) (f_2@@191 T@Field_7904_1291) ) (!  (=> (select (|PolymorphicMapType_15429_27622_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@191 f_2@@191) (= (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@29) o2@@191 f_2@@191) (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@191 f_2@@191)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@191 f_2@@191))
))) (forall ((o2@@192 T@Ref) (f_2@@192 T@Field_7904_7680) ) (!  (=> (select (|PolymorphicMapType_15429_27622_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@192 f_2@@192) (= (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@29) o2@@192 f_2@@192) (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@192 f_2@@192)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@192 f_2@@192))
))) (forall ((o2@@193 T@Ref) (f_2@@193 T@Field_7904_53) ) (!  (=> (select (|PolymorphicMapType_15429_27622_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@193 f_2@@193) (= (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@29) o2@@193 f_2@@193) (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@193 f_2@@193)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@193 f_2@@193))
))) (forall ((o2@@194 T@Ref) (f_2@@194 T@Field_7904_645) ) (!  (=> (select (|PolymorphicMapType_15429_27622_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@194 f_2@@194) (= (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@29) o2@@194 f_2@@194) (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@194 f_2@@194)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@194 f_2@@194))
))) (forall ((o2@@195 T@Ref) (f_2@@195 T@Field_27622_27623) ) (!  (=> (select (|PolymorphicMapType_15429_27622_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@195 f_2@@195) (= (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@29) o2@@195 f_2@@195) (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@195 f_2@@195)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@195 f_2@@195))
))) (forall ((o2@@196 T@Ref) (f_2@@196 T@Field_28913_28918) ) (!  (=> (select (|PolymorphicMapType_15429_27622_63028#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@196 f_2@@196) (= (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@29) o2@@196 f_2@@196) (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@196 f_2@@196)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@196 f_2@@196))
))) (forall ((o2@@197 T@Ref) (f_2@@197 T@Field_29221_1291) ) (!  (=> (select (|PolymorphicMapType_15429_29221_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@197 f_2@@197) (= (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@29) o2@@197 f_2@@197) (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@197 f_2@@197)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@197 f_2@@197))
))) (forall ((o2@@198 T@Ref) (f_2@@198 T@Field_29221_7680) ) (!  (=> (select (|PolymorphicMapType_15429_29221_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@198 f_2@@198) (= (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@29) o2@@198 f_2@@198) (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@198 f_2@@198)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@198 f_2@@198))
))) (forall ((o2@@199 T@Ref) (f_2@@199 T@Field_29221_53) ) (!  (=> (select (|PolymorphicMapType_15429_29221_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@199 f_2@@199) (= (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@29) o2@@199 f_2@@199) (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@199 f_2@@199)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@199 f_2@@199))
))) (forall ((o2@@200 T@Ref) (f_2@@200 T@Field_29221_645) ) (!  (=> (select (|PolymorphicMapType_15429_29221_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@200 f_2@@200) (= (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@29) o2@@200 f_2@@200) (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@200 f_2@@200)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@200 f_2@@200))
))) (forall ((o2@@201 T@Ref) (f_2@@201 T@Field_29221_29222) ) (!  (=> (select (|PolymorphicMapType_15429_29221_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@201 f_2@@201) (= (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@29) o2@@201 f_2@@201) (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@201 f_2@@201)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@201 f_2@@201))
))) (forall ((o2@@202 T@Ref) (f_2@@202 T@Field_29234_29239) ) (!  (=> (select (|PolymorphicMapType_15429_29221_64274#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@202 f_2@@202) (= (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@29) o2@@202 f_2@@202) (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@202 f_2@@202)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@202 f_2@@202))
))) (forall ((o2@@203 T@Ref) (f_2@@203 T@Field_32245_1291) ) (!  (=> (select (|PolymorphicMapType_15429_32245_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@203 f_2@@203) (= (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@29) o2@@203 f_2@@203) (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@203 f_2@@203)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@203 f_2@@203))
))) (forall ((o2@@204 T@Ref) (f_2@@204 T@Field_32245_7680) ) (!  (=> (select (|PolymorphicMapType_15429_32245_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@204 f_2@@204) (= (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@29) o2@@204 f_2@@204) (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@204 f_2@@204)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@204 f_2@@204))
))) (forall ((o2@@205 T@Ref) (f_2@@205 T@Field_32245_53) ) (!  (=> (select (|PolymorphicMapType_15429_32245_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@205 f_2@@205) (= (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@29) o2@@205 f_2@@205) (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@205 f_2@@205)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@205 f_2@@205))
))) (forall ((o2@@206 T@Ref) (f_2@@206 T@Field_32245_645) ) (!  (=> (select (|PolymorphicMapType_15429_32245_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@206 f_2@@206) (= (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@29) o2@@206 f_2@@206) (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@206 f_2@@206)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@206 f_2@@206))
))) (forall ((o2@@207 T@Ref) (f_2@@207 T@Field_32245_32246) ) (!  (=> (select (|PolymorphicMapType_15429_32245_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@207 f_2@@207) (= (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@29) o2@@207 f_2@@207) (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@207 f_2@@207)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@207 f_2@@207))
))) (forall ((o2@@208 T@Ref) (f_2@@208 T@Field_32258_32263) ) (!  (=> (select (|PolymorphicMapType_15429_32245_65520#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@208 f_2@@208) (= (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@29) o2@@208 f_2@@208) (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@208 f_2@@208)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@208 f_2@@208))
))) (forall ((o2@@209 T@Ref) (f_2@@209 T@Field_7929_1291) ) (!  (=> (select (|PolymorphicMapType_15429_33893_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@209 f_2@@209) (= (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@29) o2@@209 f_2@@209) (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@209 f_2@@209)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@209 f_2@@209))
))) (forall ((o2@@210 T@Ref) (f_2@@210 T@Field_7929_7680) ) (!  (=> (select (|PolymorphicMapType_15429_33893_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@210 f_2@@210) (= (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@29) o2@@210 f_2@@210) (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@210 f_2@@210)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@210 f_2@@210))
))) (forall ((o2@@211 T@Ref) (f_2@@211 T@Field_7929_53) ) (!  (=> (select (|PolymorphicMapType_15429_33893_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@211 f_2@@211) (= (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@29) o2@@211 f_2@@211) (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@211 f_2@@211)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@211 f_2@@211))
))) (forall ((o2@@212 T@Ref) (f_2@@212 T@Field_7929_645) ) (!  (=> (select (|PolymorphicMapType_15429_33893_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@212 f_2@@212) (= (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@29) o2@@212 f_2@@212) (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@212 f_2@@212)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@212 f_2@@212))
))) (forall ((o2@@213 T@Ref) (f_2@@213 T@Field_33893_33894) ) (!  (=> (select (|PolymorphicMapType_15429_33893_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@213 f_2@@213) (= (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@29) o2@@213 f_2@@213) (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@213 f_2@@213)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@213 f_2@@213))
))) (forall ((o2@@214 T@Ref) (f_2@@214 T@Field_33906_33911) ) (!  (=> (select (|PolymorphicMapType_15429_33893_66766#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@29) null (PredicateMaskField_7679 pm_f@@16))) o2@@214 f_2@@214) (= (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@29) o2@@214 f_2@@214) (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@214 f_2@@214)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| ExhaleHeap@@17) o2@@214 f_2@@214))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@17 Mask@@18) (IsPredicateField_7679_57581 pm_f@@16))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_14880) (ExhaleHeap@@18 T@PolymorphicMapType_14880) (Mask@@19 T@PolymorphicMapType_14901) (pm_f@@17 T@Field_32245_32246) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@18 Mask@@19) (=> (and (HasDirectPerm_32245_7856 Mask@@19 null pm_f@@17) (IsWandField_32245_70483 pm_f@@17)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@215 T@Ref) (f_2@@215 T@Field_18374_1231) ) (!  (=> (select (|PolymorphicMapType_15429_7677_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@215 f_2@@215) (= (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@30) o2@@215 f_2@@215) (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@215 f_2@@215)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@215 f_2@@215))
)) (forall ((o2@@216 T@Ref) (f_2@@216 T@Field_14953_14954) ) (!  (=> (select (|PolymorphicMapType_15429_7679_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@216 f_2@@216) (= (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@30) o2@@216 f_2@@216) (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@216 f_2@@216)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@216 f_2@@216))
))) (forall ((o2@@217 T@Ref) (f_2@@217 T@Field_14940_53) ) (!  (=> (select (|PolymorphicMapType_15429_7677_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@217 f_2@@217) (= (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@30) o2@@217 f_2@@217) (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@217 f_2@@217)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@217 f_2@@217))
))) (forall ((o2@@218 T@Ref) (f_2@@218 T@Field_18283_645) ) (!  (=> (select (|PolymorphicMapType_15429_7677_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@218 f_2@@218) (= (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@30) o2@@218 f_2@@218) (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@218 f_2@@218)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@218 f_2@@218))
))) (forall ((o2@@219 T@Ref) (f_2@@219 T@Field_7679_7856) ) (!  (=> (select (|PolymorphicMapType_15429_7677_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@219 f_2@@219) (= (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@30) o2@@219 f_2@@219) (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@219 f_2@@219)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@219 f_2@@219))
))) (forall ((o2@@220 T@Ref) (f_2@@220 T@Field_7679_22170) ) (!  (=> (select (|PolymorphicMapType_15429_7677_60536#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@220 f_2@@220) (= (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@30) o2@@220 f_2@@220) (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@220 f_2@@220)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@220 f_2@@220))
))) (forall ((o2@@221 T@Ref) (f_2@@221 T@Field_7855_1291) ) (!  (=> (select (|PolymorphicMapType_15429_19474_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@221 f_2@@221) (= (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@30) o2@@221 f_2@@221) (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@221 f_2@@221)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@221 f_2@@221))
))) (forall ((o2@@222 T@Ref) (f_2@@222 T@Field_7855_7680) ) (!  (=> (select (|PolymorphicMapType_15429_19474_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@222 f_2@@222) (= (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@30) o2@@222 f_2@@222) (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@222 f_2@@222)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@222 f_2@@222))
))) (forall ((o2@@223 T@Ref) (f_2@@223 T@Field_7855_53) ) (!  (=> (select (|PolymorphicMapType_15429_19474_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@223 f_2@@223) (= (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@30) o2@@223 f_2@@223) (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@223 f_2@@223)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@223 f_2@@223))
))) (forall ((o2@@224 T@Ref) (f_2@@224 T@Field_7855_645) ) (!  (=> (select (|PolymorphicMapType_15429_19474_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@224 f_2@@224) (= (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@30) o2@@224 f_2@@224) (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@224 f_2@@224)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@224 f_2@@224))
))) (forall ((o2@@225 T@Ref) (f_2@@225 T@Field_19474_19475) ) (!  (=> (select (|PolymorphicMapType_15429_19474_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@225 f_2@@225) (= (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@30) o2@@225 f_2@@225) (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@225 f_2@@225)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@225 f_2@@225))
))) (forall ((o2@@226 T@Ref) (f_2@@226 T@Field_22165_22170) ) (!  (=> (select (|PolymorphicMapType_15429_19474_61782#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@226 f_2@@226) (= (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@30) o2@@226 f_2@@226) (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@226 f_2@@226)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@226 f_2@@226))
))) (forall ((o2@@227 T@Ref) (f_2@@227 T@Field_7904_1291) ) (!  (=> (select (|PolymorphicMapType_15429_27622_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@227 f_2@@227) (= (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@30) o2@@227 f_2@@227) (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@227 f_2@@227)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@227 f_2@@227))
))) (forall ((o2@@228 T@Ref) (f_2@@228 T@Field_7904_7680) ) (!  (=> (select (|PolymorphicMapType_15429_27622_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@228 f_2@@228) (= (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@30) o2@@228 f_2@@228) (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@228 f_2@@228)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@228 f_2@@228))
))) (forall ((o2@@229 T@Ref) (f_2@@229 T@Field_7904_53) ) (!  (=> (select (|PolymorphicMapType_15429_27622_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@229 f_2@@229) (= (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@30) o2@@229 f_2@@229) (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@229 f_2@@229)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@229 f_2@@229))
))) (forall ((o2@@230 T@Ref) (f_2@@230 T@Field_7904_645) ) (!  (=> (select (|PolymorphicMapType_15429_27622_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@230 f_2@@230) (= (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@30) o2@@230 f_2@@230) (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@230 f_2@@230)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@230 f_2@@230))
))) (forall ((o2@@231 T@Ref) (f_2@@231 T@Field_27622_27623) ) (!  (=> (select (|PolymorphicMapType_15429_27622_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@231 f_2@@231) (= (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@30) o2@@231 f_2@@231) (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@231 f_2@@231)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@231 f_2@@231))
))) (forall ((o2@@232 T@Ref) (f_2@@232 T@Field_28913_28918) ) (!  (=> (select (|PolymorphicMapType_15429_27622_63028#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@232 f_2@@232) (= (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@30) o2@@232 f_2@@232) (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@232 f_2@@232)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@232 f_2@@232))
))) (forall ((o2@@233 T@Ref) (f_2@@233 T@Field_29221_1291) ) (!  (=> (select (|PolymorphicMapType_15429_29221_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@233 f_2@@233) (= (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@30) o2@@233 f_2@@233) (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@233 f_2@@233)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@233 f_2@@233))
))) (forall ((o2@@234 T@Ref) (f_2@@234 T@Field_29221_7680) ) (!  (=> (select (|PolymorphicMapType_15429_29221_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@234 f_2@@234) (= (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@30) o2@@234 f_2@@234) (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@234 f_2@@234)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@234 f_2@@234))
))) (forall ((o2@@235 T@Ref) (f_2@@235 T@Field_29221_53) ) (!  (=> (select (|PolymorphicMapType_15429_29221_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@235 f_2@@235) (= (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@30) o2@@235 f_2@@235) (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@235 f_2@@235)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@235 f_2@@235))
))) (forall ((o2@@236 T@Ref) (f_2@@236 T@Field_29221_645) ) (!  (=> (select (|PolymorphicMapType_15429_29221_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@236 f_2@@236) (= (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@30) o2@@236 f_2@@236) (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@236 f_2@@236)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@236 f_2@@236))
))) (forall ((o2@@237 T@Ref) (f_2@@237 T@Field_29221_29222) ) (!  (=> (select (|PolymorphicMapType_15429_29221_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@237 f_2@@237) (= (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@30) o2@@237 f_2@@237) (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@237 f_2@@237)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@237 f_2@@237))
))) (forall ((o2@@238 T@Ref) (f_2@@238 T@Field_29234_29239) ) (!  (=> (select (|PolymorphicMapType_15429_29221_64274#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@238 f_2@@238) (= (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@30) o2@@238 f_2@@238) (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@238 f_2@@238)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@238 f_2@@238))
))) (forall ((o2@@239 T@Ref) (f_2@@239 T@Field_32245_1291) ) (!  (=> (select (|PolymorphicMapType_15429_32245_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@239 f_2@@239) (= (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@30) o2@@239 f_2@@239) (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@239 f_2@@239)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@239 f_2@@239))
))) (forall ((o2@@240 T@Ref) (f_2@@240 T@Field_32245_7680) ) (!  (=> (select (|PolymorphicMapType_15429_32245_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@240 f_2@@240) (= (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@30) o2@@240 f_2@@240) (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@240 f_2@@240)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@240 f_2@@240))
))) (forall ((o2@@241 T@Ref) (f_2@@241 T@Field_32245_53) ) (!  (=> (select (|PolymorphicMapType_15429_32245_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@241 f_2@@241) (= (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@30) o2@@241 f_2@@241) (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@241 f_2@@241)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@241 f_2@@241))
))) (forall ((o2@@242 T@Ref) (f_2@@242 T@Field_32245_645) ) (!  (=> (select (|PolymorphicMapType_15429_32245_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@242 f_2@@242) (= (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@30) o2@@242 f_2@@242) (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@242 f_2@@242)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@242 f_2@@242))
))) (forall ((o2@@243 T@Ref) (f_2@@243 T@Field_32245_32246) ) (!  (=> (select (|PolymorphicMapType_15429_32245_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@243 f_2@@243) (= (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@30) o2@@243 f_2@@243) (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@243 f_2@@243)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@243 f_2@@243))
))) (forall ((o2@@244 T@Ref) (f_2@@244 T@Field_32258_32263) ) (!  (=> (select (|PolymorphicMapType_15429_32245_65520#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@244 f_2@@244) (= (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) o2@@244 f_2@@244) (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@244 f_2@@244)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@244 f_2@@244))
))) (forall ((o2@@245 T@Ref) (f_2@@245 T@Field_7929_1291) ) (!  (=> (select (|PolymorphicMapType_15429_33893_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@245 f_2@@245) (= (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@30) o2@@245 f_2@@245) (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@245 f_2@@245)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@245 f_2@@245))
))) (forall ((o2@@246 T@Ref) (f_2@@246 T@Field_7929_7680) ) (!  (=> (select (|PolymorphicMapType_15429_33893_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@246 f_2@@246) (= (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@30) o2@@246 f_2@@246) (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@246 f_2@@246)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@246 f_2@@246))
))) (forall ((o2@@247 T@Ref) (f_2@@247 T@Field_7929_53) ) (!  (=> (select (|PolymorphicMapType_15429_33893_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@247 f_2@@247) (= (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@30) o2@@247 f_2@@247) (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@247 f_2@@247)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@247 f_2@@247))
))) (forall ((o2@@248 T@Ref) (f_2@@248 T@Field_7929_645) ) (!  (=> (select (|PolymorphicMapType_15429_33893_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@248 f_2@@248) (= (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@30) o2@@248 f_2@@248) (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@248 f_2@@248)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@248 f_2@@248))
))) (forall ((o2@@249 T@Ref) (f_2@@249 T@Field_33893_33894) ) (!  (=> (select (|PolymorphicMapType_15429_33893_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@249 f_2@@249) (= (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@30) o2@@249 f_2@@249) (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@249 f_2@@249)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@249 f_2@@249))
))) (forall ((o2@@250 T@Ref) (f_2@@250 T@Field_33906_33911) ) (!  (=> (select (|PolymorphicMapType_15429_33893_66766#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@30) null (WandMaskField_32245 pm_f@@17))) o2@@250 f_2@@250) (= (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@30) o2@@250 f_2@@250) (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@250 f_2@@250)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| ExhaleHeap@@18) o2@@250 f_2@@250))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@18 Mask@@19) (IsWandField_32245_70483 pm_f@@17))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_14880) (ExhaleHeap@@19 T@PolymorphicMapType_14880) (Mask@@20 T@PolymorphicMapType_14901) (pm_f@@18 T@Field_29221_29222) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@19 Mask@@20) (=> (and (HasDirectPerm_29221_7856 Mask@@20 null pm_f@@18) (IsWandField_29221_70126 pm_f@@18)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@251 T@Ref) (f_2@@251 T@Field_18374_1231) ) (!  (=> (select (|PolymorphicMapType_15429_7677_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@251 f_2@@251) (= (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@31) o2@@251 f_2@@251) (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@251 f_2@@251)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@251 f_2@@251))
)) (forall ((o2@@252 T@Ref) (f_2@@252 T@Field_14953_14954) ) (!  (=> (select (|PolymorphicMapType_15429_7679_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@252 f_2@@252) (= (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@31) o2@@252 f_2@@252) (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@252 f_2@@252)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@252 f_2@@252))
))) (forall ((o2@@253 T@Ref) (f_2@@253 T@Field_14940_53) ) (!  (=> (select (|PolymorphicMapType_15429_7677_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@253 f_2@@253) (= (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@31) o2@@253 f_2@@253) (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@253 f_2@@253)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@253 f_2@@253))
))) (forall ((o2@@254 T@Ref) (f_2@@254 T@Field_18283_645) ) (!  (=> (select (|PolymorphicMapType_15429_7677_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@254 f_2@@254) (= (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@31) o2@@254 f_2@@254) (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@254 f_2@@254)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@254 f_2@@254))
))) (forall ((o2@@255 T@Ref) (f_2@@255 T@Field_7679_7856) ) (!  (=> (select (|PolymorphicMapType_15429_7677_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@255 f_2@@255) (= (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@31) o2@@255 f_2@@255) (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@255 f_2@@255)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@255 f_2@@255))
))) (forall ((o2@@256 T@Ref) (f_2@@256 T@Field_7679_22170) ) (!  (=> (select (|PolymorphicMapType_15429_7677_60536#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@256 f_2@@256) (= (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@31) o2@@256 f_2@@256) (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@256 f_2@@256)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@256 f_2@@256))
))) (forall ((o2@@257 T@Ref) (f_2@@257 T@Field_7855_1291) ) (!  (=> (select (|PolymorphicMapType_15429_19474_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@257 f_2@@257) (= (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@31) o2@@257 f_2@@257) (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@257 f_2@@257)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@257 f_2@@257))
))) (forall ((o2@@258 T@Ref) (f_2@@258 T@Field_7855_7680) ) (!  (=> (select (|PolymorphicMapType_15429_19474_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@258 f_2@@258) (= (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@31) o2@@258 f_2@@258) (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@258 f_2@@258)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@258 f_2@@258))
))) (forall ((o2@@259 T@Ref) (f_2@@259 T@Field_7855_53) ) (!  (=> (select (|PolymorphicMapType_15429_19474_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@259 f_2@@259) (= (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@31) o2@@259 f_2@@259) (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@259 f_2@@259)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@259 f_2@@259))
))) (forall ((o2@@260 T@Ref) (f_2@@260 T@Field_7855_645) ) (!  (=> (select (|PolymorphicMapType_15429_19474_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@260 f_2@@260) (= (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@31) o2@@260 f_2@@260) (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@260 f_2@@260)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@260 f_2@@260))
))) (forall ((o2@@261 T@Ref) (f_2@@261 T@Field_19474_19475) ) (!  (=> (select (|PolymorphicMapType_15429_19474_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@261 f_2@@261) (= (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@31) o2@@261 f_2@@261) (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@261 f_2@@261)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@261 f_2@@261))
))) (forall ((o2@@262 T@Ref) (f_2@@262 T@Field_22165_22170) ) (!  (=> (select (|PolymorphicMapType_15429_19474_61782#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@262 f_2@@262) (= (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@31) o2@@262 f_2@@262) (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@262 f_2@@262)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@262 f_2@@262))
))) (forall ((o2@@263 T@Ref) (f_2@@263 T@Field_7904_1291) ) (!  (=> (select (|PolymorphicMapType_15429_27622_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@263 f_2@@263) (= (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@31) o2@@263 f_2@@263) (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@263 f_2@@263)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@263 f_2@@263))
))) (forall ((o2@@264 T@Ref) (f_2@@264 T@Field_7904_7680) ) (!  (=> (select (|PolymorphicMapType_15429_27622_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@264 f_2@@264) (= (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@31) o2@@264 f_2@@264) (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@264 f_2@@264)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@264 f_2@@264))
))) (forall ((o2@@265 T@Ref) (f_2@@265 T@Field_7904_53) ) (!  (=> (select (|PolymorphicMapType_15429_27622_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@265 f_2@@265) (= (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@31) o2@@265 f_2@@265) (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@265 f_2@@265)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@265 f_2@@265))
))) (forall ((o2@@266 T@Ref) (f_2@@266 T@Field_7904_645) ) (!  (=> (select (|PolymorphicMapType_15429_27622_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@266 f_2@@266) (= (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@31) o2@@266 f_2@@266) (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@266 f_2@@266)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@266 f_2@@266))
))) (forall ((o2@@267 T@Ref) (f_2@@267 T@Field_27622_27623) ) (!  (=> (select (|PolymorphicMapType_15429_27622_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@267 f_2@@267) (= (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@31) o2@@267 f_2@@267) (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@267 f_2@@267)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@267 f_2@@267))
))) (forall ((o2@@268 T@Ref) (f_2@@268 T@Field_28913_28918) ) (!  (=> (select (|PolymorphicMapType_15429_27622_63028#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@268 f_2@@268) (= (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@31) o2@@268 f_2@@268) (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@268 f_2@@268)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@268 f_2@@268))
))) (forall ((o2@@269 T@Ref) (f_2@@269 T@Field_29221_1291) ) (!  (=> (select (|PolymorphicMapType_15429_29221_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@269 f_2@@269) (= (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@31) o2@@269 f_2@@269) (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@269 f_2@@269)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@269 f_2@@269))
))) (forall ((o2@@270 T@Ref) (f_2@@270 T@Field_29221_7680) ) (!  (=> (select (|PolymorphicMapType_15429_29221_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@270 f_2@@270) (= (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@31) o2@@270 f_2@@270) (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@270 f_2@@270)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@270 f_2@@270))
))) (forall ((o2@@271 T@Ref) (f_2@@271 T@Field_29221_53) ) (!  (=> (select (|PolymorphicMapType_15429_29221_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@271 f_2@@271) (= (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@31) o2@@271 f_2@@271) (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@271 f_2@@271)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@271 f_2@@271))
))) (forall ((o2@@272 T@Ref) (f_2@@272 T@Field_29221_645) ) (!  (=> (select (|PolymorphicMapType_15429_29221_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@272 f_2@@272) (= (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@31) o2@@272 f_2@@272) (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@272 f_2@@272)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@272 f_2@@272))
))) (forall ((o2@@273 T@Ref) (f_2@@273 T@Field_29221_29222) ) (!  (=> (select (|PolymorphicMapType_15429_29221_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@273 f_2@@273) (= (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@31) o2@@273 f_2@@273) (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@273 f_2@@273)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@273 f_2@@273))
))) (forall ((o2@@274 T@Ref) (f_2@@274 T@Field_29234_29239) ) (!  (=> (select (|PolymorphicMapType_15429_29221_64274#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@274 f_2@@274) (= (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) o2@@274 f_2@@274) (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@274 f_2@@274)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@274 f_2@@274))
))) (forall ((o2@@275 T@Ref) (f_2@@275 T@Field_32245_1291) ) (!  (=> (select (|PolymorphicMapType_15429_32245_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@275 f_2@@275) (= (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@31) o2@@275 f_2@@275) (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@275 f_2@@275)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@275 f_2@@275))
))) (forall ((o2@@276 T@Ref) (f_2@@276 T@Field_32245_7680) ) (!  (=> (select (|PolymorphicMapType_15429_32245_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@276 f_2@@276) (= (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@31) o2@@276 f_2@@276) (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@276 f_2@@276)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@276 f_2@@276))
))) (forall ((o2@@277 T@Ref) (f_2@@277 T@Field_32245_53) ) (!  (=> (select (|PolymorphicMapType_15429_32245_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@277 f_2@@277) (= (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@31) o2@@277 f_2@@277) (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@277 f_2@@277)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@277 f_2@@277))
))) (forall ((o2@@278 T@Ref) (f_2@@278 T@Field_32245_645) ) (!  (=> (select (|PolymorphicMapType_15429_32245_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@278 f_2@@278) (= (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@31) o2@@278 f_2@@278) (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@278 f_2@@278)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@278 f_2@@278))
))) (forall ((o2@@279 T@Ref) (f_2@@279 T@Field_32245_32246) ) (!  (=> (select (|PolymorphicMapType_15429_32245_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@279 f_2@@279) (= (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@31) o2@@279 f_2@@279) (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@279 f_2@@279)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@279 f_2@@279))
))) (forall ((o2@@280 T@Ref) (f_2@@280 T@Field_32258_32263) ) (!  (=> (select (|PolymorphicMapType_15429_32245_65520#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@280 f_2@@280) (= (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@31) o2@@280 f_2@@280) (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@280 f_2@@280)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@280 f_2@@280))
))) (forall ((o2@@281 T@Ref) (f_2@@281 T@Field_7929_1291) ) (!  (=> (select (|PolymorphicMapType_15429_33893_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@281 f_2@@281) (= (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@31) o2@@281 f_2@@281) (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@281 f_2@@281)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@281 f_2@@281))
))) (forall ((o2@@282 T@Ref) (f_2@@282 T@Field_7929_7680) ) (!  (=> (select (|PolymorphicMapType_15429_33893_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@282 f_2@@282) (= (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@31) o2@@282 f_2@@282) (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@282 f_2@@282)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@282 f_2@@282))
))) (forall ((o2@@283 T@Ref) (f_2@@283 T@Field_7929_53) ) (!  (=> (select (|PolymorphicMapType_15429_33893_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@283 f_2@@283) (= (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@31) o2@@283 f_2@@283) (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@283 f_2@@283)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@283 f_2@@283))
))) (forall ((o2@@284 T@Ref) (f_2@@284 T@Field_7929_645) ) (!  (=> (select (|PolymorphicMapType_15429_33893_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@284 f_2@@284) (= (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@31) o2@@284 f_2@@284) (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@284 f_2@@284)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@284 f_2@@284))
))) (forall ((o2@@285 T@Ref) (f_2@@285 T@Field_33893_33894) ) (!  (=> (select (|PolymorphicMapType_15429_33893_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@285 f_2@@285) (= (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@31) o2@@285 f_2@@285) (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@285 f_2@@285)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@285 f_2@@285))
))) (forall ((o2@@286 T@Ref) (f_2@@286 T@Field_33906_33911) ) (!  (=> (select (|PolymorphicMapType_15429_33893_66766#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@31) null (WandMaskField_29221 pm_f@@18))) o2@@286 f_2@@286) (= (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@31) o2@@286 f_2@@286) (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@286 f_2@@286)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| ExhaleHeap@@19) o2@@286 f_2@@286))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@19 Mask@@20) (IsWandField_29221_70126 pm_f@@18))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_14880) (ExhaleHeap@@20 T@PolymorphicMapType_14880) (Mask@@21 T@PolymorphicMapType_14901) (pm_f@@19 T@Field_33893_33894) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@20 Mask@@21) (=> (and (HasDirectPerm_7929_7930 Mask@@21 null pm_f@@19) (IsWandField_7929_69769 pm_f@@19)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@287 T@Ref) (f_2@@287 T@Field_18374_1231) ) (!  (=> (select (|PolymorphicMapType_15429_7677_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@287 f_2@@287) (= (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@32) o2@@287 f_2@@287) (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@287 f_2@@287)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@287 f_2@@287))
)) (forall ((o2@@288 T@Ref) (f_2@@288 T@Field_14953_14954) ) (!  (=> (select (|PolymorphicMapType_15429_7679_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@288 f_2@@288) (= (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@32) o2@@288 f_2@@288) (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@288 f_2@@288)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@288 f_2@@288))
))) (forall ((o2@@289 T@Ref) (f_2@@289 T@Field_14940_53) ) (!  (=> (select (|PolymorphicMapType_15429_7677_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@289 f_2@@289) (= (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@32) o2@@289 f_2@@289) (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@289 f_2@@289)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@289 f_2@@289))
))) (forall ((o2@@290 T@Ref) (f_2@@290 T@Field_18283_645) ) (!  (=> (select (|PolymorphicMapType_15429_7677_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@290 f_2@@290) (= (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@32) o2@@290 f_2@@290) (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@290 f_2@@290)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@290 f_2@@290))
))) (forall ((o2@@291 T@Ref) (f_2@@291 T@Field_7679_7856) ) (!  (=> (select (|PolymorphicMapType_15429_7677_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@291 f_2@@291) (= (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@32) o2@@291 f_2@@291) (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@291 f_2@@291)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@291 f_2@@291))
))) (forall ((o2@@292 T@Ref) (f_2@@292 T@Field_7679_22170) ) (!  (=> (select (|PolymorphicMapType_15429_7677_60536#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@292 f_2@@292) (= (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@32) o2@@292 f_2@@292) (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@292 f_2@@292)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@292 f_2@@292))
))) (forall ((o2@@293 T@Ref) (f_2@@293 T@Field_7855_1291) ) (!  (=> (select (|PolymorphicMapType_15429_19474_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@293 f_2@@293) (= (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@32) o2@@293 f_2@@293) (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@293 f_2@@293)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@293 f_2@@293))
))) (forall ((o2@@294 T@Ref) (f_2@@294 T@Field_7855_7680) ) (!  (=> (select (|PolymorphicMapType_15429_19474_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@294 f_2@@294) (= (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@32) o2@@294 f_2@@294) (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@294 f_2@@294)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@294 f_2@@294))
))) (forall ((o2@@295 T@Ref) (f_2@@295 T@Field_7855_53) ) (!  (=> (select (|PolymorphicMapType_15429_19474_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@295 f_2@@295) (= (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@32) o2@@295 f_2@@295) (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@295 f_2@@295)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@295 f_2@@295))
))) (forall ((o2@@296 T@Ref) (f_2@@296 T@Field_7855_645) ) (!  (=> (select (|PolymorphicMapType_15429_19474_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@296 f_2@@296) (= (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@32) o2@@296 f_2@@296) (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@296 f_2@@296)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@296 f_2@@296))
))) (forall ((o2@@297 T@Ref) (f_2@@297 T@Field_19474_19475) ) (!  (=> (select (|PolymorphicMapType_15429_19474_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@297 f_2@@297) (= (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@32) o2@@297 f_2@@297) (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@297 f_2@@297)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@297 f_2@@297))
))) (forall ((o2@@298 T@Ref) (f_2@@298 T@Field_22165_22170) ) (!  (=> (select (|PolymorphicMapType_15429_19474_61782#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@298 f_2@@298) (= (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@32) o2@@298 f_2@@298) (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@298 f_2@@298)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@298 f_2@@298))
))) (forall ((o2@@299 T@Ref) (f_2@@299 T@Field_7904_1291) ) (!  (=> (select (|PolymorphicMapType_15429_27622_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@299 f_2@@299) (= (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@32) o2@@299 f_2@@299) (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@299 f_2@@299)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@299 f_2@@299))
))) (forall ((o2@@300 T@Ref) (f_2@@300 T@Field_7904_7680) ) (!  (=> (select (|PolymorphicMapType_15429_27622_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@300 f_2@@300) (= (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@32) o2@@300 f_2@@300) (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@300 f_2@@300)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@300 f_2@@300))
))) (forall ((o2@@301 T@Ref) (f_2@@301 T@Field_7904_53) ) (!  (=> (select (|PolymorphicMapType_15429_27622_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@301 f_2@@301) (= (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@32) o2@@301 f_2@@301) (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@301 f_2@@301)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@301 f_2@@301))
))) (forall ((o2@@302 T@Ref) (f_2@@302 T@Field_7904_645) ) (!  (=> (select (|PolymorphicMapType_15429_27622_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@302 f_2@@302) (= (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@32) o2@@302 f_2@@302) (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@302 f_2@@302)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@302 f_2@@302))
))) (forall ((o2@@303 T@Ref) (f_2@@303 T@Field_27622_27623) ) (!  (=> (select (|PolymorphicMapType_15429_27622_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@303 f_2@@303) (= (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@32) o2@@303 f_2@@303) (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@303 f_2@@303)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@303 f_2@@303))
))) (forall ((o2@@304 T@Ref) (f_2@@304 T@Field_28913_28918) ) (!  (=> (select (|PolymorphicMapType_15429_27622_63028#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@304 f_2@@304) (= (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@32) o2@@304 f_2@@304) (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@304 f_2@@304)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@304 f_2@@304))
))) (forall ((o2@@305 T@Ref) (f_2@@305 T@Field_29221_1291) ) (!  (=> (select (|PolymorphicMapType_15429_29221_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@305 f_2@@305) (= (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@32) o2@@305 f_2@@305) (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@305 f_2@@305)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@305 f_2@@305))
))) (forall ((o2@@306 T@Ref) (f_2@@306 T@Field_29221_7680) ) (!  (=> (select (|PolymorphicMapType_15429_29221_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@306 f_2@@306) (= (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@32) o2@@306 f_2@@306) (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@306 f_2@@306)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@306 f_2@@306))
))) (forall ((o2@@307 T@Ref) (f_2@@307 T@Field_29221_53) ) (!  (=> (select (|PolymorphicMapType_15429_29221_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@307 f_2@@307) (= (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@32) o2@@307 f_2@@307) (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@307 f_2@@307)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@307 f_2@@307))
))) (forall ((o2@@308 T@Ref) (f_2@@308 T@Field_29221_645) ) (!  (=> (select (|PolymorphicMapType_15429_29221_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@308 f_2@@308) (= (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@32) o2@@308 f_2@@308) (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@308 f_2@@308)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@308 f_2@@308))
))) (forall ((o2@@309 T@Ref) (f_2@@309 T@Field_29221_29222) ) (!  (=> (select (|PolymorphicMapType_15429_29221_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@309 f_2@@309) (= (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@32) o2@@309 f_2@@309) (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@309 f_2@@309)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@309 f_2@@309))
))) (forall ((o2@@310 T@Ref) (f_2@@310 T@Field_29234_29239) ) (!  (=> (select (|PolymorphicMapType_15429_29221_64274#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@310 f_2@@310) (= (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@32) o2@@310 f_2@@310) (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@310 f_2@@310)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@310 f_2@@310))
))) (forall ((o2@@311 T@Ref) (f_2@@311 T@Field_32245_1291) ) (!  (=> (select (|PolymorphicMapType_15429_32245_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@311 f_2@@311) (= (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@32) o2@@311 f_2@@311) (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@311 f_2@@311)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@311 f_2@@311))
))) (forall ((o2@@312 T@Ref) (f_2@@312 T@Field_32245_7680) ) (!  (=> (select (|PolymorphicMapType_15429_32245_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@312 f_2@@312) (= (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@32) o2@@312 f_2@@312) (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@312 f_2@@312)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@312 f_2@@312))
))) (forall ((o2@@313 T@Ref) (f_2@@313 T@Field_32245_53) ) (!  (=> (select (|PolymorphicMapType_15429_32245_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@313 f_2@@313) (= (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@32) o2@@313 f_2@@313) (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@313 f_2@@313)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@313 f_2@@313))
))) (forall ((o2@@314 T@Ref) (f_2@@314 T@Field_32245_645) ) (!  (=> (select (|PolymorphicMapType_15429_32245_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@314 f_2@@314) (= (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@32) o2@@314 f_2@@314) (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@314 f_2@@314)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@314 f_2@@314))
))) (forall ((o2@@315 T@Ref) (f_2@@315 T@Field_32245_32246) ) (!  (=> (select (|PolymorphicMapType_15429_32245_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@315 f_2@@315) (= (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@32) o2@@315 f_2@@315) (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@315 f_2@@315)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@315 f_2@@315))
))) (forall ((o2@@316 T@Ref) (f_2@@316 T@Field_32258_32263) ) (!  (=> (select (|PolymorphicMapType_15429_32245_65520#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@316 f_2@@316) (= (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@32) o2@@316 f_2@@316) (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@316 f_2@@316)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@316 f_2@@316))
))) (forall ((o2@@317 T@Ref) (f_2@@317 T@Field_7929_1291) ) (!  (=> (select (|PolymorphicMapType_15429_33893_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@317 f_2@@317) (= (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@32) o2@@317 f_2@@317) (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@317 f_2@@317)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@317 f_2@@317))
))) (forall ((o2@@318 T@Ref) (f_2@@318 T@Field_7929_7680) ) (!  (=> (select (|PolymorphicMapType_15429_33893_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@318 f_2@@318) (= (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@32) o2@@318 f_2@@318) (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@318 f_2@@318)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@318 f_2@@318))
))) (forall ((o2@@319 T@Ref) (f_2@@319 T@Field_7929_53) ) (!  (=> (select (|PolymorphicMapType_15429_33893_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@319 f_2@@319) (= (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@32) o2@@319 f_2@@319) (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@319 f_2@@319)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@319 f_2@@319))
))) (forall ((o2@@320 T@Ref) (f_2@@320 T@Field_7929_645) ) (!  (=> (select (|PolymorphicMapType_15429_33893_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@320 f_2@@320) (= (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@32) o2@@320 f_2@@320) (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@320 f_2@@320)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@320 f_2@@320))
))) (forall ((o2@@321 T@Ref) (f_2@@321 T@Field_33893_33894) ) (!  (=> (select (|PolymorphicMapType_15429_33893_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@321 f_2@@321) (= (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@32) o2@@321 f_2@@321) (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@321 f_2@@321)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@321 f_2@@321))
))) (forall ((o2@@322 T@Ref) (f_2@@322 T@Field_33906_33911) ) (!  (=> (select (|PolymorphicMapType_15429_33893_66766#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) null (WandMaskField_7929 pm_f@@19))) o2@@322 f_2@@322) (= (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@32) o2@@322 f_2@@322) (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@322 f_2@@322)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| ExhaleHeap@@20) o2@@322 f_2@@322))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@20 Mask@@21) (IsWandField_7929_69769 pm_f@@19))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_14880) (ExhaleHeap@@21 T@PolymorphicMapType_14880) (Mask@@22 T@PolymorphicMapType_14901) (pm_f@@20 T@Field_27622_27623) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@21 Mask@@22) (=> (and (HasDirectPerm_7904_7905 Mask@@22 null pm_f@@20) (IsWandField_7904_69412 pm_f@@20)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@323 T@Ref) (f_2@@323 T@Field_18374_1231) ) (!  (=> (select (|PolymorphicMapType_15429_7677_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@323 f_2@@323) (= (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@33) o2@@323 f_2@@323) (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@323 f_2@@323)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@323 f_2@@323))
)) (forall ((o2@@324 T@Ref) (f_2@@324 T@Field_14953_14954) ) (!  (=> (select (|PolymorphicMapType_15429_7679_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@324 f_2@@324) (= (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@33) o2@@324 f_2@@324) (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@324 f_2@@324)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@324 f_2@@324))
))) (forall ((o2@@325 T@Ref) (f_2@@325 T@Field_14940_53) ) (!  (=> (select (|PolymorphicMapType_15429_7677_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@325 f_2@@325) (= (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@33) o2@@325 f_2@@325) (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@325 f_2@@325)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@325 f_2@@325))
))) (forall ((o2@@326 T@Ref) (f_2@@326 T@Field_18283_645) ) (!  (=> (select (|PolymorphicMapType_15429_7677_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@326 f_2@@326) (= (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@33) o2@@326 f_2@@326) (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@326 f_2@@326)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@326 f_2@@326))
))) (forall ((o2@@327 T@Ref) (f_2@@327 T@Field_7679_7856) ) (!  (=> (select (|PolymorphicMapType_15429_7677_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@327 f_2@@327) (= (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@33) o2@@327 f_2@@327) (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@327 f_2@@327)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@327 f_2@@327))
))) (forall ((o2@@328 T@Ref) (f_2@@328 T@Field_7679_22170) ) (!  (=> (select (|PolymorphicMapType_15429_7677_60536#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@328 f_2@@328) (= (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@33) o2@@328 f_2@@328) (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@328 f_2@@328)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@328 f_2@@328))
))) (forall ((o2@@329 T@Ref) (f_2@@329 T@Field_7855_1291) ) (!  (=> (select (|PolymorphicMapType_15429_19474_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@329 f_2@@329) (= (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@33) o2@@329 f_2@@329) (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@329 f_2@@329)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@329 f_2@@329))
))) (forall ((o2@@330 T@Ref) (f_2@@330 T@Field_7855_7680) ) (!  (=> (select (|PolymorphicMapType_15429_19474_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@330 f_2@@330) (= (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@33) o2@@330 f_2@@330) (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@330 f_2@@330)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@330 f_2@@330))
))) (forall ((o2@@331 T@Ref) (f_2@@331 T@Field_7855_53) ) (!  (=> (select (|PolymorphicMapType_15429_19474_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@331 f_2@@331) (= (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@33) o2@@331 f_2@@331) (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@331 f_2@@331)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@331 f_2@@331))
))) (forall ((o2@@332 T@Ref) (f_2@@332 T@Field_7855_645) ) (!  (=> (select (|PolymorphicMapType_15429_19474_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@332 f_2@@332) (= (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@33) o2@@332 f_2@@332) (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@332 f_2@@332)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@332 f_2@@332))
))) (forall ((o2@@333 T@Ref) (f_2@@333 T@Field_19474_19475) ) (!  (=> (select (|PolymorphicMapType_15429_19474_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@333 f_2@@333) (= (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@33) o2@@333 f_2@@333) (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@333 f_2@@333)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@333 f_2@@333))
))) (forall ((o2@@334 T@Ref) (f_2@@334 T@Field_22165_22170) ) (!  (=> (select (|PolymorphicMapType_15429_19474_61782#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@334 f_2@@334) (= (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@33) o2@@334 f_2@@334) (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@334 f_2@@334)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@334 f_2@@334))
))) (forall ((o2@@335 T@Ref) (f_2@@335 T@Field_7904_1291) ) (!  (=> (select (|PolymorphicMapType_15429_27622_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@335 f_2@@335) (= (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@33) o2@@335 f_2@@335) (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@335 f_2@@335)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@335 f_2@@335))
))) (forall ((o2@@336 T@Ref) (f_2@@336 T@Field_7904_7680) ) (!  (=> (select (|PolymorphicMapType_15429_27622_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@336 f_2@@336) (= (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@33) o2@@336 f_2@@336) (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@336 f_2@@336)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@336 f_2@@336))
))) (forall ((o2@@337 T@Ref) (f_2@@337 T@Field_7904_53) ) (!  (=> (select (|PolymorphicMapType_15429_27622_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@337 f_2@@337) (= (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@33) o2@@337 f_2@@337) (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@337 f_2@@337)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@337 f_2@@337))
))) (forall ((o2@@338 T@Ref) (f_2@@338 T@Field_7904_645) ) (!  (=> (select (|PolymorphicMapType_15429_27622_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@338 f_2@@338) (= (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@33) o2@@338 f_2@@338) (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@338 f_2@@338)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@338 f_2@@338))
))) (forall ((o2@@339 T@Ref) (f_2@@339 T@Field_27622_27623) ) (!  (=> (select (|PolymorphicMapType_15429_27622_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@339 f_2@@339) (= (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@33) o2@@339 f_2@@339) (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@339 f_2@@339)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@339 f_2@@339))
))) (forall ((o2@@340 T@Ref) (f_2@@340 T@Field_28913_28918) ) (!  (=> (select (|PolymorphicMapType_15429_27622_63028#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@340 f_2@@340) (= (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) o2@@340 f_2@@340) (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@340 f_2@@340)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@340 f_2@@340))
))) (forall ((o2@@341 T@Ref) (f_2@@341 T@Field_29221_1291) ) (!  (=> (select (|PolymorphicMapType_15429_29221_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@341 f_2@@341) (= (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@33) o2@@341 f_2@@341) (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@341 f_2@@341)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@341 f_2@@341))
))) (forall ((o2@@342 T@Ref) (f_2@@342 T@Field_29221_7680) ) (!  (=> (select (|PolymorphicMapType_15429_29221_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@342 f_2@@342) (= (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@33) o2@@342 f_2@@342) (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@342 f_2@@342)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@342 f_2@@342))
))) (forall ((o2@@343 T@Ref) (f_2@@343 T@Field_29221_53) ) (!  (=> (select (|PolymorphicMapType_15429_29221_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@343 f_2@@343) (= (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@33) o2@@343 f_2@@343) (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@343 f_2@@343)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@343 f_2@@343))
))) (forall ((o2@@344 T@Ref) (f_2@@344 T@Field_29221_645) ) (!  (=> (select (|PolymorphicMapType_15429_29221_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@344 f_2@@344) (= (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@33) o2@@344 f_2@@344) (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@344 f_2@@344)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@344 f_2@@344))
))) (forall ((o2@@345 T@Ref) (f_2@@345 T@Field_29221_29222) ) (!  (=> (select (|PolymorphicMapType_15429_29221_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@345 f_2@@345) (= (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@33) o2@@345 f_2@@345) (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@345 f_2@@345)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@345 f_2@@345))
))) (forall ((o2@@346 T@Ref) (f_2@@346 T@Field_29234_29239) ) (!  (=> (select (|PolymorphicMapType_15429_29221_64274#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@346 f_2@@346) (= (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@33) o2@@346 f_2@@346) (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@346 f_2@@346)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@346 f_2@@346))
))) (forall ((o2@@347 T@Ref) (f_2@@347 T@Field_32245_1291) ) (!  (=> (select (|PolymorphicMapType_15429_32245_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@347 f_2@@347) (= (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@33) o2@@347 f_2@@347) (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@347 f_2@@347)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@347 f_2@@347))
))) (forall ((o2@@348 T@Ref) (f_2@@348 T@Field_32245_7680) ) (!  (=> (select (|PolymorphicMapType_15429_32245_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@348 f_2@@348) (= (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@33) o2@@348 f_2@@348) (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@348 f_2@@348)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@348 f_2@@348))
))) (forall ((o2@@349 T@Ref) (f_2@@349 T@Field_32245_53) ) (!  (=> (select (|PolymorphicMapType_15429_32245_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@349 f_2@@349) (= (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@33) o2@@349 f_2@@349) (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@349 f_2@@349)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@349 f_2@@349))
))) (forall ((o2@@350 T@Ref) (f_2@@350 T@Field_32245_645) ) (!  (=> (select (|PolymorphicMapType_15429_32245_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@350 f_2@@350) (= (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@33) o2@@350 f_2@@350) (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@350 f_2@@350)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@350 f_2@@350))
))) (forall ((o2@@351 T@Ref) (f_2@@351 T@Field_32245_32246) ) (!  (=> (select (|PolymorphicMapType_15429_32245_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@351 f_2@@351) (= (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@33) o2@@351 f_2@@351) (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@351 f_2@@351)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@351 f_2@@351))
))) (forall ((o2@@352 T@Ref) (f_2@@352 T@Field_32258_32263) ) (!  (=> (select (|PolymorphicMapType_15429_32245_65520#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@352 f_2@@352) (= (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@33) o2@@352 f_2@@352) (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@352 f_2@@352)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@352 f_2@@352))
))) (forall ((o2@@353 T@Ref) (f_2@@353 T@Field_7929_1291) ) (!  (=> (select (|PolymorphicMapType_15429_33893_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@353 f_2@@353) (= (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@33) o2@@353 f_2@@353) (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@353 f_2@@353)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@353 f_2@@353))
))) (forall ((o2@@354 T@Ref) (f_2@@354 T@Field_7929_7680) ) (!  (=> (select (|PolymorphicMapType_15429_33893_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@354 f_2@@354) (= (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@33) o2@@354 f_2@@354) (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@354 f_2@@354)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@354 f_2@@354))
))) (forall ((o2@@355 T@Ref) (f_2@@355 T@Field_7929_53) ) (!  (=> (select (|PolymorphicMapType_15429_33893_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@355 f_2@@355) (= (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@33) o2@@355 f_2@@355) (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@355 f_2@@355)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@355 f_2@@355))
))) (forall ((o2@@356 T@Ref) (f_2@@356 T@Field_7929_645) ) (!  (=> (select (|PolymorphicMapType_15429_33893_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@356 f_2@@356) (= (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@33) o2@@356 f_2@@356) (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@356 f_2@@356)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@356 f_2@@356))
))) (forall ((o2@@357 T@Ref) (f_2@@357 T@Field_33893_33894) ) (!  (=> (select (|PolymorphicMapType_15429_33893_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@357 f_2@@357) (= (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@33) o2@@357 f_2@@357) (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@357 f_2@@357)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@357 f_2@@357))
))) (forall ((o2@@358 T@Ref) (f_2@@358 T@Field_33906_33911) ) (!  (=> (select (|PolymorphicMapType_15429_33893_66766#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@33) null (WandMaskField_7904 pm_f@@20))) o2@@358 f_2@@358) (= (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@33) o2@@358 f_2@@358) (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@358 f_2@@358)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| ExhaleHeap@@21) o2@@358 f_2@@358))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@21 Mask@@22) (IsWandField_7904_69412 pm_f@@20))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_14880) (ExhaleHeap@@22 T@PolymorphicMapType_14880) (Mask@@23 T@PolymorphicMapType_14901) (pm_f@@21 T@Field_19474_19475) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@22 Mask@@23) (=> (and (HasDirectPerm_7855_7856 Mask@@23 null pm_f@@21) (IsWandField_7855_69055 pm_f@@21)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@359 T@Ref) (f_2@@359 T@Field_18374_1231) ) (!  (=> (select (|PolymorphicMapType_15429_7677_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@359 f_2@@359) (= (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@34) o2@@359 f_2@@359) (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@359 f_2@@359)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@359 f_2@@359))
)) (forall ((o2@@360 T@Ref) (f_2@@360 T@Field_14953_14954) ) (!  (=> (select (|PolymorphicMapType_15429_7679_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@360 f_2@@360) (= (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@34) o2@@360 f_2@@360) (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@360 f_2@@360)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@360 f_2@@360))
))) (forall ((o2@@361 T@Ref) (f_2@@361 T@Field_14940_53) ) (!  (=> (select (|PolymorphicMapType_15429_7677_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@361 f_2@@361) (= (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@34) o2@@361 f_2@@361) (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@361 f_2@@361)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@361 f_2@@361))
))) (forall ((o2@@362 T@Ref) (f_2@@362 T@Field_18283_645) ) (!  (=> (select (|PolymorphicMapType_15429_7677_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@362 f_2@@362) (= (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@34) o2@@362 f_2@@362) (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@362 f_2@@362)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@362 f_2@@362))
))) (forall ((o2@@363 T@Ref) (f_2@@363 T@Field_7679_7856) ) (!  (=> (select (|PolymorphicMapType_15429_7677_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@363 f_2@@363) (= (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@34) o2@@363 f_2@@363) (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@363 f_2@@363)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@363 f_2@@363))
))) (forall ((o2@@364 T@Ref) (f_2@@364 T@Field_7679_22170) ) (!  (=> (select (|PolymorphicMapType_15429_7677_60536#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@364 f_2@@364) (= (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@34) o2@@364 f_2@@364) (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@364 f_2@@364)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@364 f_2@@364))
))) (forall ((o2@@365 T@Ref) (f_2@@365 T@Field_7855_1291) ) (!  (=> (select (|PolymorphicMapType_15429_19474_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@365 f_2@@365) (= (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@34) o2@@365 f_2@@365) (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@365 f_2@@365)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@365 f_2@@365))
))) (forall ((o2@@366 T@Ref) (f_2@@366 T@Field_7855_7680) ) (!  (=> (select (|PolymorphicMapType_15429_19474_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@366 f_2@@366) (= (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@34) o2@@366 f_2@@366) (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@366 f_2@@366)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@366 f_2@@366))
))) (forall ((o2@@367 T@Ref) (f_2@@367 T@Field_7855_53) ) (!  (=> (select (|PolymorphicMapType_15429_19474_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@367 f_2@@367) (= (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@34) o2@@367 f_2@@367) (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@367 f_2@@367)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@367 f_2@@367))
))) (forall ((o2@@368 T@Ref) (f_2@@368 T@Field_7855_645) ) (!  (=> (select (|PolymorphicMapType_15429_19474_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@368 f_2@@368) (= (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@34) o2@@368 f_2@@368) (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@368 f_2@@368)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@368 f_2@@368))
))) (forall ((o2@@369 T@Ref) (f_2@@369 T@Field_19474_19475) ) (!  (=> (select (|PolymorphicMapType_15429_19474_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@369 f_2@@369) (= (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@34) o2@@369 f_2@@369) (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@369 f_2@@369)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@369 f_2@@369))
))) (forall ((o2@@370 T@Ref) (f_2@@370 T@Field_22165_22170) ) (!  (=> (select (|PolymorphicMapType_15429_19474_61782#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@370 f_2@@370) (= (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) o2@@370 f_2@@370) (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@370 f_2@@370)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@370 f_2@@370))
))) (forall ((o2@@371 T@Ref) (f_2@@371 T@Field_7904_1291) ) (!  (=> (select (|PolymorphicMapType_15429_27622_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@371 f_2@@371) (= (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@34) o2@@371 f_2@@371) (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@371 f_2@@371)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@371 f_2@@371))
))) (forall ((o2@@372 T@Ref) (f_2@@372 T@Field_7904_7680) ) (!  (=> (select (|PolymorphicMapType_15429_27622_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@372 f_2@@372) (= (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@34) o2@@372 f_2@@372) (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@372 f_2@@372)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@372 f_2@@372))
))) (forall ((o2@@373 T@Ref) (f_2@@373 T@Field_7904_53) ) (!  (=> (select (|PolymorphicMapType_15429_27622_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@373 f_2@@373) (= (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@34) o2@@373 f_2@@373) (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@373 f_2@@373)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@373 f_2@@373))
))) (forall ((o2@@374 T@Ref) (f_2@@374 T@Field_7904_645) ) (!  (=> (select (|PolymorphicMapType_15429_27622_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@374 f_2@@374) (= (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@34) o2@@374 f_2@@374) (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@374 f_2@@374)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@374 f_2@@374))
))) (forall ((o2@@375 T@Ref) (f_2@@375 T@Field_27622_27623) ) (!  (=> (select (|PolymorphicMapType_15429_27622_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@375 f_2@@375) (= (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@34) o2@@375 f_2@@375) (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@375 f_2@@375)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@375 f_2@@375))
))) (forall ((o2@@376 T@Ref) (f_2@@376 T@Field_28913_28918) ) (!  (=> (select (|PolymorphicMapType_15429_27622_63028#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@376 f_2@@376) (= (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@34) o2@@376 f_2@@376) (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@376 f_2@@376)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@376 f_2@@376))
))) (forall ((o2@@377 T@Ref) (f_2@@377 T@Field_29221_1291) ) (!  (=> (select (|PolymorphicMapType_15429_29221_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@377 f_2@@377) (= (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@34) o2@@377 f_2@@377) (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@377 f_2@@377)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@377 f_2@@377))
))) (forall ((o2@@378 T@Ref) (f_2@@378 T@Field_29221_7680) ) (!  (=> (select (|PolymorphicMapType_15429_29221_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@378 f_2@@378) (= (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@34) o2@@378 f_2@@378) (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@378 f_2@@378)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@378 f_2@@378))
))) (forall ((o2@@379 T@Ref) (f_2@@379 T@Field_29221_53) ) (!  (=> (select (|PolymorphicMapType_15429_29221_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@379 f_2@@379) (= (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@34) o2@@379 f_2@@379) (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@379 f_2@@379)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@379 f_2@@379))
))) (forall ((o2@@380 T@Ref) (f_2@@380 T@Field_29221_645) ) (!  (=> (select (|PolymorphicMapType_15429_29221_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@380 f_2@@380) (= (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@34) o2@@380 f_2@@380) (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@380 f_2@@380)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@380 f_2@@380))
))) (forall ((o2@@381 T@Ref) (f_2@@381 T@Field_29221_29222) ) (!  (=> (select (|PolymorphicMapType_15429_29221_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@381 f_2@@381) (= (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@34) o2@@381 f_2@@381) (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@381 f_2@@381)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@381 f_2@@381))
))) (forall ((o2@@382 T@Ref) (f_2@@382 T@Field_29234_29239) ) (!  (=> (select (|PolymorphicMapType_15429_29221_64274#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@382 f_2@@382) (= (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@34) o2@@382 f_2@@382) (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@382 f_2@@382)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@382 f_2@@382))
))) (forall ((o2@@383 T@Ref) (f_2@@383 T@Field_32245_1291) ) (!  (=> (select (|PolymorphicMapType_15429_32245_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@383 f_2@@383) (= (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@34) o2@@383 f_2@@383) (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@383 f_2@@383)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@383 f_2@@383))
))) (forall ((o2@@384 T@Ref) (f_2@@384 T@Field_32245_7680) ) (!  (=> (select (|PolymorphicMapType_15429_32245_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@384 f_2@@384) (= (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@34) o2@@384 f_2@@384) (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@384 f_2@@384)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@384 f_2@@384))
))) (forall ((o2@@385 T@Ref) (f_2@@385 T@Field_32245_53) ) (!  (=> (select (|PolymorphicMapType_15429_32245_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@385 f_2@@385) (= (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@34) o2@@385 f_2@@385) (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@385 f_2@@385)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@385 f_2@@385))
))) (forall ((o2@@386 T@Ref) (f_2@@386 T@Field_32245_645) ) (!  (=> (select (|PolymorphicMapType_15429_32245_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@386 f_2@@386) (= (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@34) o2@@386 f_2@@386) (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@386 f_2@@386)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@386 f_2@@386))
))) (forall ((o2@@387 T@Ref) (f_2@@387 T@Field_32245_32246) ) (!  (=> (select (|PolymorphicMapType_15429_32245_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@387 f_2@@387) (= (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@34) o2@@387 f_2@@387) (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@387 f_2@@387)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@387 f_2@@387))
))) (forall ((o2@@388 T@Ref) (f_2@@388 T@Field_32258_32263) ) (!  (=> (select (|PolymorphicMapType_15429_32245_65520#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@388 f_2@@388) (= (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@34) o2@@388 f_2@@388) (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@388 f_2@@388)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@388 f_2@@388))
))) (forall ((o2@@389 T@Ref) (f_2@@389 T@Field_7929_1291) ) (!  (=> (select (|PolymorphicMapType_15429_33893_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@389 f_2@@389) (= (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@34) o2@@389 f_2@@389) (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@389 f_2@@389)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@389 f_2@@389))
))) (forall ((o2@@390 T@Ref) (f_2@@390 T@Field_7929_7680) ) (!  (=> (select (|PolymorphicMapType_15429_33893_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@390 f_2@@390) (= (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@34) o2@@390 f_2@@390) (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@390 f_2@@390)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@390 f_2@@390))
))) (forall ((o2@@391 T@Ref) (f_2@@391 T@Field_7929_53) ) (!  (=> (select (|PolymorphicMapType_15429_33893_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@391 f_2@@391) (= (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@34) o2@@391 f_2@@391) (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@391 f_2@@391)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@391 f_2@@391))
))) (forall ((o2@@392 T@Ref) (f_2@@392 T@Field_7929_645) ) (!  (=> (select (|PolymorphicMapType_15429_33893_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@392 f_2@@392) (= (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@34) o2@@392 f_2@@392) (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@392 f_2@@392)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@392 f_2@@392))
))) (forall ((o2@@393 T@Ref) (f_2@@393 T@Field_33893_33894) ) (!  (=> (select (|PolymorphicMapType_15429_33893_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@393 f_2@@393) (= (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@34) o2@@393 f_2@@393) (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@393 f_2@@393)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@393 f_2@@393))
))) (forall ((o2@@394 T@Ref) (f_2@@394 T@Field_33906_33911) ) (!  (=> (select (|PolymorphicMapType_15429_33893_66766#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@34) null (WandMaskField_7855 pm_f@@21))) o2@@394 f_2@@394) (= (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@34) o2@@394 f_2@@394) (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@394 f_2@@394)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| ExhaleHeap@@22) o2@@394 f_2@@394))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@22 Mask@@23) (IsWandField_7855_69055 pm_f@@21))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_14880) (ExhaleHeap@@23 T@PolymorphicMapType_14880) (Mask@@24 T@PolymorphicMapType_14901) (pm_f@@22 T@Field_7679_7856) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@23 Mask@@24) (=> (and (HasDirectPerm_7679_7856 Mask@@24 null pm_f@@22) (IsWandField_7679_68698 pm_f@@22)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@395 T@Ref) (f_2@@395 T@Field_18374_1231) ) (!  (=> (select (|PolymorphicMapType_15429_7677_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@395 f_2@@395) (= (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@35) o2@@395 f_2@@395) (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@395 f_2@@395)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@395 f_2@@395))
)) (forall ((o2@@396 T@Ref) (f_2@@396 T@Field_14953_14954) ) (!  (=> (select (|PolymorphicMapType_15429_7679_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@396 f_2@@396) (= (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@35) o2@@396 f_2@@396) (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@396 f_2@@396)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@396 f_2@@396))
))) (forall ((o2@@397 T@Ref) (f_2@@397 T@Field_14940_53) ) (!  (=> (select (|PolymorphicMapType_15429_7677_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@397 f_2@@397) (= (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@35) o2@@397 f_2@@397) (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@397 f_2@@397)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@397 f_2@@397))
))) (forall ((o2@@398 T@Ref) (f_2@@398 T@Field_18283_645) ) (!  (=> (select (|PolymorphicMapType_15429_7677_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@398 f_2@@398) (= (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@35) o2@@398 f_2@@398) (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@398 f_2@@398)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@398 f_2@@398))
))) (forall ((o2@@399 T@Ref) (f_2@@399 T@Field_7679_7856) ) (!  (=> (select (|PolymorphicMapType_15429_7677_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@399 f_2@@399) (= (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@35) o2@@399 f_2@@399) (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@399 f_2@@399)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@399 f_2@@399))
))) (forall ((o2@@400 T@Ref) (f_2@@400 T@Field_7679_22170) ) (!  (=> (select (|PolymorphicMapType_15429_7677_60536#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@400 f_2@@400) (= (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) o2@@400 f_2@@400) (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@400 f_2@@400)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@400 f_2@@400))
))) (forall ((o2@@401 T@Ref) (f_2@@401 T@Field_7855_1291) ) (!  (=> (select (|PolymorphicMapType_15429_19474_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@401 f_2@@401) (= (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@35) o2@@401 f_2@@401) (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@401 f_2@@401)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@401 f_2@@401))
))) (forall ((o2@@402 T@Ref) (f_2@@402 T@Field_7855_7680) ) (!  (=> (select (|PolymorphicMapType_15429_19474_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@402 f_2@@402) (= (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@35) o2@@402 f_2@@402) (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@402 f_2@@402)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@402 f_2@@402))
))) (forall ((o2@@403 T@Ref) (f_2@@403 T@Field_7855_53) ) (!  (=> (select (|PolymorphicMapType_15429_19474_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@403 f_2@@403) (= (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@35) o2@@403 f_2@@403) (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@403 f_2@@403)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@403 f_2@@403))
))) (forall ((o2@@404 T@Ref) (f_2@@404 T@Field_7855_645) ) (!  (=> (select (|PolymorphicMapType_15429_19474_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@404 f_2@@404) (= (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@35) o2@@404 f_2@@404) (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@404 f_2@@404)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@404 f_2@@404))
))) (forall ((o2@@405 T@Ref) (f_2@@405 T@Field_19474_19475) ) (!  (=> (select (|PolymorphicMapType_15429_19474_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@405 f_2@@405) (= (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@35) o2@@405 f_2@@405) (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@405 f_2@@405)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@405 f_2@@405))
))) (forall ((o2@@406 T@Ref) (f_2@@406 T@Field_22165_22170) ) (!  (=> (select (|PolymorphicMapType_15429_19474_61782#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@406 f_2@@406) (= (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@35) o2@@406 f_2@@406) (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@406 f_2@@406)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@406 f_2@@406))
))) (forall ((o2@@407 T@Ref) (f_2@@407 T@Field_7904_1291) ) (!  (=> (select (|PolymorphicMapType_15429_27622_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@407 f_2@@407) (= (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@35) o2@@407 f_2@@407) (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@407 f_2@@407)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@407 f_2@@407))
))) (forall ((o2@@408 T@Ref) (f_2@@408 T@Field_7904_7680) ) (!  (=> (select (|PolymorphicMapType_15429_27622_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@408 f_2@@408) (= (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@35) o2@@408 f_2@@408) (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@408 f_2@@408)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@408 f_2@@408))
))) (forall ((o2@@409 T@Ref) (f_2@@409 T@Field_7904_53) ) (!  (=> (select (|PolymorphicMapType_15429_27622_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@409 f_2@@409) (= (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@35) o2@@409 f_2@@409) (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@409 f_2@@409)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@409 f_2@@409))
))) (forall ((o2@@410 T@Ref) (f_2@@410 T@Field_7904_645) ) (!  (=> (select (|PolymorphicMapType_15429_27622_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@410 f_2@@410) (= (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@35) o2@@410 f_2@@410) (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@410 f_2@@410)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@410 f_2@@410))
))) (forall ((o2@@411 T@Ref) (f_2@@411 T@Field_27622_27623) ) (!  (=> (select (|PolymorphicMapType_15429_27622_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@411 f_2@@411) (= (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@35) o2@@411 f_2@@411) (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@411 f_2@@411)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@411 f_2@@411))
))) (forall ((o2@@412 T@Ref) (f_2@@412 T@Field_28913_28918) ) (!  (=> (select (|PolymorphicMapType_15429_27622_63028#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@412 f_2@@412) (= (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@35) o2@@412 f_2@@412) (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@412 f_2@@412)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@412 f_2@@412))
))) (forall ((o2@@413 T@Ref) (f_2@@413 T@Field_29221_1291) ) (!  (=> (select (|PolymorphicMapType_15429_29221_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@413 f_2@@413) (= (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@35) o2@@413 f_2@@413) (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@413 f_2@@413)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@413 f_2@@413))
))) (forall ((o2@@414 T@Ref) (f_2@@414 T@Field_29221_7680) ) (!  (=> (select (|PolymorphicMapType_15429_29221_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@414 f_2@@414) (= (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@35) o2@@414 f_2@@414) (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@414 f_2@@414)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@414 f_2@@414))
))) (forall ((o2@@415 T@Ref) (f_2@@415 T@Field_29221_53) ) (!  (=> (select (|PolymorphicMapType_15429_29221_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@415 f_2@@415) (= (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@35) o2@@415 f_2@@415) (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@415 f_2@@415)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@415 f_2@@415))
))) (forall ((o2@@416 T@Ref) (f_2@@416 T@Field_29221_645) ) (!  (=> (select (|PolymorphicMapType_15429_29221_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@416 f_2@@416) (= (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@35) o2@@416 f_2@@416) (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@416 f_2@@416)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@416 f_2@@416))
))) (forall ((o2@@417 T@Ref) (f_2@@417 T@Field_29221_29222) ) (!  (=> (select (|PolymorphicMapType_15429_29221_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@417 f_2@@417) (= (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@35) o2@@417 f_2@@417) (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@417 f_2@@417)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@417 f_2@@417))
))) (forall ((o2@@418 T@Ref) (f_2@@418 T@Field_29234_29239) ) (!  (=> (select (|PolymorphicMapType_15429_29221_64274#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@418 f_2@@418) (= (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@35) o2@@418 f_2@@418) (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@418 f_2@@418)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@418 f_2@@418))
))) (forall ((o2@@419 T@Ref) (f_2@@419 T@Field_32245_1291) ) (!  (=> (select (|PolymorphicMapType_15429_32245_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@419 f_2@@419) (= (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@35) o2@@419 f_2@@419) (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@419 f_2@@419)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@419 f_2@@419))
))) (forall ((o2@@420 T@Ref) (f_2@@420 T@Field_32245_7680) ) (!  (=> (select (|PolymorphicMapType_15429_32245_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@420 f_2@@420) (= (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@35) o2@@420 f_2@@420) (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@420 f_2@@420)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@420 f_2@@420))
))) (forall ((o2@@421 T@Ref) (f_2@@421 T@Field_32245_53) ) (!  (=> (select (|PolymorphicMapType_15429_32245_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@421 f_2@@421) (= (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@35) o2@@421 f_2@@421) (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@421 f_2@@421)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@421 f_2@@421))
))) (forall ((o2@@422 T@Ref) (f_2@@422 T@Field_32245_645) ) (!  (=> (select (|PolymorphicMapType_15429_32245_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@422 f_2@@422) (= (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@35) o2@@422 f_2@@422) (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@422 f_2@@422)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@422 f_2@@422))
))) (forall ((o2@@423 T@Ref) (f_2@@423 T@Field_32245_32246) ) (!  (=> (select (|PolymorphicMapType_15429_32245_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@423 f_2@@423) (= (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@35) o2@@423 f_2@@423) (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@423 f_2@@423)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@423 f_2@@423))
))) (forall ((o2@@424 T@Ref) (f_2@@424 T@Field_32258_32263) ) (!  (=> (select (|PolymorphicMapType_15429_32245_65520#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@424 f_2@@424) (= (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@35) o2@@424 f_2@@424) (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@424 f_2@@424)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@424 f_2@@424))
))) (forall ((o2@@425 T@Ref) (f_2@@425 T@Field_7929_1291) ) (!  (=> (select (|PolymorphicMapType_15429_33893_1231#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@425 f_2@@425) (= (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@35) o2@@425 f_2@@425) (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@425 f_2@@425)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@425 f_2@@425))
))) (forall ((o2@@426 T@Ref) (f_2@@426 T@Field_7929_7680) ) (!  (=> (select (|PolymorphicMapType_15429_33893_7680#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@426 f_2@@426) (= (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@35) o2@@426 f_2@@426) (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@426 f_2@@426)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@426 f_2@@426))
))) (forall ((o2@@427 T@Ref) (f_2@@427 T@Field_7929_53) ) (!  (=> (select (|PolymorphicMapType_15429_33893_53#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@427 f_2@@427) (= (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@35) o2@@427 f_2@@427) (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@427 f_2@@427)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@427 f_2@@427))
))) (forall ((o2@@428 T@Ref) (f_2@@428 T@Field_7929_645) ) (!  (=> (select (|PolymorphicMapType_15429_33893_645#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@428 f_2@@428) (= (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@35) o2@@428 f_2@@428) (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@428 f_2@@428)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@428 f_2@@428))
))) (forall ((o2@@429 T@Ref) (f_2@@429 T@Field_33893_33894) ) (!  (=> (select (|PolymorphicMapType_15429_33893_19475#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@429 f_2@@429) (= (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@35) o2@@429 f_2@@429) (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@429 f_2@@429)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@429 f_2@@429))
))) (forall ((o2@@430 T@Ref) (f_2@@430 T@Field_33906_33911) ) (!  (=> (select (|PolymorphicMapType_15429_33893_66766#PolymorphicMapType_15429| (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@35) null (WandMaskField_7679 pm_f@@22))) o2@@430 f_2@@430) (= (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@35) o2@@430 f_2@@430) (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@430 f_2@@430)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| ExhaleHeap@@23) o2@@430 f_2@@430))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@23 Mask@@24) (IsWandField_7679_68698 pm_f@@22))
)))
(assert  (not (IsPredicateField_7672_645 old$methodPermission)))
(assert  (not (IsWandField_7672_645 old$methodPermission)))
(assert  (not (IsPredicateField_7675_1216 joinable$)))
(assert  (not (IsWandField_7675_1216 joinable$)))
(assert  (not (IsPredicateField_7677_1231 Wand_readonly_for_writeonlylemma$)))
(assert  (not (IsWandField_7677_1231 Wand_readonly_for_writeonlylemma$)))
(assert  (not (IsPredicateField_7679_7680 Wand_readonly_for_writeonlyin_1$)))
(assert  (not (IsWandField_7679_7680 Wand_readonly_for_writeonlyin_1$)))
(assert  (not (IsPredicateField_7679_7680 Wand_readonly_for_writeonlyout_1$)))
(assert  (not (IsWandField_7679_7680 Wand_readonly_for_writeonlyout_1$)))
(assert  (not (IsPredicateField_7679_7680 Wand_readonly_for_writeonlythis_1$)))
(assert  (not (IsWandField_7679_7680 Wand_readonly_for_writeonlythis_1$)))
(assert  (not (IsPredicateField_7677_1231 WandDemox$)))
(assert  (not (IsWandField_7677_1231 WandDemox$)))
(assert  (not (IsPredicateField_7679_7680 old$Wand_readonly_for_writeonlyapply$0)))
(assert  (not (IsWandField_7679_7680 old$Wand_readonly_for_writeonlyapply$0)))
(assert  (not (IsPredicateField_7679_7680 par$Wand_readonly_for_writeonlyapply$this$_3)))
(assert  (not (IsWandField_7679_7680 par$Wand_readonly_for_writeonlyapply$this$_3)))
(assert  (not (IsPredicateField_7672_645 par$Wand_readonly_for_writeonlyapply$k$)))
(assert  (not (IsWandField_7672_645 par$Wand_readonly_for_writeonlyapply$k$)))
(assert  (not (IsPredicateField_7679_7680 par$Wand_readonly_for_writeonlyWand_readonly_for_writeonly_init$this$_5)))
(assert  (not (IsWandField_7679_7680 par$Wand_readonly_for_writeonlyWand_readonly_for_writeonly_init$this$_5)))
(assert  (not (IsPredicateField_7672_645 par$Wand_readonly_for_writeonlyWand_readonly_for_writeonly_init$k$_1)))
(assert  (not (IsWandField_7672_645 par$Wand_readonly_for_writeonlyWand_readonly_for_writeonly_init$k$_1)))
(assert  (not (IsPredicateField_7679_7680 par$WandDemoWandDemo_init$this$_10)))
(assert  (not (IsWandField_7679_7680 par$WandDemoWandDemo_init$this$_10)))
(assert  (not (IsPredicateField_7672_645 par$WandDemoWandDemo_init$k$_2)))
(assert  (not (IsWandField_7672_645 par$WandDemoWandDemo_init$k$_2)))
(assert  (not (IsPredicateField_7679_7680 par$WandDemoWand_readonly_for_writeonly_lemma_1$this$_11)))
(assert  (not (IsWandField_7679_7680 par$WandDemoWand_readonly_for_writeonly_lemma_1$this$_11)))
(assert  (not (IsPredicateField_7672_645 par$WandDemoWand_readonly_for_writeonly_lemma_1$k$_3)))
(assert  (not (IsWandField_7672_645 par$WandDemoWand_readonly_for_writeonly_lemma_1$k$_3)))
(assert  (not (IsPredicateField_7679_7680 par$WandDemoWand_readonly_for_writeonly_lemma_1$__this_1)))
(assert  (not (IsWandField_7679_7680 par$WandDemoWand_readonly_for_writeonly_lemma_1$__this_1)))
(assert  (not (IsPredicateField_7679_7680 par$WandDemoWand_readonly_for_writeonly_lemma_1$__in_1)))
(assert  (not (IsWandField_7679_7680 par$WandDemoWand_readonly_for_writeonly_lemma_1$__in_1)))
(assert  (not (IsPredicateField_7679_7680 par$WandDemoWand_readonly_for_writeonly_lemma_1$__out_1)))
(assert  (not (IsWandField_7679_7680 par$WandDemoWand_readonly_for_writeonly_lemma_1$__out_1)))
(assert  (not (IsPredicateField_7679_7680 par$WandDemoset_val$this$_12)))
(assert  (not (IsWandField_7679_7680 par$WandDemoset_val$this$_12)))
(assert  (not (IsPredicateField_7672_645 par$WandDemoset_val$k$_4)))
(assert  (not (IsWandField_7672_645 par$WandDemoset_val$k$_4)))
(assert  (not (IsPredicateField_7677_1231 par$WandDemoset_val$__v)))
(assert  (not (IsWandField_7677_1231 par$WandDemoset_val$__v)))
(assert  (not (IsPredicateField_7679_7680 par$WandDemodemo$this$_13)))
(assert  (not (IsWandField_7679_7680 par$WandDemodemo$this$_13)))
(assert  (not (IsPredicateField_7672_645 par$WandDemodemo$k$_5)))
(assert  (not (IsWandField_7672_645 par$WandDemodemo$k$_5)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_14880) (ExhaleHeap@@24 T@PolymorphicMapType_14880) (Mask@@25 T@PolymorphicMapType_14901) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@24 Mask@@25) (succHeap Heap@@36 ExhaleHeap@@24))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@24 Mask@@25))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_14901) (o_2@@35 T@Ref) (f_4@@35 T@Field_32258_32263) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_14901_32245_86280#PolymorphicMapType_14901| Mask@@26) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_32245_94586 f_4@@35))) (not (IsWandField_32245_94602 f_4@@35))) (<= (select (|PolymorphicMapType_14901_32245_86280#PolymorphicMapType_14901| Mask@@26) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_14901_32245_86280#PolymorphicMapType_14901| Mask@@26) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_14901) (o_2@@36 T@Ref) (f_4@@36 T@Field_32245_645) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_14901_32245_645#PolymorphicMapType_14901| Mask@@27) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_32245_645 f_4@@36))) (not (IsWandField_32245_645 f_4@@36))) (<= (select (|PolymorphicMapType_14901_32245_645#PolymorphicMapType_14901| Mask@@27) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_14901_32245_645#PolymorphicMapType_14901| Mask@@27) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_14901) (o_2@@37 T@Ref) (f_4@@37 T@Field_32245_53) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_14901_32245_53#PolymorphicMapType_14901| Mask@@28) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_32245_53 f_4@@37))) (not (IsWandField_32245_53 f_4@@37))) (<= (select (|PolymorphicMapType_14901_32245_53#PolymorphicMapType_14901| Mask@@28) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_14901_32245_53#PolymorphicMapType_14901| Mask@@28) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_14901) (o_2@@38 T@Ref) (f_4@@38 T@Field_32245_7680) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_14901_32245_7680#PolymorphicMapType_14901| Mask@@29) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_32245_7680 f_4@@38))) (not (IsWandField_32245_7680 f_4@@38))) (<= (select (|PolymorphicMapType_14901_32245_7680#PolymorphicMapType_14901| Mask@@29) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_14901_32245_7680#PolymorphicMapType_14901| Mask@@29) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_14901) (o_2@@39 T@Ref) (f_4@@39 T@Field_32245_1291) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_14901_32245_1231#PolymorphicMapType_14901| Mask@@30) o_2@@39 f_4@@39) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_32245_1231 f_4@@39))) (not (IsWandField_32245_1231 f_4@@39))) (<= (select (|PolymorphicMapType_14901_32245_1231#PolymorphicMapType_14901| Mask@@30) o_2@@39 f_4@@39) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_14901_32245_1231#PolymorphicMapType_14901| Mask@@30) o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_14901) (o_2@@40 T@Ref) (f_4@@40 T@Field_32245_32246) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_14901_32245_7856#PolymorphicMapType_14901| Mask@@31) o_2@@40 f_4@@40) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_7880_7881 f_4@@40))) (not (IsWandField_32245_70483 f_4@@40))) (<= (select (|PolymorphicMapType_14901_32245_7856#PolymorphicMapType_14901| Mask@@31) o_2@@40 f_4@@40) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_14901_32245_7856#PolymorphicMapType_14901| Mask@@31) o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_14901) (o_2@@41 T@Ref) (f_4@@41 T@Field_29234_29239) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_14901_29221_85774#PolymorphicMapType_14901| Mask@@32) o_2@@41 f_4@@41) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_29221_93587 f_4@@41))) (not (IsWandField_29221_93603 f_4@@41))) (<= (select (|PolymorphicMapType_14901_29221_85774#PolymorphicMapType_14901| Mask@@32) o_2@@41 f_4@@41) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_14901_29221_85774#PolymorphicMapType_14901| Mask@@32) o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_14901) (o_2@@42 T@Ref) (f_4@@42 T@Field_29221_645) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_14901_29221_645#PolymorphicMapType_14901| Mask@@33) o_2@@42 f_4@@42) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_29221_645 f_4@@42))) (not (IsWandField_29221_645 f_4@@42))) (<= (select (|PolymorphicMapType_14901_29221_645#PolymorphicMapType_14901| Mask@@33) o_2@@42 f_4@@42) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_14901_29221_645#PolymorphicMapType_14901| Mask@@33) o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_14901) (o_2@@43 T@Ref) (f_4@@43 T@Field_29221_53) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_14901_29221_53#PolymorphicMapType_14901| Mask@@34) o_2@@43 f_4@@43) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_29221_53 f_4@@43))) (not (IsWandField_29221_53 f_4@@43))) (<= (select (|PolymorphicMapType_14901_29221_53#PolymorphicMapType_14901| Mask@@34) o_2@@43 f_4@@43) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_14901_29221_53#PolymorphicMapType_14901| Mask@@34) o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_14901) (o_2@@44 T@Ref) (f_4@@44 T@Field_29221_7680) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_14901_29221_7680#PolymorphicMapType_14901| Mask@@35) o_2@@44 f_4@@44) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_29221_7680 f_4@@44))) (not (IsWandField_29221_7680 f_4@@44))) (<= (select (|PolymorphicMapType_14901_29221_7680#PolymorphicMapType_14901| Mask@@35) o_2@@44 f_4@@44) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_14901_29221_7680#PolymorphicMapType_14901| Mask@@35) o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_14901) (o_2@@45 T@Ref) (f_4@@45 T@Field_29221_1291) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_14901_29221_1231#PolymorphicMapType_14901| Mask@@36) o_2@@45 f_4@@45) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_29221_1231 f_4@@45))) (not (IsWandField_29221_1231 f_4@@45))) (<= (select (|PolymorphicMapType_14901_29221_1231#PolymorphicMapType_14901| Mask@@36) o_2@@45 f_4@@45) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_14901_29221_1231#PolymorphicMapType_14901| Mask@@36) o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_14901) (o_2@@46 T@Ref) (f_4@@46 T@Field_29221_29222) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_14901_29221_7856#PolymorphicMapType_14901| Mask@@37) o_2@@46 f_4@@46) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_7831_7832 f_4@@46))) (not (IsWandField_29221_70126 f_4@@46))) (<= (select (|PolymorphicMapType_14901_29221_7856#PolymorphicMapType_14901| Mask@@37) o_2@@46 f_4@@46) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_14901_29221_7856#PolymorphicMapType_14901| Mask@@37) o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_14901) (o_2@@47 T@Ref) (f_4@@47 T@Field_33906_33911) ) (!  (=> (GoodMask Mask@@38) (and (>= (select (|PolymorphicMapType_14901_7929_85268#PolymorphicMapType_14901| Mask@@38) o_2@@47 f_4@@47) NoPerm) (=> (and (and (and (GoodMask Mask@@38) AssumePermUpperBound) (not (IsPredicateField_7929_92588 f_4@@47))) (not (IsWandField_7929_92604 f_4@@47))) (<= (select (|PolymorphicMapType_14901_7929_85268#PolymorphicMapType_14901| Mask@@38) o_2@@47 f_4@@47) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@38) (select (|PolymorphicMapType_14901_7929_85268#PolymorphicMapType_14901| Mask@@38) o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_14901) (o_2@@48 T@Ref) (f_4@@48 T@Field_7929_645) ) (!  (=> (GoodMask Mask@@39) (and (>= (select (|PolymorphicMapType_14901_7929_645#PolymorphicMapType_14901| Mask@@39) o_2@@48 f_4@@48) NoPerm) (=> (and (and (and (GoodMask Mask@@39) AssumePermUpperBound) (not (IsPredicateField_7929_645 f_4@@48))) (not (IsWandField_7929_645 f_4@@48))) (<= (select (|PolymorphicMapType_14901_7929_645#PolymorphicMapType_14901| Mask@@39) o_2@@48 f_4@@48) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@39) (select (|PolymorphicMapType_14901_7929_645#PolymorphicMapType_14901| Mask@@39) o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_14901) (o_2@@49 T@Ref) (f_4@@49 T@Field_7929_53) ) (!  (=> (GoodMask Mask@@40) (and (>= (select (|PolymorphicMapType_14901_7929_53#PolymorphicMapType_14901| Mask@@40) o_2@@49 f_4@@49) NoPerm) (=> (and (and (and (GoodMask Mask@@40) AssumePermUpperBound) (not (IsPredicateField_7929_53 f_4@@49))) (not (IsWandField_7929_53 f_4@@49))) (<= (select (|PolymorphicMapType_14901_7929_53#PolymorphicMapType_14901| Mask@@40) o_2@@49 f_4@@49) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@40) (select (|PolymorphicMapType_14901_7929_53#PolymorphicMapType_14901| Mask@@40) o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_14901) (o_2@@50 T@Ref) (f_4@@50 T@Field_7929_7680) ) (!  (=> (GoodMask Mask@@41) (and (>= (select (|PolymorphicMapType_14901_7929_7680#PolymorphicMapType_14901| Mask@@41) o_2@@50 f_4@@50) NoPerm) (=> (and (and (and (GoodMask Mask@@41) AssumePermUpperBound) (not (IsPredicateField_7929_7680 f_4@@50))) (not (IsWandField_7929_7680 f_4@@50))) (<= (select (|PolymorphicMapType_14901_7929_7680#PolymorphicMapType_14901| Mask@@41) o_2@@50 f_4@@50) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@41) (select (|PolymorphicMapType_14901_7929_7680#PolymorphicMapType_14901| Mask@@41) o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_14901) (o_2@@51 T@Ref) (f_4@@51 T@Field_7929_1291) ) (!  (=> (GoodMask Mask@@42) (and (>= (select (|PolymorphicMapType_14901_7929_1231#PolymorphicMapType_14901| Mask@@42) o_2@@51 f_4@@51) NoPerm) (=> (and (and (and (GoodMask Mask@@42) AssumePermUpperBound) (not (IsPredicateField_7929_1231 f_4@@51))) (not (IsWandField_7929_1231 f_4@@51))) (<= (select (|PolymorphicMapType_14901_7929_1231#PolymorphicMapType_14901| Mask@@42) o_2@@51 f_4@@51) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@42) (select (|PolymorphicMapType_14901_7929_1231#PolymorphicMapType_14901| Mask@@42) o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_14901) (o_2@@52 T@Ref) (f_4@@52 T@Field_33893_33894) ) (!  (=> (GoodMask Mask@@43) (and (>= (select (|PolymorphicMapType_14901_7929_7930#PolymorphicMapType_14901| Mask@@43) o_2@@52 f_4@@52) NoPerm) (=> (and (and (and (GoodMask Mask@@43) AssumePermUpperBound) (not (IsPredicateField_7929_7930 f_4@@52))) (not (IsWandField_7929_69769 f_4@@52))) (<= (select (|PolymorphicMapType_14901_7929_7930#PolymorphicMapType_14901| Mask@@43) o_2@@52 f_4@@52) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@43) (select (|PolymorphicMapType_14901_7929_7930#PolymorphicMapType_14901| Mask@@43) o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_14901) (o_2@@53 T@Ref) (f_4@@53 T@Field_28913_28918) ) (!  (=> (GoodMask Mask@@44) (and (>= (select (|PolymorphicMapType_14901_7904_84777#PolymorphicMapType_14901| Mask@@44) o_2@@53 f_4@@53) NoPerm) (=> (and (and (and (GoodMask Mask@@44) AssumePermUpperBound) (not (IsPredicateField_7904_91589 f_4@@53))) (not (IsWandField_7904_91605 f_4@@53))) (<= (select (|PolymorphicMapType_14901_7904_84777#PolymorphicMapType_14901| Mask@@44) o_2@@53 f_4@@53) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@44) (select (|PolymorphicMapType_14901_7904_84777#PolymorphicMapType_14901| Mask@@44) o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_14901) (o_2@@54 T@Ref) (f_4@@54 T@Field_7904_645) ) (!  (=> (GoodMask Mask@@45) (and (>= (select (|PolymorphicMapType_14901_7904_645#PolymorphicMapType_14901| Mask@@45) o_2@@54 f_4@@54) NoPerm) (=> (and (and (and (GoodMask Mask@@45) AssumePermUpperBound) (not (IsPredicateField_7904_645 f_4@@54))) (not (IsWandField_7904_645 f_4@@54))) (<= (select (|PolymorphicMapType_14901_7904_645#PolymorphicMapType_14901| Mask@@45) o_2@@54 f_4@@54) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@45) (select (|PolymorphicMapType_14901_7904_645#PolymorphicMapType_14901| Mask@@45) o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_14901) (o_2@@55 T@Ref) (f_4@@55 T@Field_7904_53) ) (!  (=> (GoodMask Mask@@46) (and (>= (select (|PolymorphicMapType_14901_7904_53#PolymorphicMapType_14901| Mask@@46) o_2@@55 f_4@@55) NoPerm) (=> (and (and (and (GoodMask Mask@@46) AssumePermUpperBound) (not (IsPredicateField_7904_53 f_4@@55))) (not (IsWandField_7904_53 f_4@@55))) (<= (select (|PolymorphicMapType_14901_7904_53#PolymorphicMapType_14901| Mask@@46) o_2@@55 f_4@@55) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@46) (select (|PolymorphicMapType_14901_7904_53#PolymorphicMapType_14901| Mask@@46) o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_14901) (o_2@@56 T@Ref) (f_4@@56 T@Field_7904_7680) ) (!  (=> (GoodMask Mask@@47) (and (>= (select (|PolymorphicMapType_14901_7904_7680#PolymorphicMapType_14901| Mask@@47) o_2@@56 f_4@@56) NoPerm) (=> (and (and (and (GoodMask Mask@@47) AssumePermUpperBound) (not (IsPredicateField_7904_7680 f_4@@56))) (not (IsWandField_7904_7680 f_4@@56))) (<= (select (|PolymorphicMapType_14901_7904_7680#PolymorphicMapType_14901| Mask@@47) o_2@@56 f_4@@56) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@47) (select (|PolymorphicMapType_14901_7904_7680#PolymorphicMapType_14901| Mask@@47) o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_14901) (o_2@@57 T@Ref) (f_4@@57 T@Field_7904_1291) ) (!  (=> (GoodMask Mask@@48) (and (>= (select (|PolymorphicMapType_14901_7904_1231#PolymorphicMapType_14901| Mask@@48) o_2@@57 f_4@@57) NoPerm) (=> (and (and (and (GoodMask Mask@@48) AssumePermUpperBound) (not (IsPredicateField_7904_1231 f_4@@57))) (not (IsWandField_7904_1231 f_4@@57))) (<= (select (|PolymorphicMapType_14901_7904_1231#PolymorphicMapType_14901| Mask@@48) o_2@@57 f_4@@57) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@48) (select (|PolymorphicMapType_14901_7904_1231#PolymorphicMapType_14901| Mask@@48) o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_14901) (o_2@@58 T@Ref) (f_4@@58 T@Field_27622_27623) ) (!  (=> (GoodMask Mask@@49) (and (>= (select (|PolymorphicMapType_14901_7904_7905#PolymorphicMapType_14901| Mask@@49) o_2@@58 f_4@@58) NoPerm) (=> (and (and (and (GoodMask Mask@@49) AssumePermUpperBound) (not (IsPredicateField_7904_7905 f_4@@58))) (not (IsWandField_7904_69412 f_4@@58))) (<= (select (|PolymorphicMapType_14901_7904_7905#PolymorphicMapType_14901| Mask@@49) o_2@@58 f_4@@58) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@49) (select (|PolymorphicMapType_14901_7904_7905#PolymorphicMapType_14901| Mask@@49) o_2@@58 f_4@@58))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_14901) (o_2@@59 T@Ref) (f_4@@59 T@Field_7679_22170) ) (!  (=> (GoodMask Mask@@50) (and (>= (select (|PolymorphicMapType_14901_7677_84286#PolymorphicMapType_14901| Mask@@50) o_2@@59 f_4@@59) NoPerm) (=> (and (and (and (GoodMask Mask@@50) AssumePermUpperBound) (not (IsPredicateField_7677_90590 f_4@@59))) (not (IsWandField_7677_90606 f_4@@59))) (<= (select (|PolymorphicMapType_14901_7677_84286#PolymorphicMapType_14901| Mask@@50) o_2@@59 f_4@@59) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@50) (select (|PolymorphicMapType_14901_7677_84286#PolymorphicMapType_14901| Mask@@50) o_2@@59 f_4@@59))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_14901) (o_2@@60 T@Ref) (f_4@@60 T@Field_18283_645) ) (!  (=> (GoodMask Mask@@51) (and (>= (select (|PolymorphicMapType_14901_7677_645#PolymorphicMapType_14901| Mask@@51) o_2@@60 f_4@@60) NoPerm) (=> (and (and (and (GoodMask Mask@@51) AssumePermUpperBound) (not (IsPredicateField_7672_645 f_4@@60))) (not (IsWandField_7672_645 f_4@@60))) (<= (select (|PolymorphicMapType_14901_7677_645#PolymorphicMapType_14901| Mask@@51) o_2@@60 f_4@@60) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@51) (select (|PolymorphicMapType_14901_7677_645#PolymorphicMapType_14901| Mask@@51) o_2@@60 f_4@@60))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_14901) (o_2@@61 T@Ref) (f_4@@61 T@Field_14940_53) ) (!  (=> (GoodMask Mask@@52) (and (>= (select (|PolymorphicMapType_14901_7677_53#PolymorphicMapType_14901| Mask@@52) o_2@@61 f_4@@61) NoPerm) (=> (and (and (and (GoodMask Mask@@52) AssumePermUpperBound) (not (IsPredicateField_7675_1216 f_4@@61))) (not (IsWandField_7675_1216 f_4@@61))) (<= (select (|PolymorphicMapType_14901_7677_53#PolymorphicMapType_14901| Mask@@52) o_2@@61 f_4@@61) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@52) (select (|PolymorphicMapType_14901_7677_53#PolymorphicMapType_14901| Mask@@52) o_2@@61 f_4@@61))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_14901) (o_2@@62 T@Ref) (f_4@@62 T@Field_14953_14954) ) (!  (=> (GoodMask Mask@@53) (and (>= (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| Mask@@53) o_2@@62 f_4@@62) NoPerm) (=> (and (and (and (GoodMask Mask@@53) AssumePermUpperBound) (not (IsPredicateField_7679_7680 f_4@@62))) (not (IsWandField_7679_7680 f_4@@62))) (<= (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| Mask@@53) o_2@@62 f_4@@62) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@53) (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| Mask@@53) o_2@@62 f_4@@62))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_14901) (o_2@@63 T@Ref) (f_4@@63 T@Field_18374_1231) ) (!  (=> (GoodMask Mask@@54) (and (>= (select (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| Mask@@54) o_2@@63 f_4@@63) NoPerm) (=> (and (and (and (GoodMask Mask@@54) AssumePermUpperBound) (not (IsPredicateField_7677_1231 f_4@@63))) (not (IsWandField_7677_1231 f_4@@63))) (<= (select (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| Mask@@54) o_2@@63 f_4@@63) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@54) (select (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| Mask@@54) o_2@@63 f_4@@63))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_14901) (o_2@@64 T@Ref) (f_4@@64 T@Field_7679_7856) ) (!  (=> (GoodMask Mask@@55) (and (>= (select (|PolymorphicMapType_14901_7677_7856#PolymorphicMapType_14901| Mask@@55) o_2@@64 f_4@@64) NoPerm) (=> (and (and (and (GoodMask Mask@@55) AssumePermUpperBound) (not (IsPredicateField_7679_57581 f_4@@64))) (not (IsWandField_7679_68698 f_4@@64))) (<= (select (|PolymorphicMapType_14901_7677_7856#PolymorphicMapType_14901| Mask@@55) o_2@@64 f_4@@64) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@55) (select (|PolymorphicMapType_14901_7677_7856#PolymorphicMapType_14901| Mask@@55) o_2@@64 f_4@@64))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_14901) (o_2@@65 T@Ref) (f_4@@65 T@Field_22165_22170) ) (!  (=> (GoodMask Mask@@56) (and (>= (select (|PolymorphicMapType_14901_7855_83807#PolymorphicMapType_14901| Mask@@56) o_2@@65 f_4@@65) NoPerm) (=> (and (and (and (GoodMask Mask@@56) AssumePermUpperBound) (not (IsPredicateField_7855_89647 f_4@@65))) (not (IsWandField_7855_89663 f_4@@65))) (<= (select (|PolymorphicMapType_14901_7855_83807#PolymorphicMapType_14901| Mask@@56) o_2@@65 f_4@@65) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@56) (select (|PolymorphicMapType_14901_7855_83807#PolymorphicMapType_14901| Mask@@56) o_2@@65 f_4@@65))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_14901) (o_2@@66 T@Ref) (f_4@@66 T@Field_7855_645) ) (!  (=> (GoodMask Mask@@57) (and (>= (select (|PolymorphicMapType_14901_7855_645#PolymorphicMapType_14901| Mask@@57) o_2@@66 f_4@@66) NoPerm) (=> (and (and (and (GoodMask Mask@@57) AssumePermUpperBound) (not (IsPredicateField_7855_645 f_4@@66))) (not (IsWandField_7855_645 f_4@@66))) (<= (select (|PolymorphicMapType_14901_7855_645#PolymorphicMapType_14901| Mask@@57) o_2@@66 f_4@@66) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@57) (select (|PolymorphicMapType_14901_7855_645#PolymorphicMapType_14901| Mask@@57) o_2@@66 f_4@@66))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_14901) (o_2@@67 T@Ref) (f_4@@67 T@Field_7855_53) ) (!  (=> (GoodMask Mask@@58) (and (>= (select (|PolymorphicMapType_14901_7855_53#PolymorphicMapType_14901| Mask@@58) o_2@@67 f_4@@67) NoPerm) (=> (and (and (and (GoodMask Mask@@58) AssumePermUpperBound) (not (IsPredicateField_7855_53 f_4@@67))) (not (IsWandField_7855_53 f_4@@67))) (<= (select (|PolymorphicMapType_14901_7855_53#PolymorphicMapType_14901| Mask@@58) o_2@@67 f_4@@67) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@58) (select (|PolymorphicMapType_14901_7855_53#PolymorphicMapType_14901| Mask@@58) o_2@@67 f_4@@67))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_14901) (o_2@@68 T@Ref) (f_4@@68 T@Field_7855_7680) ) (!  (=> (GoodMask Mask@@59) (and (>= (select (|PolymorphicMapType_14901_7855_7680#PolymorphicMapType_14901| Mask@@59) o_2@@68 f_4@@68) NoPerm) (=> (and (and (and (GoodMask Mask@@59) AssumePermUpperBound) (not (IsPredicateField_7855_7680 f_4@@68))) (not (IsWandField_7855_7680 f_4@@68))) (<= (select (|PolymorphicMapType_14901_7855_7680#PolymorphicMapType_14901| Mask@@59) o_2@@68 f_4@@68) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@59) (select (|PolymorphicMapType_14901_7855_7680#PolymorphicMapType_14901| Mask@@59) o_2@@68 f_4@@68))
)))
(assert (forall ((Mask@@60 T@PolymorphicMapType_14901) (o_2@@69 T@Ref) (f_4@@69 T@Field_7855_1291) ) (!  (=> (GoodMask Mask@@60) (and (>= (select (|PolymorphicMapType_14901_7855_1231#PolymorphicMapType_14901| Mask@@60) o_2@@69 f_4@@69) NoPerm) (=> (and (and (and (GoodMask Mask@@60) AssumePermUpperBound) (not (IsPredicateField_7855_1231 f_4@@69))) (not (IsWandField_7855_1231 f_4@@69))) (<= (select (|PolymorphicMapType_14901_7855_1231#PolymorphicMapType_14901| Mask@@60) o_2@@69 f_4@@69) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@60) (select (|PolymorphicMapType_14901_7855_1231#PolymorphicMapType_14901| Mask@@60) o_2@@69 f_4@@69))
)))
(assert (forall ((Mask@@61 T@PolymorphicMapType_14901) (o_2@@70 T@Ref) (f_4@@70 T@Field_19474_19475) ) (!  (=> (GoodMask Mask@@61) (and (>= (select (|PolymorphicMapType_14901_7855_7856#PolymorphicMapType_14901| Mask@@61) o_2@@70 f_4@@70) NoPerm) (=> (and (and (and (GoodMask Mask@@61) AssumePermUpperBound) (not (IsPredicateField_7855_7856 f_4@@70))) (not (IsWandField_7855_69055 f_4@@70))) (<= (select (|PolymorphicMapType_14901_7855_7856#PolymorphicMapType_14901| Mask@@61) o_2@@70 f_4@@70) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@61) (select (|PolymorphicMapType_14901_7855_7856#PolymorphicMapType_14901| Mask@@61) o_2@@70 f_4@@70))
)))
(assert (forall ((Mask@@62 T@PolymorphicMapType_14901) (o_2@@71 T@Ref) (f_4@@71 T@Field_32258_32263) ) (! (= (HasDirectPerm_32245_57293 Mask@@62 o_2@@71 f_4@@71) (> (select (|PolymorphicMapType_14901_32245_86280#PolymorphicMapType_14901| Mask@@62) o_2@@71 f_4@@71) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_32245_57293 Mask@@62 o_2@@71 f_4@@71))
)))
(assert (forall ((Mask@@63 T@PolymorphicMapType_14901) (o_2@@72 T@Ref) (f_4@@72 T@Field_32245_645) ) (! (= (HasDirectPerm_32245_645 Mask@@63 o_2@@72 f_4@@72) (> (select (|PolymorphicMapType_14901_32245_645#PolymorphicMapType_14901| Mask@@63) o_2@@72 f_4@@72) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_32245_645 Mask@@63 o_2@@72 f_4@@72))
)))
(assert (forall ((Mask@@64 T@PolymorphicMapType_14901) (o_2@@73 T@Ref) (f_4@@73 T@Field_32245_53) ) (! (= (HasDirectPerm_32245_53 Mask@@64 o_2@@73 f_4@@73) (> (select (|PolymorphicMapType_14901_32245_53#PolymorphicMapType_14901| Mask@@64) o_2@@73 f_4@@73) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_32245_53 Mask@@64 o_2@@73 f_4@@73))
)))
(assert (forall ((Mask@@65 T@PolymorphicMapType_14901) (o_2@@74 T@Ref) (f_4@@74 T@Field_32245_32246) ) (! (= (HasDirectPerm_32245_7856 Mask@@65 o_2@@74 f_4@@74) (> (select (|PolymorphicMapType_14901_32245_7856#PolymorphicMapType_14901| Mask@@65) o_2@@74 f_4@@74) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_32245_7856 Mask@@65 o_2@@74 f_4@@74))
)))
(assert (forall ((Mask@@66 T@PolymorphicMapType_14901) (o_2@@75 T@Ref) (f_4@@75 T@Field_32245_1291) ) (! (= (HasDirectPerm_32245_1291 Mask@@66 o_2@@75 f_4@@75) (> (select (|PolymorphicMapType_14901_32245_1231#PolymorphicMapType_14901| Mask@@66) o_2@@75 f_4@@75) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_32245_1291 Mask@@66 o_2@@75 f_4@@75))
)))
(assert (forall ((Mask@@67 T@PolymorphicMapType_14901) (o_2@@76 T@Ref) (f_4@@76 T@Field_32245_7680) ) (! (= (HasDirectPerm_32245_7680 Mask@@67 o_2@@76 f_4@@76) (> (select (|PolymorphicMapType_14901_32245_7680#PolymorphicMapType_14901| Mask@@67) o_2@@76 f_4@@76) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_32245_7680 Mask@@67 o_2@@76 f_4@@76))
)))
(assert (forall ((Mask@@68 T@PolymorphicMapType_14901) (o_2@@77 T@Ref) (f_4@@77 T@Field_29234_29239) ) (! (= (HasDirectPerm_29221_55894 Mask@@68 o_2@@77 f_4@@77) (> (select (|PolymorphicMapType_14901_29221_85774#PolymorphicMapType_14901| Mask@@68) o_2@@77 f_4@@77) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29221_55894 Mask@@68 o_2@@77 f_4@@77))
)))
(assert (forall ((Mask@@69 T@PolymorphicMapType_14901) (o_2@@78 T@Ref) (f_4@@78 T@Field_29221_645) ) (! (= (HasDirectPerm_29221_645 Mask@@69 o_2@@78 f_4@@78) (> (select (|PolymorphicMapType_14901_29221_645#PolymorphicMapType_14901| Mask@@69) o_2@@78 f_4@@78) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29221_645 Mask@@69 o_2@@78 f_4@@78))
)))
(assert (forall ((Mask@@70 T@PolymorphicMapType_14901) (o_2@@79 T@Ref) (f_4@@79 T@Field_29221_53) ) (! (= (HasDirectPerm_29221_53 Mask@@70 o_2@@79 f_4@@79) (> (select (|PolymorphicMapType_14901_29221_53#PolymorphicMapType_14901| Mask@@70) o_2@@79 f_4@@79) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29221_53 Mask@@70 o_2@@79 f_4@@79))
)))
(assert (forall ((Mask@@71 T@PolymorphicMapType_14901) (o_2@@80 T@Ref) (f_4@@80 T@Field_29221_29222) ) (! (= (HasDirectPerm_29221_7856 Mask@@71 o_2@@80 f_4@@80) (> (select (|PolymorphicMapType_14901_29221_7856#PolymorphicMapType_14901| Mask@@71) o_2@@80 f_4@@80) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29221_7856 Mask@@71 o_2@@80 f_4@@80))
)))
(assert (forall ((Mask@@72 T@PolymorphicMapType_14901) (o_2@@81 T@Ref) (f_4@@81 T@Field_29221_1291) ) (! (= (HasDirectPerm_29221_1291 Mask@@72 o_2@@81 f_4@@81) (> (select (|PolymorphicMapType_14901_29221_1231#PolymorphicMapType_14901| Mask@@72) o_2@@81 f_4@@81) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29221_1291 Mask@@72 o_2@@81 f_4@@81))
)))
(assert (forall ((Mask@@73 T@PolymorphicMapType_14901) (o_2@@82 T@Ref) (f_4@@82 T@Field_29221_7680) ) (! (= (HasDirectPerm_29221_7680 Mask@@73 o_2@@82 f_4@@82) (> (select (|PolymorphicMapType_14901_29221_7680#PolymorphicMapType_14901| Mask@@73) o_2@@82 f_4@@82) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29221_7680 Mask@@73 o_2@@82 f_4@@82))
)))
(assert (forall ((Mask@@74 T@PolymorphicMapType_14901) (o_2@@83 T@Ref) (f_4@@83 T@Field_33906_33911) ) (! (= (HasDirectPerm_7929_54538 Mask@@74 o_2@@83 f_4@@83) (> (select (|PolymorphicMapType_14901_7929_85268#PolymorphicMapType_14901| Mask@@74) o_2@@83 f_4@@83) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7929_54538 Mask@@74 o_2@@83 f_4@@83))
)))
(assert (forall ((Mask@@75 T@PolymorphicMapType_14901) (o_2@@84 T@Ref) (f_4@@84 T@Field_7929_645) ) (! (= (HasDirectPerm_7929_645 Mask@@75 o_2@@84 f_4@@84) (> (select (|PolymorphicMapType_14901_7929_645#PolymorphicMapType_14901| Mask@@75) o_2@@84 f_4@@84) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7929_645 Mask@@75 o_2@@84 f_4@@84))
)))
(assert (forall ((Mask@@76 T@PolymorphicMapType_14901) (o_2@@85 T@Ref) (f_4@@85 T@Field_7929_53) ) (! (= (HasDirectPerm_7929_53 Mask@@76 o_2@@85 f_4@@85) (> (select (|PolymorphicMapType_14901_7929_53#PolymorphicMapType_14901| Mask@@76) o_2@@85 f_4@@85) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7929_53 Mask@@76 o_2@@85 f_4@@85))
)))
(assert (forall ((Mask@@77 T@PolymorphicMapType_14901) (o_2@@86 T@Ref) (f_4@@86 T@Field_33893_33894) ) (! (= (HasDirectPerm_7929_7930 Mask@@77 o_2@@86 f_4@@86) (> (select (|PolymorphicMapType_14901_7929_7930#PolymorphicMapType_14901| Mask@@77) o_2@@86 f_4@@86) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7929_7930 Mask@@77 o_2@@86 f_4@@86))
)))
(assert (forall ((Mask@@78 T@PolymorphicMapType_14901) (o_2@@87 T@Ref) (f_4@@87 T@Field_7929_1291) ) (! (= (HasDirectPerm_7929_1291 Mask@@78 o_2@@87 f_4@@87) (> (select (|PolymorphicMapType_14901_7929_1231#PolymorphicMapType_14901| Mask@@78) o_2@@87 f_4@@87) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7929_1291 Mask@@78 o_2@@87 f_4@@87))
)))
(assert (forall ((Mask@@79 T@PolymorphicMapType_14901) (o_2@@88 T@Ref) (f_4@@88 T@Field_7929_7680) ) (! (= (HasDirectPerm_7929_7680 Mask@@79 o_2@@88 f_4@@88) (> (select (|PolymorphicMapType_14901_7929_7680#PolymorphicMapType_14901| Mask@@79) o_2@@88 f_4@@88) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7929_7680 Mask@@79 o_2@@88 f_4@@88))
)))
(assert (forall ((Mask@@80 T@PolymorphicMapType_14901) (o_2@@89 T@Ref) (f_4@@89 T@Field_28913_28918) ) (! (= (HasDirectPerm_7904_53219 Mask@@80 o_2@@89 f_4@@89) (> (select (|PolymorphicMapType_14901_7904_84777#PolymorphicMapType_14901| Mask@@80) o_2@@89 f_4@@89) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7904_53219 Mask@@80 o_2@@89 f_4@@89))
)))
(assert (forall ((Mask@@81 T@PolymorphicMapType_14901) (o_2@@90 T@Ref) (f_4@@90 T@Field_7904_645) ) (! (= (HasDirectPerm_7904_645 Mask@@81 o_2@@90 f_4@@90) (> (select (|PolymorphicMapType_14901_7904_645#PolymorphicMapType_14901| Mask@@81) o_2@@90 f_4@@90) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7904_645 Mask@@81 o_2@@90 f_4@@90))
)))
(assert (forall ((Mask@@82 T@PolymorphicMapType_14901) (o_2@@91 T@Ref) (f_4@@91 T@Field_7904_53) ) (! (= (HasDirectPerm_7904_53 Mask@@82 o_2@@91 f_4@@91) (> (select (|PolymorphicMapType_14901_7904_53#PolymorphicMapType_14901| Mask@@82) o_2@@91 f_4@@91) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7904_53 Mask@@82 o_2@@91 f_4@@91))
)))
(assert (forall ((Mask@@83 T@PolymorphicMapType_14901) (o_2@@92 T@Ref) (f_4@@92 T@Field_27622_27623) ) (! (= (HasDirectPerm_7904_7905 Mask@@83 o_2@@92 f_4@@92) (> (select (|PolymorphicMapType_14901_7904_7905#PolymorphicMapType_14901| Mask@@83) o_2@@92 f_4@@92) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7904_7905 Mask@@83 o_2@@92 f_4@@92))
)))
(assert (forall ((Mask@@84 T@PolymorphicMapType_14901) (o_2@@93 T@Ref) (f_4@@93 T@Field_7904_1291) ) (! (= (HasDirectPerm_7904_1291 Mask@@84 o_2@@93 f_4@@93) (> (select (|PolymorphicMapType_14901_7904_1231#PolymorphicMapType_14901| Mask@@84) o_2@@93 f_4@@93) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7904_1291 Mask@@84 o_2@@93 f_4@@93))
)))
(assert (forall ((Mask@@85 T@PolymorphicMapType_14901) (o_2@@94 T@Ref) (f_4@@94 T@Field_7904_7680) ) (! (= (HasDirectPerm_7904_7680 Mask@@85 o_2@@94 f_4@@94) (> (select (|PolymorphicMapType_14901_7904_7680#PolymorphicMapType_14901| Mask@@85) o_2@@94 f_4@@94) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7904_7680 Mask@@85 o_2@@94 f_4@@94))
)))
(assert (forall ((Mask@@86 T@PolymorphicMapType_14901) (o_2@@95 T@Ref) (f_4@@95 T@Field_22165_22170) ) (! (= (HasDirectPerm_7855_51900 Mask@@86 o_2@@95 f_4@@95) (> (select (|PolymorphicMapType_14901_7855_83807#PolymorphicMapType_14901| Mask@@86) o_2@@95 f_4@@95) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7855_51900 Mask@@86 o_2@@95 f_4@@95))
)))
(assert (forall ((Mask@@87 T@PolymorphicMapType_14901) (o_2@@96 T@Ref) (f_4@@96 T@Field_7855_645) ) (! (= (HasDirectPerm_7855_645 Mask@@87 o_2@@96 f_4@@96) (> (select (|PolymorphicMapType_14901_7855_645#PolymorphicMapType_14901| Mask@@87) o_2@@96 f_4@@96) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7855_645 Mask@@87 o_2@@96 f_4@@96))
)))
(assert (forall ((Mask@@88 T@PolymorphicMapType_14901) (o_2@@97 T@Ref) (f_4@@97 T@Field_7855_53) ) (! (= (HasDirectPerm_7855_53 Mask@@88 o_2@@97 f_4@@97) (> (select (|PolymorphicMapType_14901_7855_53#PolymorphicMapType_14901| Mask@@88) o_2@@97 f_4@@97) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7855_53 Mask@@88 o_2@@97 f_4@@97))
)))
(assert (forall ((Mask@@89 T@PolymorphicMapType_14901) (o_2@@98 T@Ref) (f_4@@98 T@Field_19474_19475) ) (! (= (HasDirectPerm_7855_7856 Mask@@89 o_2@@98 f_4@@98) (> (select (|PolymorphicMapType_14901_7855_7856#PolymorphicMapType_14901| Mask@@89) o_2@@98 f_4@@98) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7855_7856 Mask@@89 o_2@@98 f_4@@98))
)))
(assert (forall ((Mask@@90 T@PolymorphicMapType_14901) (o_2@@99 T@Ref) (f_4@@99 T@Field_7855_1291) ) (! (= (HasDirectPerm_7855_1291 Mask@@90 o_2@@99 f_4@@99) (> (select (|PolymorphicMapType_14901_7855_1231#PolymorphicMapType_14901| Mask@@90) o_2@@99 f_4@@99) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7855_1291 Mask@@90 o_2@@99 f_4@@99))
)))
(assert (forall ((Mask@@91 T@PolymorphicMapType_14901) (o_2@@100 T@Ref) (f_4@@100 T@Field_7855_7680) ) (! (= (HasDirectPerm_7855_7680 Mask@@91 o_2@@100 f_4@@100) (> (select (|PolymorphicMapType_14901_7855_7680#PolymorphicMapType_14901| Mask@@91) o_2@@100 f_4@@100) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7855_7680 Mask@@91 o_2@@100 f_4@@100))
)))
(assert (forall ((Mask@@92 T@PolymorphicMapType_14901) (o_2@@101 T@Ref) (f_4@@101 T@Field_7679_22170) ) (! (= (HasDirectPerm_7679_50538 Mask@@92 o_2@@101 f_4@@101) (> (select (|PolymorphicMapType_14901_7677_84286#PolymorphicMapType_14901| Mask@@92) o_2@@101 f_4@@101) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7679_50538 Mask@@92 o_2@@101 f_4@@101))
)))
(assert (forall ((Mask@@93 T@PolymorphicMapType_14901) (o_2@@102 T@Ref) (f_4@@102 T@Field_18283_645) ) (! (= (HasDirectPerm_7679_645 Mask@@93 o_2@@102 f_4@@102) (> (select (|PolymorphicMapType_14901_7677_645#PolymorphicMapType_14901| Mask@@93) o_2@@102 f_4@@102) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7679_645 Mask@@93 o_2@@102 f_4@@102))
)))
(assert (forall ((Mask@@94 T@PolymorphicMapType_14901) (o_2@@103 T@Ref) (f_4@@103 T@Field_14940_53) ) (! (= (HasDirectPerm_7679_53 Mask@@94 o_2@@103 f_4@@103) (> (select (|PolymorphicMapType_14901_7677_53#PolymorphicMapType_14901| Mask@@94) o_2@@103 f_4@@103) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7679_53 Mask@@94 o_2@@103 f_4@@103))
)))
(assert (forall ((Mask@@95 T@PolymorphicMapType_14901) (o_2@@104 T@Ref) (f_4@@104 T@Field_7679_7856) ) (! (= (HasDirectPerm_7679_7856 Mask@@95 o_2@@104 f_4@@104) (> (select (|PolymorphicMapType_14901_7677_7856#PolymorphicMapType_14901| Mask@@95) o_2@@104 f_4@@104) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7679_7856 Mask@@95 o_2@@104 f_4@@104))
)))
(assert (forall ((Mask@@96 T@PolymorphicMapType_14901) (o_2@@105 T@Ref) (f_4@@105 T@Field_18374_1231) ) (! (= (HasDirectPerm_7688_1291 Mask@@96 o_2@@105 f_4@@105) (> (select (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| Mask@@96) o_2@@105 f_4@@105) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7688_1291 Mask@@96 o_2@@105 f_4@@105))
)))
(assert (forall ((Mask@@97 T@PolymorphicMapType_14901) (o_2@@106 T@Ref) (f_4@@106 T@Field_14953_14954) ) (! (= (HasDirectPerm_7679_7680 Mask@@97 o_2@@106 f_4@@106) (> (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| Mask@@97) o_2@@106 f_4@@106) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7679_7680 Mask@@97 o_2@@106 f_4@@106))
)))
(assert (forall ((p@@5 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@5 f_6) (ite (> p@@5 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.164:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@5 f_6))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_14880) (ExhaleHeap@@25 T@PolymorphicMapType_14880) (Mask@@98 T@PolymorphicMapType_14901) (o_1@@0 T@Ref) (f_2@@431 T@Field_32258_32263) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@25 Mask@@98) (=> (HasDirectPerm_32245_57293 Mask@@98 o_1@@0 f_2@@431) (= (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@37) o_1@@0 f_2@@431) (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| ExhaleHeap@@25) o_1@@0 f_2@@431))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@25 Mask@@98) (select (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| ExhaleHeap@@25) o_1@@0 f_2@@431))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_14880) (ExhaleHeap@@26 T@PolymorphicMapType_14880) (Mask@@99 T@PolymorphicMapType_14901) (o_1@@1 T@Ref) (f_2@@432 T@Field_32245_645) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@26 Mask@@99) (=> (HasDirectPerm_32245_645 Mask@@99 o_1@@1 f_2@@432) (= (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@38) o_1@@1 f_2@@432) (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| ExhaleHeap@@26) o_1@@1 f_2@@432))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@26 Mask@@99) (select (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| ExhaleHeap@@26) o_1@@1 f_2@@432))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_14880) (ExhaleHeap@@27 T@PolymorphicMapType_14880) (Mask@@100 T@PolymorphicMapType_14901) (o_1@@2 T@Ref) (f_2@@433 T@Field_32245_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@27 Mask@@100) (=> (HasDirectPerm_32245_53 Mask@@100 o_1@@2 f_2@@433) (= (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@39) o_1@@2 f_2@@433) (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| ExhaleHeap@@27) o_1@@2 f_2@@433))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@27 Mask@@100) (select (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| ExhaleHeap@@27) o_1@@2 f_2@@433))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_14880) (ExhaleHeap@@28 T@PolymorphicMapType_14880) (Mask@@101 T@PolymorphicMapType_14901) (o_1@@3 T@Ref) (f_2@@434 T@Field_32245_32246) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@28 Mask@@101) (=> (HasDirectPerm_32245_7856 Mask@@101 o_1@@3 f_2@@434) (= (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@40) o_1@@3 f_2@@434) (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| ExhaleHeap@@28) o_1@@3 f_2@@434))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@28 Mask@@101) (select (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| ExhaleHeap@@28) o_1@@3 f_2@@434))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_14880) (ExhaleHeap@@29 T@PolymorphicMapType_14880) (Mask@@102 T@PolymorphicMapType_14901) (o_1@@4 T@Ref) (f_2@@435 T@Field_32245_1291) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@29 Mask@@102) (=> (HasDirectPerm_32245_1291 Mask@@102 o_1@@4 f_2@@435) (= (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@41) o_1@@4 f_2@@435) (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| ExhaleHeap@@29) o_1@@4 f_2@@435))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@29 Mask@@102) (select (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| ExhaleHeap@@29) o_1@@4 f_2@@435))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_14880) (ExhaleHeap@@30 T@PolymorphicMapType_14880) (Mask@@103 T@PolymorphicMapType_14901) (o_1@@5 T@Ref) (f_2@@436 T@Field_32245_7680) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@30 Mask@@103) (=> (HasDirectPerm_32245_7680 Mask@@103 o_1@@5 f_2@@436) (= (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@42) o_1@@5 f_2@@436) (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| ExhaleHeap@@30) o_1@@5 f_2@@436))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@30 Mask@@103) (select (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| ExhaleHeap@@30) o_1@@5 f_2@@436))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_14880) (ExhaleHeap@@31 T@PolymorphicMapType_14880) (Mask@@104 T@PolymorphicMapType_14901) (o_1@@6 T@Ref) (f_2@@437 T@Field_29234_29239) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@31 Mask@@104) (=> (HasDirectPerm_29221_55894 Mask@@104 o_1@@6 f_2@@437) (= (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@43) o_1@@6 f_2@@437) (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| ExhaleHeap@@31) o_1@@6 f_2@@437))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@31 Mask@@104) (select (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| ExhaleHeap@@31) o_1@@6 f_2@@437))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_14880) (ExhaleHeap@@32 T@PolymorphicMapType_14880) (Mask@@105 T@PolymorphicMapType_14901) (o_1@@7 T@Ref) (f_2@@438 T@Field_29221_645) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@32 Mask@@105) (=> (HasDirectPerm_29221_645 Mask@@105 o_1@@7 f_2@@438) (= (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@44) o_1@@7 f_2@@438) (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| ExhaleHeap@@32) o_1@@7 f_2@@438))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@32 Mask@@105) (select (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| ExhaleHeap@@32) o_1@@7 f_2@@438))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_14880) (ExhaleHeap@@33 T@PolymorphicMapType_14880) (Mask@@106 T@PolymorphicMapType_14901) (o_1@@8 T@Ref) (f_2@@439 T@Field_29221_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@33 Mask@@106) (=> (HasDirectPerm_29221_53 Mask@@106 o_1@@8 f_2@@439) (= (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@45) o_1@@8 f_2@@439) (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| ExhaleHeap@@33) o_1@@8 f_2@@439))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@33 Mask@@106) (select (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| ExhaleHeap@@33) o_1@@8 f_2@@439))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_14880) (ExhaleHeap@@34 T@PolymorphicMapType_14880) (Mask@@107 T@PolymorphicMapType_14901) (o_1@@9 T@Ref) (f_2@@440 T@Field_29221_29222) ) (!  (=> (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@34 Mask@@107) (=> (HasDirectPerm_29221_7856 Mask@@107 o_1@@9 f_2@@440) (= (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@46) o_1@@9 f_2@@440) (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| ExhaleHeap@@34) o_1@@9 f_2@@440))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@34 Mask@@107) (select (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| ExhaleHeap@@34) o_1@@9 f_2@@440))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_14880) (ExhaleHeap@@35 T@PolymorphicMapType_14880) (Mask@@108 T@PolymorphicMapType_14901) (o_1@@10 T@Ref) (f_2@@441 T@Field_29221_1291) ) (!  (=> (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@35 Mask@@108) (=> (HasDirectPerm_29221_1291 Mask@@108 o_1@@10 f_2@@441) (= (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@47) o_1@@10 f_2@@441) (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| ExhaleHeap@@35) o_1@@10 f_2@@441))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@35 Mask@@108) (select (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| ExhaleHeap@@35) o_1@@10 f_2@@441))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_14880) (ExhaleHeap@@36 T@PolymorphicMapType_14880) (Mask@@109 T@PolymorphicMapType_14901) (o_1@@11 T@Ref) (f_2@@442 T@Field_29221_7680) ) (!  (=> (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@36 Mask@@109) (=> (HasDirectPerm_29221_7680 Mask@@109 o_1@@11 f_2@@442) (= (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@48) o_1@@11 f_2@@442) (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| ExhaleHeap@@36) o_1@@11 f_2@@442))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@36 Mask@@109) (select (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| ExhaleHeap@@36) o_1@@11 f_2@@442))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_14880) (ExhaleHeap@@37 T@PolymorphicMapType_14880) (Mask@@110 T@PolymorphicMapType_14901) (o_1@@12 T@Ref) (f_2@@443 T@Field_33906_33911) ) (!  (=> (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@37 Mask@@110) (=> (HasDirectPerm_7929_54538 Mask@@110 o_1@@12 f_2@@443) (= (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@49) o_1@@12 f_2@@443) (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| ExhaleHeap@@37) o_1@@12 f_2@@443))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@37 Mask@@110) (select (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| ExhaleHeap@@37) o_1@@12 f_2@@443))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_14880) (ExhaleHeap@@38 T@PolymorphicMapType_14880) (Mask@@111 T@PolymorphicMapType_14901) (o_1@@13 T@Ref) (f_2@@444 T@Field_7929_645) ) (!  (=> (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@38 Mask@@111) (=> (HasDirectPerm_7929_645 Mask@@111 o_1@@13 f_2@@444) (= (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@50) o_1@@13 f_2@@444) (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| ExhaleHeap@@38) o_1@@13 f_2@@444))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@38 Mask@@111) (select (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| ExhaleHeap@@38) o_1@@13 f_2@@444))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_14880) (ExhaleHeap@@39 T@PolymorphicMapType_14880) (Mask@@112 T@PolymorphicMapType_14901) (o_1@@14 T@Ref) (f_2@@445 T@Field_7929_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@39 Mask@@112) (=> (HasDirectPerm_7929_53 Mask@@112 o_1@@14 f_2@@445) (= (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@51) o_1@@14 f_2@@445) (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| ExhaleHeap@@39) o_1@@14 f_2@@445))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@39 Mask@@112) (select (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| ExhaleHeap@@39) o_1@@14 f_2@@445))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_14880) (ExhaleHeap@@40 T@PolymorphicMapType_14880) (Mask@@113 T@PolymorphicMapType_14901) (o_1@@15 T@Ref) (f_2@@446 T@Field_33893_33894) ) (!  (=> (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@40 Mask@@113) (=> (HasDirectPerm_7929_7930 Mask@@113 o_1@@15 f_2@@446) (= (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@52) o_1@@15 f_2@@446) (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| ExhaleHeap@@40) o_1@@15 f_2@@446))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@40 Mask@@113) (select (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| ExhaleHeap@@40) o_1@@15 f_2@@446))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_14880) (ExhaleHeap@@41 T@PolymorphicMapType_14880) (Mask@@114 T@PolymorphicMapType_14901) (o_1@@16 T@Ref) (f_2@@447 T@Field_7929_1291) ) (!  (=> (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@41 Mask@@114) (=> (HasDirectPerm_7929_1291 Mask@@114 o_1@@16 f_2@@447) (= (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@53) o_1@@16 f_2@@447) (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| ExhaleHeap@@41) o_1@@16 f_2@@447))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@41 Mask@@114) (select (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| ExhaleHeap@@41) o_1@@16 f_2@@447))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_14880) (ExhaleHeap@@42 T@PolymorphicMapType_14880) (Mask@@115 T@PolymorphicMapType_14901) (o_1@@17 T@Ref) (f_2@@448 T@Field_7929_7680) ) (!  (=> (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@42 Mask@@115) (=> (HasDirectPerm_7929_7680 Mask@@115 o_1@@17 f_2@@448) (= (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@54) o_1@@17 f_2@@448) (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| ExhaleHeap@@42) o_1@@17 f_2@@448))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@42 Mask@@115) (select (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| ExhaleHeap@@42) o_1@@17 f_2@@448))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_14880) (ExhaleHeap@@43 T@PolymorphicMapType_14880) (Mask@@116 T@PolymorphicMapType_14901) (o_1@@18 T@Ref) (f_2@@449 T@Field_28913_28918) ) (!  (=> (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@43 Mask@@116) (=> (HasDirectPerm_7904_53219 Mask@@116 o_1@@18 f_2@@449) (= (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@55) o_1@@18 f_2@@449) (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| ExhaleHeap@@43) o_1@@18 f_2@@449))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@43 Mask@@116) (select (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| ExhaleHeap@@43) o_1@@18 f_2@@449))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_14880) (ExhaleHeap@@44 T@PolymorphicMapType_14880) (Mask@@117 T@PolymorphicMapType_14901) (o_1@@19 T@Ref) (f_2@@450 T@Field_7904_645) ) (!  (=> (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@44 Mask@@117) (=> (HasDirectPerm_7904_645 Mask@@117 o_1@@19 f_2@@450) (= (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@56) o_1@@19 f_2@@450) (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| ExhaleHeap@@44) o_1@@19 f_2@@450))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@44 Mask@@117) (select (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| ExhaleHeap@@44) o_1@@19 f_2@@450))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_14880) (ExhaleHeap@@45 T@PolymorphicMapType_14880) (Mask@@118 T@PolymorphicMapType_14901) (o_1@@20 T@Ref) (f_2@@451 T@Field_7904_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@45 Mask@@118) (=> (HasDirectPerm_7904_53 Mask@@118 o_1@@20 f_2@@451) (= (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@57) o_1@@20 f_2@@451) (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| ExhaleHeap@@45) o_1@@20 f_2@@451))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@45 Mask@@118) (select (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| ExhaleHeap@@45) o_1@@20 f_2@@451))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_14880) (ExhaleHeap@@46 T@PolymorphicMapType_14880) (Mask@@119 T@PolymorphicMapType_14901) (o_1@@21 T@Ref) (f_2@@452 T@Field_27622_27623) ) (!  (=> (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@46 Mask@@119) (=> (HasDirectPerm_7904_7905 Mask@@119 o_1@@21 f_2@@452) (= (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@58) o_1@@21 f_2@@452) (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| ExhaleHeap@@46) o_1@@21 f_2@@452))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@46 Mask@@119) (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| ExhaleHeap@@46) o_1@@21 f_2@@452))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_14880) (ExhaleHeap@@47 T@PolymorphicMapType_14880) (Mask@@120 T@PolymorphicMapType_14901) (o_1@@22 T@Ref) (f_2@@453 T@Field_7904_1291) ) (!  (=> (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@47 Mask@@120) (=> (HasDirectPerm_7904_1291 Mask@@120 o_1@@22 f_2@@453) (= (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@59) o_1@@22 f_2@@453) (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| ExhaleHeap@@47) o_1@@22 f_2@@453))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@47 Mask@@120) (select (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| ExhaleHeap@@47) o_1@@22 f_2@@453))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_14880) (ExhaleHeap@@48 T@PolymorphicMapType_14880) (Mask@@121 T@PolymorphicMapType_14901) (o_1@@23 T@Ref) (f_2@@454 T@Field_7904_7680) ) (!  (=> (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@48 Mask@@121) (=> (HasDirectPerm_7904_7680 Mask@@121 o_1@@23 f_2@@454) (= (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@60) o_1@@23 f_2@@454) (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| ExhaleHeap@@48) o_1@@23 f_2@@454))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@48 Mask@@121) (select (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| ExhaleHeap@@48) o_1@@23 f_2@@454))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_14880) (ExhaleHeap@@49 T@PolymorphicMapType_14880) (Mask@@122 T@PolymorphicMapType_14901) (o_1@@24 T@Ref) (f_2@@455 T@Field_22165_22170) ) (!  (=> (IdenticalOnKnownLocations Heap@@61 ExhaleHeap@@49 Mask@@122) (=> (HasDirectPerm_7855_51900 Mask@@122 o_1@@24 f_2@@455) (= (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@61) o_1@@24 f_2@@455) (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| ExhaleHeap@@49) o_1@@24 f_2@@455))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@61 ExhaleHeap@@49 Mask@@122) (select (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| ExhaleHeap@@49) o_1@@24 f_2@@455))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_14880) (ExhaleHeap@@50 T@PolymorphicMapType_14880) (Mask@@123 T@PolymorphicMapType_14901) (o_1@@25 T@Ref) (f_2@@456 T@Field_7855_645) ) (!  (=> (IdenticalOnKnownLocations Heap@@62 ExhaleHeap@@50 Mask@@123) (=> (HasDirectPerm_7855_645 Mask@@123 o_1@@25 f_2@@456) (= (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@62) o_1@@25 f_2@@456) (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| ExhaleHeap@@50) o_1@@25 f_2@@456))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@62 ExhaleHeap@@50 Mask@@123) (select (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| ExhaleHeap@@50) o_1@@25 f_2@@456))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_14880) (ExhaleHeap@@51 T@PolymorphicMapType_14880) (Mask@@124 T@PolymorphicMapType_14901) (o_1@@26 T@Ref) (f_2@@457 T@Field_7855_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@63 ExhaleHeap@@51 Mask@@124) (=> (HasDirectPerm_7855_53 Mask@@124 o_1@@26 f_2@@457) (= (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@63) o_1@@26 f_2@@457) (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| ExhaleHeap@@51) o_1@@26 f_2@@457))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@63 ExhaleHeap@@51 Mask@@124) (select (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| ExhaleHeap@@51) o_1@@26 f_2@@457))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_14880) (ExhaleHeap@@52 T@PolymorphicMapType_14880) (Mask@@125 T@PolymorphicMapType_14901) (o_1@@27 T@Ref) (f_2@@458 T@Field_19474_19475) ) (!  (=> (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@52 Mask@@125) (=> (HasDirectPerm_7855_7856 Mask@@125 o_1@@27 f_2@@458) (= (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@64) o_1@@27 f_2@@458) (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| ExhaleHeap@@52) o_1@@27 f_2@@458))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@52 Mask@@125) (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| ExhaleHeap@@52) o_1@@27 f_2@@458))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_14880) (ExhaleHeap@@53 T@PolymorphicMapType_14880) (Mask@@126 T@PolymorphicMapType_14901) (o_1@@28 T@Ref) (f_2@@459 T@Field_7855_1291) ) (!  (=> (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@53 Mask@@126) (=> (HasDirectPerm_7855_1291 Mask@@126 o_1@@28 f_2@@459) (= (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@65) o_1@@28 f_2@@459) (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| ExhaleHeap@@53) o_1@@28 f_2@@459))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@53 Mask@@126) (select (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| ExhaleHeap@@53) o_1@@28 f_2@@459))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_14880) (ExhaleHeap@@54 T@PolymorphicMapType_14880) (Mask@@127 T@PolymorphicMapType_14901) (o_1@@29 T@Ref) (f_2@@460 T@Field_7855_7680) ) (!  (=> (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@54 Mask@@127) (=> (HasDirectPerm_7855_7680 Mask@@127 o_1@@29 f_2@@460) (= (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@66) o_1@@29 f_2@@460) (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| ExhaleHeap@@54) o_1@@29 f_2@@460))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@54 Mask@@127) (select (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| ExhaleHeap@@54) o_1@@29 f_2@@460))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_14880) (ExhaleHeap@@55 T@PolymorphicMapType_14880) (Mask@@128 T@PolymorphicMapType_14901) (o_1@@30 T@Ref) (f_2@@461 T@Field_7679_22170) ) (!  (=> (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@55 Mask@@128) (=> (HasDirectPerm_7679_50538 Mask@@128 o_1@@30 f_2@@461) (= (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@67) o_1@@30 f_2@@461) (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| ExhaleHeap@@55) o_1@@30 f_2@@461))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@55 Mask@@128) (select (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| ExhaleHeap@@55) o_1@@30 f_2@@461))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_14880) (ExhaleHeap@@56 T@PolymorphicMapType_14880) (Mask@@129 T@PolymorphicMapType_14901) (o_1@@31 T@Ref) (f_2@@462 T@Field_18283_645) ) (!  (=> (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@56 Mask@@129) (=> (HasDirectPerm_7679_645 Mask@@129 o_1@@31 f_2@@462) (= (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@68) o_1@@31 f_2@@462) (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| ExhaleHeap@@56) o_1@@31 f_2@@462))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@56 Mask@@129) (select (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| ExhaleHeap@@56) o_1@@31 f_2@@462))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_14880) (ExhaleHeap@@57 T@PolymorphicMapType_14880) (Mask@@130 T@PolymorphicMapType_14901) (o_1@@32 T@Ref) (f_2@@463 T@Field_14940_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@57 Mask@@130) (=> (HasDirectPerm_7679_53 Mask@@130 o_1@@32 f_2@@463) (= (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@69) o_1@@32 f_2@@463) (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| ExhaleHeap@@57) o_1@@32 f_2@@463))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@57 Mask@@130) (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| ExhaleHeap@@57) o_1@@32 f_2@@463))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_14880) (ExhaleHeap@@58 T@PolymorphicMapType_14880) (Mask@@131 T@PolymorphicMapType_14901) (o_1@@33 T@Ref) (f_2@@464 T@Field_7679_7856) ) (!  (=> (IdenticalOnKnownLocations Heap@@70 ExhaleHeap@@58 Mask@@131) (=> (HasDirectPerm_7679_7856 Mask@@131 o_1@@33 f_2@@464) (= (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@70) o_1@@33 f_2@@464) (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| ExhaleHeap@@58) o_1@@33 f_2@@464))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@70 ExhaleHeap@@58 Mask@@131) (select (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| ExhaleHeap@@58) o_1@@33 f_2@@464))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_14880) (ExhaleHeap@@59 T@PolymorphicMapType_14880) (Mask@@132 T@PolymorphicMapType_14901) (o_1@@34 T@Ref) (f_2@@465 T@Field_18374_1231) ) (!  (=> (IdenticalOnKnownLocations Heap@@71 ExhaleHeap@@59 Mask@@132) (=> (HasDirectPerm_7688_1291 Mask@@132 o_1@@34 f_2@@465) (= (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@71) o_1@@34 f_2@@465) (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| ExhaleHeap@@59) o_1@@34 f_2@@465))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@71 ExhaleHeap@@59 Mask@@132) (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| ExhaleHeap@@59) o_1@@34 f_2@@465))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_14880) (ExhaleHeap@@60 T@PolymorphicMapType_14880) (Mask@@133 T@PolymorphicMapType_14901) (o_1@@35 T@Ref) (f_2@@466 T@Field_14953_14954) ) (!  (=> (IdenticalOnKnownLocations Heap@@72 ExhaleHeap@@60 Mask@@133) (=> (HasDirectPerm_7679_7680 Mask@@133 o_1@@35 f_2@@466) (= (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@72) o_1@@35 f_2@@466) (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| ExhaleHeap@@60) o_1@@35 f_2@@466))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@72 ExhaleHeap@@60 Mask@@133) (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| ExhaleHeap@@60) o_1@@35 f_2@@466))
)))
(assert (forall ((o_2@@107 T@Ref) (f_4@@107 T@Field_32258_32263) ) (! (= (select (|PolymorphicMapType_14901_32245_86280#PolymorphicMapType_14901| ZeroMask) o_2@@107 f_4@@107) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_32245_86280#PolymorphicMapType_14901| ZeroMask) o_2@@107 f_4@@107))
)))
(assert (forall ((o_2@@108 T@Ref) (f_4@@108 T@Field_32245_645) ) (! (= (select (|PolymorphicMapType_14901_32245_645#PolymorphicMapType_14901| ZeroMask) o_2@@108 f_4@@108) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_32245_645#PolymorphicMapType_14901| ZeroMask) o_2@@108 f_4@@108))
)))
(assert (forall ((o_2@@109 T@Ref) (f_4@@109 T@Field_32245_53) ) (! (= (select (|PolymorphicMapType_14901_32245_53#PolymorphicMapType_14901| ZeroMask) o_2@@109 f_4@@109) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_32245_53#PolymorphicMapType_14901| ZeroMask) o_2@@109 f_4@@109))
)))
(assert (forall ((o_2@@110 T@Ref) (f_4@@110 T@Field_32245_7680) ) (! (= (select (|PolymorphicMapType_14901_32245_7680#PolymorphicMapType_14901| ZeroMask) o_2@@110 f_4@@110) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_32245_7680#PolymorphicMapType_14901| ZeroMask) o_2@@110 f_4@@110))
)))
(assert (forall ((o_2@@111 T@Ref) (f_4@@111 T@Field_32245_1291) ) (! (= (select (|PolymorphicMapType_14901_32245_1231#PolymorphicMapType_14901| ZeroMask) o_2@@111 f_4@@111) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_32245_1231#PolymorphicMapType_14901| ZeroMask) o_2@@111 f_4@@111))
)))
(assert (forall ((o_2@@112 T@Ref) (f_4@@112 T@Field_32245_32246) ) (! (= (select (|PolymorphicMapType_14901_32245_7856#PolymorphicMapType_14901| ZeroMask) o_2@@112 f_4@@112) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_32245_7856#PolymorphicMapType_14901| ZeroMask) o_2@@112 f_4@@112))
)))
(assert (forall ((o_2@@113 T@Ref) (f_4@@113 T@Field_29234_29239) ) (! (= (select (|PolymorphicMapType_14901_29221_85774#PolymorphicMapType_14901| ZeroMask) o_2@@113 f_4@@113) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_29221_85774#PolymorphicMapType_14901| ZeroMask) o_2@@113 f_4@@113))
)))
(assert (forall ((o_2@@114 T@Ref) (f_4@@114 T@Field_29221_645) ) (! (= (select (|PolymorphicMapType_14901_29221_645#PolymorphicMapType_14901| ZeroMask) o_2@@114 f_4@@114) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_29221_645#PolymorphicMapType_14901| ZeroMask) o_2@@114 f_4@@114))
)))
(assert (forall ((o_2@@115 T@Ref) (f_4@@115 T@Field_29221_53) ) (! (= (select (|PolymorphicMapType_14901_29221_53#PolymorphicMapType_14901| ZeroMask) o_2@@115 f_4@@115) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_29221_53#PolymorphicMapType_14901| ZeroMask) o_2@@115 f_4@@115))
)))
(assert (forall ((o_2@@116 T@Ref) (f_4@@116 T@Field_29221_7680) ) (! (= (select (|PolymorphicMapType_14901_29221_7680#PolymorphicMapType_14901| ZeroMask) o_2@@116 f_4@@116) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_29221_7680#PolymorphicMapType_14901| ZeroMask) o_2@@116 f_4@@116))
)))
(assert (forall ((o_2@@117 T@Ref) (f_4@@117 T@Field_29221_1291) ) (! (= (select (|PolymorphicMapType_14901_29221_1231#PolymorphicMapType_14901| ZeroMask) o_2@@117 f_4@@117) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_29221_1231#PolymorphicMapType_14901| ZeroMask) o_2@@117 f_4@@117))
)))
(assert (forall ((o_2@@118 T@Ref) (f_4@@118 T@Field_29221_29222) ) (! (= (select (|PolymorphicMapType_14901_29221_7856#PolymorphicMapType_14901| ZeroMask) o_2@@118 f_4@@118) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_29221_7856#PolymorphicMapType_14901| ZeroMask) o_2@@118 f_4@@118))
)))
(assert (forall ((o_2@@119 T@Ref) (f_4@@119 T@Field_33906_33911) ) (! (= (select (|PolymorphicMapType_14901_7929_85268#PolymorphicMapType_14901| ZeroMask) o_2@@119 f_4@@119) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_7929_85268#PolymorphicMapType_14901| ZeroMask) o_2@@119 f_4@@119))
)))
(assert (forall ((o_2@@120 T@Ref) (f_4@@120 T@Field_7929_645) ) (! (= (select (|PolymorphicMapType_14901_7929_645#PolymorphicMapType_14901| ZeroMask) o_2@@120 f_4@@120) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_7929_645#PolymorphicMapType_14901| ZeroMask) o_2@@120 f_4@@120))
)))
(assert (forall ((o_2@@121 T@Ref) (f_4@@121 T@Field_7929_53) ) (! (= (select (|PolymorphicMapType_14901_7929_53#PolymorphicMapType_14901| ZeroMask) o_2@@121 f_4@@121) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_7929_53#PolymorphicMapType_14901| ZeroMask) o_2@@121 f_4@@121))
)))
(assert (forall ((o_2@@122 T@Ref) (f_4@@122 T@Field_7929_7680) ) (! (= (select (|PolymorphicMapType_14901_7929_7680#PolymorphicMapType_14901| ZeroMask) o_2@@122 f_4@@122) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_7929_7680#PolymorphicMapType_14901| ZeroMask) o_2@@122 f_4@@122))
)))
(assert (forall ((o_2@@123 T@Ref) (f_4@@123 T@Field_7929_1291) ) (! (= (select (|PolymorphicMapType_14901_7929_1231#PolymorphicMapType_14901| ZeroMask) o_2@@123 f_4@@123) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_7929_1231#PolymorphicMapType_14901| ZeroMask) o_2@@123 f_4@@123))
)))
(assert (forall ((o_2@@124 T@Ref) (f_4@@124 T@Field_33893_33894) ) (! (= (select (|PolymorphicMapType_14901_7929_7930#PolymorphicMapType_14901| ZeroMask) o_2@@124 f_4@@124) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_7929_7930#PolymorphicMapType_14901| ZeroMask) o_2@@124 f_4@@124))
)))
(assert (forall ((o_2@@125 T@Ref) (f_4@@125 T@Field_28913_28918) ) (! (= (select (|PolymorphicMapType_14901_7904_84777#PolymorphicMapType_14901| ZeroMask) o_2@@125 f_4@@125) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_7904_84777#PolymorphicMapType_14901| ZeroMask) o_2@@125 f_4@@125))
)))
(assert (forall ((o_2@@126 T@Ref) (f_4@@126 T@Field_7904_645) ) (! (= (select (|PolymorphicMapType_14901_7904_645#PolymorphicMapType_14901| ZeroMask) o_2@@126 f_4@@126) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_7904_645#PolymorphicMapType_14901| ZeroMask) o_2@@126 f_4@@126))
)))
(assert (forall ((o_2@@127 T@Ref) (f_4@@127 T@Field_7904_53) ) (! (= (select (|PolymorphicMapType_14901_7904_53#PolymorphicMapType_14901| ZeroMask) o_2@@127 f_4@@127) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_7904_53#PolymorphicMapType_14901| ZeroMask) o_2@@127 f_4@@127))
)))
(assert (forall ((o_2@@128 T@Ref) (f_4@@128 T@Field_7904_7680) ) (! (= (select (|PolymorphicMapType_14901_7904_7680#PolymorphicMapType_14901| ZeroMask) o_2@@128 f_4@@128) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_7904_7680#PolymorphicMapType_14901| ZeroMask) o_2@@128 f_4@@128))
)))
(assert (forall ((o_2@@129 T@Ref) (f_4@@129 T@Field_7904_1291) ) (! (= (select (|PolymorphicMapType_14901_7904_1231#PolymorphicMapType_14901| ZeroMask) o_2@@129 f_4@@129) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_7904_1231#PolymorphicMapType_14901| ZeroMask) o_2@@129 f_4@@129))
)))
(assert (forall ((o_2@@130 T@Ref) (f_4@@130 T@Field_27622_27623) ) (! (= (select (|PolymorphicMapType_14901_7904_7905#PolymorphicMapType_14901| ZeroMask) o_2@@130 f_4@@130) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_7904_7905#PolymorphicMapType_14901| ZeroMask) o_2@@130 f_4@@130))
)))
(assert (forall ((o_2@@131 T@Ref) (f_4@@131 T@Field_7679_22170) ) (! (= (select (|PolymorphicMapType_14901_7677_84286#PolymorphicMapType_14901| ZeroMask) o_2@@131 f_4@@131) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_7677_84286#PolymorphicMapType_14901| ZeroMask) o_2@@131 f_4@@131))
)))
(assert (forall ((o_2@@132 T@Ref) (f_4@@132 T@Field_18283_645) ) (! (= (select (|PolymorphicMapType_14901_7677_645#PolymorphicMapType_14901| ZeroMask) o_2@@132 f_4@@132) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_7677_645#PolymorphicMapType_14901| ZeroMask) o_2@@132 f_4@@132))
)))
(assert (forall ((o_2@@133 T@Ref) (f_4@@133 T@Field_14940_53) ) (! (= (select (|PolymorphicMapType_14901_7677_53#PolymorphicMapType_14901| ZeroMask) o_2@@133 f_4@@133) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_7677_53#PolymorphicMapType_14901| ZeroMask) o_2@@133 f_4@@133))
)))
(assert (forall ((o_2@@134 T@Ref) (f_4@@134 T@Field_14953_14954) ) (! (= (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| ZeroMask) o_2@@134 f_4@@134) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| ZeroMask) o_2@@134 f_4@@134))
)))
(assert (forall ((o_2@@135 T@Ref) (f_4@@135 T@Field_18374_1231) ) (! (= (select (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| ZeroMask) o_2@@135 f_4@@135) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| ZeroMask) o_2@@135 f_4@@135))
)))
(assert (forall ((o_2@@136 T@Ref) (f_4@@136 T@Field_7679_7856) ) (! (= (select (|PolymorphicMapType_14901_7677_7856#PolymorphicMapType_14901| ZeroMask) o_2@@136 f_4@@136) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_7677_7856#PolymorphicMapType_14901| ZeroMask) o_2@@136 f_4@@136))
)))
(assert (forall ((o_2@@137 T@Ref) (f_4@@137 T@Field_22165_22170) ) (! (= (select (|PolymorphicMapType_14901_7855_83807#PolymorphicMapType_14901| ZeroMask) o_2@@137 f_4@@137) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_7855_83807#PolymorphicMapType_14901| ZeroMask) o_2@@137 f_4@@137))
)))
(assert (forall ((o_2@@138 T@Ref) (f_4@@138 T@Field_7855_645) ) (! (= (select (|PolymorphicMapType_14901_7855_645#PolymorphicMapType_14901| ZeroMask) o_2@@138 f_4@@138) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_7855_645#PolymorphicMapType_14901| ZeroMask) o_2@@138 f_4@@138))
)))
(assert (forall ((o_2@@139 T@Ref) (f_4@@139 T@Field_7855_53) ) (! (= (select (|PolymorphicMapType_14901_7855_53#PolymorphicMapType_14901| ZeroMask) o_2@@139 f_4@@139) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_7855_53#PolymorphicMapType_14901| ZeroMask) o_2@@139 f_4@@139))
)))
(assert (forall ((o_2@@140 T@Ref) (f_4@@140 T@Field_7855_7680) ) (! (= (select (|PolymorphicMapType_14901_7855_7680#PolymorphicMapType_14901| ZeroMask) o_2@@140 f_4@@140) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_7855_7680#PolymorphicMapType_14901| ZeroMask) o_2@@140 f_4@@140))
)))
(assert (forall ((o_2@@141 T@Ref) (f_4@@141 T@Field_7855_1291) ) (! (= (select (|PolymorphicMapType_14901_7855_1231#PolymorphicMapType_14901| ZeroMask) o_2@@141 f_4@@141) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_7855_1231#PolymorphicMapType_14901| ZeroMask) o_2@@141 f_4@@141))
)))
(assert (forall ((o_2@@142 T@Ref) (f_4@@142 T@Field_19474_19475) ) (! (= (select (|PolymorphicMapType_14901_7855_7856#PolymorphicMapType_14901| ZeroMask) o_2@@142 f_4@@142) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14901_7855_7856#PolymorphicMapType_14901| ZeroMask) o_2@@142 f_4@@142))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_14901) (SummandMask1 T@PolymorphicMapType_14901) (SummandMask2 T@PolymorphicMapType_14901) (o_2@@143 T@Ref) (f_4@@143 T@Field_32258_32263) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_14901_32245_86280#PolymorphicMapType_14901| ResultMask) o_2@@143 f_4@@143) (+ (select (|PolymorphicMapType_14901_32245_86280#PolymorphicMapType_14901| SummandMask1) o_2@@143 f_4@@143) (select (|PolymorphicMapType_14901_32245_86280#PolymorphicMapType_14901| SummandMask2) o_2@@143 f_4@@143))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14901_32245_86280#PolymorphicMapType_14901| ResultMask) o_2@@143 f_4@@143))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14901_32245_86280#PolymorphicMapType_14901| SummandMask1) o_2@@143 f_4@@143))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14901_32245_86280#PolymorphicMapType_14901| SummandMask2) o_2@@143 f_4@@143))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_14901) (SummandMask1@@0 T@PolymorphicMapType_14901) (SummandMask2@@0 T@PolymorphicMapType_14901) (o_2@@144 T@Ref) (f_4@@144 T@Field_32245_645) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_14901_32245_645#PolymorphicMapType_14901| ResultMask@@0) o_2@@144 f_4@@144) (+ (select (|PolymorphicMapType_14901_32245_645#PolymorphicMapType_14901| SummandMask1@@0) o_2@@144 f_4@@144) (select (|PolymorphicMapType_14901_32245_645#PolymorphicMapType_14901| SummandMask2@@0) o_2@@144 f_4@@144))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14901_32245_645#PolymorphicMapType_14901| ResultMask@@0) o_2@@144 f_4@@144))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14901_32245_645#PolymorphicMapType_14901| SummandMask1@@0) o_2@@144 f_4@@144))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14901_32245_645#PolymorphicMapType_14901| SummandMask2@@0) o_2@@144 f_4@@144))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_14901) (SummandMask1@@1 T@PolymorphicMapType_14901) (SummandMask2@@1 T@PolymorphicMapType_14901) (o_2@@145 T@Ref) (f_4@@145 T@Field_32245_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_14901_32245_53#PolymorphicMapType_14901| ResultMask@@1) o_2@@145 f_4@@145) (+ (select (|PolymorphicMapType_14901_32245_53#PolymorphicMapType_14901| SummandMask1@@1) o_2@@145 f_4@@145) (select (|PolymorphicMapType_14901_32245_53#PolymorphicMapType_14901| SummandMask2@@1) o_2@@145 f_4@@145))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14901_32245_53#PolymorphicMapType_14901| ResultMask@@1) o_2@@145 f_4@@145))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14901_32245_53#PolymorphicMapType_14901| SummandMask1@@1) o_2@@145 f_4@@145))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14901_32245_53#PolymorphicMapType_14901| SummandMask2@@1) o_2@@145 f_4@@145))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_14901) (SummandMask1@@2 T@PolymorphicMapType_14901) (SummandMask2@@2 T@PolymorphicMapType_14901) (o_2@@146 T@Ref) (f_4@@146 T@Field_32245_7680) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_14901_32245_7680#PolymorphicMapType_14901| ResultMask@@2) o_2@@146 f_4@@146) (+ (select (|PolymorphicMapType_14901_32245_7680#PolymorphicMapType_14901| SummandMask1@@2) o_2@@146 f_4@@146) (select (|PolymorphicMapType_14901_32245_7680#PolymorphicMapType_14901| SummandMask2@@2) o_2@@146 f_4@@146))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14901_32245_7680#PolymorphicMapType_14901| ResultMask@@2) o_2@@146 f_4@@146))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14901_32245_7680#PolymorphicMapType_14901| SummandMask1@@2) o_2@@146 f_4@@146))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14901_32245_7680#PolymorphicMapType_14901| SummandMask2@@2) o_2@@146 f_4@@146))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_14901) (SummandMask1@@3 T@PolymorphicMapType_14901) (SummandMask2@@3 T@PolymorphicMapType_14901) (o_2@@147 T@Ref) (f_4@@147 T@Field_32245_1291) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_14901_32245_1231#PolymorphicMapType_14901| ResultMask@@3) o_2@@147 f_4@@147) (+ (select (|PolymorphicMapType_14901_32245_1231#PolymorphicMapType_14901| SummandMask1@@3) o_2@@147 f_4@@147) (select (|PolymorphicMapType_14901_32245_1231#PolymorphicMapType_14901| SummandMask2@@3) o_2@@147 f_4@@147))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14901_32245_1231#PolymorphicMapType_14901| ResultMask@@3) o_2@@147 f_4@@147))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14901_32245_1231#PolymorphicMapType_14901| SummandMask1@@3) o_2@@147 f_4@@147))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14901_32245_1231#PolymorphicMapType_14901| SummandMask2@@3) o_2@@147 f_4@@147))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_14901) (SummandMask1@@4 T@PolymorphicMapType_14901) (SummandMask2@@4 T@PolymorphicMapType_14901) (o_2@@148 T@Ref) (f_4@@148 T@Field_32245_32246) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_14901_32245_7856#PolymorphicMapType_14901| ResultMask@@4) o_2@@148 f_4@@148) (+ (select (|PolymorphicMapType_14901_32245_7856#PolymorphicMapType_14901| SummandMask1@@4) o_2@@148 f_4@@148) (select (|PolymorphicMapType_14901_32245_7856#PolymorphicMapType_14901| SummandMask2@@4) o_2@@148 f_4@@148))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_14901_32245_7856#PolymorphicMapType_14901| ResultMask@@4) o_2@@148 f_4@@148))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_14901_32245_7856#PolymorphicMapType_14901| SummandMask1@@4) o_2@@148 f_4@@148))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_14901_32245_7856#PolymorphicMapType_14901| SummandMask2@@4) o_2@@148 f_4@@148))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_14901) (SummandMask1@@5 T@PolymorphicMapType_14901) (SummandMask2@@5 T@PolymorphicMapType_14901) (o_2@@149 T@Ref) (f_4@@149 T@Field_29234_29239) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_14901_29221_85774#PolymorphicMapType_14901| ResultMask@@5) o_2@@149 f_4@@149) (+ (select (|PolymorphicMapType_14901_29221_85774#PolymorphicMapType_14901| SummandMask1@@5) o_2@@149 f_4@@149) (select (|PolymorphicMapType_14901_29221_85774#PolymorphicMapType_14901| SummandMask2@@5) o_2@@149 f_4@@149))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_14901_29221_85774#PolymorphicMapType_14901| ResultMask@@5) o_2@@149 f_4@@149))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_14901_29221_85774#PolymorphicMapType_14901| SummandMask1@@5) o_2@@149 f_4@@149))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_14901_29221_85774#PolymorphicMapType_14901| SummandMask2@@5) o_2@@149 f_4@@149))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_14901) (SummandMask1@@6 T@PolymorphicMapType_14901) (SummandMask2@@6 T@PolymorphicMapType_14901) (o_2@@150 T@Ref) (f_4@@150 T@Field_29221_645) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_14901_29221_645#PolymorphicMapType_14901| ResultMask@@6) o_2@@150 f_4@@150) (+ (select (|PolymorphicMapType_14901_29221_645#PolymorphicMapType_14901| SummandMask1@@6) o_2@@150 f_4@@150) (select (|PolymorphicMapType_14901_29221_645#PolymorphicMapType_14901| SummandMask2@@6) o_2@@150 f_4@@150))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_14901_29221_645#PolymorphicMapType_14901| ResultMask@@6) o_2@@150 f_4@@150))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_14901_29221_645#PolymorphicMapType_14901| SummandMask1@@6) o_2@@150 f_4@@150))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_14901_29221_645#PolymorphicMapType_14901| SummandMask2@@6) o_2@@150 f_4@@150))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_14901) (SummandMask1@@7 T@PolymorphicMapType_14901) (SummandMask2@@7 T@PolymorphicMapType_14901) (o_2@@151 T@Ref) (f_4@@151 T@Field_29221_53) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_14901_29221_53#PolymorphicMapType_14901| ResultMask@@7) o_2@@151 f_4@@151) (+ (select (|PolymorphicMapType_14901_29221_53#PolymorphicMapType_14901| SummandMask1@@7) o_2@@151 f_4@@151) (select (|PolymorphicMapType_14901_29221_53#PolymorphicMapType_14901| SummandMask2@@7) o_2@@151 f_4@@151))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_14901_29221_53#PolymorphicMapType_14901| ResultMask@@7) o_2@@151 f_4@@151))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_14901_29221_53#PolymorphicMapType_14901| SummandMask1@@7) o_2@@151 f_4@@151))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_14901_29221_53#PolymorphicMapType_14901| SummandMask2@@7) o_2@@151 f_4@@151))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_14901) (SummandMask1@@8 T@PolymorphicMapType_14901) (SummandMask2@@8 T@PolymorphicMapType_14901) (o_2@@152 T@Ref) (f_4@@152 T@Field_29221_7680) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_14901_29221_7680#PolymorphicMapType_14901| ResultMask@@8) o_2@@152 f_4@@152) (+ (select (|PolymorphicMapType_14901_29221_7680#PolymorphicMapType_14901| SummandMask1@@8) o_2@@152 f_4@@152) (select (|PolymorphicMapType_14901_29221_7680#PolymorphicMapType_14901| SummandMask2@@8) o_2@@152 f_4@@152))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_14901_29221_7680#PolymorphicMapType_14901| ResultMask@@8) o_2@@152 f_4@@152))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_14901_29221_7680#PolymorphicMapType_14901| SummandMask1@@8) o_2@@152 f_4@@152))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_14901_29221_7680#PolymorphicMapType_14901| SummandMask2@@8) o_2@@152 f_4@@152))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_14901) (SummandMask1@@9 T@PolymorphicMapType_14901) (SummandMask2@@9 T@PolymorphicMapType_14901) (o_2@@153 T@Ref) (f_4@@153 T@Field_29221_1291) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_14901_29221_1231#PolymorphicMapType_14901| ResultMask@@9) o_2@@153 f_4@@153) (+ (select (|PolymorphicMapType_14901_29221_1231#PolymorphicMapType_14901| SummandMask1@@9) o_2@@153 f_4@@153) (select (|PolymorphicMapType_14901_29221_1231#PolymorphicMapType_14901| SummandMask2@@9) o_2@@153 f_4@@153))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_14901_29221_1231#PolymorphicMapType_14901| ResultMask@@9) o_2@@153 f_4@@153))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_14901_29221_1231#PolymorphicMapType_14901| SummandMask1@@9) o_2@@153 f_4@@153))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_14901_29221_1231#PolymorphicMapType_14901| SummandMask2@@9) o_2@@153 f_4@@153))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_14901) (SummandMask1@@10 T@PolymorphicMapType_14901) (SummandMask2@@10 T@PolymorphicMapType_14901) (o_2@@154 T@Ref) (f_4@@154 T@Field_29221_29222) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_14901_29221_7856#PolymorphicMapType_14901| ResultMask@@10) o_2@@154 f_4@@154) (+ (select (|PolymorphicMapType_14901_29221_7856#PolymorphicMapType_14901| SummandMask1@@10) o_2@@154 f_4@@154) (select (|PolymorphicMapType_14901_29221_7856#PolymorphicMapType_14901| SummandMask2@@10) o_2@@154 f_4@@154))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_14901_29221_7856#PolymorphicMapType_14901| ResultMask@@10) o_2@@154 f_4@@154))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_14901_29221_7856#PolymorphicMapType_14901| SummandMask1@@10) o_2@@154 f_4@@154))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_14901_29221_7856#PolymorphicMapType_14901| SummandMask2@@10) o_2@@154 f_4@@154))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_14901) (SummandMask1@@11 T@PolymorphicMapType_14901) (SummandMask2@@11 T@PolymorphicMapType_14901) (o_2@@155 T@Ref) (f_4@@155 T@Field_33906_33911) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_14901_7929_85268#PolymorphicMapType_14901| ResultMask@@11) o_2@@155 f_4@@155) (+ (select (|PolymorphicMapType_14901_7929_85268#PolymorphicMapType_14901| SummandMask1@@11) o_2@@155 f_4@@155) (select (|PolymorphicMapType_14901_7929_85268#PolymorphicMapType_14901| SummandMask2@@11) o_2@@155 f_4@@155))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_14901_7929_85268#PolymorphicMapType_14901| ResultMask@@11) o_2@@155 f_4@@155))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_14901_7929_85268#PolymorphicMapType_14901| SummandMask1@@11) o_2@@155 f_4@@155))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_14901_7929_85268#PolymorphicMapType_14901| SummandMask2@@11) o_2@@155 f_4@@155))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_14901) (SummandMask1@@12 T@PolymorphicMapType_14901) (SummandMask2@@12 T@PolymorphicMapType_14901) (o_2@@156 T@Ref) (f_4@@156 T@Field_7929_645) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_14901_7929_645#PolymorphicMapType_14901| ResultMask@@12) o_2@@156 f_4@@156) (+ (select (|PolymorphicMapType_14901_7929_645#PolymorphicMapType_14901| SummandMask1@@12) o_2@@156 f_4@@156) (select (|PolymorphicMapType_14901_7929_645#PolymorphicMapType_14901| SummandMask2@@12) o_2@@156 f_4@@156))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_14901_7929_645#PolymorphicMapType_14901| ResultMask@@12) o_2@@156 f_4@@156))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_14901_7929_645#PolymorphicMapType_14901| SummandMask1@@12) o_2@@156 f_4@@156))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_14901_7929_645#PolymorphicMapType_14901| SummandMask2@@12) o_2@@156 f_4@@156))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_14901) (SummandMask1@@13 T@PolymorphicMapType_14901) (SummandMask2@@13 T@PolymorphicMapType_14901) (o_2@@157 T@Ref) (f_4@@157 T@Field_7929_53) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_14901_7929_53#PolymorphicMapType_14901| ResultMask@@13) o_2@@157 f_4@@157) (+ (select (|PolymorphicMapType_14901_7929_53#PolymorphicMapType_14901| SummandMask1@@13) o_2@@157 f_4@@157) (select (|PolymorphicMapType_14901_7929_53#PolymorphicMapType_14901| SummandMask2@@13) o_2@@157 f_4@@157))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_14901_7929_53#PolymorphicMapType_14901| ResultMask@@13) o_2@@157 f_4@@157))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_14901_7929_53#PolymorphicMapType_14901| SummandMask1@@13) o_2@@157 f_4@@157))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_14901_7929_53#PolymorphicMapType_14901| SummandMask2@@13) o_2@@157 f_4@@157))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_14901) (SummandMask1@@14 T@PolymorphicMapType_14901) (SummandMask2@@14 T@PolymorphicMapType_14901) (o_2@@158 T@Ref) (f_4@@158 T@Field_7929_7680) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_14901_7929_7680#PolymorphicMapType_14901| ResultMask@@14) o_2@@158 f_4@@158) (+ (select (|PolymorphicMapType_14901_7929_7680#PolymorphicMapType_14901| SummandMask1@@14) o_2@@158 f_4@@158) (select (|PolymorphicMapType_14901_7929_7680#PolymorphicMapType_14901| SummandMask2@@14) o_2@@158 f_4@@158))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_14901_7929_7680#PolymorphicMapType_14901| ResultMask@@14) o_2@@158 f_4@@158))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_14901_7929_7680#PolymorphicMapType_14901| SummandMask1@@14) o_2@@158 f_4@@158))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_14901_7929_7680#PolymorphicMapType_14901| SummandMask2@@14) o_2@@158 f_4@@158))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_14901) (SummandMask1@@15 T@PolymorphicMapType_14901) (SummandMask2@@15 T@PolymorphicMapType_14901) (o_2@@159 T@Ref) (f_4@@159 T@Field_7929_1291) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_14901_7929_1231#PolymorphicMapType_14901| ResultMask@@15) o_2@@159 f_4@@159) (+ (select (|PolymorphicMapType_14901_7929_1231#PolymorphicMapType_14901| SummandMask1@@15) o_2@@159 f_4@@159) (select (|PolymorphicMapType_14901_7929_1231#PolymorphicMapType_14901| SummandMask2@@15) o_2@@159 f_4@@159))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_14901_7929_1231#PolymorphicMapType_14901| ResultMask@@15) o_2@@159 f_4@@159))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_14901_7929_1231#PolymorphicMapType_14901| SummandMask1@@15) o_2@@159 f_4@@159))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_14901_7929_1231#PolymorphicMapType_14901| SummandMask2@@15) o_2@@159 f_4@@159))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_14901) (SummandMask1@@16 T@PolymorphicMapType_14901) (SummandMask2@@16 T@PolymorphicMapType_14901) (o_2@@160 T@Ref) (f_4@@160 T@Field_33893_33894) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_14901_7929_7930#PolymorphicMapType_14901| ResultMask@@16) o_2@@160 f_4@@160) (+ (select (|PolymorphicMapType_14901_7929_7930#PolymorphicMapType_14901| SummandMask1@@16) o_2@@160 f_4@@160) (select (|PolymorphicMapType_14901_7929_7930#PolymorphicMapType_14901| SummandMask2@@16) o_2@@160 f_4@@160))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_14901_7929_7930#PolymorphicMapType_14901| ResultMask@@16) o_2@@160 f_4@@160))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_14901_7929_7930#PolymorphicMapType_14901| SummandMask1@@16) o_2@@160 f_4@@160))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_14901_7929_7930#PolymorphicMapType_14901| SummandMask2@@16) o_2@@160 f_4@@160))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_14901) (SummandMask1@@17 T@PolymorphicMapType_14901) (SummandMask2@@17 T@PolymorphicMapType_14901) (o_2@@161 T@Ref) (f_4@@161 T@Field_28913_28918) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_14901_7904_84777#PolymorphicMapType_14901| ResultMask@@17) o_2@@161 f_4@@161) (+ (select (|PolymorphicMapType_14901_7904_84777#PolymorphicMapType_14901| SummandMask1@@17) o_2@@161 f_4@@161) (select (|PolymorphicMapType_14901_7904_84777#PolymorphicMapType_14901| SummandMask2@@17) o_2@@161 f_4@@161))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_14901_7904_84777#PolymorphicMapType_14901| ResultMask@@17) o_2@@161 f_4@@161))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_14901_7904_84777#PolymorphicMapType_14901| SummandMask1@@17) o_2@@161 f_4@@161))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_14901_7904_84777#PolymorphicMapType_14901| SummandMask2@@17) o_2@@161 f_4@@161))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_14901) (SummandMask1@@18 T@PolymorphicMapType_14901) (SummandMask2@@18 T@PolymorphicMapType_14901) (o_2@@162 T@Ref) (f_4@@162 T@Field_7904_645) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_14901_7904_645#PolymorphicMapType_14901| ResultMask@@18) o_2@@162 f_4@@162) (+ (select (|PolymorphicMapType_14901_7904_645#PolymorphicMapType_14901| SummandMask1@@18) o_2@@162 f_4@@162) (select (|PolymorphicMapType_14901_7904_645#PolymorphicMapType_14901| SummandMask2@@18) o_2@@162 f_4@@162))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_14901_7904_645#PolymorphicMapType_14901| ResultMask@@18) o_2@@162 f_4@@162))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_14901_7904_645#PolymorphicMapType_14901| SummandMask1@@18) o_2@@162 f_4@@162))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_14901_7904_645#PolymorphicMapType_14901| SummandMask2@@18) o_2@@162 f_4@@162))
)))
(assert (forall ((ResultMask@@19 T@PolymorphicMapType_14901) (SummandMask1@@19 T@PolymorphicMapType_14901) (SummandMask2@@19 T@PolymorphicMapType_14901) (o_2@@163 T@Ref) (f_4@@163 T@Field_7904_53) ) (!  (=> (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (= (select (|PolymorphicMapType_14901_7904_53#PolymorphicMapType_14901| ResultMask@@19) o_2@@163 f_4@@163) (+ (select (|PolymorphicMapType_14901_7904_53#PolymorphicMapType_14901| SummandMask1@@19) o_2@@163 f_4@@163) (select (|PolymorphicMapType_14901_7904_53#PolymorphicMapType_14901| SummandMask2@@19) o_2@@163 f_4@@163))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_14901_7904_53#PolymorphicMapType_14901| ResultMask@@19) o_2@@163 f_4@@163))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_14901_7904_53#PolymorphicMapType_14901| SummandMask1@@19) o_2@@163 f_4@@163))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_14901_7904_53#PolymorphicMapType_14901| SummandMask2@@19) o_2@@163 f_4@@163))
)))
(assert (forall ((ResultMask@@20 T@PolymorphicMapType_14901) (SummandMask1@@20 T@PolymorphicMapType_14901) (SummandMask2@@20 T@PolymorphicMapType_14901) (o_2@@164 T@Ref) (f_4@@164 T@Field_7904_7680) ) (!  (=> (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (= (select (|PolymorphicMapType_14901_7904_7680#PolymorphicMapType_14901| ResultMask@@20) o_2@@164 f_4@@164) (+ (select (|PolymorphicMapType_14901_7904_7680#PolymorphicMapType_14901| SummandMask1@@20) o_2@@164 f_4@@164) (select (|PolymorphicMapType_14901_7904_7680#PolymorphicMapType_14901| SummandMask2@@20) o_2@@164 f_4@@164))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_14901_7904_7680#PolymorphicMapType_14901| ResultMask@@20) o_2@@164 f_4@@164))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_14901_7904_7680#PolymorphicMapType_14901| SummandMask1@@20) o_2@@164 f_4@@164))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_14901_7904_7680#PolymorphicMapType_14901| SummandMask2@@20) o_2@@164 f_4@@164))
)))
(assert (forall ((ResultMask@@21 T@PolymorphicMapType_14901) (SummandMask1@@21 T@PolymorphicMapType_14901) (SummandMask2@@21 T@PolymorphicMapType_14901) (o_2@@165 T@Ref) (f_4@@165 T@Field_7904_1291) ) (!  (=> (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (= (select (|PolymorphicMapType_14901_7904_1231#PolymorphicMapType_14901| ResultMask@@21) o_2@@165 f_4@@165) (+ (select (|PolymorphicMapType_14901_7904_1231#PolymorphicMapType_14901| SummandMask1@@21) o_2@@165 f_4@@165) (select (|PolymorphicMapType_14901_7904_1231#PolymorphicMapType_14901| SummandMask2@@21) o_2@@165 f_4@@165))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_14901_7904_1231#PolymorphicMapType_14901| ResultMask@@21) o_2@@165 f_4@@165))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_14901_7904_1231#PolymorphicMapType_14901| SummandMask1@@21) o_2@@165 f_4@@165))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_14901_7904_1231#PolymorphicMapType_14901| SummandMask2@@21) o_2@@165 f_4@@165))
)))
(assert (forall ((ResultMask@@22 T@PolymorphicMapType_14901) (SummandMask1@@22 T@PolymorphicMapType_14901) (SummandMask2@@22 T@PolymorphicMapType_14901) (o_2@@166 T@Ref) (f_4@@166 T@Field_27622_27623) ) (!  (=> (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (= (select (|PolymorphicMapType_14901_7904_7905#PolymorphicMapType_14901| ResultMask@@22) o_2@@166 f_4@@166) (+ (select (|PolymorphicMapType_14901_7904_7905#PolymorphicMapType_14901| SummandMask1@@22) o_2@@166 f_4@@166) (select (|PolymorphicMapType_14901_7904_7905#PolymorphicMapType_14901| SummandMask2@@22) o_2@@166 f_4@@166))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_14901_7904_7905#PolymorphicMapType_14901| ResultMask@@22) o_2@@166 f_4@@166))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_14901_7904_7905#PolymorphicMapType_14901| SummandMask1@@22) o_2@@166 f_4@@166))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_14901_7904_7905#PolymorphicMapType_14901| SummandMask2@@22) o_2@@166 f_4@@166))
)))
(assert (forall ((ResultMask@@23 T@PolymorphicMapType_14901) (SummandMask1@@23 T@PolymorphicMapType_14901) (SummandMask2@@23 T@PolymorphicMapType_14901) (o_2@@167 T@Ref) (f_4@@167 T@Field_7679_22170) ) (!  (=> (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (= (select (|PolymorphicMapType_14901_7677_84286#PolymorphicMapType_14901| ResultMask@@23) o_2@@167 f_4@@167) (+ (select (|PolymorphicMapType_14901_7677_84286#PolymorphicMapType_14901| SummandMask1@@23) o_2@@167 f_4@@167) (select (|PolymorphicMapType_14901_7677_84286#PolymorphicMapType_14901| SummandMask2@@23) o_2@@167 f_4@@167))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_14901_7677_84286#PolymorphicMapType_14901| ResultMask@@23) o_2@@167 f_4@@167))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_14901_7677_84286#PolymorphicMapType_14901| SummandMask1@@23) o_2@@167 f_4@@167))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_14901_7677_84286#PolymorphicMapType_14901| SummandMask2@@23) o_2@@167 f_4@@167))
)))
(assert (forall ((ResultMask@@24 T@PolymorphicMapType_14901) (SummandMask1@@24 T@PolymorphicMapType_14901) (SummandMask2@@24 T@PolymorphicMapType_14901) (o_2@@168 T@Ref) (f_4@@168 T@Field_18283_645) ) (!  (=> (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (= (select (|PolymorphicMapType_14901_7677_645#PolymorphicMapType_14901| ResultMask@@24) o_2@@168 f_4@@168) (+ (select (|PolymorphicMapType_14901_7677_645#PolymorphicMapType_14901| SummandMask1@@24) o_2@@168 f_4@@168) (select (|PolymorphicMapType_14901_7677_645#PolymorphicMapType_14901| SummandMask2@@24) o_2@@168 f_4@@168))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (select (|PolymorphicMapType_14901_7677_645#PolymorphicMapType_14901| ResultMask@@24) o_2@@168 f_4@@168))
 :pattern ( (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (select (|PolymorphicMapType_14901_7677_645#PolymorphicMapType_14901| SummandMask1@@24) o_2@@168 f_4@@168))
 :pattern ( (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (select (|PolymorphicMapType_14901_7677_645#PolymorphicMapType_14901| SummandMask2@@24) o_2@@168 f_4@@168))
)))
(assert (forall ((ResultMask@@25 T@PolymorphicMapType_14901) (SummandMask1@@25 T@PolymorphicMapType_14901) (SummandMask2@@25 T@PolymorphicMapType_14901) (o_2@@169 T@Ref) (f_4@@169 T@Field_14940_53) ) (!  (=> (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (= (select (|PolymorphicMapType_14901_7677_53#PolymorphicMapType_14901| ResultMask@@25) o_2@@169 f_4@@169) (+ (select (|PolymorphicMapType_14901_7677_53#PolymorphicMapType_14901| SummandMask1@@25) o_2@@169 f_4@@169) (select (|PolymorphicMapType_14901_7677_53#PolymorphicMapType_14901| SummandMask2@@25) o_2@@169 f_4@@169))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (select (|PolymorphicMapType_14901_7677_53#PolymorphicMapType_14901| ResultMask@@25) o_2@@169 f_4@@169))
 :pattern ( (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (select (|PolymorphicMapType_14901_7677_53#PolymorphicMapType_14901| SummandMask1@@25) o_2@@169 f_4@@169))
 :pattern ( (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (select (|PolymorphicMapType_14901_7677_53#PolymorphicMapType_14901| SummandMask2@@25) o_2@@169 f_4@@169))
)))
(assert (forall ((ResultMask@@26 T@PolymorphicMapType_14901) (SummandMask1@@26 T@PolymorphicMapType_14901) (SummandMask2@@26 T@PolymorphicMapType_14901) (o_2@@170 T@Ref) (f_4@@170 T@Field_14953_14954) ) (!  (=> (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (= (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| ResultMask@@26) o_2@@170 f_4@@170) (+ (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| SummandMask1@@26) o_2@@170 f_4@@170) (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| SummandMask2@@26) o_2@@170 f_4@@170))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| ResultMask@@26) o_2@@170 f_4@@170))
 :pattern ( (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| SummandMask1@@26) o_2@@170 f_4@@170))
 :pattern ( (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| SummandMask2@@26) o_2@@170 f_4@@170))
)))
(assert (forall ((ResultMask@@27 T@PolymorphicMapType_14901) (SummandMask1@@27 T@PolymorphicMapType_14901) (SummandMask2@@27 T@PolymorphicMapType_14901) (o_2@@171 T@Ref) (f_4@@171 T@Field_18374_1231) ) (!  (=> (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (= (select (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| ResultMask@@27) o_2@@171 f_4@@171) (+ (select (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| SummandMask1@@27) o_2@@171 f_4@@171) (select (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| SummandMask2@@27) o_2@@171 f_4@@171))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (select (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| ResultMask@@27) o_2@@171 f_4@@171))
 :pattern ( (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (select (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| SummandMask1@@27) o_2@@171 f_4@@171))
 :pattern ( (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (select (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| SummandMask2@@27) o_2@@171 f_4@@171))
)))
(assert (forall ((ResultMask@@28 T@PolymorphicMapType_14901) (SummandMask1@@28 T@PolymorphicMapType_14901) (SummandMask2@@28 T@PolymorphicMapType_14901) (o_2@@172 T@Ref) (f_4@@172 T@Field_7679_7856) ) (!  (=> (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (= (select (|PolymorphicMapType_14901_7677_7856#PolymorphicMapType_14901| ResultMask@@28) o_2@@172 f_4@@172) (+ (select (|PolymorphicMapType_14901_7677_7856#PolymorphicMapType_14901| SummandMask1@@28) o_2@@172 f_4@@172) (select (|PolymorphicMapType_14901_7677_7856#PolymorphicMapType_14901| SummandMask2@@28) o_2@@172 f_4@@172))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (select (|PolymorphicMapType_14901_7677_7856#PolymorphicMapType_14901| ResultMask@@28) o_2@@172 f_4@@172))
 :pattern ( (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (select (|PolymorphicMapType_14901_7677_7856#PolymorphicMapType_14901| SummandMask1@@28) o_2@@172 f_4@@172))
 :pattern ( (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (select (|PolymorphicMapType_14901_7677_7856#PolymorphicMapType_14901| SummandMask2@@28) o_2@@172 f_4@@172))
)))
(assert (forall ((ResultMask@@29 T@PolymorphicMapType_14901) (SummandMask1@@29 T@PolymorphicMapType_14901) (SummandMask2@@29 T@PolymorphicMapType_14901) (o_2@@173 T@Ref) (f_4@@173 T@Field_22165_22170) ) (!  (=> (sumMask ResultMask@@29 SummandMask1@@29 SummandMask2@@29) (= (select (|PolymorphicMapType_14901_7855_83807#PolymorphicMapType_14901| ResultMask@@29) o_2@@173 f_4@@173) (+ (select (|PolymorphicMapType_14901_7855_83807#PolymorphicMapType_14901| SummandMask1@@29) o_2@@173 f_4@@173) (select (|PolymorphicMapType_14901_7855_83807#PolymorphicMapType_14901| SummandMask2@@29) o_2@@173 f_4@@173))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@29 SummandMask1@@29 SummandMask2@@29) (select (|PolymorphicMapType_14901_7855_83807#PolymorphicMapType_14901| ResultMask@@29) o_2@@173 f_4@@173))
 :pattern ( (sumMask ResultMask@@29 SummandMask1@@29 SummandMask2@@29) (select (|PolymorphicMapType_14901_7855_83807#PolymorphicMapType_14901| SummandMask1@@29) o_2@@173 f_4@@173))
 :pattern ( (sumMask ResultMask@@29 SummandMask1@@29 SummandMask2@@29) (select (|PolymorphicMapType_14901_7855_83807#PolymorphicMapType_14901| SummandMask2@@29) o_2@@173 f_4@@173))
)))
(assert (forall ((ResultMask@@30 T@PolymorphicMapType_14901) (SummandMask1@@30 T@PolymorphicMapType_14901) (SummandMask2@@30 T@PolymorphicMapType_14901) (o_2@@174 T@Ref) (f_4@@174 T@Field_7855_645) ) (!  (=> (sumMask ResultMask@@30 SummandMask1@@30 SummandMask2@@30) (= (select (|PolymorphicMapType_14901_7855_645#PolymorphicMapType_14901| ResultMask@@30) o_2@@174 f_4@@174) (+ (select (|PolymorphicMapType_14901_7855_645#PolymorphicMapType_14901| SummandMask1@@30) o_2@@174 f_4@@174) (select (|PolymorphicMapType_14901_7855_645#PolymorphicMapType_14901| SummandMask2@@30) o_2@@174 f_4@@174))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@30 SummandMask1@@30 SummandMask2@@30) (select (|PolymorphicMapType_14901_7855_645#PolymorphicMapType_14901| ResultMask@@30) o_2@@174 f_4@@174))
 :pattern ( (sumMask ResultMask@@30 SummandMask1@@30 SummandMask2@@30) (select (|PolymorphicMapType_14901_7855_645#PolymorphicMapType_14901| SummandMask1@@30) o_2@@174 f_4@@174))
 :pattern ( (sumMask ResultMask@@30 SummandMask1@@30 SummandMask2@@30) (select (|PolymorphicMapType_14901_7855_645#PolymorphicMapType_14901| SummandMask2@@30) o_2@@174 f_4@@174))
)))
(assert (forall ((ResultMask@@31 T@PolymorphicMapType_14901) (SummandMask1@@31 T@PolymorphicMapType_14901) (SummandMask2@@31 T@PolymorphicMapType_14901) (o_2@@175 T@Ref) (f_4@@175 T@Field_7855_53) ) (!  (=> (sumMask ResultMask@@31 SummandMask1@@31 SummandMask2@@31) (= (select (|PolymorphicMapType_14901_7855_53#PolymorphicMapType_14901| ResultMask@@31) o_2@@175 f_4@@175) (+ (select (|PolymorphicMapType_14901_7855_53#PolymorphicMapType_14901| SummandMask1@@31) o_2@@175 f_4@@175) (select (|PolymorphicMapType_14901_7855_53#PolymorphicMapType_14901| SummandMask2@@31) o_2@@175 f_4@@175))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@31 SummandMask1@@31 SummandMask2@@31) (select (|PolymorphicMapType_14901_7855_53#PolymorphicMapType_14901| ResultMask@@31) o_2@@175 f_4@@175))
 :pattern ( (sumMask ResultMask@@31 SummandMask1@@31 SummandMask2@@31) (select (|PolymorphicMapType_14901_7855_53#PolymorphicMapType_14901| SummandMask1@@31) o_2@@175 f_4@@175))
 :pattern ( (sumMask ResultMask@@31 SummandMask1@@31 SummandMask2@@31) (select (|PolymorphicMapType_14901_7855_53#PolymorphicMapType_14901| SummandMask2@@31) o_2@@175 f_4@@175))
)))
(assert (forall ((ResultMask@@32 T@PolymorphicMapType_14901) (SummandMask1@@32 T@PolymorphicMapType_14901) (SummandMask2@@32 T@PolymorphicMapType_14901) (o_2@@176 T@Ref) (f_4@@176 T@Field_7855_7680) ) (!  (=> (sumMask ResultMask@@32 SummandMask1@@32 SummandMask2@@32) (= (select (|PolymorphicMapType_14901_7855_7680#PolymorphicMapType_14901| ResultMask@@32) o_2@@176 f_4@@176) (+ (select (|PolymorphicMapType_14901_7855_7680#PolymorphicMapType_14901| SummandMask1@@32) o_2@@176 f_4@@176) (select (|PolymorphicMapType_14901_7855_7680#PolymorphicMapType_14901| SummandMask2@@32) o_2@@176 f_4@@176))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@32 SummandMask1@@32 SummandMask2@@32) (select (|PolymorphicMapType_14901_7855_7680#PolymorphicMapType_14901| ResultMask@@32) o_2@@176 f_4@@176))
 :pattern ( (sumMask ResultMask@@32 SummandMask1@@32 SummandMask2@@32) (select (|PolymorphicMapType_14901_7855_7680#PolymorphicMapType_14901| SummandMask1@@32) o_2@@176 f_4@@176))
 :pattern ( (sumMask ResultMask@@32 SummandMask1@@32 SummandMask2@@32) (select (|PolymorphicMapType_14901_7855_7680#PolymorphicMapType_14901| SummandMask2@@32) o_2@@176 f_4@@176))
)))
(assert (forall ((ResultMask@@33 T@PolymorphicMapType_14901) (SummandMask1@@33 T@PolymorphicMapType_14901) (SummandMask2@@33 T@PolymorphicMapType_14901) (o_2@@177 T@Ref) (f_4@@177 T@Field_7855_1291) ) (!  (=> (sumMask ResultMask@@33 SummandMask1@@33 SummandMask2@@33) (= (select (|PolymorphicMapType_14901_7855_1231#PolymorphicMapType_14901| ResultMask@@33) o_2@@177 f_4@@177) (+ (select (|PolymorphicMapType_14901_7855_1231#PolymorphicMapType_14901| SummandMask1@@33) o_2@@177 f_4@@177) (select (|PolymorphicMapType_14901_7855_1231#PolymorphicMapType_14901| SummandMask2@@33) o_2@@177 f_4@@177))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@33 SummandMask1@@33 SummandMask2@@33) (select (|PolymorphicMapType_14901_7855_1231#PolymorphicMapType_14901| ResultMask@@33) o_2@@177 f_4@@177))
 :pattern ( (sumMask ResultMask@@33 SummandMask1@@33 SummandMask2@@33) (select (|PolymorphicMapType_14901_7855_1231#PolymorphicMapType_14901| SummandMask1@@33) o_2@@177 f_4@@177))
 :pattern ( (sumMask ResultMask@@33 SummandMask1@@33 SummandMask2@@33) (select (|PolymorphicMapType_14901_7855_1231#PolymorphicMapType_14901| SummandMask2@@33) o_2@@177 f_4@@177))
)))
(assert (forall ((ResultMask@@34 T@PolymorphicMapType_14901) (SummandMask1@@34 T@PolymorphicMapType_14901) (SummandMask2@@34 T@PolymorphicMapType_14901) (o_2@@178 T@Ref) (f_4@@178 T@Field_19474_19475) ) (!  (=> (sumMask ResultMask@@34 SummandMask1@@34 SummandMask2@@34) (= (select (|PolymorphicMapType_14901_7855_7856#PolymorphicMapType_14901| ResultMask@@34) o_2@@178 f_4@@178) (+ (select (|PolymorphicMapType_14901_7855_7856#PolymorphicMapType_14901| SummandMask1@@34) o_2@@178 f_4@@178) (select (|PolymorphicMapType_14901_7855_7856#PolymorphicMapType_14901| SummandMask2@@34) o_2@@178 f_4@@178))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@34 SummandMask1@@34 SummandMask2@@34) (select (|PolymorphicMapType_14901_7855_7856#PolymorphicMapType_14901| ResultMask@@34) o_2@@178 f_4@@178))
 :pattern ( (sumMask ResultMask@@34 SummandMask1@@34 SummandMask2@@34) (select (|PolymorphicMapType_14901_7855_7856#PolymorphicMapType_14901| SummandMask1@@34) o_2@@178 f_4@@178))
 :pattern ( (sumMask ResultMask@@34 SummandMask1@@34 SummandMask2@@34) (select (|PolymorphicMapType_14901_7855_7856#PolymorphicMapType_14901| SummandMask2@@34) o_2@@178 f_4@@178))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_14880) (Mask@@134 T@PolymorphicMapType_14901) (this$_2@@1 T@Ref) ) (!  (=> (and (state Heap@@73 Mask@@134) (< AssumeFunctionsAbove 0)) (=> (not (= this$_2@@1 null)) (= (Wand_readonly_for_writeonlyget_out_1$ Heap@@73 this$_2@@1) (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@73) this$_2@@1 Wand_readonly_for_writeonlyout_1$))))
 :qid |stdinbpl.412:15|
 :skolemid |28|
 :pattern ( (state Heap@@73 Mask@@134) (Wand_readonly_for_writeonlyget_out_1$ Heap@@73 this$_2@@1))
 :pattern ( (state Heap@@73 Mask@@134) (|Wand_readonly_for_writeonlyget_out_1$#triggerStateless| this$_2@@1) (|Wand_readonly_for_writeonlyvalid_wand$#trigger_7855| Heap@@73 (Wand_readonly_for_writeonlyvalid_wand$ this$_2@@1)))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_14880) (Mask@@135 T@PolymorphicMapType_14901) (this$_9@@1 T@Ref) ) (!  (=> (and (state Heap@@74 Mask@@135) (< AssumeFunctionsAbove 1)) (=> (not (= this$_9@@1 null)) (= (WandDemoget$ Heap@@74 this$_9@@1) (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@74) this$_9@@1 WandDemox$))))
 :qid |stdinbpl.536:15|
 :skolemid |32|
 :pattern ( (state Heap@@74 Mask@@135) (WandDemoget$ Heap@@74 this$_9@@1))
 :pattern ( (state Heap@@74 Mask@@135) (|WandDemoget$#triggerStateless| this$_9@@1) (|WandDemoreadonly$#trigger_7904| Heap@@74 (WandDemoreadonly$ this$_9@@1)))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_14880) (Mask@@136 T@PolymorphicMapType_14901) (this$_1@@1 T@Ref) ) (!  (=> (and (state Heap@@75 Mask@@136) (< AssumeFunctionsAbove 2)) (=> (not (= this$_1@@1 null)) (= (Wand_readonly_for_writeonlyget_in_1$ Heap@@75 this$_1@@1) (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@75) this$_1@@1 Wand_readonly_for_writeonlyin_1$))))
 :qid |stdinbpl.288:15|
 :skolemid |24|
 :pattern ( (state Heap@@75 Mask@@136) (Wand_readonly_for_writeonlyget_in_1$ Heap@@75 this$_1@@1))
 :pattern ( (state Heap@@75 Mask@@136) (|Wand_readonly_for_writeonlyget_in_1$#triggerStateless| this$_1@@1) (|Wand_readonly_for_writeonlyvalid_wand$#trigger_7855| Heap@@75 (Wand_readonly_for_writeonlyvalid_wand$ this$_1@@1)))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_14880) (Mask@@137 T@PolymorphicMapType_14901) (this$_1@@2 T@Ref) ) (!  (=> (state Heap@@76 Mask@@137) (= (|Wand_readonly_for_writeonlyget_in_1$'| Heap@@76 this$_1@@2) (|Wand_readonly_for_writeonlyget_in_1$#frame| (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@76) null (Wand_readonly_for_writeonlyvalid_wand$ this$_1@@2)) this$_1@@2)))
 :qid |stdinbpl.295:15|
 :skolemid |25|
 :pattern ( (state Heap@@76 Mask@@137) (|Wand_readonly_for_writeonlyget_in_1$'| Heap@@76 this$_1@@2))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_14880) (Mask@@138 T@PolymorphicMapType_14901) (this$_2@@2 T@Ref) ) (!  (=> (state Heap@@77 Mask@@138) (= (|Wand_readonly_for_writeonlyget_out_1$'| Heap@@77 this$_2@@2) (|Wand_readonly_for_writeonlyget_out_1$#frame| (select (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@77) null (Wand_readonly_for_writeonlyvalid_wand$ this$_2@@2)) this$_2@@2)))
 :qid |stdinbpl.419:15|
 :skolemid |29|
 :pattern ( (state Heap@@77 Mask@@138) (|Wand_readonly_for_writeonlyget_out_1$'| Heap@@77 this$_2@@2))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_14880) (Mask@@139 T@PolymorphicMapType_14901) (this$_9@@2 T@Ref) ) (!  (=> (state Heap@@78 Mask@@139) (= (|WandDemoget$'| Heap@@78 this$_9@@2) (|WandDemoget$#frame| (select (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@78) null (WandDemoreadonly$ this$_9@@2)) this$_9@@2)))
 :qid |stdinbpl.543:15|
 :skolemid |33|
 :pattern ( (state Heap@@78 Mask@@139) (|WandDemoget$'| Heap@@78 this$_9@@2))
)))
(assert (forall ((this$@@3 T@Ref) ) (! (= (getPredWandId_7831_7832 (Wand_readonly_for_writeonly$MonitorInvariant this$@@3)) 0)
 :qid |stdinbpl.625:15|
 :skolemid |36|
 :pattern ( (Wand_readonly_for_writeonly$MonitorInvariant this$@@3))
)))
(assert (forall ((this$_4@@3 T@Ref) ) (! (= (getPredWandId_7855_7856 (Wand_readonly_for_writeonlyvalid_wand$ this$_4@@3)) 1)
 :qid |stdinbpl.675:15|
 :skolemid |42|
 :pattern ( (Wand_readonly_for_writeonlyvalid_wand$ this$_4@@3))
)))
(assert (forall ((this$_6@@3 T@Ref) ) (! (= (getPredWandId_7880_7881 (WandDemo$MonitorInvariant this$_6@@3)) 2)
 :qid |stdinbpl.792:15|
 :skolemid |48|
 :pattern ( (WandDemo$MonitorInvariant this$_6@@3))
)))
(assert (forall ((this$_7@@3 T@Ref) ) (! (= (getPredWandId_7904_7905 (WandDemoreadonly$ this$_7@@3)) 3)
 :qid |stdinbpl.842:15|
 :skolemid |54|
 :pattern ( (WandDemoreadonly$ this$_7@@3))
)))
(assert (forall ((this$_8@@3 T@Ref) ) (! (= (getPredWandId_7929_7930 (WandDemowriteonly$ this$_8@@3)) 4)
 :qid |stdinbpl.899:15|
 :skolemid |60|
 :pattern ( (WandDemowriteonly$ this$_8@@3))
)))
(assert (forall ((Heap@@79 T@PolymorphicMapType_14880) (o T@Ref) (f_3 T@Field_32245_645) (v Real) ) (! (succHeap Heap@@79 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@79) (store (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@79) o f_3 v) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@79)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@79) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@79) (store (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@79) o f_3 v) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@79)))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_14880) (o@@0 T@Ref) (f_3@@0 T@Field_32258_32263) (v@@0 T@PolymorphicMapType_15429) ) (! (succHeap Heap@@80 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@80) (store (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@80) o@@0 f_3@@0 v@@0)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@80) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@80) (store (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@80) o@@0 f_3@@0 v@@0)))
)))
(assert (forall ((Heap@@81 T@PolymorphicMapType_14880) (o@@1 T@Ref) (f_3@@1 T@Field_32245_1291) (v@@1 Int) ) (! (succHeap Heap@@81 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@81) (store (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@81) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@81)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@81) (store (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@81) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@81) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@81)))
)))
(assert (forall ((Heap@@82 T@PolymorphicMapType_14880) (o@@2 T@Ref) (f_3@@2 T@Field_32245_32246) (v@@2 T@FrameType) ) (! (succHeap Heap@@82 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@82) (store (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@82) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@82)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@82) (store (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@82) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@82) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@82)))
)))
(assert (forall ((Heap@@83 T@PolymorphicMapType_14880) (o@@3 T@Ref) (f_3@@3 T@Field_32245_7680) (v@@3 T@Ref) ) (! (succHeap Heap@@83 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@83) (store (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@83) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@83)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@83) (store (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@83) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@83) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@83)))
)))
(assert (forall ((Heap@@84 T@PolymorphicMapType_14880) (o@@4 T@Ref) (f_3@@4 T@Field_32245_53) (v@@4 Bool) ) (! (succHeap Heap@@84 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@84) (store (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@84) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@84)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@84) (store (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@84) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@84) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@84)))
)))
(assert (forall ((Heap@@85 T@PolymorphicMapType_14880) (o@@5 T@Ref) (f_3@@5 T@Field_29221_645) (v@@5 Real) ) (! (succHeap Heap@@85 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@85) (store (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@85) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@85)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@85) (store (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@85) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@85) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@85)))
)))
(assert (forall ((Heap@@86 T@PolymorphicMapType_14880) (o@@6 T@Ref) (f_3@@6 T@Field_29234_29239) (v@@6 T@PolymorphicMapType_15429) ) (! (succHeap Heap@@86 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@86) (store (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@86) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@86)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@86) (store (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@86) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@86) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@86)))
)))
(assert (forall ((Heap@@87 T@PolymorphicMapType_14880) (o@@7 T@Ref) (f_3@@7 T@Field_29221_1291) (v@@7 Int) ) (! (succHeap Heap@@87 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@87) (store (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@87) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@87)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@87) (store (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@87) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@87) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@87)))
)))
(assert (forall ((Heap@@88 T@PolymorphicMapType_14880) (o@@8 T@Ref) (f_3@@8 T@Field_29221_29222) (v@@8 T@FrameType) ) (! (succHeap Heap@@88 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@88) (store (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@88) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@88)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@88) (store (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@88) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@88) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@88)))
)))
(assert (forall ((Heap@@89 T@PolymorphicMapType_14880) (o@@9 T@Ref) (f_3@@9 T@Field_29221_7680) (v@@9 T@Ref) ) (! (succHeap Heap@@89 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@89) (store (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@89) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@89)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@89) (store (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@89) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@89) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@89)))
)))
(assert (forall ((Heap@@90 T@PolymorphicMapType_14880) (o@@10 T@Ref) (f_3@@10 T@Field_29221_53) (v@@10 Bool) ) (! (succHeap Heap@@90 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@90) (store (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@90) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@90)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@90) (store (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@90) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@90) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@90)))
)))
(assert (forall ((Heap@@91 T@PolymorphicMapType_14880) (o@@11 T@Ref) (f_3@@11 T@Field_7929_645) (v@@11 Real) ) (! (succHeap Heap@@91 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@91) (store (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@91) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@91)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@91) (store (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@91) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@91) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@91)))
)))
(assert (forall ((Heap@@92 T@PolymorphicMapType_14880) (o@@12 T@Ref) (f_3@@12 T@Field_33906_33911) (v@@12 T@PolymorphicMapType_15429) ) (! (succHeap Heap@@92 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@92) (store (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@92) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@92)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@92) (store (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@92) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@92) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@92)))
)))
(assert (forall ((Heap@@93 T@PolymorphicMapType_14880) (o@@13 T@Ref) (f_3@@13 T@Field_7929_1291) (v@@13 Int) ) (! (succHeap Heap@@93 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@93) (store (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@93) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@93)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@93) (store (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@93) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@93) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@93)))
)))
(assert (forall ((Heap@@94 T@PolymorphicMapType_14880) (o@@14 T@Ref) (f_3@@14 T@Field_33893_33894) (v@@14 T@FrameType) ) (! (succHeap Heap@@94 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@94) (store (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@94) o@@14 f_3@@14 v@@14) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@94)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@94) (store (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@94) o@@14 f_3@@14 v@@14) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@94) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@94)))
)))
(assert (forall ((Heap@@95 T@PolymorphicMapType_14880) (o@@15 T@Ref) (f_3@@15 T@Field_7929_7680) (v@@15 T@Ref) ) (! (succHeap Heap@@95 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@95) (store (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@95) o@@15 f_3@@15 v@@15) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@95)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@95) (store (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@95) o@@15 f_3@@15 v@@15) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@95) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@95)))
)))
(assert (forall ((Heap@@96 T@PolymorphicMapType_14880) (o@@16 T@Ref) (f_3@@16 T@Field_7929_53) (v@@16 Bool) ) (! (succHeap Heap@@96 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@96) (store (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@96) o@@16 f_3@@16 v@@16) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@96)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@96) (store (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@96) o@@16 f_3@@16 v@@16) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@96) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@96)))
)))
(assert (forall ((Heap@@97 T@PolymorphicMapType_14880) (o@@17 T@Ref) (f_3@@17 T@Field_7904_645) (v@@17 Real) ) (! (succHeap Heap@@97 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@97) (store (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@97) o@@17 f_3@@17 v@@17) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@97)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@97) (store (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@97) o@@17 f_3@@17 v@@17) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@97) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@97)))
)))
(assert (forall ((Heap@@98 T@PolymorphicMapType_14880) (o@@18 T@Ref) (f_3@@18 T@Field_28913_28918) (v@@18 T@PolymorphicMapType_15429) ) (! (succHeap Heap@@98 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@98) (store (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@98) o@@18 f_3@@18 v@@18) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@98)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@98) (store (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@98) o@@18 f_3@@18 v@@18) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@98) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@98)))
)))
(assert (forall ((Heap@@99 T@PolymorphicMapType_14880) (o@@19 T@Ref) (f_3@@19 T@Field_7904_1291) (v@@19 Int) ) (! (succHeap Heap@@99 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@99) (store (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@99) o@@19 f_3@@19 v@@19) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@99)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@99) (store (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@99) o@@19 f_3@@19 v@@19) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@99) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@99)))
)))
(assert (forall ((Heap@@100 T@PolymorphicMapType_14880) (o@@20 T@Ref) (f_3@@20 T@Field_27622_27623) (v@@20 T@FrameType) ) (! (succHeap Heap@@100 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@100) (store (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@100) o@@20 f_3@@20 v@@20) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@100)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@100) (store (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@100) o@@20 f_3@@20 v@@20) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@100) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@100)))
)))
(assert (forall ((Heap@@101 T@PolymorphicMapType_14880) (o@@21 T@Ref) (f_3@@21 T@Field_7904_7680) (v@@21 T@Ref) ) (! (succHeap Heap@@101 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@101) (store (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@101) o@@21 f_3@@21 v@@21) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@101)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@101) (store (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@101) o@@21 f_3@@21 v@@21) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@101) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@101)))
)))
(assert (forall ((Heap@@102 T@PolymorphicMapType_14880) (o@@22 T@Ref) (f_3@@22 T@Field_7904_53) (v@@22 Bool) ) (! (succHeap Heap@@102 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@102) (store (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@102) o@@22 f_3@@22 v@@22) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@102)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@102) (store (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@102) o@@22 f_3@@22 v@@22) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@102) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@102)))
)))
(assert (forall ((Heap@@103 T@PolymorphicMapType_14880) (o@@23 T@Ref) (f_3@@23 T@Field_7855_645) (v@@23 Real) ) (! (succHeap Heap@@103 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@103) (store (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@103) o@@23 f_3@@23 v@@23) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@103)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@103) (store (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@103) o@@23 f_3@@23 v@@23) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@103) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@103)))
)))
(assert (forall ((Heap@@104 T@PolymorphicMapType_14880) (o@@24 T@Ref) (f_3@@24 T@Field_22165_22170) (v@@24 T@PolymorphicMapType_15429) ) (! (succHeap Heap@@104 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@104) (store (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@104) o@@24 f_3@@24 v@@24) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@104)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@104) (store (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@104) o@@24 f_3@@24 v@@24) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@104) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@104)))
)))
(assert (forall ((Heap@@105 T@PolymorphicMapType_14880) (o@@25 T@Ref) (f_3@@25 T@Field_7855_1291) (v@@25 Int) ) (! (succHeap Heap@@105 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@105) (store (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@105) o@@25 f_3@@25 v@@25) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@105)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@105) (store (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@105) o@@25 f_3@@25 v@@25) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@105) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@105)))
)))
(assert (forall ((Heap@@106 T@PolymorphicMapType_14880) (o@@26 T@Ref) (f_3@@26 T@Field_19474_19475) (v@@26 T@FrameType) ) (! (succHeap Heap@@106 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@106) (store (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@106) o@@26 f_3@@26 v@@26) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@106)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@106) (store (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@106) o@@26 f_3@@26 v@@26) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@106) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@106)))
)))
(assert (forall ((Heap@@107 T@PolymorphicMapType_14880) (o@@27 T@Ref) (f_3@@27 T@Field_7855_7680) (v@@27 T@Ref) ) (! (succHeap Heap@@107 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@107) (store (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@107) o@@27 f_3@@27 v@@27) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@107)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@107) (store (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@107) o@@27 f_3@@27 v@@27) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@107) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@107)))
)))
(assert (forall ((Heap@@108 T@PolymorphicMapType_14880) (o@@28 T@Ref) (f_3@@28 T@Field_7855_53) (v@@28 Bool) ) (! (succHeap Heap@@108 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@108) (store (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@108) o@@28 f_3@@28 v@@28) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@108)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@108) (store (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@108) o@@28 f_3@@28 v@@28) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@108) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@108)))
)))
(assert (forall ((Heap@@109 T@PolymorphicMapType_14880) (o@@29 T@Ref) (f_3@@29 T@Field_18283_645) (v@@29 Real) ) (! (succHeap Heap@@109 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@109) (store (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@109) o@@29 f_3@@29 v@@29) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@109)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@109) (store (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@109) o@@29 f_3@@29 v@@29) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@109) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@109)))
)))
(assert (forall ((Heap@@110 T@PolymorphicMapType_14880) (o@@30 T@Ref) (f_3@@30 T@Field_7679_22170) (v@@30 T@PolymorphicMapType_15429) ) (! (succHeap Heap@@110 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@110) (store (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@110) o@@30 f_3@@30 v@@30) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@110)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@110) (store (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@110) o@@30 f_3@@30 v@@30) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@110) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@110)))
)))
(assert (forall ((Heap@@111 T@PolymorphicMapType_14880) (o@@31 T@Ref) (f_3@@31 T@Field_18374_1231) (v@@31 Int) ) (! (succHeap Heap@@111 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@111) (store (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@111) o@@31 f_3@@31 v@@31) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@111)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@111) (store (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@111) o@@31 f_3@@31 v@@31) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@111) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@111)))
)))
(assert (forall ((Heap@@112 T@PolymorphicMapType_14880) (o@@32 T@Ref) (f_3@@32 T@Field_7679_7856) (v@@32 T@FrameType) ) (! (succHeap Heap@@112 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@112) (store (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@112) o@@32 f_3@@32 v@@32) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@112)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@112) (store (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@112) o@@32 f_3@@32 v@@32) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@112) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@112)))
)))
(assert (forall ((Heap@@113 T@PolymorphicMapType_14880) (o@@33 T@Ref) (f_3@@33 T@Field_14953_14954) (v@@33 T@Ref) ) (! (succHeap Heap@@113 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@113) (store (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@113) o@@33 f_3@@33 v@@33) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@113)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@113) (store (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@113) o@@33 f_3@@33 v@@33) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@113) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@113)))
)))
(assert (forall ((Heap@@114 T@PolymorphicMapType_14880) (o@@34 T@Ref) (f_3@@34 T@Field_14940_53) (v@@34 Bool) ) (! (succHeap Heap@@114 (PolymorphicMapType_14880 (store (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@114) o@@34 f_3@@34 v@@34) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@114)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14880 (store (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@114) o@@34 f_3@@34 v@@34) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@114) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@114)))
)))
(assert (forall ((this$@@4 T@Ref) ) (! (= (PredicateMaskField_7831 (Wand_readonly_for_writeonly$MonitorInvariant this$@@4)) (|Wand_readonly_for_writeonly$MonitorInvariant#sm| this$@@4))
 :qid |stdinbpl.617:15|
 :skolemid |34|
 :pattern ( (PredicateMaskField_7831 (Wand_readonly_for_writeonly$MonitorInvariant this$@@4)))
)))
(assert (forall ((this$_4@@4 T@Ref) ) (! (= (PredicateMaskField_7855 (Wand_readonly_for_writeonlyvalid_wand$ this$_4@@4)) (|Wand_readonly_for_writeonlyvalid_wand$#sm| this$_4@@4))
 :qid |stdinbpl.667:15|
 :skolemid |40|
 :pattern ( (PredicateMaskField_7855 (Wand_readonly_for_writeonlyvalid_wand$ this$_4@@4)))
)))
(assert (forall ((this$_6@@4 T@Ref) ) (! (= (PredicateMaskField_7880 (WandDemo$MonitorInvariant this$_6@@4)) (|WandDemo$MonitorInvariant#sm| this$_6@@4))
 :qid |stdinbpl.784:15|
 :skolemid |46|
 :pattern ( (PredicateMaskField_7880 (WandDemo$MonitorInvariant this$_6@@4)))
)))
(assert (forall ((this$_7@@4 T@Ref) ) (! (= (PredicateMaskField_7904 (WandDemoreadonly$ this$_7@@4)) (|WandDemoreadonly$#sm| this$_7@@4))
 :qid |stdinbpl.834:15|
 :skolemid |52|
 :pattern ( (PredicateMaskField_7904 (WandDemoreadonly$ this$_7@@4)))
)))
(assert (forall ((this$_8@@4 T@Ref) ) (! (= (PredicateMaskField_7929 (WandDemowriteonly$ this$_8@@4)) (|WandDemowriteonly$#sm| this$_8@@4))
 :qid |stdinbpl.891:15|
 :skolemid |58|
 :pattern ( (PredicateMaskField_7929 (WandDemowriteonly$ this$_8@@4)))
)))
(assert (< globalK$ FullPerm))
(assert (< NoPerm globalK$))
(assert (forall ((o@@35 T@Ref) (f T@Field_14953_14954) (Heap@@115 T@PolymorphicMapType_14880) ) (!  (=> (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@115) o@@35 $allocated) (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@115) (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@115) o@@35 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@115) o@@35 f))
)))
(assert (forall ((p@@6 T@Field_33893_33894) (v_1@@5 T@FrameType) (q T@Field_33893_33894) (w@@5 T@FrameType) (r T@Field_33893_33894) (u T@FrameType) ) (!  (=> (and (InsidePredicate_33893_33893 p@@6 v_1@@5 q w@@5) (InsidePredicate_33893_33893 q w@@5 r u)) (InsidePredicate_33893_33893 p@@6 v_1@@5 r u))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_33893 p@@6 v_1@@5 q w@@5) (InsidePredicate_33893_33893 q w@@5 r u))
)))
(assert (forall ((p@@7 T@Field_33893_33894) (v_1@@6 T@FrameType) (q@@0 T@Field_33893_33894) (w@@6 T@FrameType) (r@@0 T@Field_32245_32246) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_33893 p@@7 v_1@@6 q@@0 w@@6) (InsidePredicate_33893_32245 q@@0 w@@6 r@@0 u@@0)) (InsidePredicate_33893_32245 p@@7 v_1@@6 r@@0 u@@0))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_33893 p@@7 v_1@@6 q@@0 w@@6) (InsidePredicate_33893_32245 q@@0 w@@6 r@@0 u@@0))
)))
(assert (forall ((p@@8 T@Field_33893_33894) (v_1@@7 T@FrameType) (q@@1 T@Field_33893_33894) (w@@7 T@FrameType) (r@@1 T@Field_29221_29222) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_33893 p@@8 v_1@@7 q@@1 w@@7) (InsidePredicate_33893_29221 q@@1 w@@7 r@@1 u@@1)) (InsidePredicate_33893_29221 p@@8 v_1@@7 r@@1 u@@1))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_33893 p@@8 v_1@@7 q@@1 w@@7) (InsidePredicate_33893_29221 q@@1 w@@7 r@@1 u@@1))
)))
(assert (forall ((p@@9 T@Field_33893_33894) (v_1@@8 T@FrameType) (q@@2 T@Field_33893_33894) (w@@8 T@FrameType) (r@@2 T@Field_27622_27623) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_33893 p@@9 v_1@@8 q@@2 w@@8) (InsidePredicate_33893_27622 q@@2 w@@8 r@@2 u@@2)) (InsidePredicate_33893_27622 p@@9 v_1@@8 r@@2 u@@2))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_33893 p@@9 v_1@@8 q@@2 w@@8) (InsidePredicate_33893_27622 q@@2 w@@8 r@@2 u@@2))
)))
(assert (forall ((p@@10 T@Field_33893_33894) (v_1@@9 T@FrameType) (q@@3 T@Field_33893_33894) (w@@9 T@FrameType) (r@@3 T@Field_19474_19475) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_33893 p@@10 v_1@@9 q@@3 w@@9) (InsidePredicate_33893_19474 q@@3 w@@9 r@@3 u@@3)) (InsidePredicate_33893_19474 p@@10 v_1@@9 r@@3 u@@3))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_33893 p@@10 v_1@@9 q@@3 w@@9) (InsidePredicate_33893_19474 q@@3 w@@9 r@@3 u@@3))
)))
(assert (forall ((p@@11 T@Field_33893_33894) (v_1@@10 T@FrameType) (q@@4 T@Field_33893_33894) (w@@10 T@FrameType) (r@@4 T@Field_7679_7856) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_33893 p@@11 v_1@@10 q@@4 w@@10) (InsidePredicate_33893_14940 q@@4 w@@10 r@@4 u@@4)) (InsidePredicate_33893_14940 p@@11 v_1@@10 r@@4 u@@4))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_33893 p@@11 v_1@@10 q@@4 w@@10) (InsidePredicate_33893_14940 q@@4 w@@10 r@@4 u@@4))
)))
(assert (forall ((p@@12 T@Field_33893_33894) (v_1@@11 T@FrameType) (q@@5 T@Field_32245_32246) (w@@11 T@FrameType) (r@@5 T@Field_33893_33894) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_32245 p@@12 v_1@@11 q@@5 w@@11) (InsidePredicate_32245_33893 q@@5 w@@11 r@@5 u@@5)) (InsidePredicate_33893_33893 p@@12 v_1@@11 r@@5 u@@5))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_32245 p@@12 v_1@@11 q@@5 w@@11) (InsidePredicate_32245_33893 q@@5 w@@11 r@@5 u@@5))
)))
(assert (forall ((p@@13 T@Field_33893_33894) (v_1@@12 T@FrameType) (q@@6 T@Field_32245_32246) (w@@12 T@FrameType) (r@@6 T@Field_32245_32246) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_32245 p@@13 v_1@@12 q@@6 w@@12) (InsidePredicate_32245_32245 q@@6 w@@12 r@@6 u@@6)) (InsidePredicate_33893_32245 p@@13 v_1@@12 r@@6 u@@6))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_32245 p@@13 v_1@@12 q@@6 w@@12) (InsidePredicate_32245_32245 q@@6 w@@12 r@@6 u@@6))
)))
(assert (forall ((p@@14 T@Field_33893_33894) (v_1@@13 T@FrameType) (q@@7 T@Field_32245_32246) (w@@13 T@FrameType) (r@@7 T@Field_29221_29222) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_32245 p@@14 v_1@@13 q@@7 w@@13) (InsidePredicate_32245_29221 q@@7 w@@13 r@@7 u@@7)) (InsidePredicate_33893_29221 p@@14 v_1@@13 r@@7 u@@7))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_32245 p@@14 v_1@@13 q@@7 w@@13) (InsidePredicate_32245_29221 q@@7 w@@13 r@@7 u@@7))
)))
(assert (forall ((p@@15 T@Field_33893_33894) (v_1@@14 T@FrameType) (q@@8 T@Field_32245_32246) (w@@14 T@FrameType) (r@@8 T@Field_27622_27623) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_32245 p@@15 v_1@@14 q@@8 w@@14) (InsidePredicate_32245_27622 q@@8 w@@14 r@@8 u@@8)) (InsidePredicate_33893_27622 p@@15 v_1@@14 r@@8 u@@8))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_32245 p@@15 v_1@@14 q@@8 w@@14) (InsidePredicate_32245_27622 q@@8 w@@14 r@@8 u@@8))
)))
(assert (forall ((p@@16 T@Field_33893_33894) (v_1@@15 T@FrameType) (q@@9 T@Field_32245_32246) (w@@15 T@FrameType) (r@@9 T@Field_19474_19475) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_32245 p@@16 v_1@@15 q@@9 w@@15) (InsidePredicate_32245_19474 q@@9 w@@15 r@@9 u@@9)) (InsidePredicate_33893_19474 p@@16 v_1@@15 r@@9 u@@9))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_32245 p@@16 v_1@@15 q@@9 w@@15) (InsidePredicate_32245_19474 q@@9 w@@15 r@@9 u@@9))
)))
(assert (forall ((p@@17 T@Field_33893_33894) (v_1@@16 T@FrameType) (q@@10 T@Field_32245_32246) (w@@16 T@FrameType) (r@@10 T@Field_7679_7856) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_32245 p@@17 v_1@@16 q@@10 w@@16) (InsidePredicate_32245_14940 q@@10 w@@16 r@@10 u@@10)) (InsidePredicate_33893_14940 p@@17 v_1@@16 r@@10 u@@10))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_32245 p@@17 v_1@@16 q@@10 w@@16) (InsidePredicate_32245_14940 q@@10 w@@16 r@@10 u@@10))
)))
(assert (forall ((p@@18 T@Field_33893_33894) (v_1@@17 T@FrameType) (q@@11 T@Field_29221_29222) (w@@17 T@FrameType) (r@@11 T@Field_33893_33894) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_29221 p@@18 v_1@@17 q@@11 w@@17) (InsidePredicate_29221_33893 q@@11 w@@17 r@@11 u@@11)) (InsidePredicate_33893_33893 p@@18 v_1@@17 r@@11 u@@11))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_29221 p@@18 v_1@@17 q@@11 w@@17) (InsidePredicate_29221_33893 q@@11 w@@17 r@@11 u@@11))
)))
(assert (forall ((p@@19 T@Field_33893_33894) (v_1@@18 T@FrameType) (q@@12 T@Field_29221_29222) (w@@18 T@FrameType) (r@@12 T@Field_32245_32246) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_29221 p@@19 v_1@@18 q@@12 w@@18) (InsidePredicate_29221_32245 q@@12 w@@18 r@@12 u@@12)) (InsidePredicate_33893_32245 p@@19 v_1@@18 r@@12 u@@12))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_29221 p@@19 v_1@@18 q@@12 w@@18) (InsidePredicate_29221_32245 q@@12 w@@18 r@@12 u@@12))
)))
(assert (forall ((p@@20 T@Field_33893_33894) (v_1@@19 T@FrameType) (q@@13 T@Field_29221_29222) (w@@19 T@FrameType) (r@@13 T@Field_29221_29222) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_29221 p@@20 v_1@@19 q@@13 w@@19) (InsidePredicate_29221_29221 q@@13 w@@19 r@@13 u@@13)) (InsidePredicate_33893_29221 p@@20 v_1@@19 r@@13 u@@13))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_29221 p@@20 v_1@@19 q@@13 w@@19) (InsidePredicate_29221_29221 q@@13 w@@19 r@@13 u@@13))
)))
(assert (forall ((p@@21 T@Field_33893_33894) (v_1@@20 T@FrameType) (q@@14 T@Field_29221_29222) (w@@20 T@FrameType) (r@@14 T@Field_27622_27623) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_29221 p@@21 v_1@@20 q@@14 w@@20) (InsidePredicate_29221_27622 q@@14 w@@20 r@@14 u@@14)) (InsidePredicate_33893_27622 p@@21 v_1@@20 r@@14 u@@14))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_29221 p@@21 v_1@@20 q@@14 w@@20) (InsidePredicate_29221_27622 q@@14 w@@20 r@@14 u@@14))
)))
(assert (forall ((p@@22 T@Field_33893_33894) (v_1@@21 T@FrameType) (q@@15 T@Field_29221_29222) (w@@21 T@FrameType) (r@@15 T@Field_19474_19475) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_29221 p@@22 v_1@@21 q@@15 w@@21) (InsidePredicate_29221_19474 q@@15 w@@21 r@@15 u@@15)) (InsidePredicate_33893_19474 p@@22 v_1@@21 r@@15 u@@15))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_29221 p@@22 v_1@@21 q@@15 w@@21) (InsidePredicate_29221_19474 q@@15 w@@21 r@@15 u@@15))
)))
(assert (forall ((p@@23 T@Field_33893_33894) (v_1@@22 T@FrameType) (q@@16 T@Field_29221_29222) (w@@22 T@FrameType) (r@@16 T@Field_7679_7856) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_29221 p@@23 v_1@@22 q@@16 w@@22) (InsidePredicate_29221_14940 q@@16 w@@22 r@@16 u@@16)) (InsidePredicate_33893_14940 p@@23 v_1@@22 r@@16 u@@16))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_29221 p@@23 v_1@@22 q@@16 w@@22) (InsidePredicate_29221_14940 q@@16 w@@22 r@@16 u@@16))
)))
(assert (forall ((p@@24 T@Field_33893_33894) (v_1@@23 T@FrameType) (q@@17 T@Field_27622_27623) (w@@23 T@FrameType) (r@@17 T@Field_33893_33894) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_27622 p@@24 v_1@@23 q@@17 w@@23) (InsidePredicate_27622_33893 q@@17 w@@23 r@@17 u@@17)) (InsidePredicate_33893_33893 p@@24 v_1@@23 r@@17 u@@17))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_27622 p@@24 v_1@@23 q@@17 w@@23) (InsidePredicate_27622_33893 q@@17 w@@23 r@@17 u@@17))
)))
(assert (forall ((p@@25 T@Field_33893_33894) (v_1@@24 T@FrameType) (q@@18 T@Field_27622_27623) (w@@24 T@FrameType) (r@@18 T@Field_32245_32246) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_27622 p@@25 v_1@@24 q@@18 w@@24) (InsidePredicate_27622_32245 q@@18 w@@24 r@@18 u@@18)) (InsidePredicate_33893_32245 p@@25 v_1@@24 r@@18 u@@18))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_27622 p@@25 v_1@@24 q@@18 w@@24) (InsidePredicate_27622_32245 q@@18 w@@24 r@@18 u@@18))
)))
(assert (forall ((p@@26 T@Field_33893_33894) (v_1@@25 T@FrameType) (q@@19 T@Field_27622_27623) (w@@25 T@FrameType) (r@@19 T@Field_29221_29222) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_27622 p@@26 v_1@@25 q@@19 w@@25) (InsidePredicate_27622_29221 q@@19 w@@25 r@@19 u@@19)) (InsidePredicate_33893_29221 p@@26 v_1@@25 r@@19 u@@19))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_27622 p@@26 v_1@@25 q@@19 w@@25) (InsidePredicate_27622_29221 q@@19 w@@25 r@@19 u@@19))
)))
(assert (forall ((p@@27 T@Field_33893_33894) (v_1@@26 T@FrameType) (q@@20 T@Field_27622_27623) (w@@26 T@FrameType) (r@@20 T@Field_27622_27623) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_27622 p@@27 v_1@@26 q@@20 w@@26) (InsidePredicate_27622_27622 q@@20 w@@26 r@@20 u@@20)) (InsidePredicate_33893_27622 p@@27 v_1@@26 r@@20 u@@20))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_27622 p@@27 v_1@@26 q@@20 w@@26) (InsidePredicate_27622_27622 q@@20 w@@26 r@@20 u@@20))
)))
(assert (forall ((p@@28 T@Field_33893_33894) (v_1@@27 T@FrameType) (q@@21 T@Field_27622_27623) (w@@27 T@FrameType) (r@@21 T@Field_19474_19475) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_27622 p@@28 v_1@@27 q@@21 w@@27) (InsidePredicate_27622_19474 q@@21 w@@27 r@@21 u@@21)) (InsidePredicate_33893_19474 p@@28 v_1@@27 r@@21 u@@21))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_27622 p@@28 v_1@@27 q@@21 w@@27) (InsidePredicate_27622_19474 q@@21 w@@27 r@@21 u@@21))
)))
(assert (forall ((p@@29 T@Field_33893_33894) (v_1@@28 T@FrameType) (q@@22 T@Field_27622_27623) (w@@28 T@FrameType) (r@@22 T@Field_7679_7856) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_27622 p@@29 v_1@@28 q@@22 w@@28) (InsidePredicate_27622_14940 q@@22 w@@28 r@@22 u@@22)) (InsidePredicate_33893_14940 p@@29 v_1@@28 r@@22 u@@22))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_27622 p@@29 v_1@@28 q@@22 w@@28) (InsidePredicate_27622_14940 q@@22 w@@28 r@@22 u@@22))
)))
(assert (forall ((p@@30 T@Field_33893_33894) (v_1@@29 T@FrameType) (q@@23 T@Field_19474_19475) (w@@29 T@FrameType) (r@@23 T@Field_33893_33894) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_19474 p@@30 v_1@@29 q@@23 w@@29) (InsidePredicate_19474_33893 q@@23 w@@29 r@@23 u@@23)) (InsidePredicate_33893_33893 p@@30 v_1@@29 r@@23 u@@23))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_19474 p@@30 v_1@@29 q@@23 w@@29) (InsidePredicate_19474_33893 q@@23 w@@29 r@@23 u@@23))
)))
(assert (forall ((p@@31 T@Field_33893_33894) (v_1@@30 T@FrameType) (q@@24 T@Field_19474_19475) (w@@30 T@FrameType) (r@@24 T@Field_32245_32246) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_19474 p@@31 v_1@@30 q@@24 w@@30) (InsidePredicate_19474_32245 q@@24 w@@30 r@@24 u@@24)) (InsidePredicate_33893_32245 p@@31 v_1@@30 r@@24 u@@24))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_19474 p@@31 v_1@@30 q@@24 w@@30) (InsidePredicate_19474_32245 q@@24 w@@30 r@@24 u@@24))
)))
(assert (forall ((p@@32 T@Field_33893_33894) (v_1@@31 T@FrameType) (q@@25 T@Field_19474_19475) (w@@31 T@FrameType) (r@@25 T@Field_29221_29222) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_19474 p@@32 v_1@@31 q@@25 w@@31) (InsidePredicate_19474_29221 q@@25 w@@31 r@@25 u@@25)) (InsidePredicate_33893_29221 p@@32 v_1@@31 r@@25 u@@25))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_19474 p@@32 v_1@@31 q@@25 w@@31) (InsidePredicate_19474_29221 q@@25 w@@31 r@@25 u@@25))
)))
(assert (forall ((p@@33 T@Field_33893_33894) (v_1@@32 T@FrameType) (q@@26 T@Field_19474_19475) (w@@32 T@FrameType) (r@@26 T@Field_27622_27623) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_19474 p@@33 v_1@@32 q@@26 w@@32) (InsidePredicate_19474_27622 q@@26 w@@32 r@@26 u@@26)) (InsidePredicate_33893_27622 p@@33 v_1@@32 r@@26 u@@26))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_19474 p@@33 v_1@@32 q@@26 w@@32) (InsidePredicate_19474_27622 q@@26 w@@32 r@@26 u@@26))
)))
(assert (forall ((p@@34 T@Field_33893_33894) (v_1@@33 T@FrameType) (q@@27 T@Field_19474_19475) (w@@33 T@FrameType) (r@@27 T@Field_19474_19475) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_19474 p@@34 v_1@@33 q@@27 w@@33) (InsidePredicate_19474_19474 q@@27 w@@33 r@@27 u@@27)) (InsidePredicate_33893_19474 p@@34 v_1@@33 r@@27 u@@27))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_19474 p@@34 v_1@@33 q@@27 w@@33) (InsidePredicate_19474_19474 q@@27 w@@33 r@@27 u@@27))
)))
(assert (forall ((p@@35 T@Field_33893_33894) (v_1@@34 T@FrameType) (q@@28 T@Field_19474_19475) (w@@34 T@FrameType) (r@@28 T@Field_7679_7856) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_19474 p@@35 v_1@@34 q@@28 w@@34) (InsidePredicate_19474_14940 q@@28 w@@34 r@@28 u@@28)) (InsidePredicate_33893_14940 p@@35 v_1@@34 r@@28 u@@28))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_19474 p@@35 v_1@@34 q@@28 w@@34) (InsidePredicate_19474_14940 q@@28 w@@34 r@@28 u@@28))
)))
(assert (forall ((p@@36 T@Field_33893_33894) (v_1@@35 T@FrameType) (q@@29 T@Field_7679_7856) (w@@35 T@FrameType) (r@@29 T@Field_33893_33894) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_14940 p@@36 v_1@@35 q@@29 w@@35) (InsidePredicate_14940_33893 q@@29 w@@35 r@@29 u@@29)) (InsidePredicate_33893_33893 p@@36 v_1@@35 r@@29 u@@29))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_14940 p@@36 v_1@@35 q@@29 w@@35) (InsidePredicate_14940_33893 q@@29 w@@35 r@@29 u@@29))
)))
(assert (forall ((p@@37 T@Field_33893_33894) (v_1@@36 T@FrameType) (q@@30 T@Field_7679_7856) (w@@36 T@FrameType) (r@@30 T@Field_32245_32246) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_14940 p@@37 v_1@@36 q@@30 w@@36) (InsidePredicate_14940_32245 q@@30 w@@36 r@@30 u@@30)) (InsidePredicate_33893_32245 p@@37 v_1@@36 r@@30 u@@30))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_14940 p@@37 v_1@@36 q@@30 w@@36) (InsidePredicate_14940_32245 q@@30 w@@36 r@@30 u@@30))
)))
(assert (forall ((p@@38 T@Field_33893_33894) (v_1@@37 T@FrameType) (q@@31 T@Field_7679_7856) (w@@37 T@FrameType) (r@@31 T@Field_29221_29222) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_14940 p@@38 v_1@@37 q@@31 w@@37) (InsidePredicate_14940_29221 q@@31 w@@37 r@@31 u@@31)) (InsidePredicate_33893_29221 p@@38 v_1@@37 r@@31 u@@31))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_14940 p@@38 v_1@@37 q@@31 w@@37) (InsidePredicate_14940_29221 q@@31 w@@37 r@@31 u@@31))
)))
(assert (forall ((p@@39 T@Field_33893_33894) (v_1@@38 T@FrameType) (q@@32 T@Field_7679_7856) (w@@38 T@FrameType) (r@@32 T@Field_27622_27623) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_14940 p@@39 v_1@@38 q@@32 w@@38) (InsidePredicate_14940_27622 q@@32 w@@38 r@@32 u@@32)) (InsidePredicate_33893_27622 p@@39 v_1@@38 r@@32 u@@32))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_14940 p@@39 v_1@@38 q@@32 w@@38) (InsidePredicate_14940_27622 q@@32 w@@38 r@@32 u@@32))
)))
(assert (forall ((p@@40 T@Field_33893_33894) (v_1@@39 T@FrameType) (q@@33 T@Field_7679_7856) (w@@39 T@FrameType) (r@@33 T@Field_19474_19475) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_14940 p@@40 v_1@@39 q@@33 w@@39) (InsidePredicate_14940_19474 q@@33 w@@39 r@@33 u@@33)) (InsidePredicate_33893_19474 p@@40 v_1@@39 r@@33 u@@33))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_14940 p@@40 v_1@@39 q@@33 w@@39) (InsidePredicate_14940_19474 q@@33 w@@39 r@@33 u@@33))
)))
(assert (forall ((p@@41 T@Field_33893_33894) (v_1@@40 T@FrameType) (q@@34 T@Field_7679_7856) (w@@40 T@FrameType) (r@@34 T@Field_7679_7856) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_33893_14940 p@@41 v_1@@40 q@@34 w@@40) (InsidePredicate_14940_14940 q@@34 w@@40 r@@34 u@@34)) (InsidePredicate_33893_14940 p@@41 v_1@@40 r@@34 u@@34))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33893_14940 p@@41 v_1@@40 q@@34 w@@40) (InsidePredicate_14940_14940 q@@34 w@@40 r@@34 u@@34))
)))
(assert (forall ((p@@42 T@Field_32245_32246) (v_1@@41 T@FrameType) (q@@35 T@Field_33893_33894) (w@@41 T@FrameType) (r@@35 T@Field_33893_33894) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_33893 p@@42 v_1@@41 q@@35 w@@41) (InsidePredicate_33893_33893 q@@35 w@@41 r@@35 u@@35)) (InsidePredicate_32245_33893 p@@42 v_1@@41 r@@35 u@@35))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_33893 p@@42 v_1@@41 q@@35 w@@41) (InsidePredicate_33893_33893 q@@35 w@@41 r@@35 u@@35))
)))
(assert (forall ((p@@43 T@Field_32245_32246) (v_1@@42 T@FrameType) (q@@36 T@Field_33893_33894) (w@@42 T@FrameType) (r@@36 T@Field_32245_32246) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_33893 p@@43 v_1@@42 q@@36 w@@42) (InsidePredicate_33893_32245 q@@36 w@@42 r@@36 u@@36)) (InsidePredicate_32245_32245 p@@43 v_1@@42 r@@36 u@@36))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_33893 p@@43 v_1@@42 q@@36 w@@42) (InsidePredicate_33893_32245 q@@36 w@@42 r@@36 u@@36))
)))
(assert (forall ((p@@44 T@Field_32245_32246) (v_1@@43 T@FrameType) (q@@37 T@Field_33893_33894) (w@@43 T@FrameType) (r@@37 T@Field_29221_29222) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_33893 p@@44 v_1@@43 q@@37 w@@43) (InsidePredicate_33893_29221 q@@37 w@@43 r@@37 u@@37)) (InsidePredicate_32245_29221 p@@44 v_1@@43 r@@37 u@@37))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_33893 p@@44 v_1@@43 q@@37 w@@43) (InsidePredicate_33893_29221 q@@37 w@@43 r@@37 u@@37))
)))
(assert (forall ((p@@45 T@Field_32245_32246) (v_1@@44 T@FrameType) (q@@38 T@Field_33893_33894) (w@@44 T@FrameType) (r@@38 T@Field_27622_27623) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_33893 p@@45 v_1@@44 q@@38 w@@44) (InsidePredicate_33893_27622 q@@38 w@@44 r@@38 u@@38)) (InsidePredicate_32245_27622 p@@45 v_1@@44 r@@38 u@@38))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_33893 p@@45 v_1@@44 q@@38 w@@44) (InsidePredicate_33893_27622 q@@38 w@@44 r@@38 u@@38))
)))
(assert (forall ((p@@46 T@Field_32245_32246) (v_1@@45 T@FrameType) (q@@39 T@Field_33893_33894) (w@@45 T@FrameType) (r@@39 T@Field_19474_19475) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_33893 p@@46 v_1@@45 q@@39 w@@45) (InsidePredicate_33893_19474 q@@39 w@@45 r@@39 u@@39)) (InsidePredicate_32245_19474 p@@46 v_1@@45 r@@39 u@@39))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_33893 p@@46 v_1@@45 q@@39 w@@45) (InsidePredicate_33893_19474 q@@39 w@@45 r@@39 u@@39))
)))
(assert (forall ((p@@47 T@Field_32245_32246) (v_1@@46 T@FrameType) (q@@40 T@Field_33893_33894) (w@@46 T@FrameType) (r@@40 T@Field_7679_7856) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_33893 p@@47 v_1@@46 q@@40 w@@46) (InsidePredicate_33893_14940 q@@40 w@@46 r@@40 u@@40)) (InsidePredicate_32245_14940 p@@47 v_1@@46 r@@40 u@@40))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_33893 p@@47 v_1@@46 q@@40 w@@46) (InsidePredicate_33893_14940 q@@40 w@@46 r@@40 u@@40))
)))
(assert (forall ((p@@48 T@Field_32245_32246) (v_1@@47 T@FrameType) (q@@41 T@Field_32245_32246) (w@@47 T@FrameType) (r@@41 T@Field_33893_33894) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_32245 p@@48 v_1@@47 q@@41 w@@47) (InsidePredicate_32245_33893 q@@41 w@@47 r@@41 u@@41)) (InsidePredicate_32245_33893 p@@48 v_1@@47 r@@41 u@@41))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_32245 p@@48 v_1@@47 q@@41 w@@47) (InsidePredicate_32245_33893 q@@41 w@@47 r@@41 u@@41))
)))
(assert (forall ((p@@49 T@Field_32245_32246) (v_1@@48 T@FrameType) (q@@42 T@Field_32245_32246) (w@@48 T@FrameType) (r@@42 T@Field_32245_32246) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_32245 p@@49 v_1@@48 q@@42 w@@48) (InsidePredicate_32245_32245 q@@42 w@@48 r@@42 u@@42)) (InsidePredicate_32245_32245 p@@49 v_1@@48 r@@42 u@@42))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_32245 p@@49 v_1@@48 q@@42 w@@48) (InsidePredicate_32245_32245 q@@42 w@@48 r@@42 u@@42))
)))
(assert (forall ((p@@50 T@Field_32245_32246) (v_1@@49 T@FrameType) (q@@43 T@Field_32245_32246) (w@@49 T@FrameType) (r@@43 T@Field_29221_29222) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_32245 p@@50 v_1@@49 q@@43 w@@49) (InsidePredicate_32245_29221 q@@43 w@@49 r@@43 u@@43)) (InsidePredicate_32245_29221 p@@50 v_1@@49 r@@43 u@@43))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_32245 p@@50 v_1@@49 q@@43 w@@49) (InsidePredicate_32245_29221 q@@43 w@@49 r@@43 u@@43))
)))
(assert (forall ((p@@51 T@Field_32245_32246) (v_1@@50 T@FrameType) (q@@44 T@Field_32245_32246) (w@@50 T@FrameType) (r@@44 T@Field_27622_27623) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_32245 p@@51 v_1@@50 q@@44 w@@50) (InsidePredicate_32245_27622 q@@44 w@@50 r@@44 u@@44)) (InsidePredicate_32245_27622 p@@51 v_1@@50 r@@44 u@@44))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_32245 p@@51 v_1@@50 q@@44 w@@50) (InsidePredicate_32245_27622 q@@44 w@@50 r@@44 u@@44))
)))
(assert (forall ((p@@52 T@Field_32245_32246) (v_1@@51 T@FrameType) (q@@45 T@Field_32245_32246) (w@@51 T@FrameType) (r@@45 T@Field_19474_19475) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_32245 p@@52 v_1@@51 q@@45 w@@51) (InsidePredicate_32245_19474 q@@45 w@@51 r@@45 u@@45)) (InsidePredicate_32245_19474 p@@52 v_1@@51 r@@45 u@@45))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_32245 p@@52 v_1@@51 q@@45 w@@51) (InsidePredicate_32245_19474 q@@45 w@@51 r@@45 u@@45))
)))
(assert (forall ((p@@53 T@Field_32245_32246) (v_1@@52 T@FrameType) (q@@46 T@Field_32245_32246) (w@@52 T@FrameType) (r@@46 T@Field_7679_7856) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_32245 p@@53 v_1@@52 q@@46 w@@52) (InsidePredicate_32245_14940 q@@46 w@@52 r@@46 u@@46)) (InsidePredicate_32245_14940 p@@53 v_1@@52 r@@46 u@@46))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_32245 p@@53 v_1@@52 q@@46 w@@52) (InsidePredicate_32245_14940 q@@46 w@@52 r@@46 u@@46))
)))
(assert (forall ((p@@54 T@Field_32245_32246) (v_1@@53 T@FrameType) (q@@47 T@Field_29221_29222) (w@@53 T@FrameType) (r@@47 T@Field_33893_33894) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_29221 p@@54 v_1@@53 q@@47 w@@53) (InsidePredicate_29221_33893 q@@47 w@@53 r@@47 u@@47)) (InsidePredicate_32245_33893 p@@54 v_1@@53 r@@47 u@@47))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_29221 p@@54 v_1@@53 q@@47 w@@53) (InsidePredicate_29221_33893 q@@47 w@@53 r@@47 u@@47))
)))
(assert (forall ((p@@55 T@Field_32245_32246) (v_1@@54 T@FrameType) (q@@48 T@Field_29221_29222) (w@@54 T@FrameType) (r@@48 T@Field_32245_32246) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_29221 p@@55 v_1@@54 q@@48 w@@54) (InsidePredicate_29221_32245 q@@48 w@@54 r@@48 u@@48)) (InsidePredicate_32245_32245 p@@55 v_1@@54 r@@48 u@@48))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_29221 p@@55 v_1@@54 q@@48 w@@54) (InsidePredicate_29221_32245 q@@48 w@@54 r@@48 u@@48))
)))
(assert (forall ((p@@56 T@Field_32245_32246) (v_1@@55 T@FrameType) (q@@49 T@Field_29221_29222) (w@@55 T@FrameType) (r@@49 T@Field_29221_29222) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_29221 p@@56 v_1@@55 q@@49 w@@55) (InsidePredicate_29221_29221 q@@49 w@@55 r@@49 u@@49)) (InsidePredicate_32245_29221 p@@56 v_1@@55 r@@49 u@@49))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_29221 p@@56 v_1@@55 q@@49 w@@55) (InsidePredicate_29221_29221 q@@49 w@@55 r@@49 u@@49))
)))
(assert (forall ((p@@57 T@Field_32245_32246) (v_1@@56 T@FrameType) (q@@50 T@Field_29221_29222) (w@@56 T@FrameType) (r@@50 T@Field_27622_27623) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_29221 p@@57 v_1@@56 q@@50 w@@56) (InsidePredicate_29221_27622 q@@50 w@@56 r@@50 u@@50)) (InsidePredicate_32245_27622 p@@57 v_1@@56 r@@50 u@@50))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_29221 p@@57 v_1@@56 q@@50 w@@56) (InsidePredicate_29221_27622 q@@50 w@@56 r@@50 u@@50))
)))
(assert (forall ((p@@58 T@Field_32245_32246) (v_1@@57 T@FrameType) (q@@51 T@Field_29221_29222) (w@@57 T@FrameType) (r@@51 T@Field_19474_19475) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_29221 p@@58 v_1@@57 q@@51 w@@57) (InsidePredicate_29221_19474 q@@51 w@@57 r@@51 u@@51)) (InsidePredicate_32245_19474 p@@58 v_1@@57 r@@51 u@@51))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_29221 p@@58 v_1@@57 q@@51 w@@57) (InsidePredicate_29221_19474 q@@51 w@@57 r@@51 u@@51))
)))
(assert (forall ((p@@59 T@Field_32245_32246) (v_1@@58 T@FrameType) (q@@52 T@Field_29221_29222) (w@@58 T@FrameType) (r@@52 T@Field_7679_7856) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_29221 p@@59 v_1@@58 q@@52 w@@58) (InsidePredicate_29221_14940 q@@52 w@@58 r@@52 u@@52)) (InsidePredicate_32245_14940 p@@59 v_1@@58 r@@52 u@@52))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_29221 p@@59 v_1@@58 q@@52 w@@58) (InsidePredicate_29221_14940 q@@52 w@@58 r@@52 u@@52))
)))
(assert (forall ((p@@60 T@Field_32245_32246) (v_1@@59 T@FrameType) (q@@53 T@Field_27622_27623) (w@@59 T@FrameType) (r@@53 T@Field_33893_33894) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_27622 p@@60 v_1@@59 q@@53 w@@59) (InsidePredicate_27622_33893 q@@53 w@@59 r@@53 u@@53)) (InsidePredicate_32245_33893 p@@60 v_1@@59 r@@53 u@@53))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_27622 p@@60 v_1@@59 q@@53 w@@59) (InsidePredicate_27622_33893 q@@53 w@@59 r@@53 u@@53))
)))
(assert (forall ((p@@61 T@Field_32245_32246) (v_1@@60 T@FrameType) (q@@54 T@Field_27622_27623) (w@@60 T@FrameType) (r@@54 T@Field_32245_32246) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_27622 p@@61 v_1@@60 q@@54 w@@60) (InsidePredicate_27622_32245 q@@54 w@@60 r@@54 u@@54)) (InsidePredicate_32245_32245 p@@61 v_1@@60 r@@54 u@@54))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_27622 p@@61 v_1@@60 q@@54 w@@60) (InsidePredicate_27622_32245 q@@54 w@@60 r@@54 u@@54))
)))
(assert (forall ((p@@62 T@Field_32245_32246) (v_1@@61 T@FrameType) (q@@55 T@Field_27622_27623) (w@@61 T@FrameType) (r@@55 T@Field_29221_29222) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_27622 p@@62 v_1@@61 q@@55 w@@61) (InsidePredicate_27622_29221 q@@55 w@@61 r@@55 u@@55)) (InsidePredicate_32245_29221 p@@62 v_1@@61 r@@55 u@@55))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_27622 p@@62 v_1@@61 q@@55 w@@61) (InsidePredicate_27622_29221 q@@55 w@@61 r@@55 u@@55))
)))
(assert (forall ((p@@63 T@Field_32245_32246) (v_1@@62 T@FrameType) (q@@56 T@Field_27622_27623) (w@@62 T@FrameType) (r@@56 T@Field_27622_27623) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_27622 p@@63 v_1@@62 q@@56 w@@62) (InsidePredicate_27622_27622 q@@56 w@@62 r@@56 u@@56)) (InsidePredicate_32245_27622 p@@63 v_1@@62 r@@56 u@@56))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_27622 p@@63 v_1@@62 q@@56 w@@62) (InsidePredicate_27622_27622 q@@56 w@@62 r@@56 u@@56))
)))
(assert (forall ((p@@64 T@Field_32245_32246) (v_1@@63 T@FrameType) (q@@57 T@Field_27622_27623) (w@@63 T@FrameType) (r@@57 T@Field_19474_19475) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_27622 p@@64 v_1@@63 q@@57 w@@63) (InsidePredicate_27622_19474 q@@57 w@@63 r@@57 u@@57)) (InsidePredicate_32245_19474 p@@64 v_1@@63 r@@57 u@@57))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_27622 p@@64 v_1@@63 q@@57 w@@63) (InsidePredicate_27622_19474 q@@57 w@@63 r@@57 u@@57))
)))
(assert (forall ((p@@65 T@Field_32245_32246) (v_1@@64 T@FrameType) (q@@58 T@Field_27622_27623) (w@@64 T@FrameType) (r@@58 T@Field_7679_7856) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_27622 p@@65 v_1@@64 q@@58 w@@64) (InsidePredicate_27622_14940 q@@58 w@@64 r@@58 u@@58)) (InsidePredicate_32245_14940 p@@65 v_1@@64 r@@58 u@@58))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_27622 p@@65 v_1@@64 q@@58 w@@64) (InsidePredicate_27622_14940 q@@58 w@@64 r@@58 u@@58))
)))
(assert (forall ((p@@66 T@Field_32245_32246) (v_1@@65 T@FrameType) (q@@59 T@Field_19474_19475) (w@@65 T@FrameType) (r@@59 T@Field_33893_33894) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_19474 p@@66 v_1@@65 q@@59 w@@65) (InsidePredicate_19474_33893 q@@59 w@@65 r@@59 u@@59)) (InsidePredicate_32245_33893 p@@66 v_1@@65 r@@59 u@@59))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_19474 p@@66 v_1@@65 q@@59 w@@65) (InsidePredicate_19474_33893 q@@59 w@@65 r@@59 u@@59))
)))
(assert (forall ((p@@67 T@Field_32245_32246) (v_1@@66 T@FrameType) (q@@60 T@Field_19474_19475) (w@@66 T@FrameType) (r@@60 T@Field_32245_32246) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_19474 p@@67 v_1@@66 q@@60 w@@66) (InsidePredicate_19474_32245 q@@60 w@@66 r@@60 u@@60)) (InsidePredicate_32245_32245 p@@67 v_1@@66 r@@60 u@@60))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_19474 p@@67 v_1@@66 q@@60 w@@66) (InsidePredicate_19474_32245 q@@60 w@@66 r@@60 u@@60))
)))
(assert (forall ((p@@68 T@Field_32245_32246) (v_1@@67 T@FrameType) (q@@61 T@Field_19474_19475) (w@@67 T@FrameType) (r@@61 T@Field_29221_29222) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_19474 p@@68 v_1@@67 q@@61 w@@67) (InsidePredicate_19474_29221 q@@61 w@@67 r@@61 u@@61)) (InsidePredicate_32245_29221 p@@68 v_1@@67 r@@61 u@@61))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_19474 p@@68 v_1@@67 q@@61 w@@67) (InsidePredicate_19474_29221 q@@61 w@@67 r@@61 u@@61))
)))
(assert (forall ((p@@69 T@Field_32245_32246) (v_1@@68 T@FrameType) (q@@62 T@Field_19474_19475) (w@@68 T@FrameType) (r@@62 T@Field_27622_27623) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_19474 p@@69 v_1@@68 q@@62 w@@68) (InsidePredicate_19474_27622 q@@62 w@@68 r@@62 u@@62)) (InsidePredicate_32245_27622 p@@69 v_1@@68 r@@62 u@@62))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_19474 p@@69 v_1@@68 q@@62 w@@68) (InsidePredicate_19474_27622 q@@62 w@@68 r@@62 u@@62))
)))
(assert (forall ((p@@70 T@Field_32245_32246) (v_1@@69 T@FrameType) (q@@63 T@Field_19474_19475) (w@@69 T@FrameType) (r@@63 T@Field_19474_19475) (u@@63 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_19474 p@@70 v_1@@69 q@@63 w@@69) (InsidePredicate_19474_19474 q@@63 w@@69 r@@63 u@@63)) (InsidePredicate_32245_19474 p@@70 v_1@@69 r@@63 u@@63))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_19474 p@@70 v_1@@69 q@@63 w@@69) (InsidePredicate_19474_19474 q@@63 w@@69 r@@63 u@@63))
)))
(assert (forall ((p@@71 T@Field_32245_32246) (v_1@@70 T@FrameType) (q@@64 T@Field_19474_19475) (w@@70 T@FrameType) (r@@64 T@Field_7679_7856) (u@@64 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_19474 p@@71 v_1@@70 q@@64 w@@70) (InsidePredicate_19474_14940 q@@64 w@@70 r@@64 u@@64)) (InsidePredicate_32245_14940 p@@71 v_1@@70 r@@64 u@@64))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_19474 p@@71 v_1@@70 q@@64 w@@70) (InsidePredicate_19474_14940 q@@64 w@@70 r@@64 u@@64))
)))
(assert (forall ((p@@72 T@Field_32245_32246) (v_1@@71 T@FrameType) (q@@65 T@Field_7679_7856) (w@@71 T@FrameType) (r@@65 T@Field_33893_33894) (u@@65 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_14940 p@@72 v_1@@71 q@@65 w@@71) (InsidePredicate_14940_33893 q@@65 w@@71 r@@65 u@@65)) (InsidePredicate_32245_33893 p@@72 v_1@@71 r@@65 u@@65))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_14940 p@@72 v_1@@71 q@@65 w@@71) (InsidePredicate_14940_33893 q@@65 w@@71 r@@65 u@@65))
)))
(assert (forall ((p@@73 T@Field_32245_32246) (v_1@@72 T@FrameType) (q@@66 T@Field_7679_7856) (w@@72 T@FrameType) (r@@66 T@Field_32245_32246) (u@@66 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_14940 p@@73 v_1@@72 q@@66 w@@72) (InsidePredicate_14940_32245 q@@66 w@@72 r@@66 u@@66)) (InsidePredicate_32245_32245 p@@73 v_1@@72 r@@66 u@@66))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_14940 p@@73 v_1@@72 q@@66 w@@72) (InsidePredicate_14940_32245 q@@66 w@@72 r@@66 u@@66))
)))
(assert (forall ((p@@74 T@Field_32245_32246) (v_1@@73 T@FrameType) (q@@67 T@Field_7679_7856) (w@@73 T@FrameType) (r@@67 T@Field_29221_29222) (u@@67 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_14940 p@@74 v_1@@73 q@@67 w@@73) (InsidePredicate_14940_29221 q@@67 w@@73 r@@67 u@@67)) (InsidePredicate_32245_29221 p@@74 v_1@@73 r@@67 u@@67))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_14940 p@@74 v_1@@73 q@@67 w@@73) (InsidePredicate_14940_29221 q@@67 w@@73 r@@67 u@@67))
)))
(assert (forall ((p@@75 T@Field_32245_32246) (v_1@@74 T@FrameType) (q@@68 T@Field_7679_7856) (w@@74 T@FrameType) (r@@68 T@Field_27622_27623) (u@@68 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_14940 p@@75 v_1@@74 q@@68 w@@74) (InsidePredicate_14940_27622 q@@68 w@@74 r@@68 u@@68)) (InsidePredicate_32245_27622 p@@75 v_1@@74 r@@68 u@@68))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_14940 p@@75 v_1@@74 q@@68 w@@74) (InsidePredicate_14940_27622 q@@68 w@@74 r@@68 u@@68))
)))
(assert (forall ((p@@76 T@Field_32245_32246) (v_1@@75 T@FrameType) (q@@69 T@Field_7679_7856) (w@@75 T@FrameType) (r@@69 T@Field_19474_19475) (u@@69 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_14940 p@@76 v_1@@75 q@@69 w@@75) (InsidePredicate_14940_19474 q@@69 w@@75 r@@69 u@@69)) (InsidePredicate_32245_19474 p@@76 v_1@@75 r@@69 u@@69))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_14940 p@@76 v_1@@75 q@@69 w@@75) (InsidePredicate_14940_19474 q@@69 w@@75 r@@69 u@@69))
)))
(assert (forall ((p@@77 T@Field_32245_32246) (v_1@@76 T@FrameType) (q@@70 T@Field_7679_7856) (w@@76 T@FrameType) (r@@70 T@Field_7679_7856) (u@@70 T@FrameType) ) (!  (=> (and (InsidePredicate_32245_14940 p@@77 v_1@@76 q@@70 w@@76) (InsidePredicate_14940_14940 q@@70 w@@76 r@@70 u@@70)) (InsidePredicate_32245_14940 p@@77 v_1@@76 r@@70 u@@70))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32245_14940 p@@77 v_1@@76 q@@70 w@@76) (InsidePredicate_14940_14940 q@@70 w@@76 r@@70 u@@70))
)))
(assert (forall ((p@@78 T@Field_29221_29222) (v_1@@77 T@FrameType) (q@@71 T@Field_33893_33894) (w@@77 T@FrameType) (r@@71 T@Field_33893_33894) (u@@71 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_33893 p@@78 v_1@@77 q@@71 w@@77) (InsidePredicate_33893_33893 q@@71 w@@77 r@@71 u@@71)) (InsidePredicate_29221_33893 p@@78 v_1@@77 r@@71 u@@71))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_33893 p@@78 v_1@@77 q@@71 w@@77) (InsidePredicate_33893_33893 q@@71 w@@77 r@@71 u@@71))
)))
(assert (forall ((p@@79 T@Field_29221_29222) (v_1@@78 T@FrameType) (q@@72 T@Field_33893_33894) (w@@78 T@FrameType) (r@@72 T@Field_32245_32246) (u@@72 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_33893 p@@79 v_1@@78 q@@72 w@@78) (InsidePredicate_33893_32245 q@@72 w@@78 r@@72 u@@72)) (InsidePredicate_29221_32245 p@@79 v_1@@78 r@@72 u@@72))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_33893 p@@79 v_1@@78 q@@72 w@@78) (InsidePredicate_33893_32245 q@@72 w@@78 r@@72 u@@72))
)))
(assert (forall ((p@@80 T@Field_29221_29222) (v_1@@79 T@FrameType) (q@@73 T@Field_33893_33894) (w@@79 T@FrameType) (r@@73 T@Field_29221_29222) (u@@73 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_33893 p@@80 v_1@@79 q@@73 w@@79) (InsidePredicate_33893_29221 q@@73 w@@79 r@@73 u@@73)) (InsidePredicate_29221_29221 p@@80 v_1@@79 r@@73 u@@73))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_33893 p@@80 v_1@@79 q@@73 w@@79) (InsidePredicate_33893_29221 q@@73 w@@79 r@@73 u@@73))
)))
(assert (forall ((p@@81 T@Field_29221_29222) (v_1@@80 T@FrameType) (q@@74 T@Field_33893_33894) (w@@80 T@FrameType) (r@@74 T@Field_27622_27623) (u@@74 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_33893 p@@81 v_1@@80 q@@74 w@@80) (InsidePredicate_33893_27622 q@@74 w@@80 r@@74 u@@74)) (InsidePredicate_29221_27622 p@@81 v_1@@80 r@@74 u@@74))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_33893 p@@81 v_1@@80 q@@74 w@@80) (InsidePredicate_33893_27622 q@@74 w@@80 r@@74 u@@74))
)))
(assert (forall ((p@@82 T@Field_29221_29222) (v_1@@81 T@FrameType) (q@@75 T@Field_33893_33894) (w@@81 T@FrameType) (r@@75 T@Field_19474_19475) (u@@75 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_33893 p@@82 v_1@@81 q@@75 w@@81) (InsidePredicate_33893_19474 q@@75 w@@81 r@@75 u@@75)) (InsidePredicate_29221_19474 p@@82 v_1@@81 r@@75 u@@75))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_33893 p@@82 v_1@@81 q@@75 w@@81) (InsidePredicate_33893_19474 q@@75 w@@81 r@@75 u@@75))
)))
(assert (forall ((p@@83 T@Field_29221_29222) (v_1@@82 T@FrameType) (q@@76 T@Field_33893_33894) (w@@82 T@FrameType) (r@@76 T@Field_7679_7856) (u@@76 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_33893 p@@83 v_1@@82 q@@76 w@@82) (InsidePredicate_33893_14940 q@@76 w@@82 r@@76 u@@76)) (InsidePredicate_29221_14940 p@@83 v_1@@82 r@@76 u@@76))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_33893 p@@83 v_1@@82 q@@76 w@@82) (InsidePredicate_33893_14940 q@@76 w@@82 r@@76 u@@76))
)))
(assert (forall ((p@@84 T@Field_29221_29222) (v_1@@83 T@FrameType) (q@@77 T@Field_32245_32246) (w@@83 T@FrameType) (r@@77 T@Field_33893_33894) (u@@77 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_32245 p@@84 v_1@@83 q@@77 w@@83) (InsidePredicate_32245_33893 q@@77 w@@83 r@@77 u@@77)) (InsidePredicate_29221_33893 p@@84 v_1@@83 r@@77 u@@77))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_32245 p@@84 v_1@@83 q@@77 w@@83) (InsidePredicate_32245_33893 q@@77 w@@83 r@@77 u@@77))
)))
(assert (forall ((p@@85 T@Field_29221_29222) (v_1@@84 T@FrameType) (q@@78 T@Field_32245_32246) (w@@84 T@FrameType) (r@@78 T@Field_32245_32246) (u@@78 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_32245 p@@85 v_1@@84 q@@78 w@@84) (InsidePredicate_32245_32245 q@@78 w@@84 r@@78 u@@78)) (InsidePredicate_29221_32245 p@@85 v_1@@84 r@@78 u@@78))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_32245 p@@85 v_1@@84 q@@78 w@@84) (InsidePredicate_32245_32245 q@@78 w@@84 r@@78 u@@78))
)))
(assert (forall ((p@@86 T@Field_29221_29222) (v_1@@85 T@FrameType) (q@@79 T@Field_32245_32246) (w@@85 T@FrameType) (r@@79 T@Field_29221_29222) (u@@79 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_32245 p@@86 v_1@@85 q@@79 w@@85) (InsidePredicate_32245_29221 q@@79 w@@85 r@@79 u@@79)) (InsidePredicate_29221_29221 p@@86 v_1@@85 r@@79 u@@79))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_32245 p@@86 v_1@@85 q@@79 w@@85) (InsidePredicate_32245_29221 q@@79 w@@85 r@@79 u@@79))
)))
(assert (forall ((p@@87 T@Field_29221_29222) (v_1@@86 T@FrameType) (q@@80 T@Field_32245_32246) (w@@86 T@FrameType) (r@@80 T@Field_27622_27623) (u@@80 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_32245 p@@87 v_1@@86 q@@80 w@@86) (InsidePredicate_32245_27622 q@@80 w@@86 r@@80 u@@80)) (InsidePredicate_29221_27622 p@@87 v_1@@86 r@@80 u@@80))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_32245 p@@87 v_1@@86 q@@80 w@@86) (InsidePredicate_32245_27622 q@@80 w@@86 r@@80 u@@80))
)))
(assert (forall ((p@@88 T@Field_29221_29222) (v_1@@87 T@FrameType) (q@@81 T@Field_32245_32246) (w@@87 T@FrameType) (r@@81 T@Field_19474_19475) (u@@81 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_32245 p@@88 v_1@@87 q@@81 w@@87) (InsidePredicate_32245_19474 q@@81 w@@87 r@@81 u@@81)) (InsidePredicate_29221_19474 p@@88 v_1@@87 r@@81 u@@81))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_32245 p@@88 v_1@@87 q@@81 w@@87) (InsidePredicate_32245_19474 q@@81 w@@87 r@@81 u@@81))
)))
(assert (forall ((p@@89 T@Field_29221_29222) (v_1@@88 T@FrameType) (q@@82 T@Field_32245_32246) (w@@88 T@FrameType) (r@@82 T@Field_7679_7856) (u@@82 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_32245 p@@89 v_1@@88 q@@82 w@@88) (InsidePredicate_32245_14940 q@@82 w@@88 r@@82 u@@82)) (InsidePredicate_29221_14940 p@@89 v_1@@88 r@@82 u@@82))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_32245 p@@89 v_1@@88 q@@82 w@@88) (InsidePredicate_32245_14940 q@@82 w@@88 r@@82 u@@82))
)))
(assert (forall ((p@@90 T@Field_29221_29222) (v_1@@89 T@FrameType) (q@@83 T@Field_29221_29222) (w@@89 T@FrameType) (r@@83 T@Field_33893_33894) (u@@83 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_29221 p@@90 v_1@@89 q@@83 w@@89) (InsidePredicate_29221_33893 q@@83 w@@89 r@@83 u@@83)) (InsidePredicate_29221_33893 p@@90 v_1@@89 r@@83 u@@83))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_29221 p@@90 v_1@@89 q@@83 w@@89) (InsidePredicate_29221_33893 q@@83 w@@89 r@@83 u@@83))
)))
(assert (forall ((p@@91 T@Field_29221_29222) (v_1@@90 T@FrameType) (q@@84 T@Field_29221_29222) (w@@90 T@FrameType) (r@@84 T@Field_32245_32246) (u@@84 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_29221 p@@91 v_1@@90 q@@84 w@@90) (InsidePredicate_29221_32245 q@@84 w@@90 r@@84 u@@84)) (InsidePredicate_29221_32245 p@@91 v_1@@90 r@@84 u@@84))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_29221 p@@91 v_1@@90 q@@84 w@@90) (InsidePredicate_29221_32245 q@@84 w@@90 r@@84 u@@84))
)))
(assert (forall ((p@@92 T@Field_29221_29222) (v_1@@91 T@FrameType) (q@@85 T@Field_29221_29222) (w@@91 T@FrameType) (r@@85 T@Field_29221_29222) (u@@85 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_29221 p@@92 v_1@@91 q@@85 w@@91) (InsidePredicate_29221_29221 q@@85 w@@91 r@@85 u@@85)) (InsidePredicate_29221_29221 p@@92 v_1@@91 r@@85 u@@85))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_29221 p@@92 v_1@@91 q@@85 w@@91) (InsidePredicate_29221_29221 q@@85 w@@91 r@@85 u@@85))
)))
(assert (forall ((p@@93 T@Field_29221_29222) (v_1@@92 T@FrameType) (q@@86 T@Field_29221_29222) (w@@92 T@FrameType) (r@@86 T@Field_27622_27623) (u@@86 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_29221 p@@93 v_1@@92 q@@86 w@@92) (InsidePredicate_29221_27622 q@@86 w@@92 r@@86 u@@86)) (InsidePredicate_29221_27622 p@@93 v_1@@92 r@@86 u@@86))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_29221 p@@93 v_1@@92 q@@86 w@@92) (InsidePredicate_29221_27622 q@@86 w@@92 r@@86 u@@86))
)))
(assert (forall ((p@@94 T@Field_29221_29222) (v_1@@93 T@FrameType) (q@@87 T@Field_29221_29222) (w@@93 T@FrameType) (r@@87 T@Field_19474_19475) (u@@87 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_29221 p@@94 v_1@@93 q@@87 w@@93) (InsidePredicate_29221_19474 q@@87 w@@93 r@@87 u@@87)) (InsidePredicate_29221_19474 p@@94 v_1@@93 r@@87 u@@87))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_29221 p@@94 v_1@@93 q@@87 w@@93) (InsidePredicate_29221_19474 q@@87 w@@93 r@@87 u@@87))
)))
(assert (forall ((p@@95 T@Field_29221_29222) (v_1@@94 T@FrameType) (q@@88 T@Field_29221_29222) (w@@94 T@FrameType) (r@@88 T@Field_7679_7856) (u@@88 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_29221 p@@95 v_1@@94 q@@88 w@@94) (InsidePredicate_29221_14940 q@@88 w@@94 r@@88 u@@88)) (InsidePredicate_29221_14940 p@@95 v_1@@94 r@@88 u@@88))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_29221 p@@95 v_1@@94 q@@88 w@@94) (InsidePredicate_29221_14940 q@@88 w@@94 r@@88 u@@88))
)))
(assert (forall ((p@@96 T@Field_29221_29222) (v_1@@95 T@FrameType) (q@@89 T@Field_27622_27623) (w@@95 T@FrameType) (r@@89 T@Field_33893_33894) (u@@89 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_27622 p@@96 v_1@@95 q@@89 w@@95) (InsidePredicate_27622_33893 q@@89 w@@95 r@@89 u@@89)) (InsidePredicate_29221_33893 p@@96 v_1@@95 r@@89 u@@89))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_27622 p@@96 v_1@@95 q@@89 w@@95) (InsidePredicate_27622_33893 q@@89 w@@95 r@@89 u@@89))
)))
(assert (forall ((p@@97 T@Field_29221_29222) (v_1@@96 T@FrameType) (q@@90 T@Field_27622_27623) (w@@96 T@FrameType) (r@@90 T@Field_32245_32246) (u@@90 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_27622 p@@97 v_1@@96 q@@90 w@@96) (InsidePredicate_27622_32245 q@@90 w@@96 r@@90 u@@90)) (InsidePredicate_29221_32245 p@@97 v_1@@96 r@@90 u@@90))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_27622 p@@97 v_1@@96 q@@90 w@@96) (InsidePredicate_27622_32245 q@@90 w@@96 r@@90 u@@90))
)))
(assert (forall ((p@@98 T@Field_29221_29222) (v_1@@97 T@FrameType) (q@@91 T@Field_27622_27623) (w@@97 T@FrameType) (r@@91 T@Field_29221_29222) (u@@91 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_27622 p@@98 v_1@@97 q@@91 w@@97) (InsidePredicate_27622_29221 q@@91 w@@97 r@@91 u@@91)) (InsidePredicate_29221_29221 p@@98 v_1@@97 r@@91 u@@91))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_27622 p@@98 v_1@@97 q@@91 w@@97) (InsidePredicate_27622_29221 q@@91 w@@97 r@@91 u@@91))
)))
(assert (forall ((p@@99 T@Field_29221_29222) (v_1@@98 T@FrameType) (q@@92 T@Field_27622_27623) (w@@98 T@FrameType) (r@@92 T@Field_27622_27623) (u@@92 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_27622 p@@99 v_1@@98 q@@92 w@@98) (InsidePredicate_27622_27622 q@@92 w@@98 r@@92 u@@92)) (InsidePredicate_29221_27622 p@@99 v_1@@98 r@@92 u@@92))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_27622 p@@99 v_1@@98 q@@92 w@@98) (InsidePredicate_27622_27622 q@@92 w@@98 r@@92 u@@92))
)))
(assert (forall ((p@@100 T@Field_29221_29222) (v_1@@99 T@FrameType) (q@@93 T@Field_27622_27623) (w@@99 T@FrameType) (r@@93 T@Field_19474_19475) (u@@93 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_27622 p@@100 v_1@@99 q@@93 w@@99) (InsidePredicate_27622_19474 q@@93 w@@99 r@@93 u@@93)) (InsidePredicate_29221_19474 p@@100 v_1@@99 r@@93 u@@93))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_27622 p@@100 v_1@@99 q@@93 w@@99) (InsidePredicate_27622_19474 q@@93 w@@99 r@@93 u@@93))
)))
(assert (forall ((p@@101 T@Field_29221_29222) (v_1@@100 T@FrameType) (q@@94 T@Field_27622_27623) (w@@100 T@FrameType) (r@@94 T@Field_7679_7856) (u@@94 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_27622 p@@101 v_1@@100 q@@94 w@@100) (InsidePredicate_27622_14940 q@@94 w@@100 r@@94 u@@94)) (InsidePredicate_29221_14940 p@@101 v_1@@100 r@@94 u@@94))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_27622 p@@101 v_1@@100 q@@94 w@@100) (InsidePredicate_27622_14940 q@@94 w@@100 r@@94 u@@94))
)))
(assert (forall ((p@@102 T@Field_29221_29222) (v_1@@101 T@FrameType) (q@@95 T@Field_19474_19475) (w@@101 T@FrameType) (r@@95 T@Field_33893_33894) (u@@95 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_19474 p@@102 v_1@@101 q@@95 w@@101) (InsidePredicate_19474_33893 q@@95 w@@101 r@@95 u@@95)) (InsidePredicate_29221_33893 p@@102 v_1@@101 r@@95 u@@95))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_19474 p@@102 v_1@@101 q@@95 w@@101) (InsidePredicate_19474_33893 q@@95 w@@101 r@@95 u@@95))
)))
(assert (forall ((p@@103 T@Field_29221_29222) (v_1@@102 T@FrameType) (q@@96 T@Field_19474_19475) (w@@102 T@FrameType) (r@@96 T@Field_32245_32246) (u@@96 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_19474 p@@103 v_1@@102 q@@96 w@@102) (InsidePredicate_19474_32245 q@@96 w@@102 r@@96 u@@96)) (InsidePredicate_29221_32245 p@@103 v_1@@102 r@@96 u@@96))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_19474 p@@103 v_1@@102 q@@96 w@@102) (InsidePredicate_19474_32245 q@@96 w@@102 r@@96 u@@96))
)))
(assert (forall ((p@@104 T@Field_29221_29222) (v_1@@103 T@FrameType) (q@@97 T@Field_19474_19475) (w@@103 T@FrameType) (r@@97 T@Field_29221_29222) (u@@97 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_19474 p@@104 v_1@@103 q@@97 w@@103) (InsidePredicate_19474_29221 q@@97 w@@103 r@@97 u@@97)) (InsidePredicate_29221_29221 p@@104 v_1@@103 r@@97 u@@97))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_19474 p@@104 v_1@@103 q@@97 w@@103) (InsidePredicate_19474_29221 q@@97 w@@103 r@@97 u@@97))
)))
(assert (forall ((p@@105 T@Field_29221_29222) (v_1@@104 T@FrameType) (q@@98 T@Field_19474_19475) (w@@104 T@FrameType) (r@@98 T@Field_27622_27623) (u@@98 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_19474 p@@105 v_1@@104 q@@98 w@@104) (InsidePredicate_19474_27622 q@@98 w@@104 r@@98 u@@98)) (InsidePredicate_29221_27622 p@@105 v_1@@104 r@@98 u@@98))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_19474 p@@105 v_1@@104 q@@98 w@@104) (InsidePredicate_19474_27622 q@@98 w@@104 r@@98 u@@98))
)))
(assert (forall ((p@@106 T@Field_29221_29222) (v_1@@105 T@FrameType) (q@@99 T@Field_19474_19475) (w@@105 T@FrameType) (r@@99 T@Field_19474_19475) (u@@99 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_19474 p@@106 v_1@@105 q@@99 w@@105) (InsidePredicate_19474_19474 q@@99 w@@105 r@@99 u@@99)) (InsidePredicate_29221_19474 p@@106 v_1@@105 r@@99 u@@99))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_19474 p@@106 v_1@@105 q@@99 w@@105) (InsidePredicate_19474_19474 q@@99 w@@105 r@@99 u@@99))
)))
(assert (forall ((p@@107 T@Field_29221_29222) (v_1@@106 T@FrameType) (q@@100 T@Field_19474_19475) (w@@106 T@FrameType) (r@@100 T@Field_7679_7856) (u@@100 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_19474 p@@107 v_1@@106 q@@100 w@@106) (InsidePredicate_19474_14940 q@@100 w@@106 r@@100 u@@100)) (InsidePredicate_29221_14940 p@@107 v_1@@106 r@@100 u@@100))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_19474 p@@107 v_1@@106 q@@100 w@@106) (InsidePredicate_19474_14940 q@@100 w@@106 r@@100 u@@100))
)))
(assert (forall ((p@@108 T@Field_29221_29222) (v_1@@107 T@FrameType) (q@@101 T@Field_7679_7856) (w@@107 T@FrameType) (r@@101 T@Field_33893_33894) (u@@101 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_14940 p@@108 v_1@@107 q@@101 w@@107) (InsidePredicate_14940_33893 q@@101 w@@107 r@@101 u@@101)) (InsidePredicate_29221_33893 p@@108 v_1@@107 r@@101 u@@101))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_14940 p@@108 v_1@@107 q@@101 w@@107) (InsidePredicate_14940_33893 q@@101 w@@107 r@@101 u@@101))
)))
(assert (forall ((p@@109 T@Field_29221_29222) (v_1@@108 T@FrameType) (q@@102 T@Field_7679_7856) (w@@108 T@FrameType) (r@@102 T@Field_32245_32246) (u@@102 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_14940 p@@109 v_1@@108 q@@102 w@@108) (InsidePredicate_14940_32245 q@@102 w@@108 r@@102 u@@102)) (InsidePredicate_29221_32245 p@@109 v_1@@108 r@@102 u@@102))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_14940 p@@109 v_1@@108 q@@102 w@@108) (InsidePredicate_14940_32245 q@@102 w@@108 r@@102 u@@102))
)))
(assert (forall ((p@@110 T@Field_29221_29222) (v_1@@109 T@FrameType) (q@@103 T@Field_7679_7856) (w@@109 T@FrameType) (r@@103 T@Field_29221_29222) (u@@103 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_14940 p@@110 v_1@@109 q@@103 w@@109) (InsidePredicate_14940_29221 q@@103 w@@109 r@@103 u@@103)) (InsidePredicate_29221_29221 p@@110 v_1@@109 r@@103 u@@103))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_14940 p@@110 v_1@@109 q@@103 w@@109) (InsidePredicate_14940_29221 q@@103 w@@109 r@@103 u@@103))
)))
(assert (forall ((p@@111 T@Field_29221_29222) (v_1@@110 T@FrameType) (q@@104 T@Field_7679_7856) (w@@110 T@FrameType) (r@@104 T@Field_27622_27623) (u@@104 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_14940 p@@111 v_1@@110 q@@104 w@@110) (InsidePredicate_14940_27622 q@@104 w@@110 r@@104 u@@104)) (InsidePredicate_29221_27622 p@@111 v_1@@110 r@@104 u@@104))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_14940 p@@111 v_1@@110 q@@104 w@@110) (InsidePredicate_14940_27622 q@@104 w@@110 r@@104 u@@104))
)))
(assert (forall ((p@@112 T@Field_29221_29222) (v_1@@111 T@FrameType) (q@@105 T@Field_7679_7856) (w@@111 T@FrameType) (r@@105 T@Field_19474_19475) (u@@105 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_14940 p@@112 v_1@@111 q@@105 w@@111) (InsidePredicate_14940_19474 q@@105 w@@111 r@@105 u@@105)) (InsidePredicate_29221_19474 p@@112 v_1@@111 r@@105 u@@105))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_14940 p@@112 v_1@@111 q@@105 w@@111) (InsidePredicate_14940_19474 q@@105 w@@111 r@@105 u@@105))
)))
(assert (forall ((p@@113 T@Field_29221_29222) (v_1@@112 T@FrameType) (q@@106 T@Field_7679_7856) (w@@112 T@FrameType) (r@@106 T@Field_7679_7856) (u@@106 T@FrameType) ) (!  (=> (and (InsidePredicate_29221_14940 p@@113 v_1@@112 q@@106 w@@112) (InsidePredicate_14940_14940 q@@106 w@@112 r@@106 u@@106)) (InsidePredicate_29221_14940 p@@113 v_1@@112 r@@106 u@@106))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29221_14940 p@@113 v_1@@112 q@@106 w@@112) (InsidePredicate_14940_14940 q@@106 w@@112 r@@106 u@@106))
)))
(assert (forall ((p@@114 T@Field_27622_27623) (v_1@@113 T@FrameType) (q@@107 T@Field_33893_33894) (w@@113 T@FrameType) (r@@107 T@Field_33893_33894) (u@@107 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_33893 p@@114 v_1@@113 q@@107 w@@113) (InsidePredicate_33893_33893 q@@107 w@@113 r@@107 u@@107)) (InsidePredicate_27622_33893 p@@114 v_1@@113 r@@107 u@@107))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_33893 p@@114 v_1@@113 q@@107 w@@113) (InsidePredicate_33893_33893 q@@107 w@@113 r@@107 u@@107))
)))
(assert (forall ((p@@115 T@Field_27622_27623) (v_1@@114 T@FrameType) (q@@108 T@Field_33893_33894) (w@@114 T@FrameType) (r@@108 T@Field_32245_32246) (u@@108 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_33893 p@@115 v_1@@114 q@@108 w@@114) (InsidePredicate_33893_32245 q@@108 w@@114 r@@108 u@@108)) (InsidePredicate_27622_32245 p@@115 v_1@@114 r@@108 u@@108))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_33893 p@@115 v_1@@114 q@@108 w@@114) (InsidePredicate_33893_32245 q@@108 w@@114 r@@108 u@@108))
)))
(assert (forall ((p@@116 T@Field_27622_27623) (v_1@@115 T@FrameType) (q@@109 T@Field_33893_33894) (w@@115 T@FrameType) (r@@109 T@Field_29221_29222) (u@@109 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_33893 p@@116 v_1@@115 q@@109 w@@115) (InsidePredicate_33893_29221 q@@109 w@@115 r@@109 u@@109)) (InsidePredicate_27622_29221 p@@116 v_1@@115 r@@109 u@@109))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_33893 p@@116 v_1@@115 q@@109 w@@115) (InsidePredicate_33893_29221 q@@109 w@@115 r@@109 u@@109))
)))
(assert (forall ((p@@117 T@Field_27622_27623) (v_1@@116 T@FrameType) (q@@110 T@Field_33893_33894) (w@@116 T@FrameType) (r@@110 T@Field_27622_27623) (u@@110 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_33893 p@@117 v_1@@116 q@@110 w@@116) (InsidePredicate_33893_27622 q@@110 w@@116 r@@110 u@@110)) (InsidePredicate_27622_27622 p@@117 v_1@@116 r@@110 u@@110))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_33893 p@@117 v_1@@116 q@@110 w@@116) (InsidePredicate_33893_27622 q@@110 w@@116 r@@110 u@@110))
)))
(assert (forall ((p@@118 T@Field_27622_27623) (v_1@@117 T@FrameType) (q@@111 T@Field_33893_33894) (w@@117 T@FrameType) (r@@111 T@Field_19474_19475) (u@@111 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_33893 p@@118 v_1@@117 q@@111 w@@117) (InsidePredicate_33893_19474 q@@111 w@@117 r@@111 u@@111)) (InsidePredicate_27622_19474 p@@118 v_1@@117 r@@111 u@@111))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_33893 p@@118 v_1@@117 q@@111 w@@117) (InsidePredicate_33893_19474 q@@111 w@@117 r@@111 u@@111))
)))
(assert (forall ((p@@119 T@Field_27622_27623) (v_1@@118 T@FrameType) (q@@112 T@Field_33893_33894) (w@@118 T@FrameType) (r@@112 T@Field_7679_7856) (u@@112 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_33893 p@@119 v_1@@118 q@@112 w@@118) (InsidePredicate_33893_14940 q@@112 w@@118 r@@112 u@@112)) (InsidePredicate_27622_14940 p@@119 v_1@@118 r@@112 u@@112))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_33893 p@@119 v_1@@118 q@@112 w@@118) (InsidePredicate_33893_14940 q@@112 w@@118 r@@112 u@@112))
)))
(assert (forall ((p@@120 T@Field_27622_27623) (v_1@@119 T@FrameType) (q@@113 T@Field_32245_32246) (w@@119 T@FrameType) (r@@113 T@Field_33893_33894) (u@@113 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_32245 p@@120 v_1@@119 q@@113 w@@119) (InsidePredicate_32245_33893 q@@113 w@@119 r@@113 u@@113)) (InsidePredicate_27622_33893 p@@120 v_1@@119 r@@113 u@@113))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_32245 p@@120 v_1@@119 q@@113 w@@119) (InsidePredicate_32245_33893 q@@113 w@@119 r@@113 u@@113))
)))
(assert (forall ((p@@121 T@Field_27622_27623) (v_1@@120 T@FrameType) (q@@114 T@Field_32245_32246) (w@@120 T@FrameType) (r@@114 T@Field_32245_32246) (u@@114 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_32245 p@@121 v_1@@120 q@@114 w@@120) (InsidePredicate_32245_32245 q@@114 w@@120 r@@114 u@@114)) (InsidePredicate_27622_32245 p@@121 v_1@@120 r@@114 u@@114))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_32245 p@@121 v_1@@120 q@@114 w@@120) (InsidePredicate_32245_32245 q@@114 w@@120 r@@114 u@@114))
)))
(assert (forall ((p@@122 T@Field_27622_27623) (v_1@@121 T@FrameType) (q@@115 T@Field_32245_32246) (w@@121 T@FrameType) (r@@115 T@Field_29221_29222) (u@@115 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_32245 p@@122 v_1@@121 q@@115 w@@121) (InsidePredicate_32245_29221 q@@115 w@@121 r@@115 u@@115)) (InsidePredicate_27622_29221 p@@122 v_1@@121 r@@115 u@@115))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_32245 p@@122 v_1@@121 q@@115 w@@121) (InsidePredicate_32245_29221 q@@115 w@@121 r@@115 u@@115))
)))
(assert (forall ((p@@123 T@Field_27622_27623) (v_1@@122 T@FrameType) (q@@116 T@Field_32245_32246) (w@@122 T@FrameType) (r@@116 T@Field_27622_27623) (u@@116 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_32245 p@@123 v_1@@122 q@@116 w@@122) (InsidePredicate_32245_27622 q@@116 w@@122 r@@116 u@@116)) (InsidePredicate_27622_27622 p@@123 v_1@@122 r@@116 u@@116))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_32245 p@@123 v_1@@122 q@@116 w@@122) (InsidePredicate_32245_27622 q@@116 w@@122 r@@116 u@@116))
)))
(assert (forall ((p@@124 T@Field_27622_27623) (v_1@@123 T@FrameType) (q@@117 T@Field_32245_32246) (w@@123 T@FrameType) (r@@117 T@Field_19474_19475) (u@@117 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_32245 p@@124 v_1@@123 q@@117 w@@123) (InsidePredicate_32245_19474 q@@117 w@@123 r@@117 u@@117)) (InsidePredicate_27622_19474 p@@124 v_1@@123 r@@117 u@@117))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_32245 p@@124 v_1@@123 q@@117 w@@123) (InsidePredicate_32245_19474 q@@117 w@@123 r@@117 u@@117))
)))
(assert (forall ((p@@125 T@Field_27622_27623) (v_1@@124 T@FrameType) (q@@118 T@Field_32245_32246) (w@@124 T@FrameType) (r@@118 T@Field_7679_7856) (u@@118 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_32245 p@@125 v_1@@124 q@@118 w@@124) (InsidePredicate_32245_14940 q@@118 w@@124 r@@118 u@@118)) (InsidePredicate_27622_14940 p@@125 v_1@@124 r@@118 u@@118))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_32245 p@@125 v_1@@124 q@@118 w@@124) (InsidePredicate_32245_14940 q@@118 w@@124 r@@118 u@@118))
)))
(assert (forall ((p@@126 T@Field_27622_27623) (v_1@@125 T@FrameType) (q@@119 T@Field_29221_29222) (w@@125 T@FrameType) (r@@119 T@Field_33893_33894) (u@@119 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_29221 p@@126 v_1@@125 q@@119 w@@125) (InsidePredicate_29221_33893 q@@119 w@@125 r@@119 u@@119)) (InsidePredicate_27622_33893 p@@126 v_1@@125 r@@119 u@@119))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_29221 p@@126 v_1@@125 q@@119 w@@125) (InsidePredicate_29221_33893 q@@119 w@@125 r@@119 u@@119))
)))
(assert (forall ((p@@127 T@Field_27622_27623) (v_1@@126 T@FrameType) (q@@120 T@Field_29221_29222) (w@@126 T@FrameType) (r@@120 T@Field_32245_32246) (u@@120 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_29221 p@@127 v_1@@126 q@@120 w@@126) (InsidePredicate_29221_32245 q@@120 w@@126 r@@120 u@@120)) (InsidePredicate_27622_32245 p@@127 v_1@@126 r@@120 u@@120))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_29221 p@@127 v_1@@126 q@@120 w@@126) (InsidePredicate_29221_32245 q@@120 w@@126 r@@120 u@@120))
)))
(assert (forall ((p@@128 T@Field_27622_27623) (v_1@@127 T@FrameType) (q@@121 T@Field_29221_29222) (w@@127 T@FrameType) (r@@121 T@Field_29221_29222) (u@@121 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_29221 p@@128 v_1@@127 q@@121 w@@127) (InsidePredicate_29221_29221 q@@121 w@@127 r@@121 u@@121)) (InsidePredicate_27622_29221 p@@128 v_1@@127 r@@121 u@@121))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_29221 p@@128 v_1@@127 q@@121 w@@127) (InsidePredicate_29221_29221 q@@121 w@@127 r@@121 u@@121))
)))
(assert (forall ((p@@129 T@Field_27622_27623) (v_1@@128 T@FrameType) (q@@122 T@Field_29221_29222) (w@@128 T@FrameType) (r@@122 T@Field_27622_27623) (u@@122 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_29221 p@@129 v_1@@128 q@@122 w@@128) (InsidePredicate_29221_27622 q@@122 w@@128 r@@122 u@@122)) (InsidePredicate_27622_27622 p@@129 v_1@@128 r@@122 u@@122))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_29221 p@@129 v_1@@128 q@@122 w@@128) (InsidePredicate_29221_27622 q@@122 w@@128 r@@122 u@@122))
)))
(assert (forall ((p@@130 T@Field_27622_27623) (v_1@@129 T@FrameType) (q@@123 T@Field_29221_29222) (w@@129 T@FrameType) (r@@123 T@Field_19474_19475) (u@@123 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_29221 p@@130 v_1@@129 q@@123 w@@129) (InsidePredicate_29221_19474 q@@123 w@@129 r@@123 u@@123)) (InsidePredicate_27622_19474 p@@130 v_1@@129 r@@123 u@@123))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_29221 p@@130 v_1@@129 q@@123 w@@129) (InsidePredicate_29221_19474 q@@123 w@@129 r@@123 u@@123))
)))
(assert (forall ((p@@131 T@Field_27622_27623) (v_1@@130 T@FrameType) (q@@124 T@Field_29221_29222) (w@@130 T@FrameType) (r@@124 T@Field_7679_7856) (u@@124 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_29221 p@@131 v_1@@130 q@@124 w@@130) (InsidePredicate_29221_14940 q@@124 w@@130 r@@124 u@@124)) (InsidePredicate_27622_14940 p@@131 v_1@@130 r@@124 u@@124))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_29221 p@@131 v_1@@130 q@@124 w@@130) (InsidePredicate_29221_14940 q@@124 w@@130 r@@124 u@@124))
)))
(assert (forall ((p@@132 T@Field_27622_27623) (v_1@@131 T@FrameType) (q@@125 T@Field_27622_27623) (w@@131 T@FrameType) (r@@125 T@Field_33893_33894) (u@@125 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_27622 p@@132 v_1@@131 q@@125 w@@131) (InsidePredicate_27622_33893 q@@125 w@@131 r@@125 u@@125)) (InsidePredicate_27622_33893 p@@132 v_1@@131 r@@125 u@@125))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_27622 p@@132 v_1@@131 q@@125 w@@131) (InsidePredicate_27622_33893 q@@125 w@@131 r@@125 u@@125))
)))
(assert (forall ((p@@133 T@Field_27622_27623) (v_1@@132 T@FrameType) (q@@126 T@Field_27622_27623) (w@@132 T@FrameType) (r@@126 T@Field_32245_32246) (u@@126 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_27622 p@@133 v_1@@132 q@@126 w@@132) (InsidePredicate_27622_32245 q@@126 w@@132 r@@126 u@@126)) (InsidePredicate_27622_32245 p@@133 v_1@@132 r@@126 u@@126))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_27622 p@@133 v_1@@132 q@@126 w@@132) (InsidePredicate_27622_32245 q@@126 w@@132 r@@126 u@@126))
)))
(assert (forall ((p@@134 T@Field_27622_27623) (v_1@@133 T@FrameType) (q@@127 T@Field_27622_27623) (w@@133 T@FrameType) (r@@127 T@Field_29221_29222) (u@@127 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_27622 p@@134 v_1@@133 q@@127 w@@133) (InsidePredicate_27622_29221 q@@127 w@@133 r@@127 u@@127)) (InsidePredicate_27622_29221 p@@134 v_1@@133 r@@127 u@@127))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_27622 p@@134 v_1@@133 q@@127 w@@133) (InsidePredicate_27622_29221 q@@127 w@@133 r@@127 u@@127))
)))
(assert (forall ((p@@135 T@Field_27622_27623) (v_1@@134 T@FrameType) (q@@128 T@Field_27622_27623) (w@@134 T@FrameType) (r@@128 T@Field_27622_27623) (u@@128 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_27622 p@@135 v_1@@134 q@@128 w@@134) (InsidePredicate_27622_27622 q@@128 w@@134 r@@128 u@@128)) (InsidePredicate_27622_27622 p@@135 v_1@@134 r@@128 u@@128))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_27622 p@@135 v_1@@134 q@@128 w@@134) (InsidePredicate_27622_27622 q@@128 w@@134 r@@128 u@@128))
)))
(assert (forall ((p@@136 T@Field_27622_27623) (v_1@@135 T@FrameType) (q@@129 T@Field_27622_27623) (w@@135 T@FrameType) (r@@129 T@Field_19474_19475) (u@@129 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_27622 p@@136 v_1@@135 q@@129 w@@135) (InsidePredicate_27622_19474 q@@129 w@@135 r@@129 u@@129)) (InsidePredicate_27622_19474 p@@136 v_1@@135 r@@129 u@@129))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_27622 p@@136 v_1@@135 q@@129 w@@135) (InsidePredicate_27622_19474 q@@129 w@@135 r@@129 u@@129))
)))
(assert (forall ((p@@137 T@Field_27622_27623) (v_1@@136 T@FrameType) (q@@130 T@Field_27622_27623) (w@@136 T@FrameType) (r@@130 T@Field_7679_7856) (u@@130 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_27622 p@@137 v_1@@136 q@@130 w@@136) (InsidePredicate_27622_14940 q@@130 w@@136 r@@130 u@@130)) (InsidePredicate_27622_14940 p@@137 v_1@@136 r@@130 u@@130))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_27622 p@@137 v_1@@136 q@@130 w@@136) (InsidePredicate_27622_14940 q@@130 w@@136 r@@130 u@@130))
)))
(assert (forall ((p@@138 T@Field_27622_27623) (v_1@@137 T@FrameType) (q@@131 T@Field_19474_19475) (w@@137 T@FrameType) (r@@131 T@Field_33893_33894) (u@@131 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_19474 p@@138 v_1@@137 q@@131 w@@137) (InsidePredicate_19474_33893 q@@131 w@@137 r@@131 u@@131)) (InsidePredicate_27622_33893 p@@138 v_1@@137 r@@131 u@@131))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_19474 p@@138 v_1@@137 q@@131 w@@137) (InsidePredicate_19474_33893 q@@131 w@@137 r@@131 u@@131))
)))
(assert (forall ((p@@139 T@Field_27622_27623) (v_1@@138 T@FrameType) (q@@132 T@Field_19474_19475) (w@@138 T@FrameType) (r@@132 T@Field_32245_32246) (u@@132 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_19474 p@@139 v_1@@138 q@@132 w@@138) (InsidePredicate_19474_32245 q@@132 w@@138 r@@132 u@@132)) (InsidePredicate_27622_32245 p@@139 v_1@@138 r@@132 u@@132))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_19474 p@@139 v_1@@138 q@@132 w@@138) (InsidePredicate_19474_32245 q@@132 w@@138 r@@132 u@@132))
)))
(assert (forall ((p@@140 T@Field_27622_27623) (v_1@@139 T@FrameType) (q@@133 T@Field_19474_19475) (w@@139 T@FrameType) (r@@133 T@Field_29221_29222) (u@@133 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_19474 p@@140 v_1@@139 q@@133 w@@139) (InsidePredicate_19474_29221 q@@133 w@@139 r@@133 u@@133)) (InsidePredicate_27622_29221 p@@140 v_1@@139 r@@133 u@@133))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_19474 p@@140 v_1@@139 q@@133 w@@139) (InsidePredicate_19474_29221 q@@133 w@@139 r@@133 u@@133))
)))
(assert (forall ((p@@141 T@Field_27622_27623) (v_1@@140 T@FrameType) (q@@134 T@Field_19474_19475) (w@@140 T@FrameType) (r@@134 T@Field_27622_27623) (u@@134 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_19474 p@@141 v_1@@140 q@@134 w@@140) (InsidePredicate_19474_27622 q@@134 w@@140 r@@134 u@@134)) (InsidePredicate_27622_27622 p@@141 v_1@@140 r@@134 u@@134))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_19474 p@@141 v_1@@140 q@@134 w@@140) (InsidePredicate_19474_27622 q@@134 w@@140 r@@134 u@@134))
)))
(assert (forall ((p@@142 T@Field_27622_27623) (v_1@@141 T@FrameType) (q@@135 T@Field_19474_19475) (w@@141 T@FrameType) (r@@135 T@Field_19474_19475) (u@@135 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_19474 p@@142 v_1@@141 q@@135 w@@141) (InsidePredicate_19474_19474 q@@135 w@@141 r@@135 u@@135)) (InsidePredicate_27622_19474 p@@142 v_1@@141 r@@135 u@@135))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_19474 p@@142 v_1@@141 q@@135 w@@141) (InsidePredicate_19474_19474 q@@135 w@@141 r@@135 u@@135))
)))
(assert (forall ((p@@143 T@Field_27622_27623) (v_1@@142 T@FrameType) (q@@136 T@Field_19474_19475) (w@@142 T@FrameType) (r@@136 T@Field_7679_7856) (u@@136 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_19474 p@@143 v_1@@142 q@@136 w@@142) (InsidePredicate_19474_14940 q@@136 w@@142 r@@136 u@@136)) (InsidePredicate_27622_14940 p@@143 v_1@@142 r@@136 u@@136))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_19474 p@@143 v_1@@142 q@@136 w@@142) (InsidePredicate_19474_14940 q@@136 w@@142 r@@136 u@@136))
)))
(assert (forall ((p@@144 T@Field_27622_27623) (v_1@@143 T@FrameType) (q@@137 T@Field_7679_7856) (w@@143 T@FrameType) (r@@137 T@Field_33893_33894) (u@@137 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_14940 p@@144 v_1@@143 q@@137 w@@143) (InsidePredicate_14940_33893 q@@137 w@@143 r@@137 u@@137)) (InsidePredicate_27622_33893 p@@144 v_1@@143 r@@137 u@@137))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_14940 p@@144 v_1@@143 q@@137 w@@143) (InsidePredicate_14940_33893 q@@137 w@@143 r@@137 u@@137))
)))
(assert (forall ((p@@145 T@Field_27622_27623) (v_1@@144 T@FrameType) (q@@138 T@Field_7679_7856) (w@@144 T@FrameType) (r@@138 T@Field_32245_32246) (u@@138 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_14940 p@@145 v_1@@144 q@@138 w@@144) (InsidePredicate_14940_32245 q@@138 w@@144 r@@138 u@@138)) (InsidePredicate_27622_32245 p@@145 v_1@@144 r@@138 u@@138))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_14940 p@@145 v_1@@144 q@@138 w@@144) (InsidePredicate_14940_32245 q@@138 w@@144 r@@138 u@@138))
)))
(assert (forall ((p@@146 T@Field_27622_27623) (v_1@@145 T@FrameType) (q@@139 T@Field_7679_7856) (w@@145 T@FrameType) (r@@139 T@Field_29221_29222) (u@@139 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_14940 p@@146 v_1@@145 q@@139 w@@145) (InsidePredicate_14940_29221 q@@139 w@@145 r@@139 u@@139)) (InsidePredicate_27622_29221 p@@146 v_1@@145 r@@139 u@@139))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_14940 p@@146 v_1@@145 q@@139 w@@145) (InsidePredicate_14940_29221 q@@139 w@@145 r@@139 u@@139))
)))
(assert (forall ((p@@147 T@Field_27622_27623) (v_1@@146 T@FrameType) (q@@140 T@Field_7679_7856) (w@@146 T@FrameType) (r@@140 T@Field_27622_27623) (u@@140 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_14940 p@@147 v_1@@146 q@@140 w@@146) (InsidePredicate_14940_27622 q@@140 w@@146 r@@140 u@@140)) (InsidePredicate_27622_27622 p@@147 v_1@@146 r@@140 u@@140))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_14940 p@@147 v_1@@146 q@@140 w@@146) (InsidePredicate_14940_27622 q@@140 w@@146 r@@140 u@@140))
)))
(assert (forall ((p@@148 T@Field_27622_27623) (v_1@@147 T@FrameType) (q@@141 T@Field_7679_7856) (w@@147 T@FrameType) (r@@141 T@Field_19474_19475) (u@@141 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_14940 p@@148 v_1@@147 q@@141 w@@147) (InsidePredicate_14940_19474 q@@141 w@@147 r@@141 u@@141)) (InsidePredicate_27622_19474 p@@148 v_1@@147 r@@141 u@@141))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_14940 p@@148 v_1@@147 q@@141 w@@147) (InsidePredicate_14940_19474 q@@141 w@@147 r@@141 u@@141))
)))
(assert (forall ((p@@149 T@Field_27622_27623) (v_1@@148 T@FrameType) (q@@142 T@Field_7679_7856) (w@@148 T@FrameType) (r@@142 T@Field_7679_7856) (u@@142 T@FrameType) ) (!  (=> (and (InsidePredicate_27622_14940 p@@149 v_1@@148 q@@142 w@@148) (InsidePredicate_14940_14940 q@@142 w@@148 r@@142 u@@142)) (InsidePredicate_27622_14940 p@@149 v_1@@148 r@@142 u@@142))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27622_14940 p@@149 v_1@@148 q@@142 w@@148) (InsidePredicate_14940_14940 q@@142 w@@148 r@@142 u@@142))
)))
(assert (forall ((p@@150 T@Field_19474_19475) (v_1@@149 T@FrameType) (q@@143 T@Field_33893_33894) (w@@149 T@FrameType) (r@@143 T@Field_33893_33894) (u@@143 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_33893 p@@150 v_1@@149 q@@143 w@@149) (InsidePredicate_33893_33893 q@@143 w@@149 r@@143 u@@143)) (InsidePredicate_19474_33893 p@@150 v_1@@149 r@@143 u@@143))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_33893 p@@150 v_1@@149 q@@143 w@@149) (InsidePredicate_33893_33893 q@@143 w@@149 r@@143 u@@143))
)))
(assert (forall ((p@@151 T@Field_19474_19475) (v_1@@150 T@FrameType) (q@@144 T@Field_33893_33894) (w@@150 T@FrameType) (r@@144 T@Field_32245_32246) (u@@144 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_33893 p@@151 v_1@@150 q@@144 w@@150) (InsidePredicate_33893_32245 q@@144 w@@150 r@@144 u@@144)) (InsidePredicate_19474_32245 p@@151 v_1@@150 r@@144 u@@144))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_33893 p@@151 v_1@@150 q@@144 w@@150) (InsidePredicate_33893_32245 q@@144 w@@150 r@@144 u@@144))
)))
(assert (forall ((p@@152 T@Field_19474_19475) (v_1@@151 T@FrameType) (q@@145 T@Field_33893_33894) (w@@151 T@FrameType) (r@@145 T@Field_29221_29222) (u@@145 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_33893 p@@152 v_1@@151 q@@145 w@@151) (InsidePredicate_33893_29221 q@@145 w@@151 r@@145 u@@145)) (InsidePredicate_19474_29221 p@@152 v_1@@151 r@@145 u@@145))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_33893 p@@152 v_1@@151 q@@145 w@@151) (InsidePredicate_33893_29221 q@@145 w@@151 r@@145 u@@145))
)))
(assert (forall ((p@@153 T@Field_19474_19475) (v_1@@152 T@FrameType) (q@@146 T@Field_33893_33894) (w@@152 T@FrameType) (r@@146 T@Field_27622_27623) (u@@146 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_33893 p@@153 v_1@@152 q@@146 w@@152) (InsidePredicate_33893_27622 q@@146 w@@152 r@@146 u@@146)) (InsidePredicate_19474_27622 p@@153 v_1@@152 r@@146 u@@146))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_33893 p@@153 v_1@@152 q@@146 w@@152) (InsidePredicate_33893_27622 q@@146 w@@152 r@@146 u@@146))
)))
(assert (forall ((p@@154 T@Field_19474_19475) (v_1@@153 T@FrameType) (q@@147 T@Field_33893_33894) (w@@153 T@FrameType) (r@@147 T@Field_19474_19475) (u@@147 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_33893 p@@154 v_1@@153 q@@147 w@@153) (InsidePredicate_33893_19474 q@@147 w@@153 r@@147 u@@147)) (InsidePredicate_19474_19474 p@@154 v_1@@153 r@@147 u@@147))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_33893 p@@154 v_1@@153 q@@147 w@@153) (InsidePredicate_33893_19474 q@@147 w@@153 r@@147 u@@147))
)))
(assert (forall ((p@@155 T@Field_19474_19475) (v_1@@154 T@FrameType) (q@@148 T@Field_33893_33894) (w@@154 T@FrameType) (r@@148 T@Field_7679_7856) (u@@148 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_33893 p@@155 v_1@@154 q@@148 w@@154) (InsidePredicate_33893_14940 q@@148 w@@154 r@@148 u@@148)) (InsidePredicate_19474_14940 p@@155 v_1@@154 r@@148 u@@148))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_33893 p@@155 v_1@@154 q@@148 w@@154) (InsidePredicate_33893_14940 q@@148 w@@154 r@@148 u@@148))
)))
(assert (forall ((p@@156 T@Field_19474_19475) (v_1@@155 T@FrameType) (q@@149 T@Field_32245_32246) (w@@155 T@FrameType) (r@@149 T@Field_33893_33894) (u@@149 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_32245 p@@156 v_1@@155 q@@149 w@@155) (InsidePredicate_32245_33893 q@@149 w@@155 r@@149 u@@149)) (InsidePredicate_19474_33893 p@@156 v_1@@155 r@@149 u@@149))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_32245 p@@156 v_1@@155 q@@149 w@@155) (InsidePredicate_32245_33893 q@@149 w@@155 r@@149 u@@149))
)))
(assert (forall ((p@@157 T@Field_19474_19475) (v_1@@156 T@FrameType) (q@@150 T@Field_32245_32246) (w@@156 T@FrameType) (r@@150 T@Field_32245_32246) (u@@150 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_32245 p@@157 v_1@@156 q@@150 w@@156) (InsidePredicate_32245_32245 q@@150 w@@156 r@@150 u@@150)) (InsidePredicate_19474_32245 p@@157 v_1@@156 r@@150 u@@150))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_32245 p@@157 v_1@@156 q@@150 w@@156) (InsidePredicate_32245_32245 q@@150 w@@156 r@@150 u@@150))
)))
(assert (forall ((p@@158 T@Field_19474_19475) (v_1@@157 T@FrameType) (q@@151 T@Field_32245_32246) (w@@157 T@FrameType) (r@@151 T@Field_29221_29222) (u@@151 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_32245 p@@158 v_1@@157 q@@151 w@@157) (InsidePredicate_32245_29221 q@@151 w@@157 r@@151 u@@151)) (InsidePredicate_19474_29221 p@@158 v_1@@157 r@@151 u@@151))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_32245 p@@158 v_1@@157 q@@151 w@@157) (InsidePredicate_32245_29221 q@@151 w@@157 r@@151 u@@151))
)))
(assert (forall ((p@@159 T@Field_19474_19475) (v_1@@158 T@FrameType) (q@@152 T@Field_32245_32246) (w@@158 T@FrameType) (r@@152 T@Field_27622_27623) (u@@152 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_32245 p@@159 v_1@@158 q@@152 w@@158) (InsidePredicate_32245_27622 q@@152 w@@158 r@@152 u@@152)) (InsidePredicate_19474_27622 p@@159 v_1@@158 r@@152 u@@152))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_32245 p@@159 v_1@@158 q@@152 w@@158) (InsidePredicate_32245_27622 q@@152 w@@158 r@@152 u@@152))
)))
(assert (forall ((p@@160 T@Field_19474_19475) (v_1@@159 T@FrameType) (q@@153 T@Field_32245_32246) (w@@159 T@FrameType) (r@@153 T@Field_19474_19475) (u@@153 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_32245 p@@160 v_1@@159 q@@153 w@@159) (InsidePredicate_32245_19474 q@@153 w@@159 r@@153 u@@153)) (InsidePredicate_19474_19474 p@@160 v_1@@159 r@@153 u@@153))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_32245 p@@160 v_1@@159 q@@153 w@@159) (InsidePredicate_32245_19474 q@@153 w@@159 r@@153 u@@153))
)))
(assert (forall ((p@@161 T@Field_19474_19475) (v_1@@160 T@FrameType) (q@@154 T@Field_32245_32246) (w@@160 T@FrameType) (r@@154 T@Field_7679_7856) (u@@154 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_32245 p@@161 v_1@@160 q@@154 w@@160) (InsidePredicate_32245_14940 q@@154 w@@160 r@@154 u@@154)) (InsidePredicate_19474_14940 p@@161 v_1@@160 r@@154 u@@154))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_32245 p@@161 v_1@@160 q@@154 w@@160) (InsidePredicate_32245_14940 q@@154 w@@160 r@@154 u@@154))
)))
(assert (forall ((p@@162 T@Field_19474_19475) (v_1@@161 T@FrameType) (q@@155 T@Field_29221_29222) (w@@161 T@FrameType) (r@@155 T@Field_33893_33894) (u@@155 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_29221 p@@162 v_1@@161 q@@155 w@@161) (InsidePredicate_29221_33893 q@@155 w@@161 r@@155 u@@155)) (InsidePredicate_19474_33893 p@@162 v_1@@161 r@@155 u@@155))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_29221 p@@162 v_1@@161 q@@155 w@@161) (InsidePredicate_29221_33893 q@@155 w@@161 r@@155 u@@155))
)))
(assert (forall ((p@@163 T@Field_19474_19475) (v_1@@162 T@FrameType) (q@@156 T@Field_29221_29222) (w@@162 T@FrameType) (r@@156 T@Field_32245_32246) (u@@156 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_29221 p@@163 v_1@@162 q@@156 w@@162) (InsidePredicate_29221_32245 q@@156 w@@162 r@@156 u@@156)) (InsidePredicate_19474_32245 p@@163 v_1@@162 r@@156 u@@156))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_29221 p@@163 v_1@@162 q@@156 w@@162) (InsidePredicate_29221_32245 q@@156 w@@162 r@@156 u@@156))
)))
(assert (forall ((p@@164 T@Field_19474_19475) (v_1@@163 T@FrameType) (q@@157 T@Field_29221_29222) (w@@163 T@FrameType) (r@@157 T@Field_29221_29222) (u@@157 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_29221 p@@164 v_1@@163 q@@157 w@@163) (InsidePredicate_29221_29221 q@@157 w@@163 r@@157 u@@157)) (InsidePredicate_19474_29221 p@@164 v_1@@163 r@@157 u@@157))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_29221 p@@164 v_1@@163 q@@157 w@@163) (InsidePredicate_29221_29221 q@@157 w@@163 r@@157 u@@157))
)))
(assert (forall ((p@@165 T@Field_19474_19475) (v_1@@164 T@FrameType) (q@@158 T@Field_29221_29222) (w@@164 T@FrameType) (r@@158 T@Field_27622_27623) (u@@158 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_29221 p@@165 v_1@@164 q@@158 w@@164) (InsidePredicate_29221_27622 q@@158 w@@164 r@@158 u@@158)) (InsidePredicate_19474_27622 p@@165 v_1@@164 r@@158 u@@158))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_29221 p@@165 v_1@@164 q@@158 w@@164) (InsidePredicate_29221_27622 q@@158 w@@164 r@@158 u@@158))
)))
(assert (forall ((p@@166 T@Field_19474_19475) (v_1@@165 T@FrameType) (q@@159 T@Field_29221_29222) (w@@165 T@FrameType) (r@@159 T@Field_19474_19475) (u@@159 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_29221 p@@166 v_1@@165 q@@159 w@@165) (InsidePredicate_29221_19474 q@@159 w@@165 r@@159 u@@159)) (InsidePredicate_19474_19474 p@@166 v_1@@165 r@@159 u@@159))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_29221 p@@166 v_1@@165 q@@159 w@@165) (InsidePredicate_29221_19474 q@@159 w@@165 r@@159 u@@159))
)))
(assert (forall ((p@@167 T@Field_19474_19475) (v_1@@166 T@FrameType) (q@@160 T@Field_29221_29222) (w@@166 T@FrameType) (r@@160 T@Field_7679_7856) (u@@160 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_29221 p@@167 v_1@@166 q@@160 w@@166) (InsidePredicate_29221_14940 q@@160 w@@166 r@@160 u@@160)) (InsidePredicate_19474_14940 p@@167 v_1@@166 r@@160 u@@160))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_29221 p@@167 v_1@@166 q@@160 w@@166) (InsidePredicate_29221_14940 q@@160 w@@166 r@@160 u@@160))
)))
(assert (forall ((p@@168 T@Field_19474_19475) (v_1@@167 T@FrameType) (q@@161 T@Field_27622_27623) (w@@167 T@FrameType) (r@@161 T@Field_33893_33894) (u@@161 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_27622 p@@168 v_1@@167 q@@161 w@@167) (InsidePredicate_27622_33893 q@@161 w@@167 r@@161 u@@161)) (InsidePredicate_19474_33893 p@@168 v_1@@167 r@@161 u@@161))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_27622 p@@168 v_1@@167 q@@161 w@@167) (InsidePredicate_27622_33893 q@@161 w@@167 r@@161 u@@161))
)))
(assert (forall ((p@@169 T@Field_19474_19475) (v_1@@168 T@FrameType) (q@@162 T@Field_27622_27623) (w@@168 T@FrameType) (r@@162 T@Field_32245_32246) (u@@162 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_27622 p@@169 v_1@@168 q@@162 w@@168) (InsidePredicate_27622_32245 q@@162 w@@168 r@@162 u@@162)) (InsidePredicate_19474_32245 p@@169 v_1@@168 r@@162 u@@162))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_27622 p@@169 v_1@@168 q@@162 w@@168) (InsidePredicate_27622_32245 q@@162 w@@168 r@@162 u@@162))
)))
(assert (forall ((p@@170 T@Field_19474_19475) (v_1@@169 T@FrameType) (q@@163 T@Field_27622_27623) (w@@169 T@FrameType) (r@@163 T@Field_29221_29222) (u@@163 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_27622 p@@170 v_1@@169 q@@163 w@@169) (InsidePredicate_27622_29221 q@@163 w@@169 r@@163 u@@163)) (InsidePredicate_19474_29221 p@@170 v_1@@169 r@@163 u@@163))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_27622 p@@170 v_1@@169 q@@163 w@@169) (InsidePredicate_27622_29221 q@@163 w@@169 r@@163 u@@163))
)))
(assert (forall ((p@@171 T@Field_19474_19475) (v_1@@170 T@FrameType) (q@@164 T@Field_27622_27623) (w@@170 T@FrameType) (r@@164 T@Field_27622_27623) (u@@164 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_27622 p@@171 v_1@@170 q@@164 w@@170) (InsidePredicate_27622_27622 q@@164 w@@170 r@@164 u@@164)) (InsidePredicate_19474_27622 p@@171 v_1@@170 r@@164 u@@164))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_27622 p@@171 v_1@@170 q@@164 w@@170) (InsidePredicate_27622_27622 q@@164 w@@170 r@@164 u@@164))
)))
(assert (forall ((p@@172 T@Field_19474_19475) (v_1@@171 T@FrameType) (q@@165 T@Field_27622_27623) (w@@171 T@FrameType) (r@@165 T@Field_19474_19475) (u@@165 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_27622 p@@172 v_1@@171 q@@165 w@@171) (InsidePredicate_27622_19474 q@@165 w@@171 r@@165 u@@165)) (InsidePredicate_19474_19474 p@@172 v_1@@171 r@@165 u@@165))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_27622 p@@172 v_1@@171 q@@165 w@@171) (InsidePredicate_27622_19474 q@@165 w@@171 r@@165 u@@165))
)))
(assert (forall ((p@@173 T@Field_19474_19475) (v_1@@172 T@FrameType) (q@@166 T@Field_27622_27623) (w@@172 T@FrameType) (r@@166 T@Field_7679_7856) (u@@166 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_27622 p@@173 v_1@@172 q@@166 w@@172) (InsidePredicate_27622_14940 q@@166 w@@172 r@@166 u@@166)) (InsidePredicate_19474_14940 p@@173 v_1@@172 r@@166 u@@166))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_27622 p@@173 v_1@@172 q@@166 w@@172) (InsidePredicate_27622_14940 q@@166 w@@172 r@@166 u@@166))
)))
(assert (forall ((p@@174 T@Field_19474_19475) (v_1@@173 T@FrameType) (q@@167 T@Field_19474_19475) (w@@173 T@FrameType) (r@@167 T@Field_33893_33894) (u@@167 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_19474 p@@174 v_1@@173 q@@167 w@@173) (InsidePredicate_19474_33893 q@@167 w@@173 r@@167 u@@167)) (InsidePredicate_19474_33893 p@@174 v_1@@173 r@@167 u@@167))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_19474 p@@174 v_1@@173 q@@167 w@@173) (InsidePredicate_19474_33893 q@@167 w@@173 r@@167 u@@167))
)))
(assert (forall ((p@@175 T@Field_19474_19475) (v_1@@174 T@FrameType) (q@@168 T@Field_19474_19475) (w@@174 T@FrameType) (r@@168 T@Field_32245_32246) (u@@168 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_19474 p@@175 v_1@@174 q@@168 w@@174) (InsidePredicate_19474_32245 q@@168 w@@174 r@@168 u@@168)) (InsidePredicate_19474_32245 p@@175 v_1@@174 r@@168 u@@168))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_19474 p@@175 v_1@@174 q@@168 w@@174) (InsidePredicate_19474_32245 q@@168 w@@174 r@@168 u@@168))
)))
(assert (forall ((p@@176 T@Field_19474_19475) (v_1@@175 T@FrameType) (q@@169 T@Field_19474_19475) (w@@175 T@FrameType) (r@@169 T@Field_29221_29222) (u@@169 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_19474 p@@176 v_1@@175 q@@169 w@@175) (InsidePredicate_19474_29221 q@@169 w@@175 r@@169 u@@169)) (InsidePredicate_19474_29221 p@@176 v_1@@175 r@@169 u@@169))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_19474 p@@176 v_1@@175 q@@169 w@@175) (InsidePredicate_19474_29221 q@@169 w@@175 r@@169 u@@169))
)))
(assert (forall ((p@@177 T@Field_19474_19475) (v_1@@176 T@FrameType) (q@@170 T@Field_19474_19475) (w@@176 T@FrameType) (r@@170 T@Field_27622_27623) (u@@170 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_19474 p@@177 v_1@@176 q@@170 w@@176) (InsidePredicate_19474_27622 q@@170 w@@176 r@@170 u@@170)) (InsidePredicate_19474_27622 p@@177 v_1@@176 r@@170 u@@170))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_19474 p@@177 v_1@@176 q@@170 w@@176) (InsidePredicate_19474_27622 q@@170 w@@176 r@@170 u@@170))
)))
(assert (forall ((p@@178 T@Field_19474_19475) (v_1@@177 T@FrameType) (q@@171 T@Field_19474_19475) (w@@177 T@FrameType) (r@@171 T@Field_19474_19475) (u@@171 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_19474 p@@178 v_1@@177 q@@171 w@@177) (InsidePredicate_19474_19474 q@@171 w@@177 r@@171 u@@171)) (InsidePredicate_19474_19474 p@@178 v_1@@177 r@@171 u@@171))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_19474 p@@178 v_1@@177 q@@171 w@@177) (InsidePredicate_19474_19474 q@@171 w@@177 r@@171 u@@171))
)))
(assert (forall ((p@@179 T@Field_19474_19475) (v_1@@178 T@FrameType) (q@@172 T@Field_19474_19475) (w@@178 T@FrameType) (r@@172 T@Field_7679_7856) (u@@172 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_19474 p@@179 v_1@@178 q@@172 w@@178) (InsidePredicate_19474_14940 q@@172 w@@178 r@@172 u@@172)) (InsidePredicate_19474_14940 p@@179 v_1@@178 r@@172 u@@172))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_19474 p@@179 v_1@@178 q@@172 w@@178) (InsidePredicate_19474_14940 q@@172 w@@178 r@@172 u@@172))
)))
(assert (forall ((p@@180 T@Field_19474_19475) (v_1@@179 T@FrameType) (q@@173 T@Field_7679_7856) (w@@179 T@FrameType) (r@@173 T@Field_33893_33894) (u@@173 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_14940 p@@180 v_1@@179 q@@173 w@@179) (InsidePredicate_14940_33893 q@@173 w@@179 r@@173 u@@173)) (InsidePredicate_19474_33893 p@@180 v_1@@179 r@@173 u@@173))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_14940 p@@180 v_1@@179 q@@173 w@@179) (InsidePredicate_14940_33893 q@@173 w@@179 r@@173 u@@173))
)))
(assert (forall ((p@@181 T@Field_19474_19475) (v_1@@180 T@FrameType) (q@@174 T@Field_7679_7856) (w@@180 T@FrameType) (r@@174 T@Field_32245_32246) (u@@174 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_14940 p@@181 v_1@@180 q@@174 w@@180) (InsidePredicate_14940_32245 q@@174 w@@180 r@@174 u@@174)) (InsidePredicate_19474_32245 p@@181 v_1@@180 r@@174 u@@174))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_14940 p@@181 v_1@@180 q@@174 w@@180) (InsidePredicate_14940_32245 q@@174 w@@180 r@@174 u@@174))
)))
(assert (forall ((p@@182 T@Field_19474_19475) (v_1@@181 T@FrameType) (q@@175 T@Field_7679_7856) (w@@181 T@FrameType) (r@@175 T@Field_29221_29222) (u@@175 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_14940 p@@182 v_1@@181 q@@175 w@@181) (InsidePredicate_14940_29221 q@@175 w@@181 r@@175 u@@175)) (InsidePredicate_19474_29221 p@@182 v_1@@181 r@@175 u@@175))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_14940 p@@182 v_1@@181 q@@175 w@@181) (InsidePredicate_14940_29221 q@@175 w@@181 r@@175 u@@175))
)))
(assert (forall ((p@@183 T@Field_19474_19475) (v_1@@182 T@FrameType) (q@@176 T@Field_7679_7856) (w@@182 T@FrameType) (r@@176 T@Field_27622_27623) (u@@176 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_14940 p@@183 v_1@@182 q@@176 w@@182) (InsidePredicate_14940_27622 q@@176 w@@182 r@@176 u@@176)) (InsidePredicate_19474_27622 p@@183 v_1@@182 r@@176 u@@176))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_14940 p@@183 v_1@@182 q@@176 w@@182) (InsidePredicate_14940_27622 q@@176 w@@182 r@@176 u@@176))
)))
(assert (forall ((p@@184 T@Field_19474_19475) (v_1@@183 T@FrameType) (q@@177 T@Field_7679_7856) (w@@183 T@FrameType) (r@@177 T@Field_19474_19475) (u@@177 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_14940 p@@184 v_1@@183 q@@177 w@@183) (InsidePredicate_14940_19474 q@@177 w@@183 r@@177 u@@177)) (InsidePredicate_19474_19474 p@@184 v_1@@183 r@@177 u@@177))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_14940 p@@184 v_1@@183 q@@177 w@@183) (InsidePredicate_14940_19474 q@@177 w@@183 r@@177 u@@177))
)))
(assert (forall ((p@@185 T@Field_19474_19475) (v_1@@184 T@FrameType) (q@@178 T@Field_7679_7856) (w@@184 T@FrameType) (r@@178 T@Field_7679_7856) (u@@178 T@FrameType) ) (!  (=> (and (InsidePredicate_19474_14940 p@@185 v_1@@184 q@@178 w@@184) (InsidePredicate_14940_14940 q@@178 w@@184 r@@178 u@@178)) (InsidePredicate_19474_14940 p@@185 v_1@@184 r@@178 u@@178))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19474_14940 p@@185 v_1@@184 q@@178 w@@184) (InsidePredicate_14940_14940 q@@178 w@@184 r@@178 u@@178))
)))
(assert (forall ((p@@186 T@Field_7679_7856) (v_1@@185 T@FrameType) (q@@179 T@Field_33893_33894) (w@@185 T@FrameType) (r@@179 T@Field_33893_33894) (u@@179 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_33893 p@@186 v_1@@185 q@@179 w@@185) (InsidePredicate_33893_33893 q@@179 w@@185 r@@179 u@@179)) (InsidePredicate_14940_33893 p@@186 v_1@@185 r@@179 u@@179))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_33893 p@@186 v_1@@185 q@@179 w@@185) (InsidePredicate_33893_33893 q@@179 w@@185 r@@179 u@@179))
)))
(assert (forall ((p@@187 T@Field_7679_7856) (v_1@@186 T@FrameType) (q@@180 T@Field_33893_33894) (w@@186 T@FrameType) (r@@180 T@Field_32245_32246) (u@@180 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_33893 p@@187 v_1@@186 q@@180 w@@186) (InsidePredicate_33893_32245 q@@180 w@@186 r@@180 u@@180)) (InsidePredicate_14940_32245 p@@187 v_1@@186 r@@180 u@@180))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_33893 p@@187 v_1@@186 q@@180 w@@186) (InsidePredicate_33893_32245 q@@180 w@@186 r@@180 u@@180))
)))
(assert (forall ((p@@188 T@Field_7679_7856) (v_1@@187 T@FrameType) (q@@181 T@Field_33893_33894) (w@@187 T@FrameType) (r@@181 T@Field_29221_29222) (u@@181 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_33893 p@@188 v_1@@187 q@@181 w@@187) (InsidePredicate_33893_29221 q@@181 w@@187 r@@181 u@@181)) (InsidePredicate_14940_29221 p@@188 v_1@@187 r@@181 u@@181))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_33893 p@@188 v_1@@187 q@@181 w@@187) (InsidePredicate_33893_29221 q@@181 w@@187 r@@181 u@@181))
)))
(assert (forall ((p@@189 T@Field_7679_7856) (v_1@@188 T@FrameType) (q@@182 T@Field_33893_33894) (w@@188 T@FrameType) (r@@182 T@Field_27622_27623) (u@@182 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_33893 p@@189 v_1@@188 q@@182 w@@188) (InsidePredicate_33893_27622 q@@182 w@@188 r@@182 u@@182)) (InsidePredicate_14940_27622 p@@189 v_1@@188 r@@182 u@@182))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_33893 p@@189 v_1@@188 q@@182 w@@188) (InsidePredicate_33893_27622 q@@182 w@@188 r@@182 u@@182))
)))
(assert (forall ((p@@190 T@Field_7679_7856) (v_1@@189 T@FrameType) (q@@183 T@Field_33893_33894) (w@@189 T@FrameType) (r@@183 T@Field_19474_19475) (u@@183 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_33893 p@@190 v_1@@189 q@@183 w@@189) (InsidePredicate_33893_19474 q@@183 w@@189 r@@183 u@@183)) (InsidePredicate_14940_19474 p@@190 v_1@@189 r@@183 u@@183))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_33893 p@@190 v_1@@189 q@@183 w@@189) (InsidePredicate_33893_19474 q@@183 w@@189 r@@183 u@@183))
)))
(assert (forall ((p@@191 T@Field_7679_7856) (v_1@@190 T@FrameType) (q@@184 T@Field_33893_33894) (w@@190 T@FrameType) (r@@184 T@Field_7679_7856) (u@@184 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_33893 p@@191 v_1@@190 q@@184 w@@190) (InsidePredicate_33893_14940 q@@184 w@@190 r@@184 u@@184)) (InsidePredicate_14940_14940 p@@191 v_1@@190 r@@184 u@@184))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_33893 p@@191 v_1@@190 q@@184 w@@190) (InsidePredicate_33893_14940 q@@184 w@@190 r@@184 u@@184))
)))
(assert (forall ((p@@192 T@Field_7679_7856) (v_1@@191 T@FrameType) (q@@185 T@Field_32245_32246) (w@@191 T@FrameType) (r@@185 T@Field_33893_33894) (u@@185 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_32245 p@@192 v_1@@191 q@@185 w@@191) (InsidePredicate_32245_33893 q@@185 w@@191 r@@185 u@@185)) (InsidePredicate_14940_33893 p@@192 v_1@@191 r@@185 u@@185))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_32245 p@@192 v_1@@191 q@@185 w@@191) (InsidePredicate_32245_33893 q@@185 w@@191 r@@185 u@@185))
)))
(assert (forall ((p@@193 T@Field_7679_7856) (v_1@@192 T@FrameType) (q@@186 T@Field_32245_32246) (w@@192 T@FrameType) (r@@186 T@Field_32245_32246) (u@@186 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_32245 p@@193 v_1@@192 q@@186 w@@192) (InsidePredicate_32245_32245 q@@186 w@@192 r@@186 u@@186)) (InsidePredicate_14940_32245 p@@193 v_1@@192 r@@186 u@@186))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_32245 p@@193 v_1@@192 q@@186 w@@192) (InsidePredicate_32245_32245 q@@186 w@@192 r@@186 u@@186))
)))
(assert (forall ((p@@194 T@Field_7679_7856) (v_1@@193 T@FrameType) (q@@187 T@Field_32245_32246) (w@@193 T@FrameType) (r@@187 T@Field_29221_29222) (u@@187 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_32245 p@@194 v_1@@193 q@@187 w@@193) (InsidePredicate_32245_29221 q@@187 w@@193 r@@187 u@@187)) (InsidePredicate_14940_29221 p@@194 v_1@@193 r@@187 u@@187))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_32245 p@@194 v_1@@193 q@@187 w@@193) (InsidePredicate_32245_29221 q@@187 w@@193 r@@187 u@@187))
)))
(assert (forall ((p@@195 T@Field_7679_7856) (v_1@@194 T@FrameType) (q@@188 T@Field_32245_32246) (w@@194 T@FrameType) (r@@188 T@Field_27622_27623) (u@@188 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_32245 p@@195 v_1@@194 q@@188 w@@194) (InsidePredicate_32245_27622 q@@188 w@@194 r@@188 u@@188)) (InsidePredicate_14940_27622 p@@195 v_1@@194 r@@188 u@@188))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_32245 p@@195 v_1@@194 q@@188 w@@194) (InsidePredicate_32245_27622 q@@188 w@@194 r@@188 u@@188))
)))
(assert (forall ((p@@196 T@Field_7679_7856) (v_1@@195 T@FrameType) (q@@189 T@Field_32245_32246) (w@@195 T@FrameType) (r@@189 T@Field_19474_19475) (u@@189 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_32245 p@@196 v_1@@195 q@@189 w@@195) (InsidePredicate_32245_19474 q@@189 w@@195 r@@189 u@@189)) (InsidePredicate_14940_19474 p@@196 v_1@@195 r@@189 u@@189))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_32245 p@@196 v_1@@195 q@@189 w@@195) (InsidePredicate_32245_19474 q@@189 w@@195 r@@189 u@@189))
)))
(assert (forall ((p@@197 T@Field_7679_7856) (v_1@@196 T@FrameType) (q@@190 T@Field_32245_32246) (w@@196 T@FrameType) (r@@190 T@Field_7679_7856) (u@@190 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_32245 p@@197 v_1@@196 q@@190 w@@196) (InsidePredicate_32245_14940 q@@190 w@@196 r@@190 u@@190)) (InsidePredicate_14940_14940 p@@197 v_1@@196 r@@190 u@@190))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_32245 p@@197 v_1@@196 q@@190 w@@196) (InsidePredicate_32245_14940 q@@190 w@@196 r@@190 u@@190))
)))
(assert (forall ((p@@198 T@Field_7679_7856) (v_1@@197 T@FrameType) (q@@191 T@Field_29221_29222) (w@@197 T@FrameType) (r@@191 T@Field_33893_33894) (u@@191 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_29221 p@@198 v_1@@197 q@@191 w@@197) (InsidePredicate_29221_33893 q@@191 w@@197 r@@191 u@@191)) (InsidePredicate_14940_33893 p@@198 v_1@@197 r@@191 u@@191))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_29221 p@@198 v_1@@197 q@@191 w@@197) (InsidePredicate_29221_33893 q@@191 w@@197 r@@191 u@@191))
)))
(assert (forall ((p@@199 T@Field_7679_7856) (v_1@@198 T@FrameType) (q@@192 T@Field_29221_29222) (w@@198 T@FrameType) (r@@192 T@Field_32245_32246) (u@@192 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_29221 p@@199 v_1@@198 q@@192 w@@198) (InsidePredicate_29221_32245 q@@192 w@@198 r@@192 u@@192)) (InsidePredicate_14940_32245 p@@199 v_1@@198 r@@192 u@@192))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_29221 p@@199 v_1@@198 q@@192 w@@198) (InsidePredicate_29221_32245 q@@192 w@@198 r@@192 u@@192))
)))
(assert (forall ((p@@200 T@Field_7679_7856) (v_1@@199 T@FrameType) (q@@193 T@Field_29221_29222) (w@@199 T@FrameType) (r@@193 T@Field_29221_29222) (u@@193 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_29221 p@@200 v_1@@199 q@@193 w@@199) (InsidePredicate_29221_29221 q@@193 w@@199 r@@193 u@@193)) (InsidePredicate_14940_29221 p@@200 v_1@@199 r@@193 u@@193))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_29221 p@@200 v_1@@199 q@@193 w@@199) (InsidePredicate_29221_29221 q@@193 w@@199 r@@193 u@@193))
)))
(assert (forall ((p@@201 T@Field_7679_7856) (v_1@@200 T@FrameType) (q@@194 T@Field_29221_29222) (w@@200 T@FrameType) (r@@194 T@Field_27622_27623) (u@@194 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_29221 p@@201 v_1@@200 q@@194 w@@200) (InsidePredicate_29221_27622 q@@194 w@@200 r@@194 u@@194)) (InsidePredicate_14940_27622 p@@201 v_1@@200 r@@194 u@@194))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_29221 p@@201 v_1@@200 q@@194 w@@200) (InsidePredicate_29221_27622 q@@194 w@@200 r@@194 u@@194))
)))
(assert (forall ((p@@202 T@Field_7679_7856) (v_1@@201 T@FrameType) (q@@195 T@Field_29221_29222) (w@@201 T@FrameType) (r@@195 T@Field_19474_19475) (u@@195 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_29221 p@@202 v_1@@201 q@@195 w@@201) (InsidePredicate_29221_19474 q@@195 w@@201 r@@195 u@@195)) (InsidePredicate_14940_19474 p@@202 v_1@@201 r@@195 u@@195))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_29221 p@@202 v_1@@201 q@@195 w@@201) (InsidePredicate_29221_19474 q@@195 w@@201 r@@195 u@@195))
)))
(assert (forall ((p@@203 T@Field_7679_7856) (v_1@@202 T@FrameType) (q@@196 T@Field_29221_29222) (w@@202 T@FrameType) (r@@196 T@Field_7679_7856) (u@@196 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_29221 p@@203 v_1@@202 q@@196 w@@202) (InsidePredicate_29221_14940 q@@196 w@@202 r@@196 u@@196)) (InsidePredicate_14940_14940 p@@203 v_1@@202 r@@196 u@@196))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_29221 p@@203 v_1@@202 q@@196 w@@202) (InsidePredicate_29221_14940 q@@196 w@@202 r@@196 u@@196))
)))
(assert (forall ((p@@204 T@Field_7679_7856) (v_1@@203 T@FrameType) (q@@197 T@Field_27622_27623) (w@@203 T@FrameType) (r@@197 T@Field_33893_33894) (u@@197 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_27622 p@@204 v_1@@203 q@@197 w@@203) (InsidePredicate_27622_33893 q@@197 w@@203 r@@197 u@@197)) (InsidePredicate_14940_33893 p@@204 v_1@@203 r@@197 u@@197))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_27622 p@@204 v_1@@203 q@@197 w@@203) (InsidePredicate_27622_33893 q@@197 w@@203 r@@197 u@@197))
)))
(assert (forall ((p@@205 T@Field_7679_7856) (v_1@@204 T@FrameType) (q@@198 T@Field_27622_27623) (w@@204 T@FrameType) (r@@198 T@Field_32245_32246) (u@@198 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_27622 p@@205 v_1@@204 q@@198 w@@204) (InsidePredicate_27622_32245 q@@198 w@@204 r@@198 u@@198)) (InsidePredicate_14940_32245 p@@205 v_1@@204 r@@198 u@@198))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_27622 p@@205 v_1@@204 q@@198 w@@204) (InsidePredicate_27622_32245 q@@198 w@@204 r@@198 u@@198))
)))
(assert (forall ((p@@206 T@Field_7679_7856) (v_1@@205 T@FrameType) (q@@199 T@Field_27622_27623) (w@@205 T@FrameType) (r@@199 T@Field_29221_29222) (u@@199 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_27622 p@@206 v_1@@205 q@@199 w@@205) (InsidePredicate_27622_29221 q@@199 w@@205 r@@199 u@@199)) (InsidePredicate_14940_29221 p@@206 v_1@@205 r@@199 u@@199))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_27622 p@@206 v_1@@205 q@@199 w@@205) (InsidePredicate_27622_29221 q@@199 w@@205 r@@199 u@@199))
)))
(assert (forall ((p@@207 T@Field_7679_7856) (v_1@@206 T@FrameType) (q@@200 T@Field_27622_27623) (w@@206 T@FrameType) (r@@200 T@Field_27622_27623) (u@@200 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_27622 p@@207 v_1@@206 q@@200 w@@206) (InsidePredicate_27622_27622 q@@200 w@@206 r@@200 u@@200)) (InsidePredicate_14940_27622 p@@207 v_1@@206 r@@200 u@@200))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_27622 p@@207 v_1@@206 q@@200 w@@206) (InsidePredicate_27622_27622 q@@200 w@@206 r@@200 u@@200))
)))
(assert (forall ((p@@208 T@Field_7679_7856) (v_1@@207 T@FrameType) (q@@201 T@Field_27622_27623) (w@@207 T@FrameType) (r@@201 T@Field_19474_19475) (u@@201 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_27622 p@@208 v_1@@207 q@@201 w@@207) (InsidePredicate_27622_19474 q@@201 w@@207 r@@201 u@@201)) (InsidePredicate_14940_19474 p@@208 v_1@@207 r@@201 u@@201))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_27622 p@@208 v_1@@207 q@@201 w@@207) (InsidePredicate_27622_19474 q@@201 w@@207 r@@201 u@@201))
)))
(assert (forall ((p@@209 T@Field_7679_7856) (v_1@@208 T@FrameType) (q@@202 T@Field_27622_27623) (w@@208 T@FrameType) (r@@202 T@Field_7679_7856) (u@@202 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_27622 p@@209 v_1@@208 q@@202 w@@208) (InsidePredicate_27622_14940 q@@202 w@@208 r@@202 u@@202)) (InsidePredicate_14940_14940 p@@209 v_1@@208 r@@202 u@@202))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_27622 p@@209 v_1@@208 q@@202 w@@208) (InsidePredicate_27622_14940 q@@202 w@@208 r@@202 u@@202))
)))
(assert (forall ((p@@210 T@Field_7679_7856) (v_1@@209 T@FrameType) (q@@203 T@Field_19474_19475) (w@@209 T@FrameType) (r@@203 T@Field_33893_33894) (u@@203 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_19474 p@@210 v_1@@209 q@@203 w@@209) (InsidePredicate_19474_33893 q@@203 w@@209 r@@203 u@@203)) (InsidePredicate_14940_33893 p@@210 v_1@@209 r@@203 u@@203))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_19474 p@@210 v_1@@209 q@@203 w@@209) (InsidePredicate_19474_33893 q@@203 w@@209 r@@203 u@@203))
)))
(assert (forall ((p@@211 T@Field_7679_7856) (v_1@@210 T@FrameType) (q@@204 T@Field_19474_19475) (w@@210 T@FrameType) (r@@204 T@Field_32245_32246) (u@@204 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_19474 p@@211 v_1@@210 q@@204 w@@210) (InsidePredicate_19474_32245 q@@204 w@@210 r@@204 u@@204)) (InsidePredicate_14940_32245 p@@211 v_1@@210 r@@204 u@@204))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_19474 p@@211 v_1@@210 q@@204 w@@210) (InsidePredicate_19474_32245 q@@204 w@@210 r@@204 u@@204))
)))
(assert (forall ((p@@212 T@Field_7679_7856) (v_1@@211 T@FrameType) (q@@205 T@Field_19474_19475) (w@@211 T@FrameType) (r@@205 T@Field_29221_29222) (u@@205 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_19474 p@@212 v_1@@211 q@@205 w@@211) (InsidePredicate_19474_29221 q@@205 w@@211 r@@205 u@@205)) (InsidePredicate_14940_29221 p@@212 v_1@@211 r@@205 u@@205))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_19474 p@@212 v_1@@211 q@@205 w@@211) (InsidePredicate_19474_29221 q@@205 w@@211 r@@205 u@@205))
)))
(assert (forall ((p@@213 T@Field_7679_7856) (v_1@@212 T@FrameType) (q@@206 T@Field_19474_19475) (w@@212 T@FrameType) (r@@206 T@Field_27622_27623) (u@@206 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_19474 p@@213 v_1@@212 q@@206 w@@212) (InsidePredicate_19474_27622 q@@206 w@@212 r@@206 u@@206)) (InsidePredicate_14940_27622 p@@213 v_1@@212 r@@206 u@@206))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_19474 p@@213 v_1@@212 q@@206 w@@212) (InsidePredicate_19474_27622 q@@206 w@@212 r@@206 u@@206))
)))
(assert (forall ((p@@214 T@Field_7679_7856) (v_1@@213 T@FrameType) (q@@207 T@Field_19474_19475) (w@@213 T@FrameType) (r@@207 T@Field_19474_19475) (u@@207 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_19474 p@@214 v_1@@213 q@@207 w@@213) (InsidePredicate_19474_19474 q@@207 w@@213 r@@207 u@@207)) (InsidePredicate_14940_19474 p@@214 v_1@@213 r@@207 u@@207))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_19474 p@@214 v_1@@213 q@@207 w@@213) (InsidePredicate_19474_19474 q@@207 w@@213 r@@207 u@@207))
)))
(assert (forall ((p@@215 T@Field_7679_7856) (v_1@@214 T@FrameType) (q@@208 T@Field_19474_19475) (w@@214 T@FrameType) (r@@208 T@Field_7679_7856) (u@@208 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_19474 p@@215 v_1@@214 q@@208 w@@214) (InsidePredicate_19474_14940 q@@208 w@@214 r@@208 u@@208)) (InsidePredicate_14940_14940 p@@215 v_1@@214 r@@208 u@@208))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_19474 p@@215 v_1@@214 q@@208 w@@214) (InsidePredicate_19474_14940 q@@208 w@@214 r@@208 u@@208))
)))
(assert (forall ((p@@216 T@Field_7679_7856) (v_1@@215 T@FrameType) (q@@209 T@Field_7679_7856) (w@@215 T@FrameType) (r@@209 T@Field_33893_33894) (u@@209 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_14940 p@@216 v_1@@215 q@@209 w@@215) (InsidePredicate_14940_33893 q@@209 w@@215 r@@209 u@@209)) (InsidePredicate_14940_33893 p@@216 v_1@@215 r@@209 u@@209))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_14940 p@@216 v_1@@215 q@@209 w@@215) (InsidePredicate_14940_33893 q@@209 w@@215 r@@209 u@@209))
)))
(assert (forall ((p@@217 T@Field_7679_7856) (v_1@@216 T@FrameType) (q@@210 T@Field_7679_7856) (w@@216 T@FrameType) (r@@210 T@Field_32245_32246) (u@@210 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_14940 p@@217 v_1@@216 q@@210 w@@216) (InsidePredicate_14940_32245 q@@210 w@@216 r@@210 u@@210)) (InsidePredicate_14940_32245 p@@217 v_1@@216 r@@210 u@@210))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_14940 p@@217 v_1@@216 q@@210 w@@216) (InsidePredicate_14940_32245 q@@210 w@@216 r@@210 u@@210))
)))
(assert (forall ((p@@218 T@Field_7679_7856) (v_1@@217 T@FrameType) (q@@211 T@Field_7679_7856) (w@@217 T@FrameType) (r@@211 T@Field_29221_29222) (u@@211 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_14940 p@@218 v_1@@217 q@@211 w@@217) (InsidePredicate_14940_29221 q@@211 w@@217 r@@211 u@@211)) (InsidePredicate_14940_29221 p@@218 v_1@@217 r@@211 u@@211))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_14940 p@@218 v_1@@217 q@@211 w@@217) (InsidePredicate_14940_29221 q@@211 w@@217 r@@211 u@@211))
)))
(assert (forall ((p@@219 T@Field_7679_7856) (v_1@@218 T@FrameType) (q@@212 T@Field_7679_7856) (w@@218 T@FrameType) (r@@212 T@Field_27622_27623) (u@@212 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_14940 p@@219 v_1@@218 q@@212 w@@218) (InsidePredicate_14940_27622 q@@212 w@@218 r@@212 u@@212)) (InsidePredicate_14940_27622 p@@219 v_1@@218 r@@212 u@@212))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_14940 p@@219 v_1@@218 q@@212 w@@218) (InsidePredicate_14940_27622 q@@212 w@@218 r@@212 u@@212))
)))
(assert (forall ((p@@220 T@Field_7679_7856) (v_1@@219 T@FrameType) (q@@213 T@Field_7679_7856) (w@@219 T@FrameType) (r@@213 T@Field_19474_19475) (u@@213 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_14940 p@@220 v_1@@219 q@@213 w@@219) (InsidePredicate_14940_19474 q@@213 w@@219 r@@213 u@@213)) (InsidePredicate_14940_19474 p@@220 v_1@@219 r@@213 u@@213))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_14940 p@@220 v_1@@219 q@@213 w@@219) (InsidePredicate_14940_19474 q@@213 w@@219 r@@213 u@@213))
)))
(assert (forall ((p@@221 T@Field_7679_7856) (v_1@@220 T@FrameType) (q@@214 T@Field_7679_7856) (w@@220 T@FrameType) (r@@214 T@Field_7679_7856) (u@@214 T@FrameType) ) (!  (=> (and (InsidePredicate_14940_14940 p@@221 v_1@@220 q@@214 w@@220) (InsidePredicate_14940_14940 q@@214 w@@220 r@@214 u@@214)) (InsidePredicate_14940_14940 p@@221 v_1@@220 r@@214 u@@214))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14940_14940 p@@221 v_1@@220 q@@214 w@@220) (InsidePredicate_14940_14940 q@@214 w@@220 r@@214 u@@214))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@7 () T@PolymorphicMapType_14901)
(declare-fun Mask@6 () T@PolymorphicMapType_14901)
(declare-fun this$_5 () T@Ref)
(declare-fun perm@11 () Real)
(declare-fun Heap@3 () T@PolymorphicMapType_14880)
(declare-fun Mask@5 () T@PolymorphicMapType_14901)
(declare-fun perm@10 () Real)
(declare-fun Mask@4 () T@PolymorphicMapType_14901)
(declare-fun perm@9 () Real)
(declare-fun Mask@3 () T@PolymorphicMapType_14901)
(declare-fun perm@8 () Real)
(declare-fun Heap@@116 () T@PolymorphicMapType_14880)
(declare-fun n$_1 () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_14880)
(declare-fun Heap@1 () T@PolymorphicMapType_14880)
(declare-fun Heap@2 () T@PolymorphicMapType_14880)
(declare-fun PostHeap@0 () T@PolymorphicMapType_14880)
(declare-fun perm@4 () Real)
(declare-fun PostMask@0 () T@PolymorphicMapType_14901)
(declare-fun perm@5 () Real)
(declare-fun PostMask@1 () T@PolymorphicMapType_14901)
(declare-fun perm@6 () Real)
(declare-fun PostMask@2 () T@PolymorphicMapType_14901)
(declare-fun perm@7 () Real)
(declare-fun PostMask@3 () T@PolymorphicMapType_14901)
(declare-fun k$_1 () Real)
(declare-fun perm@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_14901)
(declare-fun perm@1 () Real)
(declare-fun Mask@1 () T@PolymorphicMapType_14901)
(declare-fun perm@2 () Real)
(declare-fun Mask@2 () T@PolymorphicMapType_14901)
(declare-fun perm@3 () Real)
(set-info :boogie-vc-id Wand_readonly_for_writeonlyWand_readonly_for_writeonly_init$)
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
 (=> (= (ControlFlow 0 0) 44) (let ((anon10_correct  (=> (and (= Mask@7 (PolymorphicMapType_14901 (|PolymorphicMapType_14901_7855_7856#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| Mask@6) (store (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| Mask@6) this$_5 Wand_readonly_for_writeonlythis_1$ (- (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| Mask@6) this$_5 Wand_readonly_for_writeonlythis_1$) perm@11)) (|PolymorphicMapType_14901_7904_7905#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_7929_7930#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_7855_1231#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_7855_7680#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_7855_53#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_7855_645#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_7855_83807#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_7677_7856#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_7677_53#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_7677_645#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_7677_84286#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_7904_1231#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_7904_7680#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_7904_53#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_7904_645#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_7904_84777#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_7929_1231#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_7929_7680#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_7929_53#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_7929_645#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_7929_85268#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_29221_7856#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_29221_1231#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_29221_7680#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_29221_53#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_29221_645#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_29221_85774#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_32245_7856#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_32245_1231#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_32245_7680#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_32245_53#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_32245_645#PolymorphicMapType_14901| Mask@6) (|PolymorphicMapType_14901_32245_86280#PolymorphicMapType_14901| Mask@6))) (= (ControlFlow 0 11) (- 0 10))) (= (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@3) this$_5 Wand_readonly_for_writeonlythis_1$) null))))
(let ((anon15_Else_correct  (=> (and (= perm@11 NoPerm) (= (ControlFlow 0 14) 11)) anon10_correct)))
(let ((anon15_Then_correct  (=> (not (= perm@11 NoPerm)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (<= perm@11 (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| Mask@6) this$_5 Wand_readonly_for_writeonlythis_1$))) (=> (<= perm@11 (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| Mask@6) this$_5 Wand_readonly_for_writeonlythis_1$)) (=> (= (ControlFlow 0 12) 11) anon10_correct))))))
(let ((anon8_correct  (=> (= Mask@6 (PolymorphicMapType_14901 (|PolymorphicMapType_14901_7855_7856#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| Mask@5) (store (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| Mask@5) this$_5 Wand_readonly_for_writeonlyout_1$ (- (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| Mask@5) this$_5 Wand_readonly_for_writeonlyout_1$) perm@10)) (|PolymorphicMapType_14901_7904_7905#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_7929_7930#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_7855_1231#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_7855_7680#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_7855_53#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_7855_645#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_7855_83807#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_7677_7856#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_7677_53#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_7677_645#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_7677_84286#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_7904_1231#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_7904_7680#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_7904_53#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_7904_645#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_7904_84777#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_7929_1231#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_7929_7680#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_7929_53#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_7929_645#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_7929_85268#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_29221_7856#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_29221_1231#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_29221_7680#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_29221_53#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_29221_645#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_29221_85774#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_32245_7856#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_32245_1231#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_32245_7680#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_32245_53#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_32245_645#PolymorphicMapType_14901| Mask@5) (|PolymorphicMapType_14901_32245_86280#PolymorphicMapType_14901| Mask@5))) (and (=> (= (ControlFlow 0 15) (- 0 17)) (= (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@3) this$_5 Wand_readonly_for_writeonlyout_1$) null)) (=> (= (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@3) this$_5 Wand_readonly_for_writeonlyout_1$) null) (=> (= perm@11 (/ (to_real 100) (to_real 100))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (>= perm@11 NoPerm)) (=> (>= perm@11 NoPerm) (and (=> (= (ControlFlow 0 15) 12) anon15_Then_correct) (=> (= (ControlFlow 0 15) 14) anon15_Else_correct))))))))))
(let ((anon14_Else_correct  (=> (and (= perm@10 NoPerm) (= (ControlFlow 0 20) 15)) anon8_correct)))
(let ((anon14_Then_correct  (=> (not (= perm@10 NoPerm)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (<= perm@10 (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| Mask@5) this$_5 Wand_readonly_for_writeonlyout_1$))) (=> (<= perm@10 (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| Mask@5) this$_5 Wand_readonly_for_writeonlyout_1$)) (=> (= (ControlFlow 0 18) 15) anon8_correct))))))
(let ((anon6_correct  (=> (= Mask@5 (PolymorphicMapType_14901 (|PolymorphicMapType_14901_7855_7856#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| Mask@4) (store (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| Mask@4) this$_5 Wand_readonly_for_writeonlyin_1$ (- (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| Mask@4) this$_5 Wand_readonly_for_writeonlyin_1$) perm@9)) (|PolymorphicMapType_14901_7904_7905#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_7929_7930#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_7855_1231#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_7855_7680#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_7855_53#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_7855_645#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_7855_83807#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_7677_7856#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_7677_53#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_7677_645#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_7677_84286#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_7904_1231#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_7904_7680#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_7904_53#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_7904_645#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_7904_84777#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_7929_1231#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_7929_7680#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_7929_53#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_7929_645#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_7929_85268#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_29221_7856#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_29221_1231#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_29221_7680#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_29221_53#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_29221_645#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_29221_85774#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_32245_7856#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_32245_1231#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_32245_7680#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_32245_53#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_32245_645#PolymorphicMapType_14901| Mask@4) (|PolymorphicMapType_14901_32245_86280#PolymorphicMapType_14901| Mask@4))) (and (=> (= (ControlFlow 0 21) (- 0 23)) (= (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@3) this$_5 Wand_readonly_for_writeonlyin_1$) null)) (=> (= (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@3) this$_5 Wand_readonly_for_writeonlyin_1$) null) (=> (= perm@10 (/ (to_real 100) (to_real 100))) (and (=> (= (ControlFlow 0 21) (- 0 22)) (>= perm@10 NoPerm)) (=> (>= perm@10 NoPerm) (and (=> (= (ControlFlow 0 21) 18) anon14_Then_correct) (=> (= (ControlFlow 0 21) 20) anon14_Else_correct))))))))))
(let ((anon13_Else_correct  (=> (and (= perm@9 NoPerm) (= (ControlFlow 0 26) 21)) anon6_correct)))
(let ((anon13_Then_correct  (=> (not (= perm@9 NoPerm)) (and (=> (= (ControlFlow 0 24) (- 0 25)) (<= perm@9 (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| Mask@4) this$_5 Wand_readonly_for_writeonlyin_1$))) (=> (<= perm@9 (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| Mask@4) this$_5 Wand_readonly_for_writeonlyin_1$)) (=> (= (ControlFlow 0 24) 21) anon6_correct))))))
(let ((anon4_correct  (=> (= Mask@4 (PolymorphicMapType_14901 (|PolymorphicMapType_14901_7855_7856#PolymorphicMapType_14901| Mask@3) (store (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| Mask@3) this$_5 Wand_readonly_for_writeonlylemma$ (- (select (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| Mask@3) this$_5 Wand_readonly_for_writeonlylemma$) perm@8)) (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_7904_7905#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_7929_7930#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_7855_1231#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_7855_7680#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_7855_53#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_7855_645#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_7855_83807#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_7677_7856#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_7677_53#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_7677_645#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_7677_84286#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_7904_1231#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_7904_7680#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_7904_53#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_7904_645#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_7904_84777#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_7929_1231#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_7929_7680#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_7929_53#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_7929_645#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_7929_85268#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_29221_7856#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_29221_1231#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_29221_7680#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_29221_53#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_29221_645#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_29221_85774#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_32245_7856#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_32245_1231#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_32245_7680#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_32245_53#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_32245_645#PolymorphicMapType_14901| Mask@3) (|PolymorphicMapType_14901_32245_86280#PolymorphicMapType_14901| Mask@3))) (and (=> (= (ControlFlow 0 27) (- 0 29)) (= (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@3) this$_5 Wand_readonly_for_writeonlylemma$) 0)) (=> (= (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@3) this$_5 Wand_readonly_for_writeonlylemma$) 0) (=> (= perm@9 (/ (to_real 100) (to_real 100))) (and (=> (= (ControlFlow 0 27) (- 0 28)) (>= perm@9 NoPerm)) (=> (>= perm@9 NoPerm) (and (=> (= (ControlFlow 0 27) 24) anon13_Then_correct) (=> (= (ControlFlow 0 27) 26) anon13_Else_correct))))))))))
(let ((anon12_Else_correct  (=> (and (= perm@8 NoPerm) (= (ControlFlow 0 32) 27)) anon4_correct)))
(let ((anon12_Then_correct  (=> (not (= perm@8 NoPerm)) (and (=> (= (ControlFlow 0 30) (- 0 31)) (<= perm@8 (select (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| Mask@3) this$_5 Wand_readonly_for_writeonlylemma$))) (=> (<= perm@8 (select (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| Mask@3) this$_5 Wand_readonly_for_writeonlylemma$)) (=> (= (ControlFlow 0 30) 27) anon4_correct))))))
(let ((anon11_Else_correct  (=> (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@116) n$_1 $allocated) (and (=> (= (ControlFlow 0 33) (- 0 38)) (= FullPerm (select (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| Mask@3) this$_5 Wand_readonly_for_writeonlylemma$))) (=> (= FullPerm (select (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| Mask@3) this$_5 Wand_readonly_for_writeonlylemma$)) (=> (and (= Heap@0 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@@116) (store (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@@116) this$_5 Wand_readonly_for_writeonlylemma$ 0) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@@116) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@@116))) (state Heap@0 Mask@3)) (and (=> (= (ControlFlow 0 33) (- 0 37)) (= FullPerm (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| Mask@3) this$_5 Wand_readonly_for_writeonlyin_1$))) (=> (= FullPerm (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| Mask@3) this$_5 Wand_readonly_for_writeonlyin_1$)) (=> (and (= Heap@1 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@0) (store (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@0) this$_5 Wand_readonly_for_writeonlyin_1$ null) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@0) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@0))) (state Heap@1 Mask@3)) (and (=> (= (ControlFlow 0 33) (- 0 36)) (= FullPerm (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| Mask@3) this$_5 Wand_readonly_for_writeonlyout_1$))) (=> (= FullPerm (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| Mask@3) this$_5 Wand_readonly_for_writeonlyout_1$)) (=> (and (= Heap@2 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@1) (store (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@1) this$_5 Wand_readonly_for_writeonlyout_1$ null) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@1) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@1))) (state Heap@2 Mask@3)) (and (=> (= (ControlFlow 0 33) (- 0 35)) (= FullPerm (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| Mask@3) this$_5 Wand_readonly_for_writeonlythis_1$))) (=> (= FullPerm (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| Mask@3) this$_5 Wand_readonly_for_writeonlythis_1$)) (=> (= Heap@3 (PolymorphicMapType_14880 (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@2) (store (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| Heap@2) this$_5 Wand_readonly_for_writeonlythis_1$ null) (|PolymorphicMapType_14880_7855_7856#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_7859_22257#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_7904_7905#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_7908_29005#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_7929_7930#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_7933_41708#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_7679_7856#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_7679_645#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_7679_50580#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_7855_7680#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_7855_1291#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_7855_53#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_7855_645#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_7904_7680#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_7904_1291#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_7904_53#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_7904_645#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_7929_7680#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_7929_1291#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_7929_53#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_7929_645#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_29221_7680#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_29221_1291#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_29221_7856#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_29221_53#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_29221_645#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_29221_55936#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_32245_7680#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_32245_1291#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_32245_7856#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_32245_53#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_32245_645#PolymorphicMapType_14880| Heap@2) (|PolymorphicMapType_14880_32245_57335#PolymorphicMapType_14880| Heap@2))) (=> (and (state Heap@3 Mask@3) (= perm@8 (/ (to_real 100) (to_real 100)))) (and (=> (= (ControlFlow 0 33) (- 0 34)) (>= perm@8 NoPerm)) (=> (>= perm@8 NoPerm) (and (=> (= (ControlFlow 0 33) 30) anon12_Then_correct) (=> (= (ControlFlow 0 33) 32) anon12_Else_correct))))))))))))))))))))
(let ((anon11_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (= perm@4 (/ (to_real 100) (to_real 100)))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (>= perm@4 NoPerm)) (=> (>= perm@4 NoPerm) (=> (=> (> perm@4 NoPerm) (not (= this$_5 null))) (=> (and (= PostMask@0 (PolymorphicMapType_14901 (|PolymorphicMapType_14901_7855_7856#PolymorphicMapType_14901| ZeroMask) (store (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| ZeroMask) this$_5 Wand_readonly_for_writeonlylemma$ (+ (select (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| ZeroMask) this$_5 Wand_readonly_for_writeonlylemma$) perm@4)) (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7904_7905#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7929_7930#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7855_1231#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7855_7680#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7855_53#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7855_645#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7855_83807#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7677_7856#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7677_53#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7677_645#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7677_84286#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7904_1231#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7904_7680#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7904_53#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7904_645#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7904_84777#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7929_1231#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7929_7680#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7929_53#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7929_645#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7929_85268#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_29221_7856#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_29221_1231#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_29221_7680#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_29221_53#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_29221_645#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_29221_85774#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_32245_7856#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_32245_1231#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_32245_7680#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_32245_53#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_32245_645#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_32245_86280#PolymorphicMapType_14901| ZeroMask))) (state PostHeap@0 PostMask@0)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (HasDirectPerm_7688_1291 PostMask@0 this$_5 Wand_readonly_for_writeonlylemma$)) (=> (HasDirectPerm_7688_1291 PostMask@0 this$_5 Wand_readonly_for_writeonlylemma$) (=> (= (select (|PolymorphicMapType_14880_7677_1231#PolymorphicMapType_14880| PostHeap@0) this$_5 Wand_readonly_for_writeonlylemma$) 0) (=> (and (state PostHeap@0 PostMask@0) (= perm@5 (/ (to_real 100) (to_real 100)))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (>= perm@5 NoPerm)) (=> (>= perm@5 NoPerm) (=> (=> (> perm@5 NoPerm) (not (= this$_5 null))) (=> (and (= PostMask@1 (PolymorphicMapType_14901 (|PolymorphicMapType_14901_7855_7856#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| PostMask@0) (store (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| PostMask@0) this$_5 Wand_readonly_for_writeonlyin_1$ (+ (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| PostMask@0) this$_5 Wand_readonly_for_writeonlyin_1$) perm@5)) (|PolymorphicMapType_14901_7904_7905#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_7929_7930#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_7855_1231#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_7855_7680#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_7855_53#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_7855_645#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_7855_83807#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_7677_7856#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_7677_53#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_7677_645#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_7677_84286#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_7904_1231#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_7904_7680#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_7904_53#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_7904_645#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_7904_84777#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_7929_1231#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_7929_7680#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_7929_53#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_7929_645#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_7929_85268#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_29221_7856#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_29221_1231#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_29221_7680#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_29221_53#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_29221_645#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_29221_85774#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_32245_7856#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_32245_1231#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_32245_7680#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_32245_53#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_32245_645#PolymorphicMapType_14901| PostMask@0) (|PolymorphicMapType_14901_32245_86280#PolymorphicMapType_14901| PostMask@0))) (state PostHeap@0 PostMask@1)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (HasDirectPerm_7679_7680 PostMask@1 this$_5 Wand_readonly_for_writeonlyin_1$)) (=> (HasDirectPerm_7679_7680 PostMask@1 this$_5 Wand_readonly_for_writeonlyin_1$) (=> (= (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| PostHeap@0) this$_5 Wand_readonly_for_writeonlyin_1$) null) (=> (and (state PostHeap@0 PostMask@1) (= perm@6 (/ (to_real 100) (to_real 100)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (>= perm@6 NoPerm)) (=> (>= perm@6 NoPerm) (=> (=> (> perm@6 NoPerm) (not (= this$_5 null))) (=> (and (= PostMask@2 (PolymorphicMapType_14901 (|PolymorphicMapType_14901_7855_7856#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| PostMask@1) (store (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| PostMask@1) this$_5 Wand_readonly_for_writeonlyout_1$ (+ (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| PostMask@1) this$_5 Wand_readonly_for_writeonlyout_1$) perm@6)) (|PolymorphicMapType_14901_7904_7905#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_7929_7930#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_7855_1231#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_7855_7680#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_7855_53#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_7855_645#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_7855_83807#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_7677_7856#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_7677_53#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_7677_645#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_7677_84286#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_7904_1231#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_7904_7680#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_7904_53#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_7904_645#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_7904_84777#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_7929_1231#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_7929_7680#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_7929_53#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_7929_645#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_7929_85268#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_29221_7856#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_29221_1231#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_29221_7680#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_29221_53#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_29221_645#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_29221_85774#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_32245_7856#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_32245_1231#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_32245_7680#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_32245_53#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_32245_645#PolymorphicMapType_14901| PostMask@1) (|PolymorphicMapType_14901_32245_86280#PolymorphicMapType_14901| PostMask@1))) (state PostHeap@0 PostMask@2)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (HasDirectPerm_7679_7680 PostMask@2 this$_5 Wand_readonly_for_writeonlyout_1$)) (=> (HasDirectPerm_7679_7680 PostMask@2 this$_5 Wand_readonly_for_writeonlyout_1$) (=> (= (select (|PolymorphicMapType_14880_7546_7547#PolymorphicMapType_14880| PostHeap@0) this$_5 Wand_readonly_for_writeonlyout_1$) null) (=> (and (state PostHeap@0 PostMask@2) (= perm@7 (/ (to_real 100) (to_real 100)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (>= perm@7 NoPerm)) (=> (>= perm@7 NoPerm) (=> (and (and (=> (> perm@7 NoPerm) (not (= this$_5 null))) (= PostMask@3 (PolymorphicMapType_14901 (|PolymorphicMapType_14901_7855_7856#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| PostMask@2) (store (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| PostMask@2) this$_5 Wand_readonly_for_writeonlythis_1$ (+ (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| PostMask@2) this$_5 Wand_readonly_for_writeonlythis_1$) perm@7)) (|PolymorphicMapType_14901_7904_7905#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_7929_7930#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_7855_1231#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_7855_7680#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_7855_53#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_7855_645#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_7855_83807#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_7677_7856#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_7677_53#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_7677_645#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_7677_84286#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_7904_1231#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_7904_7680#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_7904_53#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_7904_645#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_7904_84777#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_7929_1231#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_7929_7680#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_7929_53#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_7929_645#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_7929_85268#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_29221_7856#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_29221_1231#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_29221_7680#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_29221_53#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_29221_645#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_29221_85774#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_32245_7856#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_32245_1231#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_32245_7680#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_32245_53#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_32245_645#PolymorphicMapType_14901| PostMask@2) (|PolymorphicMapType_14901_32245_86280#PolymorphicMapType_14901| PostMask@2)))) (and (state PostHeap@0 PostMask@3) (= (ControlFlow 0 2) (- 0 1)))) (HasDirectPerm_7679_7680 PostMask@3 this$_5 Wand_readonly_for_writeonlythis_1$)))))))))))))))))))))))))))))))
(let ((anon0_correct  (=> (state Heap@@116 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (and (select (|PolymorphicMapType_14880_7543_53#PolymorphicMapType_14880| Heap@@116) this$_5 $allocated) (not (= this$_5 null))) (and (state Heap@@116 ZeroMask) (< NoPerm k$_1))) (and (and (state Heap@@116 ZeroMask) (< k$_1 FullPerm)) (and (state Heap@@116 ZeroMask) (= perm@0 (/ (to_real 100) (to_real 100)))))) (and (=> (= (ControlFlow 0 39) (- 0 43)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (=> (> perm@0 NoPerm) (not (= this$_5 null))) (=> (and (and (= Mask@0 (PolymorphicMapType_14901 (|PolymorphicMapType_14901_7855_7856#PolymorphicMapType_14901| ZeroMask) (store (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| ZeroMask) this$_5 Wand_readonly_for_writeonlylemma$ (+ (select (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| ZeroMask) this$_5 Wand_readonly_for_writeonlylemma$) perm@0)) (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7904_7905#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7929_7930#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7855_1231#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7855_7680#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7855_53#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7855_645#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7855_83807#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7677_7856#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7677_53#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7677_645#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7677_84286#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7904_1231#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7904_7680#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7904_53#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7904_645#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7904_84777#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7929_1231#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7929_7680#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7929_53#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7929_645#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_7929_85268#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_29221_7856#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_29221_1231#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_29221_7680#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_29221_53#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_29221_645#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_29221_85774#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_32245_7856#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_32245_1231#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_32245_7680#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_32245_53#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_32245_645#PolymorphicMapType_14901| ZeroMask) (|PolymorphicMapType_14901_32245_86280#PolymorphicMapType_14901| ZeroMask))) (state Heap@@116 Mask@0)) (and (state Heap@@116 Mask@0) (= perm@1 (/ (to_real 100) (to_real 100))))) (and (=> (= (ControlFlow 0 39) (- 0 42)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (=> (> perm@1 NoPerm) (not (= this$_5 null))) (=> (and (and (= Mask@1 (PolymorphicMapType_14901 (|PolymorphicMapType_14901_7855_7856#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| Mask@0) (store (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| Mask@0) this$_5 Wand_readonly_for_writeonlyin_1$ (+ (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| Mask@0) this$_5 Wand_readonly_for_writeonlyin_1$) perm@1)) (|PolymorphicMapType_14901_7904_7905#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_7929_7930#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_7855_1231#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_7855_7680#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_7855_53#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_7855_645#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_7855_83807#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_7677_7856#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_7677_53#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_7677_645#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_7677_84286#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_7904_1231#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_7904_7680#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_7904_53#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_7904_645#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_7904_84777#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_7929_1231#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_7929_7680#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_7929_53#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_7929_645#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_7929_85268#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_29221_7856#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_29221_1231#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_29221_7680#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_29221_53#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_29221_645#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_29221_85774#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_32245_7856#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_32245_1231#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_32245_7680#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_32245_53#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_32245_645#PolymorphicMapType_14901| Mask@0) (|PolymorphicMapType_14901_32245_86280#PolymorphicMapType_14901| Mask@0))) (state Heap@@116 Mask@1)) (and (state Heap@@116 Mask@1) (= perm@2 (/ (to_real 100) (to_real 100))))) (and (=> (= (ControlFlow 0 39) (- 0 41)) (>= perm@2 NoPerm)) (=> (>= perm@2 NoPerm) (=> (=> (> perm@2 NoPerm) (not (= this$_5 null))) (=> (and (and (= Mask@2 (PolymorphicMapType_14901 (|PolymorphicMapType_14901_7855_7856#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| Mask@1) (store (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| Mask@1) this$_5 Wand_readonly_for_writeonlyout_1$ (+ (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| Mask@1) this$_5 Wand_readonly_for_writeonlyout_1$) perm@2)) (|PolymorphicMapType_14901_7904_7905#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_7929_7930#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_7855_1231#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_7855_7680#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_7855_53#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_7855_645#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_7855_83807#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_7677_7856#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_7677_53#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_7677_645#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_7677_84286#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_7904_1231#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_7904_7680#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_7904_53#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_7904_645#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_7904_84777#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_7929_1231#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_7929_7680#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_7929_53#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_7929_645#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_7929_85268#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_29221_7856#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_29221_1231#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_29221_7680#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_29221_53#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_29221_645#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_29221_85774#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_32245_7856#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_32245_1231#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_32245_7680#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_32245_53#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_32245_645#PolymorphicMapType_14901| Mask@1) (|PolymorphicMapType_14901_32245_86280#PolymorphicMapType_14901| Mask@1))) (state Heap@@116 Mask@2)) (and (state Heap@@116 Mask@2) (= perm@3 (/ (to_real 100) (to_real 100))))) (and (=> (= (ControlFlow 0 39) (- 0 40)) (>= perm@3 NoPerm)) (=> (>= perm@3 NoPerm) (=> (and (and (=> (> perm@3 NoPerm) (not (= this$_5 null))) (= Mask@3 (PolymorphicMapType_14901 (|PolymorphicMapType_14901_7855_7856#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_7677_1231#PolymorphicMapType_14901| Mask@2) (store (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| Mask@2) this$_5 Wand_readonly_for_writeonlythis_1$ (+ (select (|PolymorphicMapType_14901_7679_7680#PolymorphicMapType_14901| Mask@2) this$_5 Wand_readonly_for_writeonlythis_1$) perm@3)) (|PolymorphicMapType_14901_7904_7905#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_7929_7930#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_7855_1231#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_7855_7680#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_7855_53#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_7855_645#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_7855_83807#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_7677_7856#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_7677_53#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_7677_645#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_7677_84286#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_7904_1231#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_7904_7680#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_7904_53#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_7904_645#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_7904_84777#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_7929_1231#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_7929_7680#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_7929_53#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_7929_645#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_7929_85268#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_29221_7856#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_29221_1231#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_29221_7680#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_29221_53#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_29221_645#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_29221_85774#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_32245_7856#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_32245_1231#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_32245_7680#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_32245_53#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_32245_645#PolymorphicMapType_14901| Mask@2) (|PolymorphicMapType_14901_32245_86280#PolymorphicMapType_14901| Mask@2)))) (and (state Heap@@116 Mask@3) (state Heap@@116 Mask@3))) (and (=> (= (ControlFlow 0 39) 2) anon11_Then_correct) (=> (= (ControlFlow 0 39) 33) anon11_Else_correct))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 44) 39) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
