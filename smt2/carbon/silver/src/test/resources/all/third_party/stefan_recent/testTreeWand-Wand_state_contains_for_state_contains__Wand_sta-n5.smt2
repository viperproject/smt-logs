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
(declare-sort T@Field_88034_53 0)
(declare-sort T@Field_88047_88048 0)
(declare-sort T@Field_95113_95114 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_94052_2989 0)
(declare-sort T@Field_94148_94150 0)
(declare-sort T@Seq_2867 0)
(declare-sort T@Field_97187_97188 0)
(declare-sort T@Field_104540_104545 0)
(declare-sort T@Field_108020_108025 0)
(declare-sort T@Field_42929_43224 0)
(declare-sort T@Field_42929_104545 0)
(declare-sort T@Field_43223_42930 0)
(declare-sort T@Field_43223_118737 0)
(declare-sort T@Field_43223_3235 0)
(declare-sort T@Field_43223_53 0)
(declare-sort T@Field_43251_42930 0)
(declare-sort T@Field_43251_118737 0)
(declare-sort T@Field_43251_3235 0)
(declare-sort T@Field_43251_53 0)
(declare-datatypes ((T@PolymorphicMapType_87995 0)) (((PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| (Array T@Ref T@Field_95113_95114 Real)) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| (Array T@Ref T@Field_94052_2989 Real)) (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| (Array T@Ref T@Field_88047_88048 Real)) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| (Array T@Ref T@Field_94148_94150 Real)) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| (Array T@Ref T@Field_97187_97188 Real)) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| (Array T@Ref T@Field_43223_3235 Real)) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| (Array T@Ref T@Field_43223_42930 Real)) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| (Array T@Ref T@Field_43223_118737 Real)) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| (Array T@Ref T@Field_43223_53 Real)) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| (Array T@Ref T@Field_104540_104545 Real)) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| (Array T@Ref T@Field_42929_43224 Real)) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| (Array T@Ref T@Field_88034_53 Real)) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| (Array T@Ref T@Field_42929_104545 Real)) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| (Array T@Ref T@Field_43251_3235 Real)) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| (Array T@Ref T@Field_43251_42930 Real)) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| (Array T@Ref T@Field_43251_118737 Real)) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| (Array T@Ref T@Field_43251_53 Real)) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| (Array T@Ref T@Field_108020_108025 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_88523 0)) (((PolymorphicMapType_88523 (|PolymorphicMapType_88523_42927_2989#PolymorphicMapType_88523| (Array T@Ref T@Field_94052_2989 Bool)) (|PolymorphicMapType_88523_42929_42930#PolymorphicMapType_88523| (Array T@Ref T@Field_88047_88048 Bool)) (|PolymorphicMapType_88523_42932_105110#PolymorphicMapType_88523| (Array T@Ref T@Field_94148_94150 Bool)) (|PolymorphicMapType_88523_42927_53#PolymorphicMapType_88523| (Array T@Ref T@Field_88034_53 Bool)) (|PolymorphicMapType_88523_42927_95114#PolymorphicMapType_88523| (Array T@Ref T@Field_42929_43224 Bool)) (|PolymorphicMapType_88523_42927_327042#PolymorphicMapType_88523| (Array T@Ref T@Field_42929_104545 Bool)) (|PolymorphicMapType_88523_95113_2989#PolymorphicMapType_88523| (Array T@Ref T@Field_43223_3235 Bool)) (|PolymorphicMapType_88523_95113_42930#PolymorphicMapType_88523| (Array T@Ref T@Field_43223_42930 Bool)) (|PolymorphicMapType_88523_95113_105110#PolymorphicMapType_88523| (Array T@Ref T@Field_43223_118737 Bool)) (|PolymorphicMapType_88523_95113_53#PolymorphicMapType_88523| (Array T@Ref T@Field_43223_53 Bool)) (|PolymorphicMapType_88523_95113_95114#PolymorphicMapType_88523| (Array T@Ref T@Field_95113_95114 Bool)) (|PolymorphicMapType_88523_95113_328294#PolymorphicMapType_88523| (Array T@Ref T@Field_104540_104545 Bool)) (|PolymorphicMapType_88523_97187_2989#PolymorphicMapType_88523| (Array T@Ref T@Field_43251_3235 Bool)) (|PolymorphicMapType_88523_97187_42930#PolymorphicMapType_88523| (Array T@Ref T@Field_43251_42930 Bool)) (|PolymorphicMapType_88523_97187_105110#PolymorphicMapType_88523| (Array T@Ref T@Field_43251_118737 Bool)) (|PolymorphicMapType_88523_97187_53#PolymorphicMapType_88523| (Array T@Ref T@Field_43251_53 Bool)) (|PolymorphicMapType_88523_97187_95114#PolymorphicMapType_88523| (Array T@Ref T@Field_97187_97188 Bool)) (|PolymorphicMapType_88523_97187_329546#PolymorphicMapType_88523| (Array T@Ref T@Field_108020_108025 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_87974 0)) (((PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| (Array T@Ref T@Field_88034_53 Bool)) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| (Array T@Ref T@Field_88047_88048 T@Ref)) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| (Array T@Ref T@Field_95113_95114 T@FrameType)) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| (Array T@Ref T@Field_94052_2989 Int)) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| (Array T@Ref T@Field_94148_94150 T@Seq_2867)) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| (Array T@Ref T@Field_97187_97188 T@FrameType)) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| (Array T@Ref T@Field_104540_104545 T@PolymorphicMapType_88523)) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| (Array T@Ref T@Field_108020_108025 T@PolymorphicMapType_88523)) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| (Array T@Ref T@Field_42929_43224 T@FrameType)) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| (Array T@Ref T@Field_42929_104545 T@PolymorphicMapType_88523)) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| (Array T@Ref T@Field_43223_42930 T@Ref)) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| (Array T@Ref T@Field_43223_118737 T@Seq_2867)) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| (Array T@Ref T@Field_43223_3235 Int)) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| (Array T@Ref T@Field_43223_53 Bool)) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| (Array T@Ref T@Field_43251_42930 T@Ref)) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| (Array T@Ref T@Field_43251_118737 T@Seq_2867)) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| (Array T@Ref T@Field_43251_3235 Int)) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| (Array T@Ref T@Field_43251_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_88034_53)
(declare-fun Wand_state_contains_for_state_contains__lemma () T@Field_94052_2989)
(declare-fun Wand_state_contains_for_state_contains__in_1 () T@Field_88047_88048)
(declare-fun Wand_state_contains_for_state_contains__in_1_0 () T@Field_94148_94150)
(declare-fun Wand_state_contains_for_state_contains__out_1 () T@Field_88047_88048)
(declare-fun Wand_state_contains_for_state_contains__out_1_0 () T@Field_94148_94150)
(declare-fun Wand_state_contains_for_state_contains__this_1 () T@Field_88047_88048)
(declare-fun Wand_state_contains_for_state_contains__target_contents_1 () T@Field_94148_94150)
(declare-fun Wand_state_contains_for_state_contains__prev_contents_1 () T@Field_94148_94150)
(declare-fun Wand_state_contains_for_state_contains__prev_1 () T@Field_88047_88048)
(declare-fun Wand_state_contains_for_state_contains__cur_contents_1 () T@Field_94148_94150)
(declare-fun Wand_state_contains_for_state_contains__top_1 () T@Field_88047_88048)
(declare-fun Wand_state_contains_for_state_contains__cur_1 () T@Field_88047_88048)
(declare-fun Wand_state_contains_for_state_contains__wand_1 () T@Field_88047_88048)
(declare-fun Wand_state_contains_for_state_contains__this_2 () T@Field_88047_88048)
(declare-fun Wand_state_contains_for_state_contains__target_contents_2 () T@Field_94148_94150)
(declare-fun Wand_state_contains_for_state_contains__top_2 () T@Field_88047_88048)
(declare-fun Tree__data () T@Field_94052_2989)
(declare-fun Tree__left () T@Field_88047_88048)
(declare-fun Tree__right () T@Field_88047_88048)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_3097| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_87974 T@PolymorphicMapType_87974 T@PolymorphicMapType_87995) Bool)
(declare-fun IsPredicateField_43251_43252 (T@Field_97187_97188) Bool)
(declare-fun HasDirectPerm_43251_43252 (T@PolymorphicMapType_87995 T@Ref T@Field_97187_97188) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_43251 (T@Field_97187_97188) T@Field_108020_108025)
(declare-fun IsPredicateField_43223_43224 (T@Field_95113_95114) Bool)
(declare-fun HasDirectPerm_43223_43224 (T@PolymorphicMapType_87995 T@Ref T@Field_95113_95114) Bool)
(declare-fun PredicateMaskField_43223 (T@Field_95113_95114) T@Field_104540_104545)
(declare-fun IsPredicateField_42929_325071 (T@Field_42929_43224) Bool)
(declare-fun HasDirectPerm_42929_43224 (T@PolymorphicMapType_87995 T@Ref T@Field_42929_43224) Bool)
(declare-fun PredicateMaskField_42929 (T@Field_42929_43224) T@Field_42929_104545)
(declare-fun IsWandField_43251_331349 (T@Field_97187_97188) Bool)
(declare-fun WandMaskField_43251 (T@Field_97187_97188) T@Field_108020_108025)
(declare-fun IsWandField_43223_330992 (T@Field_95113_95114) Bool)
(declare-fun WandMaskField_43223 (T@Field_95113_95114) T@Field_104540_104545)
(declare-fun IsWandField_42929_330635 (T@Field_42929_43224) Bool)
(declare-fun WandMaskField_42929 (T@Field_42929_43224) T@Field_42929_104545)
(declare-fun succHeap (T@PolymorphicMapType_87974 T@PolymorphicMapType_87974) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_87974 T@PolymorphicMapType_87974) Bool)
(declare-fun state (T@PolymorphicMapType_87974 T@PolymorphicMapType_87995) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_87995) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_88523)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_12082| () T@Seq_2867)
(declare-fun Wand_state_contains_for_state_contains__valid_wand (T@Ref) T@Field_95113_95114)
(declare-fun Tree__state (T@Ref) T@Field_97187_97188)
(declare-fun |Wand_state_contains_for_state_contains__get_in_1'| (T@PolymorphicMapType_87974 T@Ref) T@Ref)
(declare-fun dummyFunction_43007 (T@Ref) Bool)
(declare-fun |Wand_state_contains_for_state_contains__get_in_1#triggerStateless| (T@Ref) T@Ref)
(declare-fun |Wand_state_contains_for_state_contains__get_in_1_0'| (T@PolymorphicMapType_87974 T@Ref) T@Seq_2867)
(declare-fun dummyFunction_109602 (T@Seq_2867) Bool)
(declare-fun |Wand_state_contains_for_state_contains__get_in_1_0#triggerStateless| (T@Ref) T@Seq_2867)
(declare-fun |Wand_state_contains_for_state_contains__get_out_1'| (T@PolymorphicMapType_87974 T@Ref) T@Ref)
(declare-fun |Wand_state_contains_for_state_contains__get_out_1#triggerStateless| (T@Ref) T@Ref)
(declare-fun |Wand_state_contains_for_state_contains__get_out_1_0'| (T@PolymorphicMapType_87974 T@Ref) T@Seq_2867)
(declare-fun |Wand_state_contains_for_state_contains__get_out_1_0#triggerStateless| (T@Ref) T@Seq_2867)
(declare-fun |Tree__tolist'| (T@PolymorphicMapType_87974 T@Ref) T@Seq_2867)
(declare-fun |Tree__tolist#triggerStateless| (T@Ref) T@Seq_2867)
(declare-fun |Tree__sorted_list'| (T@PolymorphicMapType_87974 T@Seq_2867) Bool)
(declare-fun dummyFunction_13345 (Bool) Bool)
(declare-fun |Tree__sorted_list#triggerStateless| (T@Seq_2867) Bool)
(declare-fun |Tree__sorted'| (T@PolymorphicMapType_87974 T@Ref) Bool)
(declare-fun |Tree__sorted#triggerStateless| (T@Ref) Bool)
(declare-fun |Wand_state_contains_for_state_contains__valid_wand#trigger_43223| (T@PolymorphicMapType_87974 T@Field_95113_95114) Bool)
(declare-fun |Wand_state_contains_for_state_contains__valid_wand#everUsed_43223| (T@Field_95113_95114) Bool)
(declare-fun |Tree__state#trigger_43251| (T@PolymorphicMapType_87974 T@Field_97187_97188) Bool)
(declare-fun |Tree__state#everUsed_43251| (T@Field_97187_97188) Bool)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |Seq#Take_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun |Tree__sorted#frame| (T@FrameType T@Ref) Bool)
(declare-fun FrameFragment_43252 (T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun Wand_state_contains_for_state_contains__get_in_1 (T@PolymorphicMapType_87974 T@Ref) T@Ref)
(declare-fun Wand_state_contains_for_state_contains__get_in_1_0 (T@PolymorphicMapType_87974 T@Ref) T@Seq_2867)
(declare-fun Wand_state_contains_for_state_contains__get_out_1 (T@PolymorphicMapType_87974 T@Ref) T@Ref)
(declare-fun Wand_state_contains_for_state_contains__get_out_1_0 (T@PolymorphicMapType_87974 T@Ref) T@Seq_2867)
(declare-fun Tree__tolist (T@PolymorphicMapType_87974 T@Ref) T@Seq_2867)
(declare-fun |Tree__tolist#frame| (T@FrameType T@Ref) T@Seq_2867)
(declare-fun |Seq#Singleton_3235| (Int) T@Seq_2867)
(declare-fun |Wand_state_contains_for_state_contains__valid_wand#sm| (T@Ref) T@Field_104540_104545)
(declare-fun |Tree__state#sm| (T@Ref) T@Field_108020_108025)
(declare-fun |Seq#Append_3128| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun dummyHeap () T@PolymorphicMapType_87974)
(declare-fun ZeroMask () T@PolymorphicMapType_87995)
(declare-fun InsidePredicate_88034_88034 (T@Field_42929_43224 T@FrameType T@Field_42929_43224 T@FrameType) Bool)
(declare-fun InsidePredicate_43251_43251 (T@Field_97187_97188 T@FrameType T@Field_97187_97188 T@FrameType) Bool)
(declare-fun InsidePredicate_43223_43223 (T@Field_95113_95114 T@FrameType T@Field_95113_95114 T@FrameType) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Wand_state_contains_for_state_contains__get_out_1#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |Wand_state_contains_for_state_contains__get_in_1#trigger| (T@FrameType T@Ref) Bool)
(declare-fun IsPredicateField_42927_2989 (T@Field_94052_2989) Bool)
(declare-fun IsWandField_42927_2989 (T@Field_94052_2989) Bool)
(declare-fun IsPredicateField_42929_42930 (T@Field_88047_88048) Bool)
(declare-fun IsWandField_42929_42930 (T@Field_88047_88048) Bool)
(declare-fun IsPredicateField_42932_94169 (T@Field_94148_94150) Bool)
(declare-fun IsWandField_42932_94192 (T@Field_94148_94150) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_43251_343460 (T@Field_108020_108025) Bool)
(declare-fun IsWandField_43251_343476 (T@Field_108020_108025) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_43251_53 (T@Field_43251_53) Bool)
(declare-fun IsWandField_43251_53 (T@Field_43251_53) Bool)
(declare-fun IsPredicateField_43251_98217 (T@Field_43251_118737) Bool)
(declare-fun IsWandField_43251_98217 (T@Field_43251_118737) Bool)
(declare-fun IsPredicateField_43251_42930 (T@Field_43251_42930) Bool)
(declare-fun IsWandField_43251_42930 (T@Field_43251_42930) Bool)
(declare-fun IsPredicateField_43251_2989 (T@Field_43251_3235) Bool)
(declare-fun IsWandField_43251_2989 (T@Field_43251_3235) Bool)
(declare-fun IsPredicateField_42927_342461 (T@Field_42929_104545) Bool)
(declare-fun IsWandField_42927_342477 (T@Field_42929_104545) Bool)
(declare-fun IsPredicateField_42927_53 (T@Field_88034_53) Bool)
(declare-fun IsWandField_42927_53 (T@Field_88034_53) Bool)
(declare-fun IsPredicateField_43223_341504 (T@Field_104540_104545) Bool)
(declare-fun IsWandField_43223_341520 (T@Field_104540_104545) Bool)
(declare-fun IsPredicateField_43223_53 (T@Field_43223_53) Bool)
(declare-fun IsWandField_43223_53 (T@Field_43223_53) Bool)
(declare-fun IsPredicateField_43223_98217 (T@Field_43223_118737) Bool)
(declare-fun IsWandField_43223_98217 (T@Field_43223_118737) Bool)
(declare-fun IsPredicateField_43223_42930 (T@Field_43223_42930) Bool)
(declare-fun IsWandField_43223_42930 (T@Field_43223_42930) Bool)
(declare-fun IsPredicateField_43223_2989 (T@Field_43223_3235) Bool)
(declare-fun IsWandField_43223_2989 (T@Field_43223_3235) Bool)
(declare-fun HasDirectPerm_43251_324826 (T@PolymorphicMapType_87995 T@Ref T@Field_108020_108025) Bool)
(declare-fun HasDirectPerm_43251_53 (T@PolymorphicMapType_87995 T@Ref T@Field_43251_53) Bool)
(declare-fun HasDirectPerm_43251_3235 (T@PolymorphicMapType_87995 T@Ref T@Field_43251_3235) Bool)
(declare-fun HasDirectPerm_43251_118737 (T@PolymorphicMapType_87995 T@Ref T@Field_43251_118737) Bool)
(declare-fun HasDirectPerm_43251_42930 (T@PolymorphicMapType_87995 T@Ref T@Field_43251_42930) Bool)
(declare-fun HasDirectPerm_43223_323499 (T@PolymorphicMapType_87995 T@Ref T@Field_104540_104545) Bool)
(declare-fun HasDirectPerm_43223_53 (T@PolymorphicMapType_87995 T@Ref T@Field_43223_53) Bool)
(declare-fun HasDirectPerm_43223_3235 (T@PolymorphicMapType_87995 T@Ref T@Field_43223_3235) Bool)
(declare-fun HasDirectPerm_43223_118737 (T@PolymorphicMapType_87995 T@Ref T@Field_43223_118737) Bool)
(declare-fun HasDirectPerm_43223_42930 (T@PolymorphicMapType_87995 T@Ref T@Field_43223_42930) Bool)
(declare-fun HasDirectPerm_42929_322129 (T@PolymorphicMapType_87995 T@Ref T@Field_42929_104545) Bool)
(declare-fun HasDirectPerm_42929_53 (T@PolymorphicMapType_87995 T@Ref T@Field_88034_53) Bool)
(declare-fun HasDirectPerm_42974_3235 (T@PolymorphicMapType_87995 T@Ref T@Field_94052_2989) Bool)
(declare-fun HasDirectPerm_42932_118737 (T@PolymorphicMapType_87995 T@Ref T@Field_94148_94150) Bool)
(declare-fun HasDirectPerm_42929_42930 (T@PolymorphicMapType_87995 T@Ref T@Field_88047_88048) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_87995 T@PolymorphicMapType_87995 T@PolymorphicMapType_87995) Bool)
(declare-fun |Seq#Equal_3097| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |Tree__sorted_list#frame| (T@FrameType T@Seq_2867) Bool)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun Tree__sorted_list (T@PolymorphicMapType_87974 T@Seq_2867) Bool)
(declare-fun Tree__sorted (T@PolymorphicMapType_87974 T@Ref) Bool)
(declare-fun |Wand_state_contains_for_state_contains__get_in_1#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun |Wand_state_contains_for_state_contains__get_in_1_0#frame| (T@FrameType T@Ref) T@Seq_2867)
(declare-fun |Wand_state_contains_for_state_contains__get_out_1#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun |Wand_state_contains_for_state_contains__get_out_1_0#frame| (T@FrameType T@Ref) T@Seq_2867)
(declare-fun getPredWandId_43223_43224 (T@Field_95113_95114) Int)
(declare-fun getPredWandId_43251_43252 (T@Field_97187_97188) Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(declare-fun InsidePredicate_88034_43223 (T@Field_42929_43224 T@FrameType T@Field_95113_95114 T@FrameType) Bool)
(declare-fun InsidePredicate_88034_43251 (T@Field_42929_43224 T@FrameType T@Field_97187_97188 T@FrameType) Bool)
(declare-fun InsidePredicate_43223_88034 (T@Field_95113_95114 T@FrameType T@Field_42929_43224 T@FrameType) Bool)
(declare-fun InsidePredicate_43223_43251 (T@Field_95113_95114 T@FrameType T@Field_97187_97188 T@FrameType) Bool)
(declare-fun InsidePredicate_43251_88034 (T@Field_97187_97188 T@FrameType T@Field_42929_43224 T@FrameType) Bool)
(declare-fun InsidePredicate_43251_43223 (T@Field_97187_97188 T@FrameType T@Field_95113_95114 T@FrameType) Bool)
(assert (and (distinct Wand_state_contains_for_state_contains__lemma Tree__data)(distinct Wand_state_contains_for_state_contains__in_1 Wand_state_contains_for_state_contains__out_1 Wand_state_contains_for_state_contains__this_1 Wand_state_contains_for_state_contains__prev_1 Wand_state_contains_for_state_contains__top_1 Wand_state_contains_for_state_contains__cur_1 Wand_state_contains_for_state_contains__wand_1 Wand_state_contains_for_state_contains__this_2 Wand_state_contains_for_state_contains__top_2 Tree__left Tree__right)(distinct Wand_state_contains_for_state_contains__in_1_0 Wand_state_contains_for_state_contains__out_1_0 Wand_state_contains_for_state_contains__target_contents_1 Wand_state_contains_for_state_contains__prev_contents_1 Wand_state_contains_for_state_contains__cur_contents_1 Wand_state_contains_for_state_contains__target_contents_2))
)
(assert (forall ((s T@Seq_2867) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2867| s)) (= (|Seq#Length_2867| (|Seq#Drop_3097| s n)) (- (|Seq#Length_2867| s) n))) (=> (< (|Seq#Length_2867| s) n) (= (|Seq#Length_2867| (|Seq#Drop_3097| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2867| (|Seq#Drop_3097| s n)) (|Seq#Length_2867| s))))
 :qid |stdinbpl.282:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_3097| s n)))
 :pattern ( (|Seq#Length_2867| s) (|Seq#Drop_3097| s n))
)))
(assert (forall ((Heap T@PolymorphicMapType_87974) (ExhaleHeap T@PolymorphicMapType_87974) (Mask T@PolymorphicMapType_87995) (pm_f_20 T@Field_97187_97188) ) (!  (=> (IdenticalOnKnownLocations Heap ExhaleHeap Mask) (=> (and (HasDirectPerm_43251_43252 Mask null pm_f_20) (IsPredicateField_43251_43252 pm_f_20)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_20 T@Ref) (f_49 T@Field_94052_2989) ) (!  (=> (select (|PolymorphicMapType_88523_42927_2989#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap) null (PredicateMaskField_43251 pm_f_20))) o2_20 f_49) (= (select (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap) o2_20 f_49) (select (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| ExhaleHeap) o2_20 f_49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| ExhaleHeap) o2_20 f_49))
)) (forall ((o2_20@@0 T@Ref) (f_49@@0 T@Field_88047_88048) ) (!  (=> (select (|PolymorphicMapType_88523_42929_42930#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap) null (PredicateMaskField_43251 pm_f_20))) o2_20@@0 f_49@@0) (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap) o2_20@@0 f_49@@0) (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| ExhaleHeap) o2_20@@0 f_49@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| ExhaleHeap) o2_20@@0 f_49@@0))
))) (forall ((o2_20@@1 T@Ref) (f_49@@1 T@Field_94148_94150) ) (!  (=> (select (|PolymorphicMapType_88523_42932_105110#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap) null (PredicateMaskField_43251 pm_f_20))) o2_20@@1 f_49@@1) (= (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap) o2_20@@1 f_49@@1) (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| ExhaleHeap) o2_20@@1 f_49@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| ExhaleHeap) o2_20@@1 f_49@@1))
))) (forall ((o2_20@@2 T@Ref) (f_49@@2 T@Field_88034_53) ) (!  (=> (select (|PolymorphicMapType_88523_42927_53#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap) null (PredicateMaskField_43251 pm_f_20))) o2_20@@2 f_49@@2) (= (select (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap) o2_20@@2 f_49@@2) (select (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| ExhaleHeap) o2_20@@2 f_49@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| ExhaleHeap) o2_20@@2 f_49@@2))
))) (forall ((o2_20@@3 T@Ref) (f_49@@3 T@Field_42929_43224) ) (!  (=> (select (|PolymorphicMapType_88523_42927_95114#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap) null (PredicateMaskField_43251 pm_f_20))) o2_20@@3 f_49@@3) (= (select (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap) o2_20@@3 f_49@@3) (select (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| ExhaleHeap) o2_20@@3 f_49@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| ExhaleHeap) o2_20@@3 f_49@@3))
))) (forall ((o2_20@@4 T@Ref) (f_49@@4 T@Field_42929_104545) ) (!  (=> (select (|PolymorphicMapType_88523_42927_327042#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap) null (PredicateMaskField_43251 pm_f_20))) o2_20@@4 f_49@@4) (= (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap) o2_20@@4 f_49@@4) (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| ExhaleHeap) o2_20@@4 f_49@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| ExhaleHeap) o2_20@@4 f_49@@4))
))) (forall ((o2_20@@5 T@Ref) (f_49@@5 T@Field_43223_3235) ) (!  (=> (select (|PolymorphicMapType_88523_95113_2989#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap) null (PredicateMaskField_43251 pm_f_20))) o2_20@@5 f_49@@5) (= (select (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap) o2_20@@5 f_49@@5) (select (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| ExhaleHeap) o2_20@@5 f_49@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| ExhaleHeap) o2_20@@5 f_49@@5))
))) (forall ((o2_20@@6 T@Ref) (f_49@@6 T@Field_43223_42930) ) (!  (=> (select (|PolymorphicMapType_88523_95113_42930#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap) null (PredicateMaskField_43251 pm_f_20))) o2_20@@6 f_49@@6) (= (select (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap) o2_20@@6 f_49@@6) (select (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| ExhaleHeap) o2_20@@6 f_49@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| ExhaleHeap) o2_20@@6 f_49@@6))
))) (forall ((o2_20@@7 T@Ref) (f_49@@7 T@Field_43223_118737) ) (!  (=> (select (|PolymorphicMapType_88523_95113_105110#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap) null (PredicateMaskField_43251 pm_f_20))) o2_20@@7 f_49@@7) (= (select (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap) o2_20@@7 f_49@@7) (select (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| ExhaleHeap) o2_20@@7 f_49@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| ExhaleHeap) o2_20@@7 f_49@@7))
))) (forall ((o2_20@@8 T@Ref) (f_49@@8 T@Field_43223_53) ) (!  (=> (select (|PolymorphicMapType_88523_95113_53#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap) null (PredicateMaskField_43251 pm_f_20))) o2_20@@8 f_49@@8) (= (select (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap) o2_20@@8 f_49@@8) (select (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| ExhaleHeap) o2_20@@8 f_49@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| ExhaleHeap) o2_20@@8 f_49@@8))
))) (forall ((o2_20@@9 T@Ref) (f_49@@9 T@Field_95113_95114) ) (!  (=> (select (|PolymorphicMapType_88523_95113_95114#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap) null (PredicateMaskField_43251 pm_f_20))) o2_20@@9 f_49@@9) (= (select (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap) o2_20@@9 f_49@@9) (select (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| ExhaleHeap) o2_20@@9 f_49@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| ExhaleHeap) o2_20@@9 f_49@@9))
))) (forall ((o2_20@@10 T@Ref) (f_49@@10 T@Field_104540_104545) ) (!  (=> (select (|PolymorphicMapType_88523_95113_328294#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap) null (PredicateMaskField_43251 pm_f_20))) o2_20@@10 f_49@@10) (= (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap) o2_20@@10 f_49@@10) (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| ExhaleHeap) o2_20@@10 f_49@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| ExhaleHeap) o2_20@@10 f_49@@10))
))) (forall ((o2_20@@11 T@Ref) (f_49@@11 T@Field_43251_3235) ) (!  (=> (select (|PolymorphicMapType_88523_97187_2989#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap) null (PredicateMaskField_43251 pm_f_20))) o2_20@@11 f_49@@11) (= (select (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap) o2_20@@11 f_49@@11) (select (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| ExhaleHeap) o2_20@@11 f_49@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| ExhaleHeap) o2_20@@11 f_49@@11))
))) (forall ((o2_20@@12 T@Ref) (f_49@@12 T@Field_43251_42930) ) (!  (=> (select (|PolymorphicMapType_88523_97187_42930#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap) null (PredicateMaskField_43251 pm_f_20))) o2_20@@12 f_49@@12) (= (select (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap) o2_20@@12 f_49@@12) (select (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| ExhaleHeap) o2_20@@12 f_49@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| ExhaleHeap) o2_20@@12 f_49@@12))
))) (forall ((o2_20@@13 T@Ref) (f_49@@13 T@Field_43251_118737) ) (!  (=> (select (|PolymorphicMapType_88523_97187_105110#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap) null (PredicateMaskField_43251 pm_f_20))) o2_20@@13 f_49@@13) (= (select (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap) o2_20@@13 f_49@@13) (select (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| ExhaleHeap) o2_20@@13 f_49@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| ExhaleHeap) o2_20@@13 f_49@@13))
))) (forall ((o2_20@@14 T@Ref) (f_49@@14 T@Field_43251_53) ) (!  (=> (select (|PolymorphicMapType_88523_97187_53#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap) null (PredicateMaskField_43251 pm_f_20))) o2_20@@14 f_49@@14) (= (select (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap) o2_20@@14 f_49@@14) (select (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| ExhaleHeap) o2_20@@14 f_49@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| ExhaleHeap) o2_20@@14 f_49@@14))
))) (forall ((o2_20@@15 T@Ref) (f_49@@15 T@Field_97187_97188) ) (!  (=> (select (|PolymorphicMapType_88523_97187_95114#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap) null (PredicateMaskField_43251 pm_f_20))) o2_20@@15 f_49@@15) (= (select (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap) o2_20@@15 f_49@@15) (select (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| ExhaleHeap) o2_20@@15 f_49@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| ExhaleHeap) o2_20@@15 f_49@@15))
))) (forall ((o2_20@@16 T@Ref) (f_49@@16 T@Field_108020_108025) ) (!  (=> (select (|PolymorphicMapType_88523_97187_329546#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap) null (PredicateMaskField_43251 pm_f_20))) o2_20@@16 f_49@@16) (= (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap) o2_20@@16 f_49@@16) (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| ExhaleHeap) o2_20@@16 f_49@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| ExhaleHeap) o2_20@@16 f_49@@16))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap ExhaleHeap Mask) (IsPredicateField_43251_43252 pm_f_20))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_87974) (ExhaleHeap@@0 T@PolymorphicMapType_87974) (Mask@@0 T@PolymorphicMapType_87995) (pm_f_20@@0 T@Field_95113_95114) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap@@0 Mask@@0) (=> (and (HasDirectPerm_43223_43224 Mask@@0 null pm_f_20@@0) (IsPredicateField_43223_43224 pm_f_20@@0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_20@@17 T@Ref) (f_49@@17 T@Field_94052_2989) ) (!  (=> (select (|PolymorphicMapType_88523_42927_2989#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@0) null (PredicateMaskField_43223 pm_f_20@@0))) o2_20@@17 f_49@@17) (= (select (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@0) o2_20@@17 f_49@@17) (select (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@17 f_49@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@17 f_49@@17))
)) (forall ((o2_20@@18 T@Ref) (f_49@@18 T@Field_88047_88048) ) (!  (=> (select (|PolymorphicMapType_88523_42929_42930#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@0) null (PredicateMaskField_43223 pm_f_20@@0))) o2_20@@18 f_49@@18) (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@0) o2_20@@18 f_49@@18) (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@18 f_49@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@18 f_49@@18))
))) (forall ((o2_20@@19 T@Ref) (f_49@@19 T@Field_94148_94150) ) (!  (=> (select (|PolymorphicMapType_88523_42932_105110#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@0) null (PredicateMaskField_43223 pm_f_20@@0))) o2_20@@19 f_49@@19) (= (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@0) o2_20@@19 f_49@@19) (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@19 f_49@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@19 f_49@@19))
))) (forall ((o2_20@@20 T@Ref) (f_49@@20 T@Field_88034_53) ) (!  (=> (select (|PolymorphicMapType_88523_42927_53#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@0) null (PredicateMaskField_43223 pm_f_20@@0))) o2_20@@20 f_49@@20) (= (select (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@0) o2_20@@20 f_49@@20) (select (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@20 f_49@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@20 f_49@@20))
))) (forall ((o2_20@@21 T@Ref) (f_49@@21 T@Field_42929_43224) ) (!  (=> (select (|PolymorphicMapType_88523_42927_95114#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@0) null (PredicateMaskField_43223 pm_f_20@@0))) o2_20@@21 f_49@@21) (= (select (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@0) o2_20@@21 f_49@@21) (select (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@21 f_49@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@21 f_49@@21))
))) (forall ((o2_20@@22 T@Ref) (f_49@@22 T@Field_42929_104545) ) (!  (=> (select (|PolymorphicMapType_88523_42927_327042#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@0) null (PredicateMaskField_43223 pm_f_20@@0))) o2_20@@22 f_49@@22) (= (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@0) o2_20@@22 f_49@@22) (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@22 f_49@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@22 f_49@@22))
))) (forall ((o2_20@@23 T@Ref) (f_49@@23 T@Field_43223_3235) ) (!  (=> (select (|PolymorphicMapType_88523_95113_2989#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@0) null (PredicateMaskField_43223 pm_f_20@@0))) o2_20@@23 f_49@@23) (= (select (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@0) o2_20@@23 f_49@@23) (select (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@23 f_49@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@23 f_49@@23))
))) (forall ((o2_20@@24 T@Ref) (f_49@@24 T@Field_43223_42930) ) (!  (=> (select (|PolymorphicMapType_88523_95113_42930#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@0) null (PredicateMaskField_43223 pm_f_20@@0))) o2_20@@24 f_49@@24) (= (select (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@0) o2_20@@24 f_49@@24) (select (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@24 f_49@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@24 f_49@@24))
))) (forall ((o2_20@@25 T@Ref) (f_49@@25 T@Field_43223_118737) ) (!  (=> (select (|PolymorphicMapType_88523_95113_105110#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@0) null (PredicateMaskField_43223 pm_f_20@@0))) o2_20@@25 f_49@@25) (= (select (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@0) o2_20@@25 f_49@@25) (select (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@25 f_49@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@25 f_49@@25))
))) (forall ((o2_20@@26 T@Ref) (f_49@@26 T@Field_43223_53) ) (!  (=> (select (|PolymorphicMapType_88523_95113_53#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@0) null (PredicateMaskField_43223 pm_f_20@@0))) o2_20@@26 f_49@@26) (= (select (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@0) o2_20@@26 f_49@@26) (select (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@26 f_49@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@26 f_49@@26))
))) (forall ((o2_20@@27 T@Ref) (f_49@@27 T@Field_95113_95114) ) (!  (=> (select (|PolymorphicMapType_88523_95113_95114#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@0) null (PredicateMaskField_43223 pm_f_20@@0))) o2_20@@27 f_49@@27) (= (select (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@0) o2_20@@27 f_49@@27) (select (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@27 f_49@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@27 f_49@@27))
))) (forall ((o2_20@@28 T@Ref) (f_49@@28 T@Field_104540_104545) ) (!  (=> (select (|PolymorphicMapType_88523_95113_328294#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@0) null (PredicateMaskField_43223 pm_f_20@@0))) o2_20@@28 f_49@@28) (= (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@0) o2_20@@28 f_49@@28) (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@28 f_49@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@28 f_49@@28))
))) (forall ((o2_20@@29 T@Ref) (f_49@@29 T@Field_43251_3235) ) (!  (=> (select (|PolymorphicMapType_88523_97187_2989#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@0) null (PredicateMaskField_43223 pm_f_20@@0))) o2_20@@29 f_49@@29) (= (select (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@0) o2_20@@29 f_49@@29) (select (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@29 f_49@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@29 f_49@@29))
))) (forall ((o2_20@@30 T@Ref) (f_49@@30 T@Field_43251_42930) ) (!  (=> (select (|PolymorphicMapType_88523_97187_42930#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@0) null (PredicateMaskField_43223 pm_f_20@@0))) o2_20@@30 f_49@@30) (= (select (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@0) o2_20@@30 f_49@@30) (select (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@30 f_49@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@30 f_49@@30))
))) (forall ((o2_20@@31 T@Ref) (f_49@@31 T@Field_43251_118737) ) (!  (=> (select (|PolymorphicMapType_88523_97187_105110#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@0) null (PredicateMaskField_43223 pm_f_20@@0))) o2_20@@31 f_49@@31) (= (select (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@0) o2_20@@31 f_49@@31) (select (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@31 f_49@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@31 f_49@@31))
))) (forall ((o2_20@@32 T@Ref) (f_49@@32 T@Field_43251_53) ) (!  (=> (select (|PolymorphicMapType_88523_97187_53#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@0) null (PredicateMaskField_43223 pm_f_20@@0))) o2_20@@32 f_49@@32) (= (select (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@0) o2_20@@32 f_49@@32) (select (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@32 f_49@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@32 f_49@@32))
))) (forall ((o2_20@@33 T@Ref) (f_49@@33 T@Field_97187_97188) ) (!  (=> (select (|PolymorphicMapType_88523_97187_95114#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@0) null (PredicateMaskField_43223 pm_f_20@@0))) o2_20@@33 f_49@@33) (= (select (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@0) o2_20@@33 f_49@@33) (select (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@33 f_49@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@33 f_49@@33))
))) (forall ((o2_20@@34 T@Ref) (f_49@@34 T@Field_108020_108025) ) (!  (=> (select (|PolymorphicMapType_88523_97187_329546#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@0) null (PredicateMaskField_43223 pm_f_20@@0))) o2_20@@34 f_49@@34) (= (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@0) o2_20@@34 f_49@@34) (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@34 f_49@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| ExhaleHeap@@0) o2_20@@34 f_49@@34))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap@@0 Mask@@0) (IsPredicateField_43223_43224 pm_f_20@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_87974) (ExhaleHeap@@1 T@PolymorphicMapType_87974) (Mask@@1 T@PolymorphicMapType_87995) (pm_f_20@@1 T@Field_42929_43224) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@1 Mask@@1) (=> (and (HasDirectPerm_42929_43224 Mask@@1 null pm_f_20@@1) (IsPredicateField_42929_325071 pm_f_20@@1)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_20@@35 T@Ref) (f_49@@35 T@Field_94052_2989) ) (!  (=> (select (|PolymorphicMapType_88523_42927_2989#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@1) null (PredicateMaskField_42929 pm_f_20@@1))) o2_20@@35 f_49@@35) (= (select (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@1) o2_20@@35 f_49@@35) (select (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@35 f_49@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@35 f_49@@35))
)) (forall ((o2_20@@36 T@Ref) (f_49@@36 T@Field_88047_88048) ) (!  (=> (select (|PolymorphicMapType_88523_42929_42930#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@1) null (PredicateMaskField_42929 pm_f_20@@1))) o2_20@@36 f_49@@36) (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@1) o2_20@@36 f_49@@36) (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@36 f_49@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@36 f_49@@36))
))) (forall ((o2_20@@37 T@Ref) (f_49@@37 T@Field_94148_94150) ) (!  (=> (select (|PolymorphicMapType_88523_42932_105110#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@1) null (PredicateMaskField_42929 pm_f_20@@1))) o2_20@@37 f_49@@37) (= (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@1) o2_20@@37 f_49@@37) (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@37 f_49@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@37 f_49@@37))
))) (forall ((o2_20@@38 T@Ref) (f_49@@38 T@Field_88034_53) ) (!  (=> (select (|PolymorphicMapType_88523_42927_53#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@1) null (PredicateMaskField_42929 pm_f_20@@1))) o2_20@@38 f_49@@38) (= (select (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@1) o2_20@@38 f_49@@38) (select (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@38 f_49@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@38 f_49@@38))
))) (forall ((o2_20@@39 T@Ref) (f_49@@39 T@Field_42929_43224) ) (!  (=> (select (|PolymorphicMapType_88523_42927_95114#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@1) null (PredicateMaskField_42929 pm_f_20@@1))) o2_20@@39 f_49@@39) (= (select (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@1) o2_20@@39 f_49@@39) (select (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@39 f_49@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@39 f_49@@39))
))) (forall ((o2_20@@40 T@Ref) (f_49@@40 T@Field_42929_104545) ) (!  (=> (select (|PolymorphicMapType_88523_42927_327042#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@1) null (PredicateMaskField_42929 pm_f_20@@1))) o2_20@@40 f_49@@40) (= (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@1) o2_20@@40 f_49@@40) (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@40 f_49@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@40 f_49@@40))
))) (forall ((o2_20@@41 T@Ref) (f_49@@41 T@Field_43223_3235) ) (!  (=> (select (|PolymorphicMapType_88523_95113_2989#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@1) null (PredicateMaskField_42929 pm_f_20@@1))) o2_20@@41 f_49@@41) (= (select (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@1) o2_20@@41 f_49@@41) (select (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@41 f_49@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@41 f_49@@41))
))) (forall ((o2_20@@42 T@Ref) (f_49@@42 T@Field_43223_42930) ) (!  (=> (select (|PolymorphicMapType_88523_95113_42930#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@1) null (PredicateMaskField_42929 pm_f_20@@1))) o2_20@@42 f_49@@42) (= (select (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@1) o2_20@@42 f_49@@42) (select (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@42 f_49@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@42 f_49@@42))
))) (forall ((o2_20@@43 T@Ref) (f_49@@43 T@Field_43223_118737) ) (!  (=> (select (|PolymorphicMapType_88523_95113_105110#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@1) null (PredicateMaskField_42929 pm_f_20@@1))) o2_20@@43 f_49@@43) (= (select (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@1) o2_20@@43 f_49@@43) (select (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@43 f_49@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@43 f_49@@43))
))) (forall ((o2_20@@44 T@Ref) (f_49@@44 T@Field_43223_53) ) (!  (=> (select (|PolymorphicMapType_88523_95113_53#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@1) null (PredicateMaskField_42929 pm_f_20@@1))) o2_20@@44 f_49@@44) (= (select (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@1) o2_20@@44 f_49@@44) (select (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@44 f_49@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@44 f_49@@44))
))) (forall ((o2_20@@45 T@Ref) (f_49@@45 T@Field_95113_95114) ) (!  (=> (select (|PolymorphicMapType_88523_95113_95114#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@1) null (PredicateMaskField_42929 pm_f_20@@1))) o2_20@@45 f_49@@45) (= (select (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@1) o2_20@@45 f_49@@45) (select (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@45 f_49@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@45 f_49@@45))
))) (forall ((o2_20@@46 T@Ref) (f_49@@46 T@Field_104540_104545) ) (!  (=> (select (|PolymorphicMapType_88523_95113_328294#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@1) null (PredicateMaskField_42929 pm_f_20@@1))) o2_20@@46 f_49@@46) (= (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@1) o2_20@@46 f_49@@46) (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@46 f_49@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@46 f_49@@46))
))) (forall ((o2_20@@47 T@Ref) (f_49@@47 T@Field_43251_3235) ) (!  (=> (select (|PolymorphicMapType_88523_97187_2989#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@1) null (PredicateMaskField_42929 pm_f_20@@1))) o2_20@@47 f_49@@47) (= (select (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@1) o2_20@@47 f_49@@47) (select (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@47 f_49@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@47 f_49@@47))
))) (forall ((o2_20@@48 T@Ref) (f_49@@48 T@Field_43251_42930) ) (!  (=> (select (|PolymorphicMapType_88523_97187_42930#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@1) null (PredicateMaskField_42929 pm_f_20@@1))) o2_20@@48 f_49@@48) (= (select (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@1) o2_20@@48 f_49@@48) (select (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@48 f_49@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@48 f_49@@48))
))) (forall ((o2_20@@49 T@Ref) (f_49@@49 T@Field_43251_118737) ) (!  (=> (select (|PolymorphicMapType_88523_97187_105110#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@1) null (PredicateMaskField_42929 pm_f_20@@1))) o2_20@@49 f_49@@49) (= (select (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@1) o2_20@@49 f_49@@49) (select (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@49 f_49@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@49 f_49@@49))
))) (forall ((o2_20@@50 T@Ref) (f_49@@50 T@Field_43251_53) ) (!  (=> (select (|PolymorphicMapType_88523_97187_53#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@1) null (PredicateMaskField_42929 pm_f_20@@1))) o2_20@@50 f_49@@50) (= (select (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@1) o2_20@@50 f_49@@50) (select (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@50 f_49@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@50 f_49@@50))
))) (forall ((o2_20@@51 T@Ref) (f_49@@51 T@Field_97187_97188) ) (!  (=> (select (|PolymorphicMapType_88523_97187_95114#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@1) null (PredicateMaskField_42929 pm_f_20@@1))) o2_20@@51 f_49@@51) (= (select (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@1) o2_20@@51 f_49@@51) (select (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@51 f_49@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@51 f_49@@51))
))) (forall ((o2_20@@52 T@Ref) (f_49@@52 T@Field_108020_108025) ) (!  (=> (select (|PolymorphicMapType_88523_97187_329546#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@1) null (PredicateMaskField_42929 pm_f_20@@1))) o2_20@@52 f_49@@52) (= (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@1) o2_20@@52 f_49@@52) (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@52 f_49@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| ExhaleHeap@@1) o2_20@@52 f_49@@52))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@1 Mask@@1) (IsPredicateField_42929_325071 pm_f_20@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_87974) (ExhaleHeap@@2 T@PolymorphicMapType_87974) (Mask@@2 T@PolymorphicMapType_87995) (pm_f_20@@2 T@Field_97187_97188) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@2 Mask@@2) (=> (and (HasDirectPerm_43251_43252 Mask@@2 null pm_f_20@@2) (IsWandField_43251_331349 pm_f_20@@2)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_20@@53 T@Ref) (f_49@@53 T@Field_94052_2989) ) (!  (=> (select (|PolymorphicMapType_88523_42927_2989#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@2) null (WandMaskField_43251 pm_f_20@@2))) o2_20@@53 f_49@@53) (= (select (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@2) o2_20@@53 f_49@@53) (select (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@53 f_49@@53)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@53 f_49@@53))
)) (forall ((o2_20@@54 T@Ref) (f_49@@54 T@Field_88047_88048) ) (!  (=> (select (|PolymorphicMapType_88523_42929_42930#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@2) null (WandMaskField_43251 pm_f_20@@2))) o2_20@@54 f_49@@54) (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@2) o2_20@@54 f_49@@54) (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@54 f_49@@54)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@54 f_49@@54))
))) (forall ((o2_20@@55 T@Ref) (f_49@@55 T@Field_94148_94150) ) (!  (=> (select (|PolymorphicMapType_88523_42932_105110#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@2) null (WandMaskField_43251 pm_f_20@@2))) o2_20@@55 f_49@@55) (= (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@2) o2_20@@55 f_49@@55) (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@55 f_49@@55)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@55 f_49@@55))
))) (forall ((o2_20@@56 T@Ref) (f_49@@56 T@Field_88034_53) ) (!  (=> (select (|PolymorphicMapType_88523_42927_53#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@2) null (WandMaskField_43251 pm_f_20@@2))) o2_20@@56 f_49@@56) (= (select (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@2) o2_20@@56 f_49@@56) (select (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@56 f_49@@56)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@56 f_49@@56))
))) (forall ((o2_20@@57 T@Ref) (f_49@@57 T@Field_42929_43224) ) (!  (=> (select (|PolymorphicMapType_88523_42927_95114#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@2) null (WandMaskField_43251 pm_f_20@@2))) o2_20@@57 f_49@@57) (= (select (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@2) o2_20@@57 f_49@@57) (select (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@57 f_49@@57)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@57 f_49@@57))
))) (forall ((o2_20@@58 T@Ref) (f_49@@58 T@Field_42929_104545) ) (!  (=> (select (|PolymorphicMapType_88523_42927_327042#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@2) null (WandMaskField_43251 pm_f_20@@2))) o2_20@@58 f_49@@58) (= (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@2) o2_20@@58 f_49@@58) (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@58 f_49@@58)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@58 f_49@@58))
))) (forall ((o2_20@@59 T@Ref) (f_49@@59 T@Field_43223_3235) ) (!  (=> (select (|PolymorphicMapType_88523_95113_2989#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@2) null (WandMaskField_43251 pm_f_20@@2))) o2_20@@59 f_49@@59) (= (select (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@2) o2_20@@59 f_49@@59) (select (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@59 f_49@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@59 f_49@@59))
))) (forall ((o2_20@@60 T@Ref) (f_49@@60 T@Field_43223_42930) ) (!  (=> (select (|PolymorphicMapType_88523_95113_42930#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@2) null (WandMaskField_43251 pm_f_20@@2))) o2_20@@60 f_49@@60) (= (select (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@2) o2_20@@60 f_49@@60) (select (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@60 f_49@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@60 f_49@@60))
))) (forall ((o2_20@@61 T@Ref) (f_49@@61 T@Field_43223_118737) ) (!  (=> (select (|PolymorphicMapType_88523_95113_105110#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@2) null (WandMaskField_43251 pm_f_20@@2))) o2_20@@61 f_49@@61) (= (select (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@2) o2_20@@61 f_49@@61) (select (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@61 f_49@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@61 f_49@@61))
))) (forall ((o2_20@@62 T@Ref) (f_49@@62 T@Field_43223_53) ) (!  (=> (select (|PolymorphicMapType_88523_95113_53#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@2) null (WandMaskField_43251 pm_f_20@@2))) o2_20@@62 f_49@@62) (= (select (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@2) o2_20@@62 f_49@@62) (select (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@62 f_49@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@62 f_49@@62))
))) (forall ((o2_20@@63 T@Ref) (f_49@@63 T@Field_95113_95114) ) (!  (=> (select (|PolymorphicMapType_88523_95113_95114#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@2) null (WandMaskField_43251 pm_f_20@@2))) o2_20@@63 f_49@@63) (= (select (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@2) o2_20@@63 f_49@@63) (select (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@63 f_49@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@63 f_49@@63))
))) (forall ((o2_20@@64 T@Ref) (f_49@@64 T@Field_104540_104545) ) (!  (=> (select (|PolymorphicMapType_88523_95113_328294#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@2) null (WandMaskField_43251 pm_f_20@@2))) o2_20@@64 f_49@@64) (= (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@2) o2_20@@64 f_49@@64) (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@64 f_49@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@64 f_49@@64))
))) (forall ((o2_20@@65 T@Ref) (f_49@@65 T@Field_43251_3235) ) (!  (=> (select (|PolymorphicMapType_88523_97187_2989#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@2) null (WandMaskField_43251 pm_f_20@@2))) o2_20@@65 f_49@@65) (= (select (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@2) o2_20@@65 f_49@@65) (select (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@65 f_49@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@65 f_49@@65))
))) (forall ((o2_20@@66 T@Ref) (f_49@@66 T@Field_43251_42930) ) (!  (=> (select (|PolymorphicMapType_88523_97187_42930#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@2) null (WandMaskField_43251 pm_f_20@@2))) o2_20@@66 f_49@@66) (= (select (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@2) o2_20@@66 f_49@@66) (select (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@66 f_49@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@66 f_49@@66))
))) (forall ((o2_20@@67 T@Ref) (f_49@@67 T@Field_43251_118737) ) (!  (=> (select (|PolymorphicMapType_88523_97187_105110#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@2) null (WandMaskField_43251 pm_f_20@@2))) o2_20@@67 f_49@@67) (= (select (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@2) o2_20@@67 f_49@@67) (select (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@67 f_49@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@67 f_49@@67))
))) (forall ((o2_20@@68 T@Ref) (f_49@@68 T@Field_43251_53) ) (!  (=> (select (|PolymorphicMapType_88523_97187_53#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@2) null (WandMaskField_43251 pm_f_20@@2))) o2_20@@68 f_49@@68) (= (select (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@2) o2_20@@68 f_49@@68) (select (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@68 f_49@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@68 f_49@@68))
))) (forall ((o2_20@@69 T@Ref) (f_49@@69 T@Field_97187_97188) ) (!  (=> (select (|PolymorphicMapType_88523_97187_95114#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@2) null (WandMaskField_43251 pm_f_20@@2))) o2_20@@69 f_49@@69) (= (select (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@2) o2_20@@69 f_49@@69) (select (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@69 f_49@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@69 f_49@@69))
))) (forall ((o2_20@@70 T@Ref) (f_49@@70 T@Field_108020_108025) ) (!  (=> (select (|PolymorphicMapType_88523_97187_329546#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@2) null (WandMaskField_43251 pm_f_20@@2))) o2_20@@70 f_49@@70) (= (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@2) o2_20@@70 f_49@@70) (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@70 f_49@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| ExhaleHeap@@2) o2_20@@70 f_49@@70))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@2 Mask@@2) (IsWandField_43251_331349 pm_f_20@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_87974) (ExhaleHeap@@3 T@PolymorphicMapType_87974) (Mask@@3 T@PolymorphicMapType_87995) (pm_f_20@@3 T@Field_95113_95114) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@3 Mask@@3) (=> (and (HasDirectPerm_43223_43224 Mask@@3 null pm_f_20@@3) (IsWandField_43223_330992 pm_f_20@@3)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_20@@71 T@Ref) (f_49@@71 T@Field_94052_2989) ) (!  (=> (select (|PolymorphicMapType_88523_42927_2989#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@3) null (WandMaskField_43223 pm_f_20@@3))) o2_20@@71 f_49@@71) (= (select (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@3) o2_20@@71 f_49@@71) (select (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@71 f_49@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@71 f_49@@71))
)) (forall ((o2_20@@72 T@Ref) (f_49@@72 T@Field_88047_88048) ) (!  (=> (select (|PolymorphicMapType_88523_42929_42930#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@3) null (WandMaskField_43223 pm_f_20@@3))) o2_20@@72 f_49@@72) (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@3) o2_20@@72 f_49@@72) (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@72 f_49@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@72 f_49@@72))
))) (forall ((o2_20@@73 T@Ref) (f_49@@73 T@Field_94148_94150) ) (!  (=> (select (|PolymorphicMapType_88523_42932_105110#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@3) null (WandMaskField_43223 pm_f_20@@3))) o2_20@@73 f_49@@73) (= (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@3) o2_20@@73 f_49@@73) (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@73 f_49@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@73 f_49@@73))
))) (forall ((o2_20@@74 T@Ref) (f_49@@74 T@Field_88034_53) ) (!  (=> (select (|PolymorphicMapType_88523_42927_53#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@3) null (WandMaskField_43223 pm_f_20@@3))) o2_20@@74 f_49@@74) (= (select (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@3) o2_20@@74 f_49@@74) (select (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@74 f_49@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@74 f_49@@74))
))) (forall ((o2_20@@75 T@Ref) (f_49@@75 T@Field_42929_43224) ) (!  (=> (select (|PolymorphicMapType_88523_42927_95114#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@3) null (WandMaskField_43223 pm_f_20@@3))) o2_20@@75 f_49@@75) (= (select (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@3) o2_20@@75 f_49@@75) (select (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@75 f_49@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@75 f_49@@75))
))) (forall ((o2_20@@76 T@Ref) (f_49@@76 T@Field_42929_104545) ) (!  (=> (select (|PolymorphicMapType_88523_42927_327042#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@3) null (WandMaskField_43223 pm_f_20@@3))) o2_20@@76 f_49@@76) (= (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@3) o2_20@@76 f_49@@76) (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@76 f_49@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@76 f_49@@76))
))) (forall ((o2_20@@77 T@Ref) (f_49@@77 T@Field_43223_3235) ) (!  (=> (select (|PolymorphicMapType_88523_95113_2989#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@3) null (WandMaskField_43223 pm_f_20@@3))) o2_20@@77 f_49@@77) (= (select (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@3) o2_20@@77 f_49@@77) (select (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@77 f_49@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@77 f_49@@77))
))) (forall ((o2_20@@78 T@Ref) (f_49@@78 T@Field_43223_42930) ) (!  (=> (select (|PolymorphicMapType_88523_95113_42930#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@3) null (WandMaskField_43223 pm_f_20@@3))) o2_20@@78 f_49@@78) (= (select (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@3) o2_20@@78 f_49@@78) (select (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@78 f_49@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@78 f_49@@78))
))) (forall ((o2_20@@79 T@Ref) (f_49@@79 T@Field_43223_118737) ) (!  (=> (select (|PolymorphicMapType_88523_95113_105110#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@3) null (WandMaskField_43223 pm_f_20@@3))) o2_20@@79 f_49@@79) (= (select (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@3) o2_20@@79 f_49@@79) (select (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@79 f_49@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@79 f_49@@79))
))) (forall ((o2_20@@80 T@Ref) (f_49@@80 T@Field_43223_53) ) (!  (=> (select (|PolymorphicMapType_88523_95113_53#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@3) null (WandMaskField_43223 pm_f_20@@3))) o2_20@@80 f_49@@80) (= (select (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@3) o2_20@@80 f_49@@80) (select (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@80 f_49@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@80 f_49@@80))
))) (forall ((o2_20@@81 T@Ref) (f_49@@81 T@Field_95113_95114) ) (!  (=> (select (|PolymorphicMapType_88523_95113_95114#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@3) null (WandMaskField_43223 pm_f_20@@3))) o2_20@@81 f_49@@81) (= (select (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@3) o2_20@@81 f_49@@81) (select (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@81 f_49@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@81 f_49@@81))
))) (forall ((o2_20@@82 T@Ref) (f_49@@82 T@Field_104540_104545) ) (!  (=> (select (|PolymorphicMapType_88523_95113_328294#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@3) null (WandMaskField_43223 pm_f_20@@3))) o2_20@@82 f_49@@82) (= (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@3) o2_20@@82 f_49@@82) (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@82 f_49@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@82 f_49@@82))
))) (forall ((o2_20@@83 T@Ref) (f_49@@83 T@Field_43251_3235) ) (!  (=> (select (|PolymorphicMapType_88523_97187_2989#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@3) null (WandMaskField_43223 pm_f_20@@3))) o2_20@@83 f_49@@83) (= (select (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@3) o2_20@@83 f_49@@83) (select (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@83 f_49@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@83 f_49@@83))
))) (forall ((o2_20@@84 T@Ref) (f_49@@84 T@Field_43251_42930) ) (!  (=> (select (|PolymorphicMapType_88523_97187_42930#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@3) null (WandMaskField_43223 pm_f_20@@3))) o2_20@@84 f_49@@84) (= (select (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@3) o2_20@@84 f_49@@84) (select (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@84 f_49@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@84 f_49@@84))
))) (forall ((o2_20@@85 T@Ref) (f_49@@85 T@Field_43251_118737) ) (!  (=> (select (|PolymorphicMapType_88523_97187_105110#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@3) null (WandMaskField_43223 pm_f_20@@3))) o2_20@@85 f_49@@85) (= (select (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@3) o2_20@@85 f_49@@85) (select (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@85 f_49@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@85 f_49@@85))
))) (forall ((o2_20@@86 T@Ref) (f_49@@86 T@Field_43251_53) ) (!  (=> (select (|PolymorphicMapType_88523_97187_53#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@3) null (WandMaskField_43223 pm_f_20@@3))) o2_20@@86 f_49@@86) (= (select (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@3) o2_20@@86 f_49@@86) (select (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@86 f_49@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@86 f_49@@86))
))) (forall ((o2_20@@87 T@Ref) (f_49@@87 T@Field_97187_97188) ) (!  (=> (select (|PolymorphicMapType_88523_97187_95114#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@3) null (WandMaskField_43223 pm_f_20@@3))) o2_20@@87 f_49@@87) (= (select (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@3) o2_20@@87 f_49@@87) (select (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@87 f_49@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@87 f_49@@87))
))) (forall ((o2_20@@88 T@Ref) (f_49@@88 T@Field_108020_108025) ) (!  (=> (select (|PolymorphicMapType_88523_97187_329546#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@3) null (WandMaskField_43223 pm_f_20@@3))) o2_20@@88 f_49@@88) (= (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@3) o2_20@@88 f_49@@88) (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@88 f_49@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| ExhaleHeap@@3) o2_20@@88 f_49@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@3 Mask@@3) (IsWandField_43223_330992 pm_f_20@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_87974) (ExhaleHeap@@4 T@PolymorphicMapType_87974) (Mask@@4 T@PolymorphicMapType_87995) (pm_f_20@@4 T@Field_42929_43224) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@4 Mask@@4) (=> (and (HasDirectPerm_42929_43224 Mask@@4 null pm_f_20@@4) (IsWandField_42929_330635 pm_f_20@@4)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_20@@89 T@Ref) (f_49@@89 T@Field_94052_2989) ) (!  (=> (select (|PolymorphicMapType_88523_42927_2989#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@4) null (WandMaskField_42929 pm_f_20@@4))) o2_20@@89 f_49@@89) (= (select (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@4) o2_20@@89 f_49@@89) (select (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@89 f_49@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@89 f_49@@89))
)) (forall ((o2_20@@90 T@Ref) (f_49@@90 T@Field_88047_88048) ) (!  (=> (select (|PolymorphicMapType_88523_42929_42930#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@4) null (WandMaskField_42929 pm_f_20@@4))) o2_20@@90 f_49@@90) (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@4) o2_20@@90 f_49@@90) (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@90 f_49@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@90 f_49@@90))
))) (forall ((o2_20@@91 T@Ref) (f_49@@91 T@Field_94148_94150) ) (!  (=> (select (|PolymorphicMapType_88523_42932_105110#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@4) null (WandMaskField_42929 pm_f_20@@4))) o2_20@@91 f_49@@91) (= (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@4) o2_20@@91 f_49@@91) (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@91 f_49@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@91 f_49@@91))
))) (forall ((o2_20@@92 T@Ref) (f_49@@92 T@Field_88034_53) ) (!  (=> (select (|PolymorphicMapType_88523_42927_53#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@4) null (WandMaskField_42929 pm_f_20@@4))) o2_20@@92 f_49@@92) (= (select (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@4) o2_20@@92 f_49@@92) (select (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@92 f_49@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@92 f_49@@92))
))) (forall ((o2_20@@93 T@Ref) (f_49@@93 T@Field_42929_43224) ) (!  (=> (select (|PolymorphicMapType_88523_42927_95114#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@4) null (WandMaskField_42929 pm_f_20@@4))) o2_20@@93 f_49@@93) (= (select (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@4) o2_20@@93 f_49@@93) (select (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@93 f_49@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@93 f_49@@93))
))) (forall ((o2_20@@94 T@Ref) (f_49@@94 T@Field_42929_104545) ) (!  (=> (select (|PolymorphicMapType_88523_42927_327042#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@4) null (WandMaskField_42929 pm_f_20@@4))) o2_20@@94 f_49@@94) (= (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@4) o2_20@@94 f_49@@94) (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@94 f_49@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@94 f_49@@94))
))) (forall ((o2_20@@95 T@Ref) (f_49@@95 T@Field_43223_3235) ) (!  (=> (select (|PolymorphicMapType_88523_95113_2989#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@4) null (WandMaskField_42929 pm_f_20@@4))) o2_20@@95 f_49@@95) (= (select (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@4) o2_20@@95 f_49@@95) (select (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@95 f_49@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@95 f_49@@95))
))) (forall ((o2_20@@96 T@Ref) (f_49@@96 T@Field_43223_42930) ) (!  (=> (select (|PolymorphicMapType_88523_95113_42930#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@4) null (WandMaskField_42929 pm_f_20@@4))) o2_20@@96 f_49@@96) (= (select (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@4) o2_20@@96 f_49@@96) (select (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@96 f_49@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@96 f_49@@96))
))) (forall ((o2_20@@97 T@Ref) (f_49@@97 T@Field_43223_118737) ) (!  (=> (select (|PolymorphicMapType_88523_95113_105110#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@4) null (WandMaskField_42929 pm_f_20@@4))) o2_20@@97 f_49@@97) (= (select (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@4) o2_20@@97 f_49@@97) (select (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@97 f_49@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@97 f_49@@97))
))) (forall ((o2_20@@98 T@Ref) (f_49@@98 T@Field_43223_53) ) (!  (=> (select (|PolymorphicMapType_88523_95113_53#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@4) null (WandMaskField_42929 pm_f_20@@4))) o2_20@@98 f_49@@98) (= (select (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@4) o2_20@@98 f_49@@98) (select (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@98 f_49@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@98 f_49@@98))
))) (forall ((o2_20@@99 T@Ref) (f_49@@99 T@Field_95113_95114) ) (!  (=> (select (|PolymorphicMapType_88523_95113_95114#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@4) null (WandMaskField_42929 pm_f_20@@4))) o2_20@@99 f_49@@99) (= (select (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@4) o2_20@@99 f_49@@99) (select (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@99 f_49@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@99 f_49@@99))
))) (forall ((o2_20@@100 T@Ref) (f_49@@100 T@Field_104540_104545) ) (!  (=> (select (|PolymorphicMapType_88523_95113_328294#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@4) null (WandMaskField_42929 pm_f_20@@4))) o2_20@@100 f_49@@100) (= (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@4) o2_20@@100 f_49@@100) (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@100 f_49@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@100 f_49@@100))
))) (forall ((o2_20@@101 T@Ref) (f_49@@101 T@Field_43251_3235) ) (!  (=> (select (|PolymorphicMapType_88523_97187_2989#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@4) null (WandMaskField_42929 pm_f_20@@4))) o2_20@@101 f_49@@101) (= (select (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@4) o2_20@@101 f_49@@101) (select (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@101 f_49@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@101 f_49@@101))
))) (forall ((o2_20@@102 T@Ref) (f_49@@102 T@Field_43251_42930) ) (!  (=> (select (|PolymorphicMapType_88523_97187_42930#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@4) null (WandMaskField_42929 pm_f_20@@4))) o2_20@@102 f_49@@102) (= (select (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@4) o2_20@@102 f_49@@102) (select (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@102 f_49@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@102 f_49@@102))
))) (forall ((o2_20@@103 T@Ref) (f_49@@103 T@Field_43251_118737) ) (!  (=> (select (|PolymorphicMapType_88523_97187_105110#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@4) null (WandMaskField_42929 pm_f_20@@4))) o2_20@@103 f_49@@103) (= (select (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@4) o2_20@@103 f_49@@103) (select (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@103 f_49@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@103 f_49@@103))
))) (forall ((o2_20@@104 T@Ref) (f_49@@104 T@Field_43251_53) ) (!  (=> (select (|PolymorphicMapType_88523_97187_53#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@4) null (WandMaskField_42929 pm_f_20@@4))) o2_20@@104 f_49@@104) (= (select (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@4) o2_20@@104 f_49@@104) (select (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@104 f_49@@104)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@104 f_49@@104))
))) (forall ((o2_20@@105 T@Ref) (f_49@@105 T@Field_97187_97188) ) (!  (=> (select (|PolymorphicMapType_88523_97187_95114#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@4) null (WandMaskField_42929 pm_f_20@@4))) o2_20@@105 f_49@@105) (= (select (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@4) o2_20@@105 f_49@@105) (select (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@105 f_49@@105)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@105 f_49@@105))
))) (forall ((o2_20@@106 T@Ref) (f_49@@106 T@Field_108020_108025) ) (!  (=> (select (|PolymorphicMapType_88523_97187_329546#PolymorphicMapType_88523| (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@4) null (WandMaskField_42929 pm_f_20@@4))) o2_20@@106 f_49@@106) (= (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@4) o2_20@@106 f_49@@106) (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@106 f_49@@106)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| ExhaleHeap@@4) o2_20@@106 f_49@@106))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@4 Mask@@4) (IsWandField_42929_330635 pm_f_20@@4))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_87974) (Heap1 T@PolymorphicMapType_87974) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_87974) (Mask@@5 T@PolymorphicMapType_87995) ) (!  (=> (state Heap@@5 Mask@@5) (GoodMask Mask@@5))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@5 Mask@@5))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_87974) (Heap1@@0 T@PolymorphicMapType_87974) (Heap2 T@PolymorphicMapType_87974) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_108020_108025) ) (!  (not (select (|PolymorphicMapType_88523_97187_329546#PolymorphicMapType_88523| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88523_97187_329546#PolymorphicMapType_88523| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_97187_97188) ) (!  (not (select (|PolymorphicMapType_88523_97187_95114#PolymorphicMapType_88523| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88523_97187_95114#PolymorphicMapType_88523| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_43251_53) ) (!  (not (select (|PolymorphicMapType_88523_97187_53#PolymorphicMapType_88523| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88523_97187_53#PolymorphicMapType_88523| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_43251_118737) ) (!  (not (select (|PolymorphicMapType_88523_97187_105110#PolymorphicMapType_88523| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88523_97187_105110#PolymorphicMapType_88523| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_43251_42930) ) (!  (not (select (|PolymorphicMapType_88523_97187_42930#PolymorphicMapType_88523| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88523_97187_42930#PolymorphicMapType_88523| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_43251_3235) ) (!  (not (select (|PolymorphicMapType_88523_97187_2989#PolymorphicMapType_88523| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88523_97187_2989#PolymorphicMapType_88523| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_104540_104545) ) (!  (not (select (|PolymorphicMapType_88523_95113_328294#PolymorphicMapType_88523| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88523_95113_328294#PolymorphicMapType_88523| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_95113_95114) ) (!  (not (select (|PolymorphicMapType_88523_95113_95114#PolymorphicMapType_88523| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88523_95113_95114#PolymorphicMapType_88523| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_43223_53) ) (!  (not (select (|PolymorphicMapType_88523_95113_53#PolymorphicMapType_88523| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88523_95113_53#PolymorphicMapType_88523| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_43223_118737) ) (!  (not (select (|PolymorphicMapType_88523_95113_105110#PolymorphicMapType_88523| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88523_95113_105110#PolymorphicMapType_88523| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_43223_42930) ) (!  (not (select (|PolymorphicMapType_88523_95113_42930#PolymorphicMapType_88523| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88523_95113_42930#PolymorphicMapType_88523| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_43223_3235) ) (!  (not (select (|PolymorphicMapType_88523_95113_2989#PolymorphicMapType_88523| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88523_95113_2989#PolymorphicMapType_88523| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_42929_104545) ) (!  (not (select (|PolymorphicMapType_88523_42927_327042#PolymorphicMapType_88523| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88523_42927_327042#PolymorphicMapType_88523| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_42929_43224) ) (!  (not (select (|PolymorphicMapType_88523_42927_95114#PolymorphicMapType_88523| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88523_42927_95114#PolymorphicMapType_88523| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_88034_53) ) (!  (not (select (|PolymorphicMapType_88523_42927_53#PolymorphicMapType_88523| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88523_42927_53#PolymorphicMapType_88523| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_94148_94150) ) (!  (not (select (|PolymorphicMapType_88523_42932_105110#PolymorphicMapType_88523| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88523_42932_105110#PolymorphicMapType_88523| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_88047_88048) ) (!  (not (select (|PolymorphicMapType_88523_42929_42930#PolymorphicMapType_88523| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88523_42929_42930#PolymorphicMapType_88523| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_94052_2989) ) (!  (not (select (|PolymorphicMapType_88523_42927_2989#PolymorphicMapType_88523| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88523_42927_2989#PolymorphicMapType_88523| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_2867| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_2867| (|Seq#Drop_3097| s@@0 n@@0) j) (|Seq#Index_2867| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.303:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_3097| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_2867| |Seq#Empty_12082|) 0))
(assert (forall ((diz T@Ref) ) (! (IsPredicateField_43223_43224 (Wand_state_contains_for_state_contains__valid_wand diz))
 :qid |stdinbpl.2017:15|
 :skolemid |101|
 :pattern ( (Wand_state_contains_for_state_contains__valid_wand diz))
)))
(assert (forall ((diz@@0 T@Ref) ) (! (IsPredicateField_43251_43252 (Tree__state diz@@0))
 :qid |stdinbpl.2450:15|
 :skolemid |107|
 :pattern ( (Tree__state diz@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_87974) (diz@@1 T@Ref) ) (! (dummyFunction_43007 (|Wand_state_contains_for_state_contains__get_in_1#triggerStateless| diz@@1))
 :qid |stdinbpl.622:15|
 :skolemid |59|
 :pattern ( (|Wand_state_contains_for_state_contains__get_in_1'| Heap@@6 diz@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_87974) (diz@@2 T@Ref) ) (! (dummyFunction_109602 (|Wand_state_contains_for_state_contains__get_in_1_0#triggerStateless| diz@@2))
 :qid |stdinbpl.892:15|
 :skolemid |66|
 :pattern ( (|Wand_state_contains_for_state_contains__get_in_1_0'| Heap@@7 diz@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_87974) (diz@@3 T@Ref) ) (! (dummyFunction_43007 (|Wand_state_contains_for_state_contains__get_out_1#triggerStateless| diz@@3))
 :qid |stdinbpl.1150:15|
 :skolemid |72|
 :pattern ( (|Wand_state_contains_for_state_contains__get_out_1'| Heap@@8 diz@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_87974) (diz@@4 T@Ref) ) (! (dummyFunction_109602 (|Wand_state_contains_for_state_contains__get_out_1_0#triggerStateless| diz@@4))
 :qid |stdinbpl.1420:15|
 :skolemid |79|
 :pattern ( (|Wand_state_contains_for_state_contains__get_out_1_0'| Heap@@9 diz@@4))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_87974) (t_2 T@Ref) ) (! (dummyFunction_109602 (|Tree__tolist#triggerStateless| t_2))
 :qid |stdinbpl.1678:15|
 :skolemid |85|
 :pattern ( (|Tree__tolist'| Heap@@10 t_2))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_87974) (s_2 T@Seq_2867) ) (! (dummyFunction_13345 (|Tree__sorted_list#triggerStateless| s_2))
 :qid |stdinbpl.1855:15|
 :skolemid |91|
 :pattern ( (|Tree__sorted_list'| Heap@@11 s_2))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_87974) (t_2@@0 T@Ref) ) (! (dummyFunction_13345 (|Tree__sorted#triggerStateless| t_2@@0))
 :qid |stdinbpl.1930:15|
 :skolemid |97|
 :pattern ( (|Tree__sorted'| Heap@@12 t_2@@0))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_87974) (diz@@5 T@Ref) ) (! (|Wand_state_contains_for_state_contains__valid_wand#everUsed_43223| (Wand_state_contains_for_state_contains__valid_wand diz@@5))
 :qid |stdinbpl.2036:15|
 :skolemid |105|
 :pattern ( (|Wand_state_contains_for_state_contains__valid_wand#trigger_43223| Heap@@13 (Wand_state_contains_for_state_contains__valid_wand diz@@5)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_87974) (diz@@6 T@Ref) ) (! (|Tree__state#everUsed_43251| (Tree__state diz@@6))
 :qid |stdinbpl.2469:15|
 :skolemid |111|
 :pattern ( (|Tree__state#trigger_43251| Heap@@14 (Tree__state diz@@6)))
)))
(assert (forall ((s@@1 T@Seq_2867) (i Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_2867| s@@1))) (and (=> (= i n@@1) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) v)) (=> (not (= i n@@1)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) (|Seq#Index_2867| s@@1 n@@1)))))
 :qid |stdinbpl.258:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1))
 :pattern ( (|Seq#Index_2867| s@@1 n@@1) (|Seq#Update_2867| s@@1 i v))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_2867| s@@2)) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_2867| s@@2) n@@2) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) (|Seq#Length_2867| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) 0)))
 :qid |stdinbpl.269:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)))
 :pattern ( (|Seq#Take_2867| s@@2 n@@2) (|Seq#Length_2867| s@@2))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_87974) (Mask@@6 T@PolymorphicMapType_87995) (t_2@@1 T@Ref) ) (!  (=> (state Heap@@15 Mask@@6) (= (|Tree__sorted'| Heap@@15 t_2@@1) (|Tree__sorted#frame| (FrameFragment_43252 (ite (not (= t_2@@1 null)) (select (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@15) null (Tree__state t_2@@1)) EmptyFrame)) t_2@@1)))
 :qid |stdinbpl.1943:15|
 :skolemid |99|
 :pattern ( (state Heap@@15 Mask@@6) (|Tree__sorted'| Heap@@15 t_2@@1))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.543:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_2867) (x Int) ) (!  (=> (|Seq#Contains_2867| s@@3 x) (and (and (<= 0 (|Seq#Skolem_2867| s@@3 x)) (< (|Seq#Skolem_2867| s@@3 x) (|Seq#Length_2867| s@@3))) (= (|Seq#Index_2867| s@@3 (|Seq#Skolem_2867| s@@3 x)) x)))
 :qid |stdinbpl.401:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@3 x))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_87974) (diz@@7 T@Ref) ) (!  (and (= (Wand_state_contains_for_state_contains__get_in_1 Heap@@16 diz@@7) (|Wand_state_contains_for_state_contains__get_in_1'| Heap@@16 diz@@7)) (dummyFunction_43007 (|Wand_state_contains_for_state_contains__get_in_1#triggerStateless| diz@@7)))
 :qid |stdinbpl.618:15|
 :skolemid |58|
 :pattern ( (Wand_state_contains_for_state_contains__get_in_1 Heap@@16 diz@@7))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_87974) (diz@@8 T@Ref) ) (!  (and (= (Wand_state_contains_for_state_contains__get_in_1_0 Heap@@17 diz@@8) (|Wand_state_contains_for_state_contains__get_in_1_0'| Heap@@17 diz@@8)) (dummyFunction_109602 (|Wand_state_contains_for_state_contains__get_in_1_0#triggerStateless| diz@@8)))
 :qid |stdinbpl.888:15|
 :skolemid |65|
 :pattern ( (Wand_state_contains_for_state_contains__get_in_1_0 Heap@@17 diz@@8))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_87974) (diz@@9 T@Ref) ) (!  (and (= (Wand_state_contains_for_state_contains__get_out_1 Heap@@18 diz@@9) (|Wand_state_contains_for_state_contains__get_out_1'| Heap@@18 diz@@9)) (dummyFunction_43007 (|Wand_state_contains_for_state_contains__get_out_1#triggerStateless| diz@@9)))
 :qid |stdinbpl.1146:15|
 :skolemid |71|
 :pattern ( (Wand_state_contains_for_state_contains__get_out_1 Heap@@18 diz@@9))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_87974) (diz@@10 T@Ref) ) (!  (and (= (Wand_state_contains_for_state_contains__get_out_1_0 Heap@@19 diz@@10) (|Wand_state_contains_for_state_contains__get_out_1_0'| Heap@@19 diz@@10)) (dummyFunction_109602 (|Wand_state_contains_for_state_contains__get_out_1_0#triggerStateless| diz@@10)))
 :qid |stdinbpl.1416:15|
 :skolemid |78|
 :pattern ( (Wand_state_contains_for_state_contains__get_out_1_0 Heap@@19 diz@@10))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_87974) (t_2@@2 T@Ref) ) (!  (and (= (Tree__tolist Heap@@20 t_2@@2) (|Tree__tolist'| Heap@@20 t_2@@2)) (dummyFunction_109602 (|Tree__tolist#triggerStateless| t_2@@2)))
 :qid |stdinbpl.1674:15|
 :skolemid |84|
 :pattern ( (Tree__tolist Heap@@20 t_2@@2))
)))
(assert (forall ((s@@4 T@Seq_2867) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_3097| s@@4 n@@3) s@@4))
 :qid |stdinbpl.385:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3097| s@@4 n@@3))
)))
(assert (forall ((i@@0 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@0 j@@0) (- i@@0 j@@0))
 :qid |stdinbpl.238:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@0 j@@0))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@1 j@@1) (+ i@@1 j@@1))
 :qid |stdinbpl.236:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@1 j@@1))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_87974) (ExhaleHeap@@5 T@PolymorphicMapType_87974) (Mask@@7 T@PolymorphicMapType_87995) (pm_f_20@@5 T@Field_97187_97188) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_43251_43252 Mask@@7 null pm_f_20@@5) (IsPredicateField_43251_43252 pm_f_20@@5)) (= (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@21) null (PredicateMaskField_43251 pm_f_20@@5)) (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| ExhaleHeap@@5) null (PredicateMaskField_43251 pm_f_20@@5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@5 Mask@@7) (IsPredicateField_43251_43252 pm_f_20@@5) (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| ExhaleHeap@@5) null (PredicateMaskField_43251 pm_f_20@@5)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_87974) (ExhaleHeap@@6 T@PolymorphicMapType_87974) (Mask@@8 T@PolymorphicMapType_87995) (pm_f_20@@6 T@Field_95113_95114) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_43223_43224 Mask@@8 null pm_f_20@@6) (IsPredicateField_43223_43224 pm_f_20@@6)) (= (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@22) null (PredicateMaskField_43223 pm_f_20@@6)) (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| ExhaleHeap@@6) null (PredicateMaskField_43223 pm_f_20@@6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@6 Mask@@8) (IsPredicateField_43223_43224 pm_f_20@@6) (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| ExhaleHeap@@6) null (PredicateMaskField_43223 pm_f_20@@6)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_87974) (ExhaleHeap@@7 T@PolymorphicMapType_87974) (Mask@@9 T@PolymorphicMapType_87995) (pm_f_20@@7 T@Field_42929_43224) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@7 Mask@@9) (=> (and (HasDirectPerm_42929_43224 Mask@@9 null pm_f_20@@7) (IsPredicateField_42929_325071 pm_f_20@@7)) (= (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@23) null (PredicateMaskField_42929 pm_f_20@@7)) (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| ExhaleHeap@@7) null (PredicateMaskField_42929 pm_f_20@@7)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@7 Mask@@9) (IsPredicateField_42929_325071 pm_f_20@@7) (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| ExhaleHeap@@7) null (PredicateMaskField_42929 pm_f_20@@7)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_87974) (ExhaleHeap@@8 T@PolymorphicMapType_87974) (Mask@@10 T@PolymorphicMapType_87995) (pm_f_20@@8 T@Field_97187_97188) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@8 Mask@@10) (=> (and (HasDirectPerm_43251_43252 Mask@@10 null pm_f_20@@8) (IsWandField_43251_331349 pm_f_20@@8)) (= (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@24) null (WandMaskField_43251 pm_f_20@@8)) (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| ExhaleHeap@@8) null (WandMaskField_43251 pm_f_20@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@8 Mask@@10) (IsWandField_43251_331349 pm_f_20@@8) (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| ExhaleHeap@@8) null (WandMaskField_43251 pm_f_20@@8)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_87974) (ExhaleHeap@@9 T@PolymorphicMapType_87974) (Mask@@11 T@PolymorphicMapType_87995) (pm_f_20@@9 T@Field_95113_95114) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@9 Mask@@11) (=> (and (HasDirectPerm_43223_43224 Mask@@11 null pm_f_20@@9) (IsWandField_43223_330992 pm_f_20@@9)) (= (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@25) null (WandMaskField_43223 pm_f_20@@9)) (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| ExhaleHeap@@9) null (WandMaskField_43223 pm_f_20@@9)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@9 Mask@@11) (IsWandField_43223_330992 pm_f_20@@9) (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| ExhaleHeap@@9) null (WandMaskField_43223 pm_f_20@@9)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_87974) (ExhaleHeap@@10 T@PolymorphicMapType_87974) (Mask@@12 T@PolymorphicMapType_87995) (pm_f_20@@10 T@Field_42929_43224) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@10 Mask@@12) (=> (and (HasDirectPerm_42929_43224 Mask@@12 null pm_f_20@@10) (IsWandField_42929_330635 pm_f_20@@10)) (= (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@26) null (WandMaskField_42929 pm_f_20@@10)) (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| ExhaleHeap@@10) null (WandMaskField_42929 pm_f_20@@10)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@10 Mask@@12) (IsWandField_42929_330635 pm_f_20@@10) (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| ExhaleHeap@@10) null (WandMaskField_42929 pm_f_20@@10)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_87974) (Mask@@13 T@PolymorphicMapType_87995) (t_2@@3 T@Ref) ) (!  (=> (state Heap@@27 Mask@@13) (= (|Tree__tolist'| Heap@@27 t_2@@3) (|Tree__tolist#frame| (FrameFragment_43252 (ite (not (= t_2@@3 null)) (select (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@27) null (Tree__state t_2@@3)) EmptyFrame)) t_2@@3)))
 :qid |stdinbpl.1691:15|
 :skolemid |87|
 :pattern ( (state Heap@@27 Mask@@13) (|Tree__tolist'| Heap@@27 t_2@@3))
 :pattern ( (state Heap@@27 Mask@@13) (|Tree__tolist#triggerStateless| t_2@@3) (|Tree__state#trigger_43251| Heap@@27 (Tree__state t_2@@3)) (|Tree__state#trigger_43251| Heap@@27 (Tree__state t_2@@3)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_3235| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.526:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_3235| x@@0) y))
)))
(assert (forall ((s@@5 T@Seq_2867) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2867| s@@5))) (= (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2) (|Seq#Index_2867| s@@5 j@@2)))
 :qid |stdinbpl.277:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2867| s@@5 j@@2) (|Seq#Take_2867| s@@5 n@@4))
)))
(assert (forall ((diz@@11 T@Ref) (diz2 T@Ref) ) (!  (=> (= (Wand_state_contains_for_state_contains__valid_wand diz@@11) (Wand_state_contains_for_state_contains__valid_wand diz2)) (= diz@@11 diz2))
 :qid |stdinbpl.2027:15|
 :skolemid |103|
 :pattern ( (Wand_state_contains_for_state_contains__valid_wand diz@@11) (Wand_state_contains_for_state_contains__valid_wand diz2))
)))
(assert (forall ((diz@@12 T@Ref) (diz2@@0 T@Ref) ) (!  (=> (= (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@12) (|Wand_state_contains_for_state_contains__valid_wand#sm| diz2@@0)) (= diz@@12 diz2@@0))
 :qid |stdinbpl.2031:15|
 :skolemid |104|
 :pattern ( (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@12) (|Wand_state_contains_for_state_contains__valid_wand#sm| diz2@@0))
)))
(assert (forall ((diz@@13 T@Ref) (diz2@@1 T@Ref) ) (!  (=> (= (Tree__state diz@@13) (Tree__state diz2@@1)) (= diz@@13 diz2@@1))
 :qid |stdinbpl.2460:15|
 :skolemid |109|
 :pattern ( (Tree__state diz@@13) (Tree__state diz2@@1))
)))
(assert (forall ((diz@@14 T@Ref) (diz2@@2 T@Ref) ) (!  (=> (= (|Tree__state#sm| diz@@14) (|Tree__state#sm| diz2@@2)) (= diz@@14 diz2@@2))
 :qid |stdinbpl.2464:15|
 :skolemid |110|
 :pattern ( (|Tree__state#sm| diz@@14) (|Tree__state#sm| diz2@@2))
)))
(assert (forall ((s@@6 T@Seq_2867) (t T@Seq_2867) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2867| s@@6))) (< n@@5 (|Seq#Length_2867| (|Seq#Append_3128| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)) (|Seq#Length_2867| s@@6)) n@@5) (= (|Seq#Take_2867| (|Seq#Append_3128| s@@6 t) n@@5) (|Seq#Append_3128| s@@6 (|Seq#Take_2867| t (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)))))))
 :qid |stdinbpl.362:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_3128| s@@6 t) n@@5))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@28 T@PolymorphicMapType_87974) (ExhaleHeap@@11 T@PolymorphicMapType_87974) (Mask@@14 T@PolymorphicMapType_87995) (o_45 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@11 Mask@@14) (=> (select (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@28) o_45 $allocated) (select (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| ExhaleHeap@@11) o_45 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@11 Mask@@14) (select (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| ExhaleHeap@@11) o_45 $allocated))
)))
(assert (forall ((p T@Field_42929_43224) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_88034_88034 p v_1 p w))
 :qid |stdinbpl.180:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_88034_88034 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_97187_97188) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_43251_43251 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.180:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_43251_43251 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_95113_95114) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_43223_43223 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.180:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_43223_43223 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_87974) (Mask@@15 T@PolymorphicMapType_87995) (diz@@15 T@Ref) ) (!  (=> (and (state Heap@@29 Mask@@15) (or (< AssumeFunctionsAbove 1) (|Wand_state_contains_for_state_contains__get_out_1#trigger| (select (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@29) null (Wand_state_contains_for_state_contains__valid_wand diz@@15)) diz@@15))) (=> (not (= diz@@15 null)) (not (= (|Wand_state_contains_for_state_contains__get_out_1'| Heap@@29 diz@@15) null))))
 :qid |stdinbpl.1169:15|
 :skolemid |75|
 :pattern ( (state Heap@@29 Mask@@15) (|Wand_state_contains_for_state_contains__get_out_1'| Heap@@29 diz@@15))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_87974) (Mask@@16 T@PolymorphicMapType_87995) (diz@@16 T@Ref) ) (!  (=> (and (state Heap@@30 Mask@@16) (or (< AssumeFunctionsAbove 2) (|Wand_state_contains_for_state_contains__get_in_1#trigger| (select (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@30) null (Wand_state_contains_for_state_contains__valid_wand diz@@16)) diz@@16))) (=> (not (= diz@@16 null)) (not (= (|Wand_state_contains_for_state_contains__get_in_1'| Heap@@30 diz@@16) null))))
 :qid |stdinbpl.641:15|
 :skolemid |62|
 :pattern ( (state Heap@@30 Mask@@16) (|Wand_state_contains_for_state_contains__get_in_1'| Heap@@30 diz@@16))
)))
(assert (forall ((s0 T@Seq_2867) (s1 T@Seq_2867) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_12082|)) (not (= s1 |Seq#Empty_12082|))) (<= (|Seq#Length_2867| s0) n@@6)) (< n@@6 (|Seq#Length_2867| (|Seq#Append_3128| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2867| s0)) (|Seq#Length_2867| s0)) n@@6) (= (|Seq#Index_2867| (|Seq#Append_3128| s0 s1) n@@6) (|Seq#Index_2867| s1 (|Seq#Sub| n@@6 (|Seq#Length_2867| s0))))))
 :qid |stdinbpl.249:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3128| s0 s1) n@@6))
)))
(assert  (not (IsPredicateField_42927_2989 Wand_state_contains_for_state_contains__lemma)))
(assert  (not (IsWandField_42927_2989 Wand_state_contains_for_state_contains__lemma)))
(assert  (not (IsPredicateField_42929_42930 Wand_state_contains_for_state_contains__in_1)))
(assert  (not (IsWandField_42929_42930 Wand_state_contains_for_state_contains__in_1)))
(assert  (not (IsPredicateField_42932_94169 Wand_state_contains_for_state_contains__in_1_0)))
(assert  (not (IsWandField_42932_94192 Wand_state_contains_for_state_contains__in_1_0)))
(assert  (not (IsPredicateField_42929_42930 Wand_state_contains_for_state_contains__out_1)))
(assert  (not (IsWandField_42929_42930 Wand_state_contains_for_state_contains__out_1)))
(assert  (not (IsPredicateField_42932_94169 Wand_state_contains_for_state_contains__out_1_0)))
(assert  (not (IsWandField_42932_94192 Wand_state_contains_for_state_contains__out_1_0)))
(assert  (not (IsPredicateField_42929_42930 Wand_state_contains_for_state_contains__this_1)))
(assert  (not (IsWandField_42929_42930 Wand_state_contains_for_state_contains__this_1)))
(assert  (not (IsPredicateField_42932_94169 Wand_state_contains_for_state_contains__target_contents_1)))
(assert  (not (IsWandField_42932_94192 Wand_state_contains_for_state_contains__target_contents_1)))
(assert  (not (IsPredicateField_42932_94169 Wand_state_contains_for_state_contains__prev_contents_1)))
(assert  (not (IsWandField_42932_94192 Wand_state_contains_for_state_contains__prev_contents_1)))
(assert  (not (IsPredicateField_42929_42930 Wand_state_contains_for_state_contains__prev_1)))
(assert  (not (IsWandField_42929_42930 Wand_state_contains_for_state_contains__prev_1)))
(assert  (not (IsPredicateField_42932_94169 Wand_state_contains_for_state_contains__cur_contents_1)))
(assert  (not (IsWandField_42932_94192 Wand_state_contains_for_state_contains__cur_contents_1)))
(assert  (not (IsPredicateField_42929_42930 Wand_state_contains_for_state_contains__top_1)))
(assert  (not (IsWandField_42929_42930 Wand_state_contains_for_state_contains__top_1)))
(assert  (not (IsPredicateField_42929_42930 Wand_state_contains_for_state_contains__cur_1)))
(assert  (not (IsWandField_42929_42930 Wand_state_contains_for_state_contains__cur_1)))
(assert  (not (IsPredicateField_42929_42930 Wand_state_contains_for_state_contains__wand_1)))
(assert  (not (IsWandField_42929_42930 Wand_state_contains_for_state_contains__wand_1)))
(assert  (not (IsPredicateField_42929_42930 Wand_state_contains_for_state_contains__this_2)))
(assert  (not (IsWandField_42929_42930 Wand_state_contains_for_state_contains__this_2)))
(assert  (not (IsPredicateField_42932_94169 Wand_state_contains_for_state_contains__target_contents_2)))
(assert  (not (IsWandField_42932_94192 Wand_state_contains_for_state_contains__target_contents_2)))
(assert  (not (IsPredicateField_42929_42930 Wand_state_contains_for_state_contains__top_2)))
(assert  (not (IsWandField_42929_42930 Wand_state_contains_for_state_contains__top_2)))
(assert  (not (IsPredicateField_42927_2989 Tree__data)))
(assert  (not (IsWandField_42927_2989 Tree__data)))
(assert  (not (IsPredicateField_42929_42930 Tree__left)))
(assert  (not (IsWandField_42929_42930 Tree__left)))
(assert  (not (IsPredicateField_42929_42930 Tree__right)))
(assert  (not (IsWandField_42929_42930 Tree__right)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_87974) (ExhaleHeap@@12 T@PolymorphicMapType_87974) (Mask@@17 T@PolymorphicMapType_87995) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@12 Mask@@17) (succHeap Heap@@31 ExhaleHeap@@12))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@12 Mask@@17))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_87974) (Mask@@18 T@PolymorphicMapType_87995) (t_2@@4 T@Ref) ) (!  (=> (and (state Heap@@32 Mask@@18) (< AssumeFunctionsAbove 6)) (= (Tree__tolist Heap@@32 t_2@@4) (ite (= t_2@@4 null) |Seq#Empty_12082| (|Seq#Append_3128| (|Seq#Append_3128| (|Tree__tolist'| Heap@@32 (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@32) t_2@@4 Tree__left)) (|Seq#Singleton_3235| (select (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@32) t_2@@4 Tree__data))) (|Tree__tolist'| Heap@@32 (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@32) t_2@@4 Tree__right))))))
 :qid |stdinbpl.1684:15|
 :skolemid |86|
 :pattern ( (state Heap@@32 Mask@@18) (Tree__tolist Heap@@32 t_2@@4))
 :pattern ( (state Heap@@32 Mask@@18) (|Tree__tolist#triggerStateless| t_2@@4) (|Tree__state#trigger_43251| Heap@@32 (Tree__state t_2@@4)) (|Tree__state#trigger_43251| Heap@@32 (Tree__state t_2@@4)))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_87995) (o_2@@17 T@Ref) (f_4@@17 T@Field_108020_108025) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| Mask@@19) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_43251_343460 f_4@@17))) (not (IsWandField_43251_343476 f_4@@17))) (<= (select (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| Mask@@19) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| Mask@@19) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_87995) (o_2@@18 T@Ref) (f_4@@18 T@Field_43251_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| Mask@@20) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_43251_53 f_4@@18))) (not (IsWandField_43251_53 f_4@@18))) (<= (select (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| Mask@@20) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| Mask@@20) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_87995) (o_2@@19 T@Ref) (f_4@@19 T@Field_43251_118737) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| Mask@@21) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_43251_98217 f_4@@19))) (not (IsWandField_43251_98217 f_4@@19))) (<= (select (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| Mask@@21) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| Mask@@21) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_87995) (o_2@@20 T@Ref) (f_4@@20 T@Field_43251_42930) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| Mask@@22) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_43251_42930 f_4@@20))) (not (IsWandField_43251_42930 f_4@@20))) (<= (select (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| Mask@@22) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| Mask@@22) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_87995) (o_2@@21 T@Ref) (f_4@@21 T@Field_43251_3235) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| Mask@@23) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_43251_2989 f_4@@21))) (not (IsWandField_43251_2989 f_4@@21))) (<= (select (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| Mask@@23) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| Mask@@23) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_87995) (o_2@@22 T@Ref) (f_4@@22 T@Field_97187_97188) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| Mask@@24) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_43251_43252 f_4@@22))) (not (IsWandField_43251_331349 f_4@@22))) (<= (select (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| Mask@@24) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| Mask@@24) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_87995) (o_2@@23 T@Ref) (f_4@@23 T@Field_42929_104545) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| Mask@@25) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_42927_342461 f_4@@23))) (not (IsWandField_42927_342477 f_4@@23))) (<= (select (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| Mask@@25) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| Mask@@25) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_87995) (o_2@@24 T@Ref) (f_4@@24 T@Field_88034_53) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| Mask@@26) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_42927_53 f_4@@24))) (not (IsWandField_42927_53 f_4@@24))) (<= (select (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| Mask@@26) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| Mask@@26) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_87995) (o_2@@25 T@Ref) (f_4@@25 T@Field_94148_94150) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@@27) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_42932_94169 f_4@@25))) (not (IsWandField_42932_94192 f_4@@25))) (<= (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@@27) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@@27) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_87995) (o_2@@26 T@Ref) (f_4@@26 T@Field_88047_88048) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@@28) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_42929_42930 f_4@@26))) (not (IsWandField_42929_42930 f_4@@26))) (<= (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@@28) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@@28) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_87995) (o_2@@27 T@Ref) (f_4@@27 T@Field_94052_2989) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| Mask@@29) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_42927_2989 f_4@@27))) (not (IsWandField_42927_2989 f_4@@27))) (<= (select (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| Mask@@29) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| Mask@@29) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_87995) (o_2@@28 T@Ref) (f_4@@28 T@Field_42929_43224) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| Mask@@30) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_42929_325071 f_4@@28))) (not (IsWandField_42929_330635 f_4@@28))) (<= (select (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| Mask@@30) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| Mask@@30) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_87995) (o_2@@29 T@Ref) (f_4@@29 T@Field_104540_104545) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| Mask@@31) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_43223_341504 f_4@@29))) (not (IsWandField_43223_341520 f_4@@29))) (<= (select (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| Mask@@31) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| Mask@@31) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_87995) (o_2@@30 T@Ref) (f_4@@30 T@Field_43223_53) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| Mask@@32) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_43223_53 f_4@@30))) (not (IsWandField_43223_53 f_4@@30))) (<= (select (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| Mask@@32) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| Mask@@32) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_87995) (o_2@@31 T@Ref) (f_4@@31 T@Field_43223_118737) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| Mask@@33) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_43223_98217 f_4@@31))) (not (IsWandField_43223_98217 f_4@@31))) (<= (select (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| Mask@@33) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| Mask@@33) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_87995) (o_2@@32 T@Ref) (f_4@@32 T@Field_43223_42930) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| Mask@@34) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_43223_42930 f_4@@32))) (not (IsWandField_43223_42930 f_4@@32))) (<= (select (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| Mask@@34) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| Mask@@34) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_87995) (o_2@@33 T@Ref) (f_4@@33 T@Field_43223_3235) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| Mask@@35) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_43223_2989 f_4@@33))) (not (IsWandField_43223_2989 f_4@@33))) (<= (select (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| Mask@@35) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| Mask@@35) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_87995) (o_2@@34 T@Ref) (f_4@@34 T@Field_95113_95114) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| Mask@@36) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_43223_43224 f_4@@34))) (not (IsWandField_43223_330992 f_4@@34))) (<= (select (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| Mask@@36) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| Mask@@36) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_87995) (o_2@@35 T@Ref) (f_4@@35 T@Field_108020_108025) ) (! (= (HasDirectPerm_43251_324826 Mask@@37 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| Mask@@37) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43251_324826 Mask@@37 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_87995) (o_2@@36 T@Ref) (f_4@@36 T@Field_43251_53) ) (! (= (HasDirectPerm_43251_53 Mask@@38 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| Mask@@38) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43251_53 Mask@@38 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_87995) (o_2@@37 T@Ref) (f_4@@37 T@Field_97187_97188) ) (! (= (HasDirectPerm_43251_43252 Mask@@39 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| Mask@@39) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43251_43252 Mask@@39 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_87995) (o_2@@38 T@Ref) (f_4@@38 T@Field_43251_3235) ) (! (= (HasDirectPerm_43251_3235 Mask@@40 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| Mask@@40) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43251_3235 Mask@@40 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_87995) (o_2@@39 T@Ref) (f_4@@39 T@Field_43251_118737) ) (! (= (HasDirectPerm_43251_118737 Mask@@41 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| Mask@@41) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43251_118737 Mask@@41 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_87995) (o_2@@40 T@Ref) (f_4@@40 T@Field_43251_42930) ) (! (= (HasDirectPerm_43251_42930 Mask@@42 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| Mask@@42) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43251_42930 Mask@@42 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_87995) (o_2@@41 T@Ref) (f_4@@41 T@Field_104540_104545) ) (! (= (HasDirectPerm_43223_323499 Mask@@43 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| Mask@@43) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43223_323499 Mask@@43 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_87995) (o_2@@42 T@Ref) (f_4@@42 T@Field_43223_53) ) (! (= (HasDirectPerm_43223_53 Mask@@44 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| Mask@@44) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43223_53 Mask@@44 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_87995) (o_2@@43 T@Ref) (f_4@@43 T@Field_95113_95114) ) (! (= (HasDirectPerm_43223_43224 Mask@@45 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| Mask@@45) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43223_43224 Mask@@45 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_87995) (o_2@@44 T@Ref) (f_4@@44 T@Field_43223_3235) ) (! (= (HasDirectPerm_43223_3235 Mask@@46 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| Mask@@46) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43223_3235 Mask@@46 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_87995) (o_2@@45 T@Ref) (f_4@@45 T@Field_43223_118737) ) (! (= (HasDirectPerm_43223_118737 Mask@@47 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| Mask@@47) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43223_118737 Mask@@47 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_87995) (o_2@@46 T@Ref) (f_4@@46 T@Field_43223_42930) ) (! (= (HasDirectPerm_43223_42930 Mask@@48 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| Mask@@48) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43223_42930 Mask@@48 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_87995) (o_2@@47 T@Ref) (f_4@@47 T@Field_42929_104545) ) (! (= (HasDirectPerm_42929_322129 Mask@@49 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| Mask@@49) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_42929_322129 Mask@@49 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_87995) (o_2@@48 T@Ref) (f_4@@48 T@Field_88034_53) ) (! (= (HasDirectPerm_42929_53 Mask@@50 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| Mask@@50) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_42929_53 Mask@@50 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_87995) (o_2@@49 T@Ref) (f_4@@49 T@Field_42929_43224) ) (! (= (HasDirectPerm_42929_43224 Mask@@51 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| Mask@@51) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_42929_43224 Mask@@51 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_87995) (o_2@@50 T@Ref) (f_4@@50 T@Field_94052_2989) ) (! (= (HasDirectPerm_42974_3235 Mask@@52 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| Mask@@52) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_42974_3235 Mask@@52 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_87995) (o_2@@51 T@Ref) (f_4@@51 T@Field_94148_94150) ) (! (= (HasDirectPerm_42932_118737 Mask@@53 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@@53) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_42932_118737 Mask@@53 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_87995) (o_2@@52 T@Ref) (f_4@@52 T@Field_88047_88048) ) (! (= (HasDirectPerm_42929_42930 Mask@@54 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@@54) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_42929_42930 Mask@@54 o_2@@52 f_4@@52))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.168:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.541:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_87974) (ExhaleHeap@@13 T@PolymorphicMapType_87974) (Mask@@55 T@PolymorphicMapType_87995) (o_45@@0 T@Ref) (f_49@@107 T@Field_108020_108025) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@13 Mask@@55) (=> (HasDirectPerm_43251_324826 Mask@@55 o_45@@0 f_49@@107) (= (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@33) o_45@@0 f_49@@107) (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| ExhaleHeap@@13) o_45@@0 f_49@@107))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@13 Mask@@55) (select (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| ExhaleHeap@@13) o_45@@0 f_49@@107))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_87974) (ExhaleHeap@@14 T@PolymorphicMapType_87974) (Mask@@56 T@PolymorphicMapType_87995) (o_45@@1 T@Ref) (f_49@@108 T@Field_43251_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@14 Mask@@56) (=> (HasDirectPerm_43251_53 Mask@@56 o_45@@1 f_49@@108) (= (select (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@34) o_45@@1 f_49@@108) (select (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| ExhaleHeap@@14) o_45@@1 f_49@@108))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@14 Mask@@56) (select (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| ExhaleHeap@@14) o_45@@1 f_49@@108))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_87974) (ExhaleHeap@@15 T@PolymorphicMapType_87974) (Mask@@57 T@PolymorphicMapType_87995) (o_45@@2 T@Ref) (f_49@@109 T@Field_97187_97188) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@15 Mask@@57) (=> (HasDirectPerm_43251_43252 Mask@@57 o_45@@2 f_49@@109) (= (select (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@35) o_45@@2 f_49@@109) (select (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| ExhaleHeap@@15) o_45@@2 f_49@@109))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@15 Mask@@57) (select (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| ExhaleHeap@@15) o_45@@2 f_49@@109))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_87974) (ExhaleHeap@@16 T@PolymorphicMapType_87974) (Mask@@58 T@PolymorphicMapType_87995) (o_45@@3 T@Ref) (f_49@@110 T@Field_43251_3235) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@16 Mask@@58) (=> (HasDirectPerm_43251_3235 Mask@@58 o_45@@3 f_49@@110) (= (select (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@36) o_45@@3 f_49@@110) (select (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| ExhaleHeap@@16) o_45@@3 f_49@@110))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@16 Mask@@58) (select (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| ExhaleHeap@@16) o_45@@3 f_49@@110))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_87974) (ExhaleHeap@@17 T@PolymorphicMapType_87974) (Mask@@59 T@PolymorphicMapType_87995) (o_45@@4 T@Ref) (f_49@@111 T@Field_43251_118737) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@17 Mask@@59) (=> (HasDirectPerm_43251_118737 Mask@@59 o_45@@4 f_49@@111) (= (select (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@37) o_45@@4 f_49@@111) (select (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| ExhaleHeap@@17) o_45@@4 f_49@@111))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@17 Mask@@59) (select (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| ExhaleHeap@@17) o_45@@4 f_49@@111))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_87974) (ExhaleHeap@@18 T@PolymorphicMapType_87974) (Mask@@60 T@PolymorphicMapType_87995) (o_45@@5 T@Ref) (f_49@@112 T@Field_43251_42930) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@18 Mask@@60) (=> (HasDirectPerm_43251_42930 Mask@@60 o_45@@5 f_49@@112) (= (select (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@38) o_45@@5 f_49@@112) (select (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| ExhaleHeap@@18) o_45@@5 f_49@@112))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@18 Mask@@60) (select (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| ExhaleHeap@@18) o_45@@5 f_49@@112))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_87974) (ExhaleHeap@@19 T@PolymorphicMapType_87974) (Mask@@61 T@PolymorphicMapType_87995) (o_45@@6 T@Ref) (f_49@@113 T@Field_104540_104545) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@19 Mask@@61) (=> (HasDirectPerm_43223_323499 Mask@@61 o_45@@6 f_49@@113) (= (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@39) o_45@@6 f_49@@113) (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| ExhaleHeap@@19) o_45@@6 f_49@@113))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@19 Mask@@61) (select (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| ExhaleHeap@@19) o_45@@6 f_49@@113))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_87974) (ExhaleHeap@@20 T@PolymorphicMapType_87974) (Mask@@62 T@PolymorphicMapType_87995) (o_45@@7 T@Ref) (f_49@@114 T@Field_43223_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@20 Mask@@62) (=> (HasDirectPerm_43223_53 Mask@@62 o_45@@7 f_49@@114) (= (select (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@40) o_45@@7 f_49@@114) (select (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| ExhaleHeap@@20) o_45@@7 f_49@@114))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@20 Mask@@62) (select (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| ExhaleHeap@@20) o_45@@7 f_49@@114))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_87974) (ExhaleHeap@@21 T@PolymorphicMapType_87974) (Mask@@63 T@PolymorphicMapType_87995) (o_45@@8 T@Ref) (f_49@@115 T@Field_95113_95114) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@21 Mask@@63) (=> (HasDirectPerm_43223_43224 Mask@@63 o_45@@8 f_49@@115) (= (select (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@41) o_45@@8 f_49@@115) (select (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| ExhaleHeap@@21) o_45@@8 f_49@@115))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@21 Mask@@63) (select (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| ExhaleHeap@@21) o_45@@8 f_49@@115))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_87974) (ExhaleHeap@@22 T@PolymorphicMapType_87974) (Mask@@64 T@PolymorphicMapType_87995) (o_45@@9 T@Ref) (f_49@@116 T@Field_43223_3235) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@22 Mask@@64) (=> (HasDirectPerm_43223_3235 Mask@@64 o_45@@9 f_49@@116) (= (select (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@42) o_45@@9 f_49@@116) (select (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| ExhaleHeap@@22) o_45@@9 f_49@@116))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@22 Mask@@64) (select (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| ExhaleHeap@@22) o_45@@9 f_49@@116))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_87974) (ExhaleHeap@@23 T@PolymorphicMapType_87974) (Mask@@65 T@PolymorphicMapType_87995) (o_45@@10 T@Ref) (f_49@@117 T@Field_43223_118737) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@23 Mask@@65) (=> (HasDirectPerm_43223_118737 Mask@@65 o_45@@10 f_49@@117) (= (select (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@43) o_45@@10 f_49@@117) (select (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| ExhaleHeap@@23) o_45@@10 f_49@@117))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@23 Mask@@65) (select (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| ExhaleHeap@@23) o_45@@10 f_49@@117))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_87974) (ExhaleHeap@@24 T@PolymorphicMapType_87974) (Mask@@66 T@PolymorphicMapType_87995) (o_45@@11 T@Ref) (f_49@@118 T@Field_43223_42930) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@24 Mask@@66) (=> (HasDirectPerm_43223_42930 Mask@@66 o_45@@11 f_49@@118) (= (select (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@44) o_45@@11 f_49@@118) (select (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| ExhaleHeap@@24) o_45@@11 f_49@@118))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@24 Mask@@66) (select (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| ExhaleHeap@@24) o_45@@11 f_49@@118))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_87974) (ExhaleHeap@@25 T@PolymorphicMapType_87974) (Mask@@67 T@PolymorphicMapType_87995) (o_45@@12 T@Ref) (f_49@@119 T@Field_42929_104545) ) (!  (=> (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@25 Mask@@67) (=> (HasDirectPerm_42929_322129 Mask@@67 o_45@@12 f_49@@119) (= (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@45) o_45@@12 f_49@@119) (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| ExhaleHeap@@25) o_45@@12 f_49@@119))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@25 Mask@@67) (select (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| ExhaleHeap@@25) o_45@@12 f_49@@119))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_87974) (ExhaleHeap@@26 T@PolymorphicMapType_87974) (Mask@@68 T@PolymorphicMapType_87995) (o_45@@13 T@Ref) (f_49@@120 T@Field_88034_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@26 Mask@@68) (=> (HasDirectPerm_42929_53 Mask@@68 o_45@@13 f_49@@120) (= (select (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@46) o_45@@13 f_49@@120) (select (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| ExhaleHeap@@26) o_45@@13 f_49@@120))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@26 Mask@@68) (select (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| ExhaleHeap@@26) o_45@@13 f_49@@120))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_87974) (ExhaleHeap@@27 T@PolymorphicMapType_87974) (Mask@@69 T@PolymorphicMapType_87995) (o_45@@14 T@Ref) (f_49@@121 T@Field_42929_43224) ) (!  (=> (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@27 Mask@@69) (=> (HasDirectPerm_42929_43224 Mask@@69 o_45@@14 f_49@@121) (= (select (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@47) o_45@@14 f_49@@121) (select (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| ExhaleHeap@@27) o_45@@14 f_49@@121))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@27 Mask@@69) (select (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| ExhaleHeap@@27) o_45@@14 f_49@@121))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_87974) (ExhaleHeap@@28 T@PolymorphicMapType_87974) (Mask@@70 T@PolymorphicMapType_87995) (o_45@@15 T@Ref) (f_49@@122 T@Field_94052_2989) ) (!  (=> (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@28 Mask@@70) (=> (HasDirectPerm_42974_3235 Mask@@70 o_45@@15 f_49@@122) (= (select (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@48) o_45@@15 f_49@@122) (select (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| ExhaleHeap@@28) o_45@@15 f_49@@122))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@28 Mask@@70) (select (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| ExhaleHeap@@28) o_45@@15 f_49@@122))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_87974) (ExhaleHeap@@29 T@PolymorphicMapType_87974) (Mask@@71 T@PolymorphicMapType_87995) (o_45@@16 T@Ref) (f_49@@123 T@Field_94148_94150) ) (!  (=> (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@29 Mask@@71) (=> (HasDirectPerm_42932_118737 Mask@@71 o_45@@16 f_49@@123) (= (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@49) o_45@@16 f_49@@123) (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| ExhaleHeap@@29) o_45@@16 f_49@@123))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@29 Mask@@71) (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| ExhaleHeap@@29) o_45@@16 f_49@@123))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_87974) (ExhaleHeap@@30 T@PolymorphicMapType_87974) (Mask@@72 T@PolymorphicMapType_87995) (o_45@@17 T@Ref) (f_49@@124 T@Field_88047_88048) ) (!  (=> (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@30 Mask@@72) (=> (HasDirectPerm_42929_42930 Mask@@72 o_45@@17 f_49@@124) (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@50) o_45@@17 f_49@@124) (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| ExhaleHeap@@30) o_45@@17 f_49@@124))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@30 Mask@@72) (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| ExhaleHeap@@30) o_45@@17 f_49@@124))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_12082|)) (not (= s1@@0 |Seq#Empty_12082|))) (= (|Seq#Length_2867| (|Seq#Append_3128| s0@@0 s1@@0)) (+ (|Seq#Length_2867| s0@@0) (|Seq#Length_2867| s1@@0))))
 :qid |stdinbpl.218:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_3128| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_108020_108025) ) (! (= (select (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_43251_53) ) (! (= (select (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_43251_118737) ) (! (= (select (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_43251_42930) ) (! (= (select (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_43251_3235) ) (! (= (select (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_97187_97188) ) (! (= (select (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_42929_104545) ) (! (= (select (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_88034_53) ) (! (= (select (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_94148_94150) ) (! (= (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_88047_88048) ) (! (= (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_94052_2989) ) (! (= (select (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_42929_43224) ) (! (= (select (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_104540_104545) ) (! (= (select (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_43223_53) ) (! (= (select (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_43223_118737) ) (! (= (select (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_43223_42930) ) (! (= (select (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_43223_3235) ) (! (= (select (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_95113_95114) ) (! (= (select (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((s@@7 T@Seq_2867) (t@@0 T@Seq_2867) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2867| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7)) (|Seq#Length_2867| s@@7)) n@@7) (= (|Seq#Drop_3097| (|Seq#Append_3128| s@@7 t@@0) n@@7) (|Seq#Drop_3097| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7))))))
 :qid |stdinbpl.375:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3097| (|Seq#Append_3128| s@@7 t@@0) n@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_87995) (SummandMask1 T@PolymorphicMapType_87995) (SummandMask2 T@PolymorphicMapType_87995) (o_2@@71 T@Ref) (f_4@@71 T@Field_108020_108025) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| ResultMask) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| SummandMask1) o_2@@71 f_4@@71) (select (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| SummandMask2) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| ResultMask) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| SummandMask1) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| SummandMask2) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_87995) (SummandMask1@@0 T@PolymorphicMapType_87995) (SummandMask2@@0 T@PolymorphicMapType_87995) (o_2@@72 T@Ref) (f_4@@72 T@Field_43251_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| ResultMask@@0) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| SummandMask1@@0) o_2@@72 f_4@@72) (select (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| SummandMask2@@0) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| ResultMask@@0) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| SummandMask1@@0) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| SummandMask2@@0) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_87995) (SummandMask1@@1 T@PolymorphicMapType_87995) (SummandMask2@@1 T@PolymorphicMapType_87995) (o_2@@73 T@Ref) (f_4@@73 T@Field_43251_118737) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| ResultMask@@1) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| SummandMask1@@1) o_2@@73 f_4@@73) (select (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| SummandMask2@@1) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| ResultMask@@1) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| SummandMask1@@1) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| SummandMask2@@1) o_2@@73 f_4@@73))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_87995) (SummandMask1@@2 T@PolymorphicMapType_87995) (SummandMask2@@2 T@PolymorphicMapType_87995) (o_2@@74 T@Ref) (f_4@@74 T@Field_43251_42930) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| ResultMask@@2) o_2@@74 f_4@@74) (+ (select (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| SummandMask1@@2) o_2@@74 f_4@@74) (select (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| SummandMask2@@2) o_2@@74 f_4@@74))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| ResultMask@@2) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| SummandMask1@@2) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| SummandMask2@@2) o_2@@74 f_4@@74))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_87995) (SummandMask1@@3 T@PolymorphicMapType_87995) (SummandMask2@@3 T@PolymorphicMapType_87995) (o_2@@75 T@Ref) (f_4@@75 T@Field_43251_3235) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| ResultMask@@3) o_2@@75 f_4@@75) (+ (select (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| SummandMask1@@3) o_2@@75 f_4@@75) (select (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| SummandMask2@@3) o_2@@75 f_4@@75))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| ResultMask@@3) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| SummandMask1@@3) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| SummandMask2@@3) o_2@@75 f_4@@75))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_87995) (SummandMask1@@4 T@PolymorphicMapType_87995) (SummandMask2@@4 T@PolymorphicMapType_87995) (o_2@@76 T@Ref) (f_4@@76 T@Field_97187_97188) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| ResultMask@@4) o_2@@76 f_4@@76) (+ (select (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| SummandMask1@@4) o_2@@76 f_4@@76) (select (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| SummandMask2@@4) o_2@@76 f_4@@76))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| ResultMask@@4) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| SummandMask1@@4) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| SummandMask2@@4) o_2@@76 f_4@@76))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_87995) (SummandMask1@@5 T@PolymorphicMapType_87995) (SummandMask2@@5 T@PolymorphicMapType_87995) (o_2@@77 T@Ref) (f_4@@77 T@Field_42929_104545) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| ResultMask@@5) o_2@@77 f_4@@77) (+ (select (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| SummandMask1@@5) o_2@@77 f_4@@77) (select (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| SummandMask2@@5) o_2@@77 f_4@@77))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| ResultMask@@5) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| SummandMask1@@5) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| SummandMask2@@5) o_2@@77 f_4@@77))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_87995) (SummandMask1@@6 T@PolymorphicMapType_87995) (SummandMask2@@6 T@PolymorphicMapType_87995) (o_2@@78 T@Ref) (f_4@@78 T@Field_88034_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| ResultMask@@6) o_2@@78 f_4@@78) (+ (select (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| SummandMask1@@6) o_2@@78 f_4@@78) (select (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| SummandMask2@@6) o_2@@78 f_4@@78))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| ResultMask@@6) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| SummandMask1@@6) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| SummandMask2@@6) o_2@@78 f_4@@78))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_87995) (SummandMask1@@7 T@PolymorphicMapType_87995) (SummandMask2@@7 T@PolymorphicMapType_87995) (o_2@@79 T@Ref) (f_4@@79 T@Field_94148_94150) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| ResultMask@@7) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| SummandMask1@@7) o_2@@79 f_4@@79) (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| SummandMask2@@7) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| ResultMask@@7) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| SummandMask1@@7) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| SummandMask2@@7) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_87995) (SummandMask1@@8 T@PolymorphicMapType_87995) (SummandMask2@@8 T@PolymorphicMapType_87995) (o_2@@80 T@Ref) (f_4@@80 T@Field_88047_88048) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| ResultMask@@8) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| SummandMask1@@8) o_2@@80 f_4@@80) (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| SummandMask2@@8) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| ResultMask@@8) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| SummandMask1@@8) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| SummandMask2@@8) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_87995) (SummandMask1@@9 T@PolymorphicMapType_87995) (SummandMask2@@9 T@PolymorphicMapType_87995) (o_2@@81 T@Ref) (f_4@@81 T@Field_94052_2989) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| ResultMask@@9) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| SummandMask1@@9) o_2@@81 f_4@@81) (select (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| SummandMask2@@9) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| ResultMask@@9) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| SummandMask1@@9) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| SummandMask2@@9) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_87995) (SummandMask1@@10 T@PolymorphicMapType_87995) (SummandMask2@@10 T@PolymorphicMapType_87995) (o_2@@82 T@Ref) (f_4@@82 T@Field_42929_43224) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| ResultMask@@10) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| SummandMask1@@10) o_2@@82 f_4@@82) (select (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| SummandMask2@@10) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| ResultMask@@10) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| SummandMask1@@10) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| SummandMask2@@10) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_87995) (SummandMask1@@11 T@PolymorphicMapType_87995) (SummandMask2@@11 T@PolymorphicMapType_87995) (o_2@@83 T@Ref) (f_4@@83 T@Field_104540_104545) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| ResultMask@@11) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| SummandMask1@@11) o_2@@83 f_4@@83) (select (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| SummandMask2@@11) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| ResultMask@@11) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| SummandMask1@@11) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| SummandMask2@@11) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_87995) (SummandMask1@@12 T@PolymorphicMapType_87995) (SummandMask2@@12 T@PolymorphicMapType_87995) (o_2@@84 T@Ref) (f_4@@84 T@Field_43223_53) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| ResultMask@@12) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| SummandMask1@@12) o_2@@84 f_4@@84) (select (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| SummandMask2@@12) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| ResultMask@@12) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| SummandMask1@@12) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| SummandMask2@@12) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_87995) (SummandMask1@@13 T@PolymorphicMapType_87995) (SummandMask2@@13 T@PolymorphicMapType_87995) (o_2@@85 T@Ref) (f_4@@85 T@Field_43223_118737) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| ResultMask@@13) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| SummandMask1@@13) o_2@@85 f_4@@85) (select (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| SummandMask2@@13) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| ResultMask@@13) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| SummandMask1@@13) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| SummandMask2@@13) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_87995) (SummandMask1@@14 T@PolymorphicMapType_87995) (SummandMask2@@14 T@PolymorphicMapType_87995) (o_2@@86 T@Ref) (f_4@@86 T@Field_43223_42930) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| ResultMask@@14) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| SummandMask1@@14) o_2@@86 f_4@@86) (select (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| SummandMask2@@14) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| ResultMask@@14) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| SummandMask1@@14) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| SummandMask2@@14) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_87995) (SummandMask1@@15 T@PolymorphicMapType_87995) (SummandMask2@@15 T@PolymorphicMapType_87995) (o_2@@87 T@Ref) (f_4@@87 T@Field_43223_3235) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| ResultMask@@15) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| SummandMask1@@15) o_2@@87 f_4@@87) (select (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| SummandMask2@@15) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| ResultMask@@15) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| SummandMask1@@15) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| SummandMask2@@15) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_87995) (SummandMask1@@16 T@PolymorphicMapType_87995) (SummandMask2@@16 T@PolymorphicMapType_87995) (o_2@@88 T@Ref) (f_4@@88 T@Field_95113_95114) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| ResultMask@@16) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| SummandMask1@@16) o_2@@88 f_4@@88) (select (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| SummandMask2@@16) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| ResultMask@@16) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| SummandMask1@@16) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| SummandMask2@@16) o_2@@88 f_4@@88))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.540:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_2867) (b T@Seq_2867) ) (!  (=> (|Seq#Equal_3097| a b) (= a b))
 :qid |stdinbpl.513:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3097| a b))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_87974) (Mask@@73 T@PolymorphicMapType_87995) (diz@@17 T@Ref) ) (!  (=> (and (state Heap@@51 Mask@@73) (< AssumeFunctionsAbove 1)) (=> (not (= diz@@17 null)) (= (Wand_state_contains_for_state_contains__get_out_1 Heap@@51 diz@@17) (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@51) diz@@17 Wand_state_contains_for_state_contains__out_1))))
 :qid |stdinbpl.1156:15|
 :skolemid |73|
 :pattern ( (state Heap@@51 Mask@@73) (Wand_state_contains_for_state_contains__get_out_1 Heap@@51 diz@@17))
 :pattern ( (state Heap@@51 Mask@@73) (|Wand_state_contains_for_state_contains__get_out_1#triggerStateless| diz@@17) (|Wand_state_contains_for_state_contains__valid_wand#trigger_43223| Heap@@51 (Wand_state_contains_for_state_contains__valid_wand diz@@17)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_87974) (Mask@@74 T@PolymorphicMapType_87995) (diz@@18 T@Ref) ) (!  (=> (and (state Heap@@52 Mask@@74) (< AssumeFunctionsAbove 2)) (=> (not (= diz@@18 null)) (= (Wand_state_contains_for_state_contains__get_in_1 Heap@@52 diz@@18) (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@52) diz@@18 Wand_state_contains_for_state_contains__in_1))))
 :qid |stdinbpl.628:15|
 :skolemid |60|
 :pattern ( (state Heap@@52 Mask@@74) (Wand_state_contains_for_state_contains__get_in_1 Heap@@52 diz@@18))
 :pattern ( (state Heap@@52 Mask@@74) (|Wand_state_contains_for_state_contains__get_in_1#triggerStateless| diz@@18) (|Wand_state_contains_for_state_contains__valid_wand#trigger_43223| Heap@@52 (Wand_state_contains_for_state_contains__valid_wand diz@@18)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_87974) (Mask@@75 T@PolymorphicMapType_87995) (diz@@19 T@Ref) ) (!  (=> (and (state Heap@@53 Mask@@75) (< AssumeFunctionsAbove 3)) (=> (not (= diz@@19 null)) (= (Wand_state_contains_for_state_contains__get_out_1_0 Heap@@53 diz@@19) (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@53) diz@@19 Wand_state_contains_for_state_contains__out_1_0))))
 :qid |stdinbpl.1426:15|
 :skolemid |80|
 :pattern ( (state Heap@@53 Mask@@75) (Wand_state_contains_for_state_contains__get_out_1_0 Heap@@53 diz@@19))
 :pattern ( (state Heap@@53 Mask@@75) (|Wand_state_contains_for_state_contains__get_out_1_0#triggerStateless| diz@@19) (|Wand_state_contains_for_state_contains__valid_wand#trigger_43223| Heap@@53 (Wand_state_contains_for_state_contains__valid_wand diz@@19)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_87974) (Mask@@76 T@PolymorphicMapType_87995) (diz@@20 T@Ref) ) (!  (=> (and (state Heap@@54 Mask@@76) (< AssumeFunctionsAbove 4)) (=> (not (= diz@@20 null)) (= (Wand_state_contains_for_state_contains__get_in_1_0 Heap@@54 diz@@20) (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@54) diz@@20 Wand_state_contains_for_state_contains__in_1_0))))
 :qid |stdinbpl.898:15|
 :skolemid |67|
 :pattern ( (state Heap@@54 Mask@@76) (Wand_state_contains_for_state_contains__get_in_1_0 Heap@@54 diz@@20))
 :pattern ( (state Heap@@54 Mask@@76) (|Wand_state_contains_for_state_contains__get_in_1_0#triggerStateless| diz@@20) (|Wand_state_contains_for_state_contains__valid_wand#trigger_43223| Heap@@54 (Wand_state_contains_for_state_contains__valid_wand diz@@20)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_87974) (Mask@@77 T@PolymorphicMapType_87995) (s_2@@0 T@Seq_2867) ) (!  (=> (state Heap@@55 Mask@@77) (= (|Tree__sorted_list'| Heap@@55 s_2@@0) (|Tree__sorted_list#frame| EmptyFrame s_2@@0)))
 :qid |stdinbpl.1871:15|
 :skolemid |94|
 :pattern ( (state Heap@@55 Mask@@77) (|Tree__sorted_list'| Heap@@55 s_2@@0))
)))
(assert (forall ((s@@8 T@Seq_2867) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length_2867| s@@8))) (|Seq#ContainsTrigger_2867| s@@8 (|Seq#Index_2867| s@@8 i@@2)))
 :qid |stdinbpl.406:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@8 i@@2))
)))
(assert (forall ((s0@@1 T@Seq_2867) (s1@@1 T@Seq_2867) ) (!  (and (=> (= s0@@1 |Seq#Empty_12082|) (= (|Seq#Append_3128| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_12082|) (= (|Seq#Append_3128| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.224:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3128| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_3235| t@@1) 0) t@@1)
 :qid |stdinbpl.228:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3235| t@@1))
)))
(assert (forall ((s@@9 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@9))
 :qid |stdinbpl.207:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@9))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_87974) (s_2@@1 T@Seq_2867) ) (!  (and (= (Tree__sorted_list Heap@@56 s_2@@1) (|Tree__sorted_list'| Heap@@56 s_2@@1)) (dummyFunction_13345 (|Tree__sorted_list#triggerStateless| s_2@@1)))
 :qid |stdinbpl.1851:15|
 :skolemid |90|
 :pattern ( (Tree__sorted_list Heap@@56 s_2@@1))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_87974) (t_2@@5 T@Ref) ) (!  (and (= (Tree__sorted Heap@@57 t_2@@5) (|Tree__sorted'| Heap@@57 t_2@@5)) (dummyFunction_13345 (|Tree__sorted#triggerStateless| t_2@@5)))
 :qid |stdinbpl.1926:15|
 :skolemid |96|
 :pattern ( (Tree__sorted Heap@@57 t_2@@5))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (|Seq#Equal_3097| s0@@2 s1@@2) (and (= (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_2867| s0@@2))) (= (|Seq#Index_2867| s0@@2 j@@4) (|Seq#Index_2867| s1@@2 j@@4)))
 :qid |stdinbpl.503:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@2 j@@4))
 :pattern ( (|Seq#Index_2867| s1@@2 j@@4))
))))
 :qid |stdinbpl.500:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3097| s0@@2 s1@@2))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_87974) (Mask@@78 T@PolymorphicMapType_87995) (diz@@21 T@Ref) ) (!  (=> (state Heap@@58 Mask@@78) (= (|Wand_state_contains_for_state_contains__get_in_1'| Heap@@58 diz@@21) (|Wand_state_contains_for_state_contains__get_in_1#frame| (select (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@58) null (Wand_state_contains_for_state_contains__valid_wand diz@@21)) diz@@21)))
 :qid |stdinbpl.635:15|
 :skolemid |61|
 :pattern ( (state Heap@@58 Mask@@78) (|Wand_state_contains_for_state_contains__get_in_1'| Heap@@58 diz@@21))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_87974) (Mask@@79 T@PolymorphicMapType_87995) (diz@@22 T@Ref) ) (!  (=> (state Heap@@59 Mask@@79) (= (|Wand_state_contains_for_state_contains__get_in_1_0'| Heap@@59 diz@@22) (|Wand_state_contains_for_state_contains__get_in_1_0#frame| (select (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@59) null (Wand_state_contains_for_state_contains__valid_wand diz@@22)) diz@@22)))
 :qid |stdinbpl.905:15|
 :skolemid |68|
 :pattern ( (state Heap@@59 Mask@@79) (|Wand_state_contains_for_state_contains__get_in_1_0'| Heap@@59 diz@@22))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_87974) (Mask@@80 T@PolymorphicMapType_87995) (diz@@23 T@Ref) ) (!  (=> (state Heap@@60 Mask@@80) (= (|Wand_state_contains_for_state_contains__get_out_1'| Heap@@60 diz@@23) (|Wand_state_contains_for_state_contains__get_out_1#frame| (select (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@60) null (Wand_state_contains_for_state_contains__valid_wand diz@@23)) diz@@23)))
 :qid |stdinbpl.1163:15|
 :skolemid |74|
 :pattern ( (state Heap@@60 Mask@@80) (|Wand_state_contains_for_state_contains__get_out_1'| Heap@@60 diz@@23))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_87974) (Mask@@81 T@PolymorphicMapType_87995) (diz@@24 T@Ref) ) (!  (=> (state Heap@@61 Mask@@81) (= (|Wand_state_contains_for_state_contains__get_out_1_0'| Heap@@61 diz@@24) (|Wand_state_contains_for_state_contains__get_out_1_0#frame| (select (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@61) null (Wand_state_contains_for_state_contains__valid_wand diz@@24)) diz@@24)))
 :qid |stdinbpl.1433:15|
 :skolemid |81|
 :pattern ( (state Heap@@61 Mask@@81) (|Wand_state_contains_for_state_contains__get_out_1_0'| Heap@@61 diz@@24))
)))
(assert (forall ((diz@@25 T@Ref) ) (! (= (getPredWandId_43223_43224 (Wand_state_contains_for_state_contains__valid_wand diz@@25)) 0)
 :qid |stdinbpl.2021:15|
 :skolemid |102|
 :pattern ( (Wand_state_contains_for_state_contains__valid_wand diz@@25))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_3235| t@@2)) 1)
 :qid |stdinbpl.215:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3235| t@@2))
)))
(assert (forall ((diz@@26 T@Ref) ) (! (= (getPredWandId_43251_43252 (Tree__state diz@@26)) 1)
 :qid |stdinbpl.2454:15|
 :skolemid |108|
 :pattern ( (Tree__state diz@@26))
)))
(assert (forall ((s@@10 T@Seq_2867) (t@@3 T@Seq_2867) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_2867| s@@10))) (= (|Seq#Take_2867| (|Seq#Append_3128| s@@10 t@@3) n@@8) (|Seq#Take_2867| s@@10 n@@8)))
 :qid |stdinbpl.357:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_3128| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_2867) (i@@3 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_2867| s@@11))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@3 v@@1)) (|Seq#Length_2867| s@@11)))
 :qid |stdinbpl.256:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@3 v@@1)))
 :pattern ( (|Seq#Length_2867| s@@11) (|Seq#Update_2867| s@@11 i@@3 v@@1))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_87974) (o_40 T@Ref) (f_50 T@Field_108020_108025) (v@@2 T@PolymorphicMapType_88523) ) (! (succHeap Heap@@62 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@62) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@62) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@62) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@62) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@62) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@62) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@62) (store (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@62) o_40 f_50 v@@2) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@62) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@62) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@62) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@62) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@62) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@62) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@62) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@62) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@62) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@62) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@62) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@62) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@62) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@62) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@62) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@62) (store (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@62) o_40 f_50 v@@2) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@62) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@62) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@62) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@62) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@62) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@62) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@62) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@62) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@62) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_87974) (o_40@@0 T@Ref) (f_50@@0 T@Field_43251_118737) (v@@3 T@Seq_2867) ) (! (succHeap Heap@@63 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@63) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@63) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@63) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@63) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@63) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@63) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@63) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@63) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@63) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@63) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@63) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@63) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@63) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@63) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@63) (store (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@63) o_40@@0 f_50@@0 v@@3) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@63) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@63) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@63) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@63) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@63) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@63) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@63) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@63) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@63) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@63) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@63) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@63) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@63) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@63) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@63) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@63) (store (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@63) o_40@@0 f_50@@0 v@@3) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@63) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_87974) (o_40@@1 T@Ref) (f_50@@1 T@Field_43251_3235) (v@@4 Int) ) (! (succHeap Heap@@64 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@64) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@64) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@64) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@64) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@64) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@64) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@64) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@64) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@64) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@64) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@64) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@64) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@64) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@64) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@64) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@64) (store (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@64) o_40@@1 f_50@@1 v@@4) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@64) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@64) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@64) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@64) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@64) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@64) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@64) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@64) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@64) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@64) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@64) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@64) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@64) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@64) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@64) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@64) (store (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@64) o_40@@1 f_50@@1 v@@4) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_87974) (o_40@@2 T@Ref) (f_50@@2 T@Field_97187_97188) (v@@5 T@FrameType) ) (! (succHeap Heap@@65 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@65) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@65) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@65) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@65) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@65) (store (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@65) o_40@@2 f_50@@2 v@@5) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@65) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@65) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@65) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@65) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@65) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@65) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@65) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@65) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@65) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@65) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@65) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@65) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@65) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@65) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@65) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@65) (store (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@65) o_40@@2 f_50@@2 v@@5) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@65) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@65) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@65) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@65) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@65) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@65) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@65) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@65) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@65) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@65) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@65) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@65)))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_87974) (o_40@@3 T@Ref) (f_50@@3 T@Field_43251_42930) (v@@6 T@Ref) ) (! (succHeap Heap@@66 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@66) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@66) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@66) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@66) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@66) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@66) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@66) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@66) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@66) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@66) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@66) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@66) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@66) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@66) (store (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@66) o_40@@3 f_50@@3 v@@6) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@66) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@66) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@66)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@66) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@66) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@66) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@66) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@66) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@66) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@66) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@66) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@66) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@66) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@66) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@66) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@66) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@66) (store (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@66) o_40@@3 f_50@@3 v@@6) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@66) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@66) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@66)))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_87974) (o_40@@4 T@Ref) (f_50@@4 T@Field_43251_53) (v@@7 Bool) ) (! (succHeap Heap@@67 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@67) (store (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@67) o_40@@4 f_50@@4 v@@7)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@67) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@67) (store (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@67) o_40@@4 f_50@@4 v@@7)))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_87974) (o_40@@5 T@Ref) (f_50@@5 T@Field_104540_104545) (v@@8 T@PolymorphicMapType_88523) ) (! (succHeap Heap@@68 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@68) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@68) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@68) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@68) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@68) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@68) (store (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@68) o_40@@5 f_50@@5 v@@8) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@68) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@68) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@68) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@68) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@68) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@68) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@68) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@68) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@68) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@68) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@68)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@68) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@68) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@68) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@68) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@68) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@68) (store (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@68) o_40@@5 f_50@@5 v@@8) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@68) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@68) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@68) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@68) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@68) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@68) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@68) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@68) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@68) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@68) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@68)))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_87974) (o_40@@6 T@Ref) (f_50@@6 T@Field_43223_118737) (v@@9 T@Seq_2867) ) (! (succHeap Heap@@69 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@69) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@69) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@69) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@69) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@69) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@69) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@69) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@69) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@69) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@69) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@69) (store (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@69) o_40@@6 f_50@@6 v@@9) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@69) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@69) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@69) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@69) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@69) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@69)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@69) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@69) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@69) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@69) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@69) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@69) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@69) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@69) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@69) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@69) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@69) (store (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@69) o_40@@6 f_50@@6 v@@9) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@69) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@69) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@69) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@69) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@69) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@69)))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_87974) (o_40@@7 T@Ref) (f_50@@7 T@Field_43223_3235) (v@@10 Int) ) (! (succHeap Heap@@70 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@70) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@70) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@70) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@70) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@70) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@70) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@70) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@70) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@70) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@70) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@70) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@70) (store (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@70) o_40@@7 f_50@@7 v@@10) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@70) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@70) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@70) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@70) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@70)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@70) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@70) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@70) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@70) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@70) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@70) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@70) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@70) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@70) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@70) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@70) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@70) (store (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@70) o_40@@7 f_50@@7 v@@10) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@70) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@70) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@70) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@70) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@70)))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_87974) (o_40@@8 T@Ref) (f_50@@8 T@Field_95113_95114) (v@@11 T@FrameType) ) (! (succHeap Heap@@71 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@71) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@71) (store (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@71) o_40@@8 f_50@@8 v@@11) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@71) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@71) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@71) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@71) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@71) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@71) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@71) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@71) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@71) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@71) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@71) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@71) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@71) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@71) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@71)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@71) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@71) (store (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@71) o_40@@8 f_50@@8 v@@11) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@71) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@71) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@71) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@71) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@71) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@71) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@71) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@71) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@71) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@71) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@71) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@71) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@71) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@71) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@71)))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_87974) (o_40@@9 T@Ref) (f_50@@9 T@Field_43223_42930) (v@@12 T@Ref) ) (! (succHeap Heap@@72 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@72) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@72) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@72) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@72) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@72) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@72) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@72) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@72) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@72) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@72) (store (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@72) o_40@@9 f_50@@9 v@@12) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@72) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@72) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@72) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@72) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@72) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@72) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@72)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@72) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@72) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@72) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@72) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@72) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@72) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@72) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@72) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@72) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@72) (store (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@72) o_40@@9 f_50@@9 v@@12) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@72) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@72) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@72) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@72) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@72) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@72) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@72)))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_87974) (o_40@@10 T@Ref) (f_50@@10 T@Field_43223_53) (v@@13 Bool) ) (! (succHeap Heap@@73 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@73) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@73) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@73) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@73) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@73) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@73) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@73) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@73) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@73) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@73) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@73) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@73) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@73) (store (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@73) o_40@@10 f_50@@10 v@@13) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@73) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@73) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@73) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@73)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@73) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@73) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@73) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@73) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@73) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@73) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@73) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@73) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@73) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@73) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@73) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@73) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@73) (store (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@73) o_40@@10 f_50@@10 v@@13) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@73) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@73) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@73) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@73)))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_87974) (o_40@@11 T@Ref) (f_50@@11 T@Field_42929_104545) (v@@14 T@PolymorphicMapType_88523) ) (! (succHeap Heap@@74 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@74) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@74) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@74) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@74) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@74) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@74) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@74) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@74) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@74) (store (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@74) o_40@@11 f_50@@11 v@@14) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@74) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@74) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@74) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@74) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@74) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@74) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@74) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@74)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@74) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@74) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@74) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@74) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@74) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@74) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@74) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@74) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@74) (store (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@74) o_40@@11 f_50@@11 v@@14) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@74) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@74) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@74) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@74) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@74) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@74) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@74) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@74)))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_87974) (o_40@@12 T@Ref) (f_50@@12 T@Field_94148_94150) (v@@15 T@Seq_2867) ) (! (succHeap Heap@@75 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@75) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@75) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@75) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@75) (store (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@75) o_40@@12 f_50@@12 v@@15) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@75) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@75) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@75) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@75) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@75) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@75) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@75) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@75) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@75) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@75) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@75) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@75) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@75)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@75) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@75) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@75) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@75) (store (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@75) o_40@@12 f_50@@12 v@@15) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@75) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@75) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@75) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@75) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@75) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@75) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@75) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@75) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@75) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@75) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@75) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@75) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@75)))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_87974) (o_40@@13 T@Ref) (f_50@@13 T@Field_94052_2989) (v@@16 Int) ) (! (succHeap Heap@@76 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@76) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@76) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@76) (store (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@76) o_40@@13 f_50@@13 v@@16) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@76) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@76) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@76) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@76) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@76) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@76) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@76) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@76) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@76) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@76) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@76) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@76) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@76) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@76)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@76) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@76) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@76) (store (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@76) o_40@@13 f_50@@13 v@@16) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@76) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@76) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@76) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@76) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@76) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@76) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@76) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@76) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@76) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@76) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@76) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@76) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@76) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@76)))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_87974) (o_40@@14 T@Ref) (f_50@@14 T@Field_42929_43224) (v@@17 T@FrameType) ) (! (succHeap Heap@@77 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@77) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@77) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@77) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@77) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@77) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@77) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@77) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@77) (store (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@77) o_40@@14 f_50@@14 v@@17) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@77) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@77) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@77) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@77) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@77) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@77) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@77) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@77) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@77)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@77) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@77) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@77) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@77) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@77) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@77) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@77) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@77) (store (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@77) o_40@@14 f_50@@14 v@@17) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@77) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@77) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@77) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@77) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@77) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@77) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@77) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@77) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@77)))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_87974) (o_40@@15 T@Ref) (f_50@@15 T@Field_88047_88048) (v@@18 T@Ref) ) (! (succHeap Heap@@78 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@78) (store (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@78) o_40@@15 f_50@@15 v@@18) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@78) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@78) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@78) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@78) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@78) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@78) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@78) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@78) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@78) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@78) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@78) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@78) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@78) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@78) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@78) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@78)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@78) (store (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@78) o_40@@15 f_50@@15 v@@18) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@78) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@78) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@78) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@78) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@78) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@78) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@78) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@78) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@78) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@78) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@78) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@78) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@78) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@78) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@78) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@78)))
)))
(assert (forall ((Heap@@79 T@PolymorphicMapType_87974) (o_40@@16 T@Ref) (f_50@@16 T@Field_88034_53) (v@@19 Bool) ) (! (succHeap Heap@@79 (PolymorphicMapType_87974 (store (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@79) o_40@@16 f_50@@16 v@@19) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@79)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87974 (store (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@79) o_40@@16 f_50@@16 v@@19) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@79) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@79)))
)))
(assert (forall ((diz@@27 T@Ref) ) (! (= (PredicateMaskField_43223 (Wand_state_contains_for_state_contains__valid_wand diz@@27)) (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@27))
 :qid |stdinbpl.2013:15|
 :skolemid |100|
 :pattern ( (PredicateMaskField_43223 (Wand_state_contains_for_state_contains__valid_wand diz@@27)))
)))
(assert (forall ((diz@@28 T@Ref) ) (! (= (PredicateMaskField_43251 (Tree__state diz@@28)) (|Tree__state#sm| diz@@28))
 :qid |stdinbpl.2446:15|
 :skolemid |106|
 :pattern ( (PredicateMaskField_43251 (Tree__state diz@@28)))
)))
(assert (forall ((s@@12 T@Seq_2867) (t@@4 T@Seq_2867) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_2867| s@@12))) (= (|Seq#Drop_3097| (|Seq#Append_3128| s@@12 t@@4) n@@9) (|Seq#Append_3128| (|Seq#Drop_3097| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.371:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3097| (|Seq#Append_3128| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_2867) (n@@10 Int) (i@@4 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@4)) (< i@@4 (|Seq#Length_2867| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@4 n@@10) n@@10) i@@4) (= (|Seq#Index_2867| (|Seq#Drop_3097| s@@13 n@@10) (|Seq#Sub| i@@4 n@@10)) (|Seq#Index_2867| s@@13 i@@4))))
 :qid |stdinbpl.307:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3097| s@@13 n@@10) (|Seq#Index_2867| s@@13 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_2867) (s1@@3 T@Seq_2867) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_12082|)) (not (= s1@@3 |Seq#Empty_12082|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_2867| s0@@3))) (= (|Seq#Index_2867| (|Seq#Append_3128| s0@@3 s1@@3) n@@11) (|Seq#Index_2867| s0@@3 n@@11)))
 :qid |stdinbpl.247:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3128| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_2867| s0@@3 n@@11) (|Seq#Append_3128| s0@@3 s1@@3))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_87974) (Mask@@82 T@PolymorphicMapType_87995) (s_2@@2 T@Seq_2867) ) (!  (=> (and (state Heap@@80 Mask@@82) (< AssumeFunctionsAbove 5)) (= (Tree__sorted_list Heap@@80 s_2@@2) (forall ((i@@5 Int) (j_9 Int) ) (!  (=> (and (<= 0 i@@5) (and (< i@@5 j_9) (< j_9 (|Seq#Length_2867| s_2@@2)))) (<= (|Seq#Index_2867| s_2@@2 i@@5) (|Seq#Index_2867| s_2@@2 j_9)))
 :qid |stdinbpl.1863:93|
 :skolemid |92|
 :pattern ( (|Seq#Index_2867| s_2@@2 i@@5) (|Seq#Index_2867| s_2@@2 j_9))
))))
 :qid |stdinbpl.1861:15|
 :skolemid |93|
 :pattern ( (state Heap@@80 Mask@@82) (Tree__sorted_list Heap@@80 s_2@@2))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_12082|)) (not (= s1@@4 |Seq#Empty_12082|))) (<= 0 m)) (< m (|Seq#Length_2867| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2867| s0@@4)) (|Seq#Length_2867| s0@@4)) m) (= (|Seq#Index_2867| (|Seq#Append_3128| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2867| s0@@4))) (|Seq#Index_2867| s1@@4 m))))
 :qid |stdinbpl.252:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@4 m) (|Seq#Append_3128| s0@@4 s1@@4))
)))
(assert (forall ((o_40@@17 T@Ref) (f_46 T@Field_88047_88048) (Heap@@81 T@PolymorphicMapType_87974) ) (!  (=> (select (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@81) o_40@@17 $allocated) (select (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@81) (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@81) o_40@@17 f_46) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@81) o_40@@17 f_46))
)))
(assert (forall ((s@@14 T@Seq_2867) (x@@1 Int) (i@@6 Int) ) (!  (=> (and (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2867| s@@14))) (= (|Seq#Index_2867| s@@14 i@@6) x@@1)) (|Seq#Contains_2867| s@@14 x@@1))
 :qid |stdinbpl.404:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@14 x@@1) (|Seq#Index_2867| s@@14 i@@6))
)))
(assert (forall ((s0@@5 T@Seq_2867) (s1@@5 T@Seq_2867) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_3097| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3097| s0@@5 s1@@5))) (not (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3097| s0@@5 s1@@5))) (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))) (= (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#SkolemDiff_2867| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#Length_2867| s0@@5))) (not (= (|Seq#Index_2867| s0@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5)) (|Seq#Index_2867| s1@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))))))
 :qid |stdinbpl.508:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3097| s0@@5 s1@@5))
)))
(assert (forall ((p@@3 T@Field_42929_43224) (v_1@@2 T@FrameType) (q T@Field_42929_43224) (w@@2 T@FrameType) (r T@Field_42929_43224) (u T@FrameType) ) (!  (=> (and (InsidePredicate_88034_88034 p@@3 v_1@@2 q w@@2) (InsidePredicate_88034_88034 q w@@2 r u)) (InsidePredicate_88034_88034 p@@3 v_1@@2 r u))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_88034_88034 p@@3 v_1@@2 q w@@2) (InsidePredicate_88034_88034 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_42929_43224) (v_1@@3 T@FrameType) (q@@0 T@Field_42929_43224) (w@@3 T@FrameType) (r@@0 T@Field_95113_95114) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_88034_88034 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_88034_43223 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_88034_43223 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_88034_88034 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_88034_43223 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_42929_43224) (v_1@@4 T@FrameType) (q@@1 T@Field_42929_43224) (w@@4 T@FrameType) (r@@1 T@Field_97187_97188) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_88034_88034 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_88034_43251 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_88034_43251 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_88034_88034 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_88034_43251 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_42929_43224) (v_1@@5 T@FrameType) (q@@2 T@Field_95113_95114) (w@@5 T@FrameType) (r@@2 T@Field_42929_43224) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_88034_43223 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_43223_88034 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_88034_88034 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_88034_43223 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_43223_88034 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_42929_43224) (v_1@@6 T@FrameType) (q@@3 T@Field_95113_95114) (w@@6 T@FrameType) (r@@3 T@Field_95113_95114) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_88034_43223 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_43223_43223 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_88034_43223 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_88034_43223 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_43223_43223 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_42929_43224) (v_1@@7 T@FrameType) (q@@4 T@Field_95113_95114) (w@@7 T@FrameType) (r@@4 T@Field_97187_97188) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_88034_43223 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_43223_43251 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_88034_43251 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_88034_43223 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_43223_43251 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_42929_43224) (v_1@@8 T@FrameType) (q@@5 T@Field_97187_97188) (w@@8 T@FrameType) (r@@5 T@Field_42929_43224) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_88034_43251 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_43251_88034 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_88034_88034 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_88034_43251 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_43251_88034 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_42929_43224) (v_1@@9 T@FrameType) (q@@6 T@Field_97187_97188) (w@@9 T@FrameType) (r@@6 T@Field_95113_95114) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_88034_43251 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_43251_43223 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_88034_43223 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_88034_43251 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_43251_43223 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_42929_43224) (v_1@@10 T@FrameType) (q@@7 T@Field_97187_97188) (w@@10 T@FrameType) (r@@7 T@Field_97187_97188) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_88034_43251 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_43251_43251 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_88034_43251 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_88034_43251 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_43251_43251 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_97187_97188) (v_1@@11 T@FrameType) (q@@8 T@Field_42929_43224) (w@@11 T@FrameType) (r@@8 T@Field_42929_43224) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_43251_88034 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_88034_88034 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_43251_88034 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43251_88034 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_88034_88034 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_97187_97188) (v_1@@12 T@FrameType) (q@@9 T@Field_42929_43224) (w@@12 T@FrameType) (r@@9 T@Field_95113_95114) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_43251_88034 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_88034_43223 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_43251_43223 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43251_88034 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_88034_43223 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_97187_97188) (v_1@@13 T@FrameType) (q@@10 T@Field_42929_43224) (w@@13 T@FrameType) (r@@10 T@Field_97187_97188) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_43251_88034 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_88034_43251 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_43251_43251 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43251_88034 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_88034_43251 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_97187_97188) (v_1@@14 T@FrameType) (q@@11 T@Field_95113_95114) (w@@14 T@FrameType) (r@@11 T@Field_42929_43224) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_43251_43223 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_43223_88034 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_43251_88034 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43251_43223 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_43223_88034 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_97187_97188) (v_1@@15 T@FrameType) (q@@12 T@Field_95113_95114) (w@@15 T@FrameType) (r@@12 T@Field_95113_95114) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_43251_43223 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_43223_43223 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_43251_43223 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43251_43223 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_43223_43223 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_97187_97188) (v_1@@16 T@FrameType) (q@@13 T@Field_95113_95114) (w@@16 T@FrameType) (r@@13 T@Field_97187_97188) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_43251_43223 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_43223_43251 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_43251_43251 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43251_43223 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_43223_43251 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_97187_97188) (v_1@@17 T@FrameType) (q@@14 T@Field_97187_97188) (w@@17 T@FrameType) (r@@14 T@Field_42929_43224) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_43251_43251 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_43251_88034 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_43251_88034 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43251_43251 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_43251_88034 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_97187_97188) (v_1@@18 T@FrameType) (q@@15 T@Field_97187_97188) (w@@18 T@FrameType) (r@@15 T@Field_95113_95114) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_43251_43251 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_43251_43223 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_43251_43223 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43251_43251 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_43251_43223 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_97187_97188) (v_1@@19 T@FrameType) (q@@16 T@Field_97187_97188) (w@@19 T@FrameType) (r@@16 T@Field_97187_97188) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_43251_43251 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_43251_43251 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_43251_43251 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43251_43251 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_43251_43251 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_95113_95114) (v_1@@20 T@FrameType) (q@@17 T@Field_42929_43224) (w@@20 T@FrameType) (r@@17 T@Field_42929_43224) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_43223_88034 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_88034_88034 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_43223_88034 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43223_88034 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_88034_88034 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_95113_95114) (v_1@@21 T@FrameType) (q@@18 T@Field_42929_43224) (w@@21 T@FrameType) (r@@18 T@Field_95113_95114) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_43223_88034 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_88034_43223 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_43223_43223 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43223_88034 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_88034_43223 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_95113_95114) (v_1@@22 T@FrameType) (q@@19 T@Field_42929_43224) (w@@22 T@FrameType) (r@@19 T@Field_97187_97188) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_43223_88034 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_88034_43251 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_43223_43251 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43223_88034 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_88034_43251 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_95113_95114) (v_1@@23 T@FrameType) (q@@20 T@Field_95113_95114) (w@@23 T@FrameType) (r@@20 T@Field_42929_43224) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_43223_43223 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_43223_88034 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_43223_88034 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43223_43223 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_43223_88034 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_95113_95114) (v_1@@24 T@FrameType) (q@@21 T@Field_95113_95114) (w@@24 T@FrameType) (r@@21 T@Field_95113_95114) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_43223_43223 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_43223_43223 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_43223_43223 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43223_43223 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_43223_43223 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_95113_95114) (v_1@@25 T@FrameType) (q@@22 T@Field_95113_95114) (w@@25 T@FrameType) (r@@22 T@Field_97187_97188) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_43223_43223 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_43223_43251 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_43223_43251 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43223_43223 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_43223_43251 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_95113_95114) (v_1@@26 T@FrameType) (q@@23 T@Field_97187_97188) (w@@26 T@FrameType) (r@@23 T@Field_42929_43224) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_43223_43251 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_43251_88034 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_43223_88034 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43223_43251 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_43251_88034 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_95113_95114) (v_1@@27 T@FrameType) (q@@24 T@Field_97187_97188) (w@@27 T@FrameType) (r@@24 T@Field_95113_95114) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_43223_43251 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_43251_43223 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_43223_43223 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43223_43251 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_43251_43223 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_95113_95114) (v_1@@28 T@FrameType) (q@@25 T@Field_97187_97188) (w@@28 T@FrameType) (r@@25 T@Field_97187_97188) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_43223_43251 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_43251_43251 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_43223_43251 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43223_43251 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_43251_43251 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((s@@15 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@15) 0) (= s@@15 |Seq#Empty_12082|))
 :qid |stdinbpl.211:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_2867| s@@16 n@@12) |Seq#Empty_12082|))
 :qid |stdinbpl.387:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2867| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@82 T@PolymorphicMapType_87974) (Mask@@83 T@PolymorphicMapType_87995) (t_2@@6 T@Ref) ) (!  (=> (and (state Heap@@82 Mask@@83) (< AssumeFunctionsAbove 0)) (= (Tree__sorted Heap@@82 t_2@@6) (Tree__sorted_list Heap@@82 (Tree__tolist Heap@@82 t_2@@6))))
 :qid |stdinbpl.1936:15|
 :skolemid |98|
 :pattern ( (state Heap@@82 Mask@@83) (Tree__sorted Heap@@82 t_2@@6))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun AssertMask@15 () T@PolymorphicMapType_87995)
(declare-fun AssertMask@14 () T@PolymorphicMapType_87995)
(declare-fun freshObj@0 () T@Ref)
(declare-fun Mask@15 () T@PolymorphicMapType_87995)
(declare-fun Heap@16 () T@PolymorphicMapType_87974)
(declare-fun AssertMask@13 () T@PolymorphicMapType_87995)
(declare-fun AssertMask@12 () T@PolymorphicMapType_87995)
(declare-fun AssertMask@11 () T@PolymorphicMapType_87995)
(declare-fun AssertMask@10 () T@PolymorphicMapType_87995)
(declare-fun AssertMask@9 () T@PolymorphicMapType_87995)
(declare-fun AssertMask@8 () T@PolymorphicMapType_87995)
(declare-fun AssertMask@7 () T@PolymorphicMapType_87995)
(declare-fun AssertMask@6 () T@PolymorphicMapType_87995)
(declare-fun AssertMask@5 () T@PolymorphicMapType_87995)
(declare-fun AssertMask@4 () T@PolymorphicMapType_87995)
(declare-fun AssertMask@3 () T@PolymorphicMapType_87995)
(declare-fun AssertMask@2 () T@PolymorphicMapType_87995)
(declare-fun AssertMask@1 () T@PolymorphicMapType_87995)
(declare-fun AssertMask@0 () T@PolymorphicMapType_87995)
(declare-fun Heap@@83 () T@PolymorphicMapType_87974)
(declare-fun diz@@29 () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_87974)
(declare-fun Mask@0 () T@PolymorphicMapType_87995)
(declare-fun Mask@1 () T@PolymorphicMapType_87995)
(declare-fun Mask@2 () T@PolymorphicMapType_87995)
(declare-fun Mask@3 () T@PolymorphicMapType_87995)
(declare-fun Mask@4 () T@PolymorphicMapType_87995)
(declare-fun Mask@5 () T@PolymorphicMapType_87995)
(declare-fun Mask@6 () T@PolymorphicMapType_87995)
(declare-fun Mask@7 () T@PolymorphicMapType_87995)
(declare-fun Mask@8 () T@PolymorphicMapType_87995)
(declare-fun Mask@9 () T@PolymorphicMapType_87995)
(declare-fun Mask@10 () T@PolymorphicMapType_87995)
(declare-fun Mask@11 () T@PolymorphicMapType_87995)
(declare-fun Mask@12 () T@PolymorphicMapType_87995)
(declare-fun Mask@13 () T@PolymorphicMapType_87995)
(declare-fun Mask@14 () T@PolymorphicMapType_87995)
(declare-fun Heap@1 () T@PolymorphicMapType_87974)
(declare-fun Heap@2 () T@PolymorphicMapType_87974)
(declare-fun __flatten_3@0 () T@Seq_2867)
(declare-fun Heap@3 () T@PolymorphicMapType_87974)
(declare-fun Heap@4 () T@PolymorphicMapType_87974)
(declare-fun __flatten_4@0 () T@Seq_2867)
(declare-fun Heap@5 () T@PolymorphicMapType_87974)
(declare-fun Heap@6 () T@PolymorphicMapType_87974)
(declare-fun __flatten_5@0 () T@Seq_2867)
(declare-fun Heap@7 () T@PolymorphicMapType_87974)
(declare-fun __flatten_6@0 () T@Seq_2867)
(declare-fun Heap@8 () T@PolymorphicMapType_87974)
(declare-fun Heap@9 () T@PolymorphicMapType_87974)
(declare-fun __flatten_7@0 () T@Seq_2867)
(declare-fun Heap@10 () T@PolymorphicMapType_87974)
(declare-fun Heap@11 () T@PolymorphicMapType_87974)
(declare-fun Heap@12 () T@PolymorphicMapType_87974)
(declare-fun Heap@13 () T@PolymorphicMapType_87974)
(declare-fun Heap@14 () T@PolymorphicMapType_87974)
(declare-fun __flatten_8@0 () T@Seq_2867)
(declare-fun Heap@15 () T@PolymorphicMapType_87974)
(declare-fun PostHeap@0 () T@PolymorphicMapType_87974)
(declare-fun sys__result () T@Ref)
(declare-fun PostMask@0 () T@PolymorphicMapType_87995)
(declare-fun PostMask@1 () T@PolymorphicMapType_87995)
(declare-fun PostMask@2 () T@PolymorphicMapType_87995)
(declare-fun PostMask@3 () T@PolymorphicMapType_87995)
(declare-fun PostMask@4 () T@PolymorphicMapType_87995)
(declare-fun PostMask@5 () T@PolymorphicMapType_87995)
(declare-fun PostMask@6 () T@PolymorphicMapType_87995)
(declare-fun PostMask@7 () T@PolymorphicMapType_87995)
(declare-fun PostMask@8 () T@PolymorphicMapType_87995)
(declare-fun PostMask@9 () T@PolymorphicMapType_87995)
(declare-fun PostMask@10 () T@PolymorphicMapType_87995)
(declare-fun PostMask@11 () T@PolymorphicMapType_87995)
(declare-fun PostMask@12 () T@PolymorphicMapType_87995)
(declare-fun PostMask@13 () T@PolymorphicMapType_87995)
(declare-fun PostMask@14 () T@PolymorphicMapType_87995)
(declare-fun PostMask@15 () T@PolymorphicMapType_87995)
(declare-fun current_thread_id () Int)
(set-info :boogie-vc-id Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains)
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
 (=> (= (ControlFlow 0 0) 134) (let ((anon34_correct  (=> (= AssertMask@15 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| AssertMask@14) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| AssertMask@14) (store (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@14) freshObj@0 Wand_state_contains_for_state_contains__top_2 (- (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@14) freshObj@0 Wand_state_contains_for_state_contains__top_2) FullPerm)) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@14) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| AssertMask@14) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| AssertMask@14) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| AssertMask@14) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| AssertMask@14) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| AssertMask@14) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| AssertMask@14) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| AssertMask@14) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| AssertMask@14) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| AssertMask@14) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| AssertMask@14) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| AssertMask@14) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| AssertMask@14) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| AssertMask@14) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| AssertMask@14))) (and (=> (= (ControlFlow 0 19) (- 0 21)) (HasDirectPerm_42929_42930 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__top_2)) (=> (HasDirectPerm_42929_42930 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__top_2) (=> (= (ControlFlow 0 19) (- 0 20)) (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__top_2) null)))))))
(let ((anon83_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 24) 19)) anon34_correct)))
(let ((anon83_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 22) (- 0 23)) (<= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@14) freshObj@0 Wand_state_contains_for_state_contains__top_2))) (=> (<= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@14) freshObj@0 Wand_state_contains_for_state_contains__top_2)) (=> (= (ControlFlow 0 22) 19) anon34_correct))))))
(let ((anon32_correct  (=> (= AssertMask@14 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| AssertMask@13) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| AssertMask@13) (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@13) (store (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@13) freshObj@0 Wand_state_contains_for_state_contains__target_contents_2 (- (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@13) freshObj@0 Wand_state_contains_for_state_contains__target_contents_2) FullPerm)) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| AssertMask@13) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| AssertMask@13) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| AssertMask@13) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| AssertMask@13) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| AssertMask@13) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| AssertMask@13) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| AssertMask@13) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| AssertMask@13) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| AssertMask@13) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| AssertMask@13) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| AssertMask@13) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| AssertMask@13) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| AssertMask@13) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| AssertMask@13))) (and (=> (= (ControlFlow 0 25) (- 0 27)) (HasDirectPerm_42932_118737 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__target_contents_2)) (=> (HasDirectPerm_42932_118737 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__target_contents_2) (and (=> (= (ControlFlow 0 25) (- 0 26)) (|Seq#Equal_3097| (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__target_contents_2) |Seq#Empty_12082|)) (=> (|Seq#Equal_3097| (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__target_contents_2) |Seq#Empty_12082|) (and (=> (= (ControlFlow 0 25) 22) anon83_Then_correct) (=> (= (ControlFlow 0 25) 24) anon83_Else_correct)))))))))
(let ((anon82_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 30) 25)) anon32_correct)))
(let ((anon82_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 28) (- 0 29)) (<= FullPerm (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@13) freshObj@0 Wand_state_contains_for_state_contains__target_contents_2))) (=> (<= FullPerm (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@13) freshObj@0 Wand_state_contains_for_state_contains__target_contents_2)) (=> (= (ControlFlow 0 28) 25) anon32_correct))))))
(let ((anon30_correct  (=> (= AssertMask@13 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| AssertMask@12) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| AssertMask@12) (store (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@12) freshObj@0 Wand_state_contains_for_state_contains__this_2 (- (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@12) freshObj@0 Wand_state_contains_for_state_contains__this_2) FullPerm)) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@12) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| AssertMask@12) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| AssertMask@12) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| AssertMask@12) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| AssertMask@12) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| AssertMask@12) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| AssertMask@12) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| AssertMask@12) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| AssertMask@12) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| AssertMask@12) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| AssertMask@12) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| AssertMask@12) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| AssertMask@12) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| AssertMask@12) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| AssertMask@12))) (and (=> (= (ControlFlow 0 31) (- 0 33)) (HasDirectPerm_42929_42930 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__this_2)) (=> (HasDirectPerm_42929_42930 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__this_2) (and (=> (= (ControlFlow 0 31) (- 0 32)) (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__this_2) null)) (=> (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__this_2) null) (and (=> (= (ControlFlow 0 31) 28) anon82_Then_correct) (=> (= (ControlFlow 0 31) 30) anon82_Else_correct)))))))))
(let ((anon81_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 36) 31)) anon30_correct)))
(let ((anon81_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 34) (- 0 35)) (<= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@12) freshObj@0 Wand_state_contains_for_state_contains__this_2))) (=> (<= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@12) freshObj@0 Wand_state_contains_for_state_contains__this_2)) (=> (= (ControlFlow 0 34) 31) anon30_correct))))))
(let ((anon28_correct  (=> (= AssertMask@12 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| AssertMask@11) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| AssertMask@11) (store (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@11) freshObj@0 Wand_state_contains_for_state_contains__wand_1 (- (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@11) freshObj@0 Wand_state_contains_for_state_contains__wand_1) FullPerm)) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@11) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| AssertMask@11) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| AssertMask@11) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| AssertMask@11) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| AssertMask@11) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| AssertMask@11) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| AssertMask@11) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| AssertMask@11) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| AssertMask@11) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| AssertMask@11) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| AssertMask@11) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| AssertMask@11) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| AssertMask@11) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| AssertMask@11) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| AssertMask@11))) (and (=> (= (ControlFlow 0 37) (- 0 39)) (HasDirectPerm_42929_42930 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__wand_1)) (=> (HasDirectPerm_42929_42930 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__wand_1) (and (=> (= (ControlFlow 0 37) (- 0 38)) (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__wand_1) null)) (=> (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__wand_1) null) (and (=> (= (ControlFlow 0 37) 34) anon81_Then_correct) (=> (= (ControlFlow 0 37) 36) anon81_Else_correct)))))))))
(let ((anon80_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 42) 37)) anon28_correct)))
(let ((anon80_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 40) (- 0 41)) (<= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@11) freshObj@0 Wand_state_contains_for_state_contains__wand_1))) (=> (<= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@11) freshObj@0 Wand_state_contains_for_state_contains__wand_1)) (=> (= (ControlFlow 0 40) 37) anon28_correct))))))
(let ((anon26_correct  (=> (= AssertMask@11 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| AssertMask@10) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| AssertMask@10) (store (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@10) freshObj@0 Wand_state_contains_for_state_contains__cur_1 (- (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@10) freshObj@0 Wand_state_contains_for_state_contains__cur_1) FullPerm)) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@10) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| AssertMask@10) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| AssertMask@10) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| AssertMask@10) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| AssertMask@10) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| AssertMask@10) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| AssertMask@10) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| AssertMask@10) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| AssertMask@10) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| AssertMask@10) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| AssertMask@10) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| AssertMask@10) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| AssertMask@10) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| AssertMask@10) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| AssertMask@10))) (and (=> (= (ControlFlow 0 43) (- 0 45)) (HasDirectPerm_42929_42930 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__cur_1)) (=> (HasDirectPerm_42929_42930 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__cur_1) (and (=> (= (ControlFlow 0 43) (- 0 44)) (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__cur_1) null)) (=> (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__cur_1) null) (and (=> (= (ControlFlow 0 43) 40) anon80_Then_correct) (=> (= (ControlFlow 0 43) 42) anon80_Else_correct)))))))))
(let ((anon79_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 48) 43)) anon26_correct)))
(let ((anon79_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 46) (- 0 47)) (<= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@10) freshObj@0 Wand_state_contains_for_state_contains__cur_1))) (=> (<= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@10) freshObj@0 Wand_state_contains_for_state_contains__cur_1)) (=> (= (ControlFlow 0 46) 43) anon26_correct))))))
(let ((anon24_correct  (=> (= AssertMask@10 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| AssertMask@9) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| AssertMask@9) (store (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@9) freshObj@0 Wand_state_contains_for_state_contains__top_1 (- (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@9) freshObj@0 Wand_state_contains_for_state_contains__top_1) FullPerm)) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@9) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| AssertMask@9) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| AssertMask@9) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| AssertMask@9) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| AssertMask@9) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| AssertMask@9) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| AssertMask@9) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| AssertMask@9) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| AssertMask@9) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| AssertMask@9) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| AssertMask@9) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| AssertMask@9) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| AssertMask@9) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| AssertMask@9) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| AssertMask@9))) (and (=> (= (ControlFlow 0 49) (- 0 51)) (HasDirectPerm_42929_42930 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__top_1)) (=> (HasDirectPerm_42929_42930 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__top_1) (and (=> (= (ControlFlow 0 49) (- 0 50)) (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__top_1) null)) (=> (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__top_1) null) (and (=> (= (ControlFlow 0 49) 46) anon79_Then_correct) (=> (= (ControlFlow 0 49) 48) anon79_Else_correct)))))))))
(let ((anon78_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 54) 49)) anon24_correct)))
(let ((anon78_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 52) (- 0 53)) (<= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@9) freshObj@0 Wand_state_contains_for_state_contains__top_1))) (=> (<= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@9) freshObj@0 Wand_state_contains_for_state_contains__top_1)) (=> (= (ControlFlow 0 52) 49) anon24_correct))))))
(let ((anon22_correct  (=> (= AssertMask@9 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| AssertMask@8) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| AssertMask@8) (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@8) (store (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@8) freshObj@0 Wand_state_contains_for_state_contains__cur_contents_1 (- (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@8) freshObj@0 Wand_state_contains_for_state_contains__cur_contents_1) FullPerm)) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| AssertMask@8) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| AssertMask@8) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| AssertMask@8) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| AssertMask@8) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| AssertMask@8) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| AssertMask@8) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| AssertMask@8) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| AssertMask@8) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| AssertMask@8) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| AssertMask@8) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| AssertMask@8) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| AssertMask@8) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| AssertMask@8) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| AssertMask@8))) (and (=> (= (ControlFlow 0 55) (- 0 57)) (HasDirectPerm_42932_118737 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__cur_contents_1)) (=> (HasDirectPerm_42932_118737 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__cur_contents_1) (and (=> (= (ControlFlow 0 55) (- 0 56)) (|Seq#Equal_3097| (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__cur_contents_1) |Seq#Empty_12082|)) (=> (|Seq#Equal_3097| (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__cur_contents_1) |Seq#Empty_12082|) (and (=> (= (ControlFlow 0 55) 52) anon78_Then_correct) (=> (= (ControlFlow 0 55) 54) anon78_Else_correct)))))))))
(let ((anon77_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 60) 55)) anon22_correct)))
(let ((anon77_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 58) (- 0 59)) (<= FullPerm (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@8) freshObj@0 Wand_state_contains_for_state_contains__cur_contents_1))) (=> (<= FullPerm (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@8) freshObj@0 Wand_state_contains_for_state_contains__cur_contents_1)) (=> (= (ControlFlow 0 58) 55) anon22_correct))))))
(let ((anon20_correct  (=> (= AssertMask@8 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| AssertMask@7) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| AssertMask@7) (store (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@7) freshObj@0 Wand_state_contains_for_state_contains__prev_1 (- (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@7) freshObj@0 Wand_state_contains_for_state_contains__prev_1) FullPerm)) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@7) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| AssertMask@7) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| AssertMask@7) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| AssertMask@7) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| AssertMask@7) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| AssertMask@7) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| AssertMask@7) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| AssertMask@7) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| AssertMask@7) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| AssertMask@7) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| AssertMask@7) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| AssertMask@7) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| AssertMask@7) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| AssertMask@7) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| AssertMask@7))) (and (=> (= (ControlFlow 0 61) (- 0 63)) (HasDirectPerm_42929_42930 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__prev_1)) (=> (HasDirectPerm_42929_42930 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__prev_1) (and (=> (= (ControlFlow 0 61) (- 0 62)) (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__prev_1) null)) (=> (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__prev_1) null) (and (=> (= (ControlFlow 0 61) 58) anon77_Then_correct) (=> (= (ControlFlow 0 61) 60) anon77_Else_correct)))))))))
(let ((anon76_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 66) 61)) anon20_correct)))
(let ((anon76_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 64) (- 0 65)) (<= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@7) freshObj@0 Wand_state_contains_for_state_contains__prev_1))) (=> (<= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@7) freshObj@0 Wand_state_contains_for_state_contains__prev_1)) (=> (= (ControlFlow 0 64) 61) anon20_correct))))))
(let ((anon18_correct  (=> (= AssertMask@7 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| AssertMask@6) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| AssertMask@6) (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@6) (store (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@6) freshObj@0 Wand_state_contains_for_state_contains__prev_contents_1 (- (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@6) freshObj@0 Wand_state_contains_for_state_contains__prev_contents_1) FullPerm)) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| AssertMask@6) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| AssertMask@6) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| AssertMask@6) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| AssertMask@6) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| AssertMask@6) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| AssertMask@6) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| AssertMask@6) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| AssertMask@6) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| AssertMask@6) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| AssertMask@6) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| AssertMask@6) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| AssertMask@6) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| AssertMask@6) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| AssertMask@6))) (and (=> (= (ControlFlow 0 67) (- 0 69)) (HasDirectPerm_42932_118737 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__prev_contents_1)) (=> (HasDirectPerm_42932_118737 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__prev_contents_1) (and (=> (= (ControlFlow 0 67) (- 0 68)) (|Seq#Equal_3097| (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__prev_contents_1) |Seq#Empty_12082|)) (=> (|Seq#Equal_3097| (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__prev_contents_1) |Seq#Empty_12082|) (and (=> (= (ControlFlow 0 67) 64) anon76_Then_correct) (=> (= (ControlFlow 0 67) 66) anon76_Else_correct)))))))))
(let ((anon75_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 72) 67)) anon18_correct)))
(let ((anon75_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 70) (- 0 71)) (<= FullPerm (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@6) freshObj@0 Wand_state_contains_for_state_contains__prev_contents_1))) (=> (<= FullPerm (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@6) freshObj@0 Wand_state_contains_for_state_contains__prev_contents_1)) (=> (= (ControlFlow 0 70) 67) anon18_correct))))))
(let ((anon16_correct  (=> (= AssertMask@6 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| AssertMask@5) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| AssertMask@5) (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@5) (store (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@5) freshObj@0 Wand_state_contains_for_state_contains__target_contents_1 (- (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@5) freshObj@0 Wand_state_contains_for_state_contains__target_contents_1) FullPerm)) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| AssertMask@5) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| AssertMask@5) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| AssertMask@5) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| AssertMask@5) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| AssertMask@5) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| AssertMask@5) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| AssertMask@5) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| AssertMask@5) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| AssertMask@5) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| AssertMask@5) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| AssertMask@5) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| AssertMask@5) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| AssertMask@5) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| AssertMask@5))) (and (=> (= (ControlFlow 0 73) (- 0 75)) (HasDirectPerm_42932_118737 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__target_contents_1)) (=> (HasDirectPerm_42932_118737 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__target_contents_1) (and (=> (= (ControlFlow 0 73) (- 0 74)) (|Seq#Equal_3097| (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__target_contents_1) |Seq#Empty_12082|)) (=> (|Seq#Equal_3097| (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__target_contents_1) |Seq#Empty_12082|) (and (=> (= (ControlFlow 0 73) 70) anon75_Then_correct) (=> (= (ControlFlow 0 73) 72) anon75_Else_correct)))))))))
(let ((anon74_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 78) 73)) anon16_correct)))
(let ((anon74_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 76) (- 0 77)) (<= FullPerm (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@5) freshObj@0 Wand_state_contains_for_state_contains__target_contents_1))) (=> (<= FullPerm (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@5) freshObj@0 Wand_state_contains_for_state_contains__target_contents_1)) (=> (= (ControlFlow 0 76) 73) anon16_correct))))))
(let ((anon14_correct  (=> (= AssertMask@5 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| AssertMask@4) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| AssertMask@4) (store (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@4) freshObj@0 Wand_state_contains_for_state_contains__this_1 (- (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@4) freshObj@0 Wand_state_contains_for_state_contains__this_1) FullPerm)) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@4) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| AssertMask@4) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| AssertMask@4) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| AssertMask@4) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| AssertMask@4) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| AssertMask@4) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| AssertMask@4) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| AssertMask@4) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| AssertMask@4) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| AssertMask@4) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| AssertMask@4) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| AssertMask@4) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| AssertMask@4) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| AssertMask@4) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| AssertMask@4))) (and (=> (= (ControlFlow 0 79) (- 0 81)) (HasDirectPerm_42929_42930 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__this_1)) (=> (HasDirectPerm_42929_42930 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__this_1) (and (=> (= (ControlFlow 0 79) (- 0 80)) (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__this_1) null)) (=> (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__this_1) null) (and (=> (= (ControlFlow 0 79) 76) anon74_Then_correct) (=> (= (ControlFlow 0 79) 78) anon74_Else_correct)))))))))
(let ((anon73_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 84) 79)) anon14_correct)))
(let ((anon73_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 82) (- 0 83)) (<= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@4) freshObj@0 Wand_state_contains_for_state_contains__this_1))) (=> (<= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@4) freshObj@0 Wand_state_contains_for_state_contains__this_1)) (=> (= (ControlFlow 0 82) 79) anon14_correct))))))
(let ((anon12_correct  (=> (= AssertMask@4 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| AssertMask@3) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| AssertMask@3) (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@3) (store (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@3) freshObj@0 Wand_state_contains_for_state_contains__out_1_0 (- (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@3) freshObj@0 Wand_state_contains_for_state_contains__out_1_0) FullPerm)) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| AssertMask@3) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| AssertMask@3) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| AssertMask@3) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| AssertMask@3) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| AssertMask@3) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| AssertMask@3) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| AssertMask@3) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| AssertMask@3) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| AssertMask@3) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| AssertMask@3) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| AssertMask@3) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| AssertMask@3) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| AssertMask@3) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| AssertMask@3))) (and (=> (= (ControlFlow 0 85) (- 0 87)) (HasDirectPerm_42932_118737 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__out_1_0)) (=> (HasDirectPerm_42932_118737 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__out_1_0) (and (=> (= (ControlFlow 0 85) (- 0 86)) (|Seq#Equal_3097| (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__out_1_0) |Seq#Empty_12082|)) (=> (|Seq#Equal_3097| (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__out_1_0) |Seq#Empty_12082|) (and (=> (= (ControlFlow 0 85) 82) anon73_Then_correct) (=> (= (ControlFlow 0 85) 84) anon73_Else_correct)))))))))
(let ((anon72_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 90) 85)) anon12_correct)))
(let ((anon72_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 88) (- 0 89)) (<= FullPerm (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@3) freshObj@0 Wand_state_contains_for_state_contains__out_1_0))) (=> (<= FullPerm (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@3) freshObj@0 Wand_state_contains_for_state_contains__out_1_0)) (=> (= (ControlFlow 0 88) 85) anon12_correct))))))
(let ((anon10_correct  (=> (= AssertMask@3 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| AssertMask@2) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| AssertMask@2) (store (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@2) freshObj@0 Wand_state_contains_for_state_contains__out_1 (- (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@2) freshObj@0 Wand_state_contains_for_state_contains__out_1) FullPerm)) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@2) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| AssertMask@2) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| AssertMask@2) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| AssertMask@2) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| AssertMask@2) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| AssertMask@2) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| AssertMask@2) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| AssertMask@2) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| AssertMask@2) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| AssertMask@2) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| AssertMask@2) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| AssertMask@2) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| AssertMask@2) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| AssertMask@2) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| AssertMask@2))) (and (=> (= (ControlFlow 0 91) (- 0 93)) (HasDirectPerm_42929_42930 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__out_1)) (=> (HasDirectPerm_42929_42930 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__out_1) (and (=> (= (ControlFlow 0 91) (- 0 92)) (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__out_1) null)) (=> (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__out_1) null) (and (=> (= (ControlFlow 0 91) 88) anon72_Then_correct) (=> (= (ControlFlow 0 91) 90) anon72_Else_correct)))))))))
(let ((anon71_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 96) 91)) anon10_correct)))
(let ((anon71_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 94) (- 0 95)) (<= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@2) freshObj@0 Wand_state_contains_for_state_contains__out_1))) (=> (<= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@2) freshObj@0 Wand_state_contains_for_state_contains__out_1)) (=> (= (ControlFlow 0 94) 91) anon10_correct))))))
(let ((anon8_correct  (=> (= AssertMask@2 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| AssertMask@1) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| AssertMask@1) (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@1) (store (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@1) freshObj@0 Wand_state_contains_for_state_contains__in_1_0 (- (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@1) freshObj@0 Wand_state_contains_for_state_contains__in_1_0) FullPerm)) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| AssertMask@1) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| AssertMask@1) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| AssertMask@1) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| AssertMask@1) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| AssertMask@1) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| AssertMask@1) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| AssertMask@1) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| AssertMask@1) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| AssertMask@1) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| AssertMask@1) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| AssertMask@1) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| AssertMask@1) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| AssertMask@1) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| AssertMask@1))) (and (=> (= (ControlFlow 0 97) (- 0 99)) (HasDirectPerm_42932_118737 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__in_1_0)) (=> (HasDirectPerm_42932_118737 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__in_1_0) (and (=> (= (ControlFlow 0 97) (- 0 98)) (|Seq#Equal_3097| (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__in_1_0) |Seq#Empty_12082|)) (=> (|Seq#Equal_3097| (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__in_1_0) |Seq#Empty_12082|) (and (=> (= (ControlFlow 0 97) 94) anon71_Then_correct) (=> (= (ControlFlow 0 97) 96) anon71_Else_correct)))))))))
(let ((anon70_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 102) 97)) anon8_correct)))
(let ((anon70_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 100) (- 0 101)) (<= FullPerm (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@1) freshObj@0 Wand_state_contains_for_state_contains__in_1_0))) (=> (<= FullPerm (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@1) freshObj@0 Wand_state_contains_for_state_contains__in_1_0)) (=> (= (ControlFlow 0 100) 97) anon8_correct))))))
(let ((anon6_correct  (=> (= AssertMask@1 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| AssertMask@0) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| AssertMask@0) (store (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@0) freshObj@0 Wand_state_contains_for_state_contains__in_1 (- (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@0) freshObj@0 Wand_state_contains_for_state_contains__in_1) FullPerm)) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| AssertMask@0) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| AssertMask@0) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| AssertMask@0) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| AssertMask@0) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| AssertMask@0) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| AssertMask@0) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| AssertMask@0) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| AssertMask@0) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| AssertMask@0) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| AssertMask@0) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| AssertMask@0) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| AssertMask@0) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| AssertMask@0) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| AssertMask@0) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| AssertMask@0))) (and (=> (= (ControlFlow 0 103) (- 0 105)) (HasDirectPerm_42929_42930 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__in_1)) (=> (HasDirectPerm_42929_42930 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__in_1) (and (=> (= (ControlFlow 0 103) (- 0 104)) (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__in_1) null)) (=> (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__in_1) null) (and (=> (= (ControlFlow 0 103) 100) anon70_Then_correct) (=> (= (ControlFlow 0 103) 102) anon70_Else_correct)))))))))
(let ((anon69_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 108) 103)) anon6_correct)))
(let ((anon69_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 106) (- 0 107)) (<= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@0) freshObj@0 Wand_state_contains_for_state_contains__in_1))) (=> (<= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| AssertMask@0) freshObj@0 Wand_state_contains_for_state_contains__in_1)) (=> (= (ControlFlow 0 106) 103) anon6_correct))))))
(let ((anon4_correct  (=> (= AssertMask@0 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| Mask@15) (store (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__lemma (- (select (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__lemma) FullPerm)) (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@15) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@15) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| Mask@15) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| Mask@15) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| Mask@15) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| Mask@15) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| Mask@15) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| Mask@15) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| Mask@15) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| Mask@15) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| Mask@15) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| Mask@15) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| Mask@15) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| Mask@15) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| Mask@15) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| Mask@15))) (and (=> (= (ControlFlow 0 109) (- 0 111)) (HasDirectPerm_42974_3235 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__lemma)) (=> (HasDirectPerm_42974_3235 Mask@15 freshObj@0 Wand_state_contains_for_state_contains__lemma) (and (=> (= (ControlFlow 0 109) (- 0 110)) (= (select (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__lemma) 0)) (=> (= (select (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@16) freshObj@0 Wand_state_contains_for_state_contains__lemma) 0) (and (=> (= (ControlFlow 0 109) 106) anon69_Then_correct) (=> (= (ControlFlow 0 109) 108) anon69_Else_correct)))))))))
(let ((anon68_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 114) 109)) anon4_correct)))
(let ((anon68_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 112) (- 0 113)) (<= FullPerm (select (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__lemma))) (=> (<= FullPerm (select (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__lemma)) (=> (= (ControlFlow 0 112) 109) anon4_correct))))))
(let ((anon67_Else_correct  (=> (select (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@83) diz@@29 $allocated) (=> (and (not (= freshObj@0 null)) (not (select (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@83) freshObj@0 $allocated))) (=> (and (and (= Heap@0 (PolymorphicMapType_87974 (store (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@@83) freshObj@0 $allocated true) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@@83) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@@83) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@@83) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@@83) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@@83) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@@83) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@@83) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@@83) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@@83) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@@83) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@@83) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@@83) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@@83) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@@83) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@@83) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@@83) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@@83))) (= Mask@0 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| ZeroMask) (store (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| ZeroMask) freshObj@0 Wand_state_contains_for_state_contains__lemma (+ (select (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| ZeroMask) freshObj@0 Wand_state_contains_for_state_contains__lemma) FullPerm)) (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| ZeroMask) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| ZeroMask) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| ZeroMask) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| ZeroMask) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| ZeroMask) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| ZeroMask) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| ZeroMask) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| ZeroMask) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| ZeroMask) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| ZeroMask) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| ZeroMask) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| ZeroMask) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| ZeroMask) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| ZeroMask) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| ZeroMask) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| ZeroMask)))) (and (= Mask@1 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| Mask@0) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| Mask@0) (store (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@0) freshObj@0 Wand_state_contains_for_state_contains__in_1 (+ (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@0) freshObj@0 Wand_state_contains_for_state_contains__in_1) FullPerm)) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@0) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| Mask@0) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| Mask@0) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| Mask@0) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| Mask@0) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| Mask@0) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| Mask@0) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| Mask@0) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| Mask@0) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| Mask@0) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| Mask@0) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| Mask@0) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| Mask@0) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| Mask@0) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| Mask@0))) (= Mask@2 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| Mask@1) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| Mask@1) (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@1) (store (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@1) freshObj@0 Wand_state_contains_for_state_contains__in_1_0 (+ (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@1) freshObj@0 Wand_state_contains_for_state_contains__in_1_0) FullPerm)) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| Mask@1) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| Mask@1) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| Mask@1) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| Mask@1) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| Mask@1) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| Mask@1) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| Mask@1) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| Mask@1) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| Mask@1) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| Mask@1) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| Mask@1) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| Mask@1) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| Mask@1) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| Mask@1))))) (=> (and (and (and (and (= Mask@3 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| Mask@2) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| Mask@2) (store (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@2) freshObj@0 Wand_state_contains_for_state_contains__out_1 (+ (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@2) freshObj@0 Wand_state_contains_for_state_contains__out_1) FullPerm)) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@2) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| Mask@2) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| Mask@2) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| Mask@2) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| Mask@2) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| Mask@2) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| Mask@2) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| Mask@2) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| Mask@2) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| Mask@2) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| Mask@2) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| Mask@2) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| Mask@2) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| Mask@2) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| Mask@2))) (= Mask@4 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| Mask@3) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| Mask@3) (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@3) (store (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@3) freshObj@0 Wand_state_contains_for_state_contains__out_1_0 (+ (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@3) freshObj@0 Wand_state_contains_for_state_contains__out_1_0) FullPerm)) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| Mask@3) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| Mask@3) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| Mask@3) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| Mask@3) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| Mask@3) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| Mask@3) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| Mask@3) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| Mask@3) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| Mask@3) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| Mask@3) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| Mask@3) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| Mask@3) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| Mask@3) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| Mask@3)))) (and (= Mask@5 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| Mask@4) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| Mask@4) (store (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@4) freshObj@0 Wand_state_contains_for_state_contains__this_1 (+ (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@4) freshObj@0 Wand_state_contains_for_state_contains__this_1) FullPerm)) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@4) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| Mask@4) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| Mask@4) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| Mask@4) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| Mask@4) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| Mask@4) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| Mask@4) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| Mask@4) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| Mask@4) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| Mask@4) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| Mask@4) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| Mask@4) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| Mask@4) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| Mask@4) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| Mask@4))) (= Mask@6 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| Mask@5) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| Mask@5) (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@5) (store (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@5) freshObj@0 Wand_state_contains_for_state_contains__target_contents_1 (+ (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@5) freshObj@0 Wand_state_contains_for_state_contains__target_contents_1) FullPerm)) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| Mask@5) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| Mask@5) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| Mask@5) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| Mask@5) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| Mask@5) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| Mask@5) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| Mask@5) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| Mask@5) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| Mask@5) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| Mask@5) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| Mask@5) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| Mask@5) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| Mask@5) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| Mask@5))))) (and (and (= Mask@7 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| Mask@6) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| Mask@6) (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@6) (store (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@6) freshObj@0 Wand_state_contains_for_state_contains__prev_contents_1 (+ (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@6) freshObj@0 Wand_state_contains_for_state_contains__prev_contents_1) FullPerm)) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| Mask@6) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| Mask@6) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| Mask@6) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| Mask@6) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| Mask@6) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| Mask@6) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| Mask@6) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| Mask@6) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| Mask@6) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| Mask@6) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| Mask@6) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| Mask@6) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| Mask@6) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| Mask@6))) (= Mask@8 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| Mask@7) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| Mask@7) (store (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@7) freshObj@0 Wand_state_contains_for_state_contains__prev_1 (+ (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@7) freshObj@0 Wand_state_contains_for_state_contains__prev_1) FullPerm)) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@7) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| Mask@7) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| Mask@7) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| Mask@7) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| Mask@7) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| Mask@7) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| Mask@7) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| Mask@7) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| Mask@7) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| Mask@7) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| Mask@7) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| Mask@7) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| Mask@7) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| Mask@7) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| Mask@7)))) (and (= Mask@9 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| Mask@8) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| Mask@8) (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@8) (store (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@8) freshObj@0 Wand_state_contains_for_state_contains__cur_contents_1 (+ (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@8) freshObj@0 Wand_state_contains_for_state_contains__cur_contents_1) FullPerm)) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| Mask@8) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| Mask@8) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| Mask@8) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| Mask@8) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| Mask@8) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| Mask@8) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| Mask@8) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| Mask@8) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| Mask@8) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| Mask@8) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| Mask@8) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| Mask@8) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| Mask@8) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| Mask@8))) (= Mask@10 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| Mask@9) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| Mask@9) (store (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@9) freshObj@0 Wand_state_contains_for_state_contains__top_1 (+ (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@9) freshObj@0 Wand_state_contains_for_state_contains__top_1) FullPerm)) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@9) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| Mask@9) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| Mask@9) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| Mask@9) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| Mask@9) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| Mask@9) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| Mask@9) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| Mask@9) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| Mask@9) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| Mask@9) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| Mask@9) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| Mask@9) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| Mask@9) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| Mask@9) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| Mask@9)))))) (and (and (and (= Mask@11 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| Mask@10) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| Mask@10) (store (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@10) freshObj@0 Wand_state_contains_for_state_contains__cur_1 (+ (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@10) freshObj@0 Wand_state_contains_for_state_contains__cur_1) FullPerm)) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@10) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| Mask@10) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| Mask@10) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| Mask@10) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| Mask@10) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| Mask@10) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| Mask@10) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| Mask@10) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| Mask@10) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| Mask@10) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| Mask@10) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| Mask@10) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| Mask@10) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| Mask@10) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| Mask@10))) (= Mask@12 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| Mask@11) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| Mask@11) (store (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@11) freshObj@0 Wand_state_contains_for_state_contains__wand_1 (+ (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@11) freshObj@0 Wand_state_contains_for_state_contains__wand_1) FullPerm)) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@11) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| Mask@11) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| Mask@11) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| Mask@11) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| Mask@11) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| Mask@11) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| Mask@11) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| Mask@11) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| Mask@11) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| Mask@11) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| Mask@11) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| Mask@11) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| Mask@11) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| Mask@11) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| Mask@11)))) (and (= Mask@13 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| Mask@12) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| Mask@12) (store (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@12) freshObj@0 Wand_state_contains_for_state_contains__this_2 (+ (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@12) freshObj@0 Wand_state_contains_for_state_contains__this_2) FullPerm)) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@12) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| Mask@12) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| Mask@12) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| Mask@12) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| Mask@12) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| Mask@12) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| Mask@12) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| Mask@12) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| Mask@12) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| Mask@12) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| Mask@12) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| Mask@12) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| Mask@12) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| Mask@12) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| Mask@12))) (= Mask@14 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| Mask@13) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| Mask@13) (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@13) (store (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@13) freshObj@0 Wand_state_contains_for_state_contains__target_contents_2 (+ (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@13) freshObj@0 Wand_state_contains_for_state_contains__target_contents_2) FullPerm)) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| Mask@13) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| Mask@13) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| Mask@13) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| Mask@13) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| Mask@13) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| Mask@13) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| Mask@13) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| Mask@13) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| Mask@13) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| Mask@13) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| Mask@13) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| Mask@13) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| Mask@13) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| Mask@13))))) (and (and (= Mask@15 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| Mask@14) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| Mask@14) (store (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@14) freshObj@0 Wand_state_contains_for_state_contains__top_2 (+ (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@14) freshObj@0 Wand_state_contains_for_state_contains__top_2) FullPerm)) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@14) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| Mask@14) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| Mask@14) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| Mask@14) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| Mask@14) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| Mask@14) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| Mask@14) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| Mask@14) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| Mask@14) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| Mask@14) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| Mask@14) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| Mask@14) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| Mask@14) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| Mask@14) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| Mask@14))) (state Heap@0 Mask@15)) (and (state Heap@0 Mask@15) (state Heap@0 Mask@15))))) (and (=> (= (ControlFlow 0 115) (- 0 132)) (= FullPerm (select (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__lemma))) (=> (= FullPerm (select (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__lemma)) (=> (and (= Heap@1 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@0) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@0) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@0) (store (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@0) freshObj@0 Wand_state_contains_for_state_contains__lemma 0) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@0) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@0) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@0) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@0) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@0) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@0) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@0) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@0) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@0) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@0) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@0) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@0) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@0) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@0))) (state Heap@1 Mask@15)) (and (=> (= (ControlFlow 0 115) (- 0 131)) (= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__in_1))) (=> (= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__in_1)) (=> (= Heap@2 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@1) (store (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@1) freshObj@0 Wand_state_contains_for_state_contains__in_1 null) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@1) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@1) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@1) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@1) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@1) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@1) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@1) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@1) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@1) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@1) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@1) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@1) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@1) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@1) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@1) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@1))) (=> (and (and (state Heap@2 Mask@15) (= __flatten_3@0 |Seq#Empty_12082|)) (and (state Heap@2 Mask@15) (state Heap@2 Mask@15))) (and (=> (= (ControlFlow 0 115) (- 0 130)) (= FullPerm (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__in_1_0))) (=> (= FullPerm (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__in_1_0)) (=> (and (= Heap@3 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@2) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@2) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@2) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@2) (store (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@2) freshObj@0 Wand_state_contains_for_state_contains__in_1_0 __flatten_3@0) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@2) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@2) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@2) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@2) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@2) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@2) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@2) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@2) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@2) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@2) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@2) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@2) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@2))) (state Heap@3 Mask@15)) (and (=> (= (ControlFlow 0 115) (- 0 129)) (= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__out_1))) (=> (= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__out_1)) (=> (= Heap@4 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@3) (store (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@3) freshObj@0 Wand_state_contains_for_state_contains__out_1 null) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@3) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@3) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@3) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@3) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@3) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@3) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@3) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@3) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@3) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@3) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@3) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@3) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@3) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@3) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@3) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@3))) (=> (and (and (state Heap@4 Mask@15) (= __flatten_4@0 |Seq#Empty_12082|)) (and (state Heap@4 Mask@15) (state Heap@4 Mask@15))) (and (=> (= (ControlFlow 0 115) (- 0 128)) (= FullPerm (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__out_1_0))) (=> (= FullPerm (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__out_1_0)) (=> (and (= Heap@5 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@4) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@4) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@4) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@4) (store (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@4) freshObj@0 Wand_state_contains_for_state_contains__out_1_0 __flatten_4@0) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@4) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@4) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@4) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@4) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@4) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@4) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@4) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@4) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@4) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@4) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@4) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@4) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@4))) (state Heap@5 Mask@15)) (and (=> (= (ControlFlow 0 115) (- 0 127)) (= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__this_1))) (=> (= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__this_1)) (=> (= Heap@6 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@5) (store (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@5) freshObj@0 Wand_state_contains_for_state_contains__this_1 null) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@5) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@5) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@5) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@5) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@5) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@5) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@5) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@5) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@5) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@5) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@5) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@5) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@5) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@5) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@5) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@5))) (=> (and (and (state Heap@6 Mask@15) (= __flatten_5@0 |Seq#Empty_12082|)) (and (state Heap@6 Mask@15) (state Heap@6 Mask@15))) (and (=> (= (ControlFlow 0 115) (- 0 126)) (= FullPerm (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__target_contents_1))) (=> (= FullPerm (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__target_contents_1)) (=> (= Heap@7 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@6) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@6) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@6) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@6) (store (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@6) freshObj@0 Wand_state_contains_for_state_contains__target_contents_1 __flatten_5@0) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@6) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@6) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@6) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@6) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@6) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@6) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@6) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@6) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@6) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@6) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@6) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@6) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@6))) (=> (and (and (state Heap@7 Mask@15) (= __flatten_6@0 |Seq#Empty_12082|)) (and (state Heap@7 Mask@15) (state Heap@7 Mask@15))) (and (=> (= (ControlFlow 0 115) (- 0 125)) (= FullPerm (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__prev_contents_1))) (=> (= FullPerm (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__prev_contents_1)) (=> (and (= Heap@8 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@7) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@7) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@7) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@7) (store (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@7) freshObj@0 Wand_state_contains_for_state_contains__prev_contents_1 __flatten_6@0) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@7) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@7) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@7) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@7) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@7) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@7) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@7) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@7) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@7) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@7) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@7) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@7) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@7))) (state Heap@8 Mask@15)) (and (=> (= (ControlFlow 0 115) (- 0 124)) (= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__prev_1))) (=> (= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__prev_1)) (=> (= Heap@9 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@8) (store (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@8) freshObj@0 Wand_state_contains_for_state_contains__prev_1 null) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@8) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@8) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@8) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@8) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@8) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@8) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@8) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@8) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@8) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@8) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@8) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@8) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@8) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@8) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@8) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@8))) (=> (and (and (state Heap@9 Mask@15) (= __flatten_7@0 |Seq#Empty_12082|)) (and (state Heap@9 Mask@15) (state Heap@9 Mask@15))) (and (=> (= (ControlFlow 0 115) (- 0 123)) (= FullPerm (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__cur_contents_1))) (=> (= FullPerm (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__cur_contents_1)) (=> (and (= Heap@10 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@9) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@9) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@9) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@9) (store (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@9) freshObj@0 Wand_state_contains_for_state_contains__cur_contents_1 __flatten_7@0) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@9) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@9) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@9) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@9) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@9) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@9) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@9) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@9) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@9) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@9) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@9) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@9) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@9))) (state Heap@10 Mask@15)) (and (=> (= (ControlFlow 0 115) (- 0 122)) (= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__top_1))) (=> (= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__top_1)) (=> (and (= Heap@11 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@10) (store (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@10) freshObj@0 Wand_state_contains_for_state_contains__top_1 null) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@10) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@10) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@10) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@10) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@10) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@10) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@10) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@10) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@10) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@10) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@10) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@10) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@10) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@10) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@10) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@10))) (state Heap@11 Mask@15)) (and (=> (= (ControlFlow 0 115) (- 0 121)) (= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__cur_1))) (=> (= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__cur_1)) (=> (and (= Heap@12 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@11) (store (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@11) freshObj@0 Wand_state_contains_for_state_contains__cur_1 null) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@11) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@11) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@11) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@11) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@11) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@11) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@11) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@11) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@11) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@11) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@11) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@11) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@11) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@11) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@11) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@11))) (state Heap@12 Mask@15)) (and (=> (= (ControlFlow 0 115) (- 0 120)) (= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__wand_1))) (=> (= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__wand_1)) (=> (and (= Heap@13 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@12) (store (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@12) freshObj@0 Wand_state_contains_for_state_contains__wand_1 null) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@12) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@12) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@12) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@12) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@12) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@12) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@12) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@12) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@12) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@12) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@12) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@12) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@12) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@12) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@12) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@12))) (state Heap@13 Mask@15)) (and (=> (= (ControlFlow 0 115) (- 0 119)) (= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__this_2))) (=> (= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__this_2)) (=> (= Heap@14 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@13) (store (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@13) freshObj@0 Wand_state_contains_for_state_contains__this_2 null) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@13) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@13) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@13) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@13) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@13) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@13) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@13) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@13) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@13) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@13) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@13) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@13) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@13) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@13) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@13) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@13))) (=> (and (and (state Heap@14 Mask@15) (= __flatten_8@0 |Seq#Empty_12082|)) (and (state Heap@14 Mask@15) (state Heap@14 Mask@15))) (and (=> (= (ControlFlow 0 115) (- 0 118)) (= FullPerm (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__target_contents_2))) (=> (= FullPerm (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__target_contents_2)) (=> (and (= Heap@15 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@14) (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@14) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@14) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@14) (store (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@14) freshObj@0 Wand_state_contains_for_state_contains__target_contents_2 __flatten_8@0) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@14) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@14) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@14) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@14) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@14) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@14) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@14) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@14) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@14) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@14) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@14) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@14) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@14))) (state Heap@15 Mask@15)) (and (=> (= (ControlFlow 0 115) (- 0 117)) (= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__top_2))) (=> (= FullPerm (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| Mask@15) freshObj@0 Wand_state_contains_for_state_contains__top_2)) (=> (= Heap@16 (PolymorphicMapType_87974 (|PolymorphicMapType_87974_42739_53#PolymorphicMapType_87974| Heap@15) (store (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| Heap@15) freshObj@0 Wand_state_contains_for_state_contains__top_2 null) (|PolymorphicMapType_87974_43223_43224#PolymorphicMapType_87974| Heap@15) (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| Heap@15) (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| Heap@15) (|PolymorphicMapType_87974_43251_43252#PolymorphicMapType_87974| Heap@15) (|PolymorphicMapType_87974_43227_104632#PolymorphicMapType_87974| Heap@15) (|PolymorphicMapType_87974_43255_108060#PolymorphicMapType_87974| Heap@15) (|PolymorphicMapType_87974_42929_43224#PolymorphicMapType_87974| Heap@15) (|PolymorphicMapType_87974_42929_322171#PolymorphicMapType_87974| Heap@15) (|PolymorphicMapType_87974_43223_42930#PolymorphicMapType_87974| Heap@15) (|PolymorphicMapType_87974_43223_118737#PolymorphicMapType_87974| Heap@15) (|PolymorphicMapType_87974_43223_3235#PolymorphicMapType_87974| Heap@15) (|PolymorphicMapType_87974_43223_53#PolymorphicMapType_87974| Heap@15) (|PolymorphicMapType_87974_43251_42930#PolymorphicMapType_87974| Heap@15) (|PolymorphicMapType_87974_43251_118737#PolymorphicMapType_87974| Heap@15) (|PolymorphicMapType_87974_43251_3235#PolymorphicMapType_87974| Heap@15) (|PolymorphicMapType_87974_43251_53#PolymorphicMapType_87974| Heap@15))) (=> (and (state Heap@16 Mask@15) (state Heap@16 Mask@15)) (and (=> (= (ControlFlow 0 115) (- 0 116)) (not (= freshObj@0 null))) (=> (not (= freshObj@0 null)) (and (=> (= (ControlFlow 0 115) 112) anon68_Then_correct) (=> (= (ControlFlow 0 115) 114) anon68_Else_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon67_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (not (= sys__result null))) (=> (and (and (state PostHeap@0 ZeroMask) (not (= sys__result null))) (and (= PostMask@0 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| ZeroMask) (store (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| ZeroMask) sys__result Wand_state_contains_for_state_contains__lemma (+ (select (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| ZeroMask) sys__result Wand_state_contains_for_state_contains__lemma) FullPerm)) (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| ZeroMask) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| ZeroMask) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| ZeroMask) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| ZeroMask) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| ZeroMask) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| ZeroMask) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| ZeroMask) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| ZeroMask) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| ZeroMask) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| ZeroMask) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| ZeroMask) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| ZeroMask) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| ZeroMask) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| ZeroMask) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| ZeroMask) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| ZeroMask))) (state PostHeap@0 PostMask@0))) (and (=> (= (ControlFlow 0 2) (- 0 17)) (HasDirectPerm_42974_3235 PostMask@0 sys__result Wand_state_contains_for_state_contains__lemma)) (=> (HasDirectPerm_42974_3235 PostMask@0 sys__result Wand_state_contains_for_state_contains__lemma) (=> (= (select (|PolymorphicMapType_87974_42927_2989#PolymorphicMapType_87974| PostHeap@0) sys__result Wand_state_contains_for_state_contains__lemma) 0) (=> (and (and (state PostHeap@0 PostMask@0) (not (= sys__result null))) (and (= PostMask@1 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| PostMask@0) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| PostMask@0) (store (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| PostMask@0) sys__result Wand_state_contains_for_state_contains__in_1 (+ (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| PostMask@0) sys__result Wand_state_contains_for_state_contains__in_1) FullPerm)) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| PostMask@0) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| PostMask@0) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| PostMask@0) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| PostMask@0) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| PostMask@0) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| PostMask@0) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| PostMask@0) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| PostMask@0) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| PostMask@0) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| PostMask@0) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| PostMask@0) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| PostMask@0) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| PostMask@0) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| PostMask@0) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| PostMask@0))) (state PostHeap@0 PostMask@1))) (and (=> (= (ControlFlow 0 2) (- 0 16)) (HasDirectPerm_42929_42930 PostMask@1 sys__result Wand_state_contains_for_state_contains__in_1)) (=> (HasDirectPerm_42929_42930 PostMask@1 sys__result Wand_state_contains_for_state_contains__in_1) (=> (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| PostHeap@0) sys__result Wand_state_contains_for_state_contains__in_1) null) (=> (and (and (state PostHeap@0 PostMask@1) (not (= sys__result null))) (and (= PostMask@2 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| PostMask@1) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| PostMask@1) (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| PostMask@1) (store (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| PostMask@1) sys__result Wand_state_contains_for_state_contains__in_1_0 (+ (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| PostMask@1) sys__result Wand_state_contains_for_state_contains__in_1_0) FullPerm)) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| PostMask@1) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| PostMask@1) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| PostMask@1) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| PostMask@1) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| PostMask@1) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| PostMask@1) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| PostMask@1) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| PostMask@1) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| PostMask@1) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| PostMask@1) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| PostMask@1) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| PostMask@1) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| PostMask@1) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| PostMask@1))) (state PostHeap@0 PostMask@2))) (and (=> (= (ControlFlow 0 2) (- 0 15)) (HasDirectPerm_42932_118737 PostMask@2 sys__result Wand_state_contains_for_state_contains__in_1_0)) (=> (HasDirectPerm_42932_118737 PostMask@2 sys__result Wand_state_contains_for_state_contains__in_1_0) (=> (|Seq#Equal_3097| (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| PostHeap@0) sys__result Wand_state_contains_for_state_contains__in_1_0) |Seq#Empty_12082|) (=> (and (and (state PostHeap@0 PostMask@2) (not (= sys__result null))) (and (= PostMask@3 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| PostMask@2) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| PostMask@2) (store (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| PostMask@2) sys__result Wand_state_contains_for_state_contains__out_1 (+ (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| PostMask@2) sys__result Wand_state_contains_for_state_contains__out_1) FullPerm)) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| PostMask@2) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| PostMask@2) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| PostMask@2) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| PostMask@2) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| PostMask@2) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| PostMask@2) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| PostMask@2) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| PostMask@2) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| PostMask@2) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| PostMask@2) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| PostMask@2) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| PostMask@2) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| PostMask@2) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| PostMask@2) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| PostMask@2))) (state PostHeap@0 PostMask@3))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (HasDirectPerm_42929_42930 PostMask@3 sys__result Wand_state_contains_for_state_contains__out_1)) (=> (HasDirectPerm_42929_42930 PostMask@3 sys__result Wand_state_contains_for_state_contains__out_1) (=> (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| PostHeap@0) sys__result Wand_state_contains_for_state_contains__out_1) null) (=> (and (and (state PostHeap@0 PostMask@3) (not (= sys__result null))) (and (= PostMask@4 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| PostMask@3) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| PostMask@3) (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| PostMask@3) (store (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| PostMask@3) sys__result Wand_state_contains_for_state_contains__out_1_0 (+ (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| PostMask@3) sys__result Wand_state_contains_for_state_contains__out_1_0) FullPerm)) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| PostMask@3) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| PostMask@3) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| PostMask@3) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| PostMask@3) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| PostMask@3) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| PostMask@3) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| PostMask@3) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| PostMask@3) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| PostMask@3) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| PostMask@3) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| PostMask@3) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| PostMask@3) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| PostMask@3) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| PostMask@3))) (state PostHeap@0 PostMask@4))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (HasDirectPerm_42932_118737 PostMask@4 sys__result Wand_state_contains_for_state_contains__out_1_0)) (=> (HasDirectPerm_42932_118737 PostMask@4 sys__result Wand_state_contains_for_state_contains__out_1_0) (=> (|Seq#Equal_3097| (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| PostHeap@0) sys__result Wand_state_contains_for_state_contains__out_1_0) |Seq#Empty_12082|) (=> (and (and (state PostHeap@0 PostMask@4) (not (= sys__result null))) (and (= PostMask@5 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| PostMask@4) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| PostMask@4) (store (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| PostMask@4) sys__result Wand_state_contains_for_state_contains__this_1 (+ (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| PostMask@4) sys__result Wand_state_contains_for_state_contains__this_1) FullPerm)) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| PostMask@4) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| PostMask@4) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| PostMask@4) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| PostMask@4) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| PostMask@4) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| PostMask@4) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| PostMask@4) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| PostMask@4) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| PostMask@4) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| PostMask@4) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| PostMask@4) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| PostMask@4) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| PostMask@4) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| PostMask@4) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| PostMask@4))) (state PostHeap@0 PostMask@5))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (HasDirectPerm_42929_42930 PostMask@5 sys__result Wand_state_contains_for_state_contains__this_1)) (=> (HasDirectPerm_42929_42930 PostMask@5 sys__result Wand_state_contains_for_state_contains__this_1) (=> (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| PostHeap@0) sys__result Wand_state_contains_for_state_contains__this_1) null) (=> (and (and (state PostHeap@0 PostMask@5) (not (= sys__result null))) (and (= PostMask@6 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| PostMask@5) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| PostMask@5) (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| PostMask@5) (store (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| PostMask@5) sys__result Wand_state_contains_for_state_contains__target_contents_1 (+ (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| PostMask@5) sys__result Wand_state_contains_for_state_contains__target_contents_1) FullPerm)) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| PostMask@5) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| PostMask@5) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| PostMask@5) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| PostMask@5) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| PostMask@5) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| PostMask@5) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| PostMask@5) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| PostMask@5) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| PostMask@5) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| PostMask@5) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| PostMask@5) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| PostMask@5) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| PostMask@5) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| PostMask@5))) (state PostHeap@0 PostMask@6))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (HasDirectPerm_42932_118737 PostMask@6 sys__result Wand_state_contains_for_state_contains__target_contents_1)) (=> (HasDirectPerm_42932_118737 PostMask@6 sys__result Wand_state_contains_for_state_contains__target_contents_1) (=> (|Seq#Equal_3097| (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| PostHeap@0) sys__result Wand_state_contains_for_state_contains__target_contents_1) |Seq#Empty_12082|) (=> (and (and (state PostHeap@0 PostMask@6) (not (= sys__result null))) (and (= PostMask@7 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| PostMask@6) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| PostMask@6) (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| PostMask@6) (store (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| PostMask@6) sys__result Wand_state_contains_for_state_contains__prev_contents_1 (+ (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| PostMask@6) sys__result Wand_state_contains_for_state_contains__prev_contents_1) FullPerm)) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| PostMask@6) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| PostMask@6) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| PostMask@6) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| PostMask@6) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| PostMask@6) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| PostMask@6) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| PostMask@6) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| PostMask@6) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| PostMask@6) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| PostMask@6) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| PostMask@6) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| PostMask@6) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| PostMask@6) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| PostMask@6))) (state PostHeap@0 PostMask@7))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (HasDirectPerm_42932_118737 PostMask@7 sys__result Wand_state_contains_for_state_contains__prev_contents_1)) (=> (HasDirectPerm_42932_118737 PostMask@7 sys__result Wand_state_contains_for_state_contains__prev_contents_1) (=> (|Seq#Equal_3097| (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| PostHeap@0) sys__result Wand_state_contains_for_state_contains__prev_contents_1) |Seq#Empty_12082|) (=> (and (and (state PostHeap@0 PostMask@7) (not (= sys__result null))) (and (= PostMask@8 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| PostMask@7) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| PostMask@7) (store (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| PostMask@7) sys__result Wand_state_contains_for_state_contains__prev_1 (+ (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| PostMask@7) sys__result Wand_state_contains_for_state_contains__prev_1) FullPerm)) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| PostMask@7) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| PostMask@7) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| PostMask@7) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| PostMask@7) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| PostMask@7) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| PostMask@7) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| PostMask@7) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| PostMask@7) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| PostMask@7) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| PostMask@7) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| PostMask@7) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| PostMask@7) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| PostMask@7) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| PostMask@7) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| PostMask@7))) (state PostHeap@0 PostMask@8))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (HasDirectPerm_42929_42930 PostMask@8 sys__result Wand_state_contains_for_state_contains__prev_1)) (=> (HasDirectPerm_42929_42930 PostMask@8 sys__result Wand_state_contains_for_state_contains__prev_1) (=> (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| PostHeap@0) sys__result Wand_state_contains_for_state_contains__prev_1) null) (=> (and (and (state PostHeap@0 PostMask@8) (not (= sys__result null))) (and (= PostMask@9 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| PostMask@8) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| PostMask@8) (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| PostMask@8) (store (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| PostMask@8) sys__result Wand_state_contains_for_state_contains__cur_contents_1 (+ (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| PostMask@8) sys__result Wand_state_contains_for_state_contains__cur_contents_1) FullPerm)) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| PostMask@8) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| PostMask@8) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| PostMask@8) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| PostMask@8) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| PostMask@8) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| PostMask@8) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| PostMask@8) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| PostMask@8) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| PostMask@8) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| PostMask@8) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| PostMask@8) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| PostMask@8) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| PostMask@8) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| PostMask@8))) (state PostHeap@0 PostMask@9))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (HasDirectPerm_42932_118737 PostMask@9 sys__result Wand_state_contains_for_state_contains__cur_contents_1)) (=> (HasDirectPerm_42932_118737 PostMask@9 sys__result Wand_state_contains_for_state_contains__cur_contents_1) (=> (|Seq#Equal_3097| (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| PostHeap@0) sys__result Wand_state_contains_for_state_contains__cur_contents_1) |Seq#Empty_12082|) (=> (and (and (state PostHeap@0 PostMask@9) (not (= sys__result null))) (and (= PostMask@10 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| PostMask@9) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| PostMask@9) (store (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| PostMask@9) sys__result Wand_state_contains_for_state_contains__top_1 (+ (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| PostMask@9) sys__result Wand_state_contains_for_state_contains__top_1) FullPerm)) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| PostMask@9) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| PostMask@9) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| PostMask@9) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| PostMask@9) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| PostMask@9) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| PostMask@9) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| PostMask@9) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| PostMask@9) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| PostMask@9) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| PostMask@9) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| PostMask@9) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| PostMask@9) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| PostMask@9) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| PostMask@9) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| PostMask@9))) (state PostHeap@0 PostMask@10))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (HasDirectPerm_42929_42930 PostMask@10 sys__result Wand_state_contains_for_state_contains__top_1)) (=> (HasDirectPerm_42929_42930 PostMask@10 sys__result Wand_state_contains_for_state_contains__top_1) (=> (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| PostHeap@0) sys__result Wand_state_contains_for_state_contains__top_1) null) (=> (and (and (state PostHeap@0 PostMask@10) (not (= sys__result null))) (and (= PostMask@11 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| PostMask@10) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| PostMask@10) (store (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| PostMask@10) sys__result Wand_state_contains_for_state_contains__cur_1 (+ (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| PostMask@10) sys__result Wand_state_contains_for_state_contains__cur_1) FullPerm)) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| PostMask@10) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| PostMask@10) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| PostMask@10) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| PostMask@10) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| PostMask@10) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| PostMask@10) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| PostMask@10) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| PostMask@10) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| PostMask@10) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| PostMask@10) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| PostMask@10) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| PostMask@10) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| PostMask@10) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| PostMask@10) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| PostMask@10))) (state PostHeap@0 PostMask@11))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (HasDirectPerm_42929_42930 PostMask@11 sys__result Wand_state_contains_for_state_contains__cur_1)) (=> (HasDirectPerm_42929_42930 PostMask@11 sys__result Wand_state_contains_for_state_contains__cur_1) (=> (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| PostHeap@0) sys__result Wand_state_contains_for_state_contains__cur_1) null) (=> (and (and (state PostHeap@0 PostMask@11) (not (= sys__result null))) (and (= PostMask@12 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| PostMask@11) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| PostMask@11) (store (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| PostMask@11) sys__result Wand_state_contains_for_state_contains__wand_1 (+ (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| PostMask@11) sys__result Wand_state_contains_for_state_contains__wand_1) FullPerm)) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| PostMask@11) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| PostMask@11) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| PostMask@11) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| PostMask@11) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| PostMask@11) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| PostMask@11) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| PostMask@11) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| PostMask@11) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| PostMask@11) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| PostMask@11) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| PostMask@11) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| PostMask@11) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| PostMask@11) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| PostMask@11) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| PostMask@11))) (state PostHeap@0 PostMask@12))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (HasDirectPerm_42929_42930 PostMask@12 sys__result Wand_state_contains_for_state_contains__wand_1)) (=> (HasDirectPerm_42929_42930 PostMask@12 sys__result Wand_state_contains_for_state_contains__wand_1) (=> (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| PostHeap@0) sys__result Wand_state_contains_for_state_contains__wand_1) null) (=> (and (and (state PostHeap@0 PostMask@12) (not (= sys__result null))) (and (= PostMask@13 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| PostMask@12) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| PostMask@12) (store (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| PostMask@12) sys__result Wand_state_contains_for_state_contains__this_2 (+ (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| PostMask@12) sys__result Wand_state_contains_for_state_contains__this_2) FullPerm)) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| PostMask@12) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| PostMask@12) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| PostMask@12) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| PostMask@12) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| PostMask@12) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| PostMask@12) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| PostMask@12) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| PostMask@12) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| PostMask@12) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| PostMask@12) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| PostMask@12) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| PostMask@12) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| PostMask@12) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| PostMask@12) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| PostMask@12))) (state PostHeap@0 PostMask@13))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (HasDirectPerm_42929_42930 PostMask@13 sys__result Wand_state_contains_for_state_contains__this_2)) (=> (HasDirectPerm_42929_42930 PostMask@13 sys__result Wand_state_contains_for_state_contains__this_2) (=> (= (select (|PolymorphicMapType_87974_42742_42743#PolymorphicMapType_87974| PostHeap@0) sys__result Wand_state_contains_for_state_contains__this_2) null) (=> (and (and (state PostHeap@0 PostMask@13) (not (= sys__result null))) (and (= PostMask@14 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| PostMask@13) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| PostMask@13) (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| PostMask@13) (store (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| PostMask@13) sys__result Wand_state_contains_for_state_contains__target_contents_2 (+ (select (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| PostMask@13) sys__result Wand_state_contains_for_state_contains__target_contents_2) FullPerm)) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| PostMask@13) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| PostMask@13) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| PostMask@13) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| PostMask@13) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| PostMask@13) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| PostMask@13) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| PostMask@13) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| PostMask@13) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| PostMask@13) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| PostMask@13) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| PostMask@13) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| PostMask@13) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| PostMask@13) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| PostMask@13))) (state PostHeap@0 PostMask@14))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_42932_118737 PostMask@14 sys__result Wand_state_contains_for_state_contains__target_contents_2)) (=> (HasDirectPerm_42932_118737 PostMask@14 sys__result Wand_state_contains_for_state_contains__target_contents_2) (=> (and (|Seq#Equal_3097| (select (|PolymorphicMapType_87974_42932_96268#PolymorphicMapType_87974| PostHeap@0) sys__result Wand_state_contains_for_state_contains__target_contents_2) |Seq#Empty_12082|) (state PostHeap@0 PostMask@14)) (=> (and (and (not (= sys__result null)) (= PostMask@15 (PolymorphicMapType_87995 (|PolymorphicMapType_87995_43223_43224#PolymorphicMapType_87995| PostMask@14) (|PolymorphicMapType_87995_42927_2989#PolymorphicMapType_87995| PostMask@14) (store (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| PostMask@14) sys__result Wand_state_contains_for_state_contains__top_2 (+ (select (|PolymorphicMapType_87995_42929_42930#PolymorphicMapType_87995| PostMask@14) sys__result Wand_state_contains_for_state_contains__top_2) FullPerm)) (|PolymorphicMapType_87995_42932_98217#PolymorphicMapType_87995| PostMask@14) (|PolymorphicMapType_87995_43251_43252#PolymorphicMapType_87995| PostMask@14) (|PolymorphicMapType_87995_43223_2989#PolymorphicMapType_87995| PostMask@14) (|PolymorphicMapType_87995_43223_42930#PolymorphicMapType_87995| PostMask@14) (|PolymorphicMapType_87995_43223_98217#PolymorphicMapType_87995| PostMask@14) (|PolymorphicMapType_87995_43223_53#PolymorphicMapType_87995| PostMask@14) (|PolymorphicMapType_87995_43223_338370#PolymorphicMapType_87995| PostMask@14) (|PolymorphicMapType_87995_42927_43224#PolymorphicMapType_87995| PostMask@14) (|PolymorphicMapType_87995_42927_53#PolymorphicMapType_87995| PostMask@14) (|PolymorphicMapType_87995_42927_338837#PolymorphicMapType_87995| PostMask@14) (|PolymorphicMapType_87995_43251_2989#PolymorphicMapType_87995| PostMask@14) (|PolymorphicMapType_87995_43251_42930#PolymorphicMapType_87995| PostMask@14) (|PolymorphicMapType_87995_43251_98217#PolymorphicMapType_87995| PostMask@14) (|PolymorphicMapType_87995_43251_53#PolymorphicMapType_87995| PostMask@14) (|PolymorphicMapType_87995_43251_339331#PolymorphicMapType_87995| PostMask@14)))) (and (state PostHeap@0 PostMask@15) (= (ControlFlow 0 2) (- 0 1)))) (HasDirectPerm_42929_42930 PostMask@15 sys__result Wand_state_contains_for_state_contains__top_2)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon0_correct  (=> (state Heap@@83 ZeroMask) (=> (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (>= current_thread_id 0) (state Heap@@83 ZeroMask))) (and (=> (= (ControlFlow 0 133) 2) anon67_Then_correct) (=> (= (ControlFlow 0 133) 115) anon67_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 134) 133) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
