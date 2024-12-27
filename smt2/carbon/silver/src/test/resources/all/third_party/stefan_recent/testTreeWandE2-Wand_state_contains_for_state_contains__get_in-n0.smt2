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
(declare-sort T@Field_87868_53 0)
(declare-sort T@Field_87881_87882 0)
(declare-sort T@Field_94947_94948 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_93886_2989 0)
(declare-sort T@Field_93982_93984 0)
(declare-sort T@Seq_2867 0)
(declare-sort T@Field_97021_97022 0)
(declare-sort T@Field_104374_104379 0)
(declare-sort T@Field_107854_107859 0)
(declare-sort T@Field_42789_43084 0)
(declare-sort T@Field_42789_104379 0)
(declare-sort T@Field_43083_42790 0)
(declare-sort T@Field_43083_118571 0)
(declare-sort T@Field_43083_3235 0)
(declare-sort T@Field_43083_53 0)
(declare-sort T@Field_43111_42790 0)
(declare-sort T@Field_43111_118571 0)
(declare-sort T@Field_43111_3235 0)
(declare-sort T@Field_43111_53 0)
(declare-datatypes ((T@PolymorphicMapType_87829 0)) (((PolymorphicMapType_87829 (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| (Array T@Ref T@Field_94947_94948 Real)) (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| (Array T@Ref T@Field_93886_2989 Real)) (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| (Array T@Ref T@Field_87881_87882 Real)) (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| (Array T@Ref T@Field_93982_93984 Real)) (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| (Array T@Ref T@Field_97021_97022 Real)) (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| (Array T@Ref T@Field_43083_3235 Real)) (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| (Array T@Ref T@Field_43083_42790 Real)) (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| (Array T@Ref T@Field_43083_118571 Real)) (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| (Array T@Ref T@Field_43083_53 Real)) (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| (Array T@Ref T@Field_104374_104379 Real)) (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| (Array T@Ref T@Field_42789_43084 Real)) (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| (Array T@Ref T@Field_87868_53 Real)) (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| (Array T@Ref T@Field_42789_104379 Real)) (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| (Array T@Ref T@Field_43111_3235 Real)) (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| (Array T@Ref T@Field_43111_42790 Real)) (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| (Array T@Ref T@Field_43111_118571 Real)) (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| (Array T@Ref T@Field_43111_53 Real)) (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| (Array T@Ref T@Field_107854_107859 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_88357 0)) (((PolymorphicMapType_88357 (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (Array T@Ref T@Field_93886_2989 Bool)) (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (Array T@Ref T@Field_87881_87882 Bool)) (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (Array T@Ref T@Field_93982_93984 Bool)) (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (Array T@Ref T@Field_87868_53 Bool)) (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (Array T@Ref T@Field_42789_43084 Bool)) (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (Array T@Ref T@Field_42789_104379 Bool)) (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (Array T@Ref T@Field_43083_3235 Bool)) (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (Array T@Ref T@Field_43083_42790 Bool)) (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (Array T@Ref T@Field_43083_118571 Bool)) (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (Array T@Ref T@Field_43083_53 Bool)) (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (Array T@Ref T@Field_94947_94948 Bool)) (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (Array T@Ref T@Field_104374_104379 Bool)) (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (Array T@Ref T@Field_43111_3235 Bool)) (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (Array T@Ref T@Field_43111_42790 Bool)) (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (Array T@Ref T@Field_43111_118571 Bool)) (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (Array T@Ref T@Field_43111_53 Bool)) (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (Array T@Ref T@Field_97021_97022 Bool)) (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (Array T@Ref T@Field_107854_107859 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_87808 0)) (((PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| (Array T@Ref T@Field_87868_53 Bool)) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| (Array T@Ref T@Field_87881_87882 T@Ref)) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| (Array T@Ref T@Field_94947_94948 T@FrameType)) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| (Array T@Ref T@Field_93886_2989 Int)) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| (Array T@Ref T@Field_93982_93984 T@Seq_2867)) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| (Array T@Ref T@Field_97021_97022 T@FrameType)) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| (Array T@Ref T@Field_104374_104379 T@PolymorphicMapType_88357)) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| (Array T@Ref T@Field_107854_107859 T@PolymorphicMapType_88357)) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| (Array T@Ref T@Field_42789_43084 T@FrameType)) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| (Array T@Ref T@Field_42789_104379 T@PolymorphicMapType_88357)) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| (Array T@Ref T@Field_43083_42790 T@Ref)) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| (Array T@Ref T@Field_43083_118571 T@Seq_2867)) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| (Array T@Ref T@Field_43083_3235 Int)) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| (Array T@Ref T@Field_43083_53 Bool)) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| (Array T@Ref T@Field_43111_42790 T@Ref)) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| (Array T@Ref T@Field_43111_118571 T@Seq_2867)) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| (Array T@Ref T@Field_43111_3235 Int)) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| (Array T@Ref T@Field_43111_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_87868_53)
(declare-fun Wand_state_contains_for_state_contains__lemma () T@Field_93886_2989)
(declare-fun Wand_state_contains_for_state_contains__in_1 () T@Field_87881_87882)
(declare-fun Wand_state_contains_for_state_contains__in_1_0 () T@Field_93982_93984)
(declare-fun Wand_state_contains_for_state_contains__out_1 () T@Field_87881_87882)
(declare-fun Wand_state_contains_for_state_contains__out_1_0 () T@Field_93982_93984)
(declare-fun Wand_state_contains_for_state_contains__this_1 () T@Field_87881_87882)
(declare-fun Wand_state_contains_for_state_contains__target_contents_1 () T@Field_93982_93984)
(declare-fun Wand_state_contains_for_state_contains__prev_contents_1 () T@Field_93982_93984)
(declare-fun Wand_state_contains_for_state_contains__prev_1 () T@Field_87881_87882)
(declare-fun Wand_state_contains_for_state_contains__cur_contents_1 () T@Field_93982_93984)
(declare-fun Wand_state_contains_for_state_contains__top_1 () T@Field_87881_87882)
(declare-fun Wand_state_contains_for_state_contains__cur_1 () T@Field_87881_87882)
(declare-fun Wand_state_contains_for_state_contains__wand_1 () T@Field_87881_87882)
(declare-fun Wand_state_contains_for_state_contains__this_2 () T@Field_87881_87882)
(declare-fun Wand_state_contains_for_state_contains__target_contents_2 () T@Field_93982_93984)
(declare-fun Wand_state_contains_for_state_contains__top_2 () T@Field_87881_87882)
(declare-fun Tree__data () T@Field_93886_2989)
(declare-fun Tree__left () T@Field_87881_87882)
(declare-fun Tree__right () T@Field_87881_87882)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_3097| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_87808 T@PolymorphicMapType_87808 T@PolymorphicMapType_87829) Bool)
(declare-fun IsPredicateField_43111_43112 (T@Field_97021_97022) Bool)
(declare-fun HasDirectPerm_43111_43112 (T@PolymorphicMapType_87829 T@Ref T@Field_97021_97022) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_43111 (T@Field_97021_97022) T@Field_107854_107859)
(declare-fun IsPredicateField_43083_43084 (T@Field_94947_94948) Bool)
(declare-fun HasDirectPerm_43083_43084 (T@PolymorphicMapType_87829 T@Ref T@Field_94947_94948) Bool)
(declare-fun PredicateMaskField_43083 (T@Field_94947_94948) T@Field_104374_104379)
(declare-fun IsPredicateField_42789_324659 (T@Field_42789_43084) Bool)
(declare-fun HasDirectPerm_42789_43084 (T@PolymorphicMapType_87829 T@Ref T@Field_42789_43084) Bool)
(declare-fun PredicateMaskField_42789 (T@Field_42789_43084) T@Field_42789_104379)
(declare-fun IsWandField_43111_330937 (T@Field_97021_97022) Bool)
(declare-fun WandMaskField_43111 (T@Field_97021_97022) T@Field_107854_107859)
(declare-fun IsWandField_43083_330580 (T@Field_94947_94948) Bool)
(declare-fun WandMaskField_43083 (T@Field_94947_94948) T@Field_104374_104379)
(declare-fun IsWandField_42789_330223 (T@Field_42789_43084) Bool)
(declare-fun WandMaskField_42789 (T@Field_42789_43084) T@Field_42789_104379)
(declare-fun succHeap (T@PolymorphicMapType_87808 T@PolymorphicMapType_87808) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_87808 T@PolymorphicMapType_87808) Bool)
(declare-fun state (T@PolymorphicMapType_87808 T@PolymorphicMapType_87829) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_87829) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_88357)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_12082| () T@Seq_2867)
(declare-fun Wand_state_contains_for_state_contains__valid_wand (T@Ref) T@Field_94947_94948)
(declare-fun Tree__state (T@Ref) T@Field_97021_97022)
(declare-fun |Wand_state_contains_for_state_contains__get_in_1'| (T@PolymorphicMapType_87808 T@Ref) T@Ref)
(declare-fun dummyFunction_42867 (T@Ref) Bool)
(declare-fun |Wand_state_contains_for_state_contains__get_in_1#triggerStateless| (T@Ref) T@Ref)
(declare-fun |Wand_state_contains_for_state_contains__get_in_1_0'| (T@PolymorphicMapType_87808 T@Ref) T@Seq_2867)
(declare-fun dummyFunction_109436 (T@Seq_2867) Bool)
(declare-fun |Wand_state_contains_for_state_contains__get_in_1_0#triggerStateless| (T@Ref) T@Seq_2867)
(declare-fun |Wand_state_contains_for_state_contains__get_out_1'| (T@PolymorphicMapType_87808 T@Ref) T@Ref)
(declare-fun |Wand_state_contains_for_state_contains__get_out_1#triggerStateless| (T@Ref) T@Ref)
(declare-fun |Wand_state_contains_for_state_contains__get_out_1_0'| (T@PolymorphicMapType_87808 T@Ref) T@Seq_2867)
(declare-fun |Wand_state_contains_for_state_contains__get_out_1_0#triggerStateless| (T@Ref) T@Seq_2867)
(declare-fun |Tree__tolist'| (T@PolymorphicMapType_87808 T@Ref) T@Seq_2867)
(declare-fun |Tree__tolist#triggerStateless| (T@Ref) T@Seq_2867)
(declare-fun |Tree__sorted_list'| (T@PolymorphicMapType_87808 T@Seq_2867) Bool)
(declare-fun dummyFunction_13305 (Bool) Bool)
(declare-fun |Tree__sorted_list#triggerStateless| (T@Seq_2867) Bool)
(declare-fun |Tree__sorted'| (T@PolymorphicMapType_87808 T@Ref) Bool)
(declare-fun |Tree__sorted#triggerStateless| (T@Ref) Bool)
(declare-fun |Wand_state_contains_for_state_contains__valid_wand#trigger_43083| (T@PolymorphicMapType_87808 T@Field_94947_94948) Bool)
(declare-fun |Wand_state_contains_for_state_contains__valid_wand#everUsed_43083| (T@Field_94947_94948) Bool)
(declare-fun |Tree__state#trigger_43111| (T@PolymorphicMapType_87808 T@Field_97021_97022) Bool)
(declare-fun |Tree__state#everUsed_43111| (T@Field_97021_97022) Bool)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |Seq#Take_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun |Tree__sorted#frame| (T@FrameType T@Ref) Bool)
(declare-fun FrameFragment_43112 (T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun Wand_state_contains_for_state_contains__get_in_1 (T@PolymorphicMapType_87808 T@Ref) T@Ref)
(declare-fun Wand_state_contains_for_state_contains__get_in_1_0 (T@PolymorphicMapType_87808 T@Ref) T@Seq_2867)
(declare-fun Wand_state_contains_for_state_contains__get_out_1 (T@PolymorphicMapType_87808 T@Ref) T@Ref)
(declare-fun Wand_state_contains_for_state_contains__get_out_1_0 (T@PolymorphicMapType_87808 T@Ref) T@Seq_2867)
(declare-fun Tree__tolist (T@PolymorphicMapType_87808 T@Ref) T@Seq_2867)
(declare-fun |Tree__tolist#frame| (T@FrameType T@Ref) T@Seq_2867)
(declare-fun |Seq#Singleton_3235| (Int) T@Seq_2867)
(declare-fun Tree__sorted_list (T@PolymorphicMapType_87808 T@Seq_2867) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Wand_state_contains_for_state_contains__valid_wand#sm| (T@Ref) T@Field_104374_104379)
(declare-fun |Tree__state#sm| (T@Ref) T@Field_107854_107859)
(declare-fun |Seq#Append_3128| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun dummyHeap () T@PolymorphicMapType_87808)
(declare-fun ZeroMask () T@PolymorphicMapType_87829)
(declare-fun InsidePredicate_87868_87868 (T@Field_42789_43084 T@FrameType T@Field_42789_43084 T@FrameType) Bool)
(declare-fun InsidePredicate_43111_43111 (T@Field_97021_97022 T@FrameType T@Field_97021_97022 T@FrameType) Bool)
(declare-fun InsidePredicate_43083_43083 (T@Field_94947_94948 T@FrameType T@Field_94947_94948 T@FrameType) Bool)
(declare-fun |Wand_state_contains_for_state_contains__get_out_1#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |Wand_state_contains_for_state_contains__get_in_1#trigger| (T@FrameType T@Ref) Bool)
(declare-fun IsPredicateField_42787_2989 (T@Field_93886_2989) Bool)
(declare-fun IsWandField_42787_2989 (T@Field_93886_2989) Bool)
(declare-fun IsPredicateField_42789_42790 (T@Field_87881_87882) Bool)
(declare-fun IsWandField_42789_42790 (T@Field_87881_87882) Bool)
(declare-fun IsPredicateField_42792_94003 (T@Field_93982_93984) Bool)
(declare-fun IsWandField_42792_94026 (T@Field_93982_93984) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_43111_343048 (T@Field_107854_107859) Bool)
(declare-fun IsWandField_43111_343064 (T@Field_107854_107859) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_43111_53 (T@Field_43111_53) Bool)
(declare-fun IsWandField_43111_53 (T@Field_43111_53) Bool)
(declare-fun IsPredicateField_43111_98051 (T@Field_43111_118571) Bool)
(declare-fun IsWandField_43111_98051 (T@Field_43111_118571) Bool)
(declare-fun IsPredicateField_43111_42790 (T@Field_43111_42790) Bool)
(declare-fun IsWandField_43111_42790 (T@Field_43111_42790) Bool)
(declare-fun IsPredicateField_43111_2989 (T@Field_43111_3235) Bool)
(declare-fun IsWandField_43111_2989 (T@Field_43111_3235) Bool)
(declare-fun IsPredicateField_42787_342049 (T@Field_42789_104379) Bool)
(declare-fun IsWandField_42787_342065 (T@Field_42789_104379) Bool)
(declare-fun IsPredicateField_42787_53 (T@Field_87868_53) Bool)
(declare-fun IsWandField_42787_53 (T@Field_87868_53) Bool)
(declare-fun IsPredicateField_43083_341092 (T@Field_104374_104379) Bool)
(declare-fun IsWandField_43083_341108 (T@Field_104374_104379) Bool)
(declare-fun IsPredicateField_43083_53 (T@Field_43083_53) Bool)
(declare-fun IsWandField_43083_53 (T@Field_43083_53) Bool)
(declare-fun IsPredicateField_43083_98051 (T@Field_43083_118571) Bool)
(declare-fun IsWandField_43083_98051 (T@Field_43083_118571) Bool)
(declare-fun IsPredicateField_43083_42790 (T@Field_43083_42790) Bool)
(declare-fun IsWandField_43083_42790 (T@Field_43083_42790) Bool)
(declare-fun IsPredicateField_43083_2989 (T@Field_43083_3235) Bool)
(declare-fun IsWandField_43083_2989 (T@Field_43083_3235) Bool)
(declare-fun HasDirectPerm_43111_324414 (T@PolymorphicMapType_87829 T@Ref T@Field_107854_107859) Bool)
(declare-fun HasDirectPerm_43111_53 (T@PolymorphicMapType_87829 T@Ref T@Field_43111_53) Bool)
(declare-fun HasDirectPerm_43111_3235 (T@PolymorphicMapType_87829 T@Ref T@Field_43111_3235) Bool)
(declare-fun HasDirectPerm_43111_118571 (T@PolymorphicMapType_87829 T@Ref T@Field_43111_118571) Bool)
(declare-fun HasDirectPerm_43111_42790 (T@PolymorphicMapType_87829 T@Ref T@Field_43111_42790) Bool)
(declare-fun HasDirectPerm_43083_323087 (T@PolymorphicMapType_87829 T@Ref T@Field_104374_104379) Bool)
(declare-fun HasDirectPerm_43083_53 (T@PolymorphicMapType_87829 T@Ref T@Field_43083_53) Bool)
(declare-fun HasDirectPerm_43083_3235 (T@PolymorphicMapType_87829 T@Ref T@Field_43083_3235) Bool)
(declare-fun HasDirectPerm_43083_118571 (T@PolymorphicMapType_87829 T@Ref T@Field_43083_118571) Bool)
(declare-fun HasDirectPerm_43083_42790 (T@PolymorphicMapType_87829 T@Ref T@Field_43083_42790) Bool)
(declare-fun HasDirectPerm_42789_321717 (T@PolymorphicMapType_87829 T@Ref T@Field_42789_104379) Bool)
(declare-fun HasDirectPerm_42789_53 (T@PolymorphicMapType_87829 T@Ref T@Field_87868_53) Bool)
(declare-fun HasDirectPerm_42834_3235 (T@PolymorphicMapType_87829 T@Ref T@Field_93886_2989) Bool)
(declare-fun HasDirectPerm_42792_118571 (T@PolymorphicMapType_87829 T@Ref T@Field_93982_93984) Bool)
(declare-fun HasDirectPerm_42789_42790 (T@PolymorphicMapType_87829 T@Ref T@Field_87881_87882) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_87829 T@PolymorphicMapType_87829 T@PolymorphicMapType_87829) Bool)
(declare-fun |Seq#Equal_3097| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |Tree__sorted_list#frame| (T@FrameType T@Seq_2867) Bool)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun Tree__sorted (T@PolymorphicMapType_87808 T@Ref) Bool)
(declare-fun |Wand_state_contains_for_state_contains__get_in_1#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun |Wand_state_contains_for_state_contains__get_in_1_0#frame| (T@FrameType T@Ref) T@Seq_2867)
(declare-fun |Wand_state_contains_for_state_contains__get_out_1#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun |Wand_state_contains_for_state_contains__get_out_1_0#frame| (T@FrameType T@Ref) T@Seq_2867)
(declare-fun getPredWandId_43083_43084 (T@Field_94947_94948) Int)
(declare-fun getPredWandId_43111_43112 (T@Field_97021_97022) Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(declare-fun InsidePredicate_87868_43083 (T@Field_42789_43084 T@FrameType T@Field_94947_94948 T@FrameType) Bool)
(declare-fun InsidePredicate_87868_43111 (T@Field_42789_43084 T@FrameType T@Field_97021_97022 T@FrameType) Bool)
(declare-fun InsidePredicate_43083_87868 (T@Field_94947_94948 T@FrameType T@Field_42789_43084 T@FrameType) Bool)
(declare-fun InsidePredicate_43083_43111 (T@Field_94947_94948 T@FrameType T@Field_97021_97022 T@FrameType) Bool)
(declare-fun InsidePredicate_43111_87868 (T@Field_97021_97022 T@FrameType T@Field_42789_43084 T@FrameType) Bool)
(declare-fun InsidePredicate_43111_43083 (T@Field_97021_97022 T@FrameType T@Field_94947_94948 T@FrameType) Bool)
(assert (and (distinct Wand_state_contains_for_state_contains__lemma Tree__data)(distinct Wand_state_contains_for_state_contains__in_1 Wand_state_contains_for_state_contains__out_1 Wand_state_contains_for_state_contains__this_1 Wand_state_contains_for_state_contains__prev_1 Wand_state_contains_for_state_contains__top_1 Wand_state_contains_for_state_contains__cur_1 Wand_state_contains_for_state_contains__wand_1 Wand_state_contains_for_state_contains__this_2 Wand_state_contains_for_state_contains__top_2 Tree__left Tree__right)(distinct Wand_state_contains_for_state_contains__in_1_0 Wand_state_contains_for_state_contains__out_1_0 Wand_state_contains_for_state_contains__target_contents_1 Wand_state_contains_for_state_contains__prev_contents_1 Wand_state_contains_for_state_contains__cur_contents_1 Wand_state_contains_for_state_contains__target_contents_2))
)
(assert (forall ((s T@Seq_2867) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2867| s)) (= (|Seq#Length_2867| (|Seq#Drop_3097| s n)) (- (|Seq#Length_2867| s) n))) (=> (< (|Seq#Length_2867| s) n) (= (|Seq#Length_2867| (|Seq#Drop_3097| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2867| (|Seq#Drop_3097| s n)) (|Seq#Length_2867| s))))
 :qid |stdinbpl.282:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_3097| s n)))
 :pattern ( (|Seq#Length_2867| s) (|Seq#Drop_3097| s n))
)))
(assert (forall ((Heap T@PolymorphicMapType_87808) (ExhaleHeap T@PolymorphicMapType_87808) (Mask T@PolymorphicMapType_87829) (pm_f_54 T@Field_97021_97022) ) (!  (=> (IdenticalOnKnownLocations Heap ExhaleHeap Mask) (=> (and (HasDirectPerm_43111_43112 Mask null pm_f_54) (IsPredicateField_43111_43112 pm_f_54)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_54 T@Ref) (f_63 T@Field_93886_2989) ) (!  (=> (select (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54 f_63) (= (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap) o2_54 f_63) (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| ExhaleHeap) o2_54 f_63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| ExhaleHeap) o2_54 f_63))
)) (forall ((o2_54@@0 T@Ref) (f_63@@0 T@Field_87881_87882) ) (!  (=> (select (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@0 f_63@@0) (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap) o2_54@@0 f_63@@0) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| ExhaleHeap) o2_54@@0 f_63@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| ExhaleHeap) o2_54@@0 f_63@@0))
))) (forall ((o2_54@@1 T@Ref) (f_63@@1 T@Field_93982_93984) ) (!  (=> (select (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@1 f_63@@1) (= (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap) o2_54@@1 f_63@@1) (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| ExhaleHeap) o2_54@@1 f_63@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| ExhaleHeap) o2_54@@1 f_63@@1))
))) (forall ((o2_54@@2 T@Ref) (f_63@@2 T@Field_87868_53) ) (!  (=> (select (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@2 f_63@@2) (= (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap) o2_54@@2 f_63@@2) (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap) o2_54@@2 f_63@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap) o2_54@@2 f_63@@2))
))) (forall ((o2_54@@3 T@Ref) (f_63@@3 T@Field_42789_43084) ) (!  (=> (select (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@3 f_63@@3) (= (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap) o2_54@@3 f_63@@3) (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| ExhaleHeap) o2_54@@3 f_63@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| ExhaleHeap) o2_54@@3 f_63@@3))
))) (forall ((o2_54@@4 T@Ref) (f_63@@4 T@Field_42789_104379) ) (!  (=> (select (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@4 f_63@@4) (= (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap) o2_54@@4 f_63@@4) (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap) o2_54@@4 f_63@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap) o2_54@@4 f_63@@4))
))) (forall ((o2_54@@5 T@Ref) (f_63@@5 T@Field_43083_3235) ) (!  (=> (select (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@5 f_63@@5) (= (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap) o2_54@@5 f_63@@5) (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| ExhaleHeap) o2_54@@5 f_63@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| ExhaleHeap) o2_54@@5 f_63@@5))
))) (forall ((o2_54@@6 T@Ref) (f_63@@6 T@Field_43083_42790) ) (!  (=> (select (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@6 f_63@@6) (= (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap) o2_54@@6 f_63@@6) (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| ExhaleHeap) o2_54@@6 f_63@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| ExhaleHeap) o2_54@@6 f_63@@6))
))) (forall ((o2_54@@7 T@Ref) (f_63@@7 T@Field_43083_118571) ) (!  (=> (select (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@7 f_63@@7) (= (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap) o2_54@@7 f_63@@7) (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| ExhaleHeap) o2_54@@7 f_63@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| ExhaleHeap) o2_54@@7 f_63@@7))
))) (forall ((o2_54@@8 T@Ref) (f_63@@8 T@Field_43083_53) ) (!  (=> (select (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@8 f_63@@8) (= (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap) o2_54@@8 f_63@@8) (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| ExhaleHeap) o2_54@@8 f_63@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| ExhaleHeap) o2_54@@8 f_63@@8))
))) (forall ((o2_54@@9 T@Ref) (f_63@@9 T@Field_94947_94948) ) (!  (=> (select (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@9 f_63@@9) (= (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap) o2_54@@9 f_63@@9) (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| ExhaleHeap) o2_54@@9 f_63@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| ExhaleHeap) o2_54@@9 f_63@@9))
))) (forall ((o2_54@@10 T@Ref) (f_63@@10 T@Field_104374_104379) ) (!  (=> (select (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@10 f_63@@10) (= (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap) o2_54@@10 f_63@@10) (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap) o2_54@@10 f_63@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap) o2_54@@10 f_63@@10))
))) (forall ((o2_54@@11 T@Ref) (f_63@@11 T@Field_43111_3235) ) (!  (=> (select (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@11 f_63@@11) (= (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap) o2_54@@11 f_63@@11) (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| ExhaleHeap) o2_54@@11 f_63@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| ExhaleHeap) o2_54@@11 f_63@@11))
))) (forall ((o2_54@@12 T@Ref) (f_63@@12 T@Field_43111_42790) ) (!  (=> (select (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@12 f_63@@12) (= (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap) o2_54@@12 f_63@@12) (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| ExhaleHeap) o2_54@@12 f_63@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| ExhaleHeap) o2_54@@12 f_63@@12))
))) (forall ((o2_54@@13 T@Ref) (f_63@@13 T@Field_43111_118571) ) (!  (=> (select (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@13 f_63@@13) (= (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap) o2_54@@13 f_63@@13) (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| ExhaleHeap) o2_54@@13 f_63@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| ExhaleHeap) o2_54@@13 f_63@@13))
))) (forall ((o2_54@@14 T@Ref) (f_63@@14 T@Field_43111_53) ) (!  (=> (select (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@14 f_63@@14) (= (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap) o2_54@@14 f_63@@14) (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| ExhaleHeap) o2_54@@14 f_63@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| ExhaleHeap) o2_54@@14 f_63@@14))
))) (forall ((o2_54@@15 T@Ref) (f_63@@15 T@Field_97021_97022) ) (!  (=> (select (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@15 f_63@@15) (= (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap) o2_54@@15 f_63@@15) (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| ExhaleHeap) o2_54@@15 f_63@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| ExhaleHeap) o2_54@@15 f_63@@15))
))) (forall ((o2_54@@16 T@Ref) (f_63@@16 T@Field_107854_107859) ) (!  (=> (select (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@16 f_63@@16) (= (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) o2_54@@16 f_63@@16) (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap) o2_54@@16 f_63@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap) o2_54@@16 f_63@@16))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap ExhaleHeap Mask) (IsPredicateField_43111_43112 pm_f_54))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_87808) (ExhaleHeap@@0 T@PolymorphicMapType_87808) (Mask@@0 T@PolymorphicMapType_87829) (pm_f_54@@0 T@Field_94947_94948) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap@@0 Mask@@0) (=> (and (HasDirectPerm_43083_43084 Mask@@0 null pm_f_54@@0) (IsPredicateField_43083_43084 pm_f_54@@0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_54@@17 T@Ref) (f_63@@17 T@Field_93886_2989) ) (!  (=> (select (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@17 f_63@@17) (= (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@0) o2_54@@17 f_63@@17) (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@17 f_63@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@17 f_63@@17))
)) (forall ((o2_54@@18 T@Ref) (f_63@@18 T@Field_87881_87882) ) (!  (=> (select (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@18 f_63@@18) (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@0) o2_54@@18 f_63@@18) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@18 f_63@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@18 f_63@@18))
))) (forall ((o2_54@@19 T@Ref) (f_63@@19 T@Field_93982_93984) ) (!  (=> (select (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@19 f_63@@19) (= (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@0) o2_54@@19 f_63@@19) (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@19 f_63@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@19 f_63@@19))
))) (forall ((o2_54@@20 T@Ref) (f_63@@20 T@Field_87868_53) ) (!  (=> (select (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@20 f_63@@20) (= (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@0) o2_54@@20 f_63@@20) (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@20 f_63@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@20 f_63@@20))
))) (forall ((o2_54@@21 T@Ref) (f_63@@21 T@Field_42789_43084) ) (!  (=> (select (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@21 f_63@@21) (= (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@0) o2_54@@21 f_63@@21) (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@21 f_63@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@21 f_63@@21))
))) (forall ((o2_54@@22 T@Ref) (f_63@@22 T@Field_42789_104379) ) (!  (=> (select (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@22 f_63@@22) (= (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@0) o2_54@@22 f_63@@22) (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@22 f_63@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@22 f_63@@22))
))) (forall ((o2_54@@23 T@Ref) (f_63@@23 T@Field_43083_3235) ) (!  (=> (select (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@23 f_63@@23) (= (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@0) o2_54@@23 f_63@@23) (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@23 f_63@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@23 f_63@@23))
))) (forall ((o2_54@@24 T@Ref) (f_63@@24 T@Field_43083_42790) ) (!  (=> (select (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@24 f_63@@24) (= (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@0) o2_54@@24 f_63@@24) (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@24 f_63@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@24 f_63@@24))
))) (forall ((o2_54@@25 T@Ref) (f_63@@25 T@Field_43083_118571) ) (!  (=> (select (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@25 f_63@@25) (= (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@0) o2_54@@25 f_63@@25) (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@25 f_63@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@25 f_63@@25))
))) (forall ((o2_54@@26 T@Ref) (f_63@@26 T@Field_43083_53) ) (!  (=> (select (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@26 f_63@@26) (= (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@0) o2_54@@26 f_63@@26) (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@26 f_63@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@26 f_63@@26))
))) (forall ((o2_54@@27 T@Ref) (f_63@@27 T@Field_94947_94948) ) (!  (=> (select (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@27 f_63@@27) (= (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@0) o2_54@@27 f_63@@27) (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@27 f_63@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@27 f_63@@27))
))) (forall ((o2_54@@28 T@Ref) (f_63@@28 T@Field_104374_104379) ) (!  (=> (select (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@28 f_63@@28) (= (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) o2_54@@28 f_63@@28) (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@28 f_63@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@28 f_63@@28))
))) (forall ((o2_54@@29 T@Ref) (f_63@@29 T@Field_43111_3235) ) (!  (=> (select (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@29 f_63@@29) (= (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@0) o2_54@@29 f_63@@29) (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@29 f_63@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@29 f_63@@29))
))) (forall ((o2_54@@30 T@Ref) (f_63@@30 T@Field_43111_42790) ) (!  (=> (select (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@30 f_63@@30) (= (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@0) o2_54@@30 f_63@@30) (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@30 f_63@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@30 f_63@@30))
))) (forall ((o2_54@@31 T@Ref) (f_63@@31 T@Field_43111_118571) ) (!  (=> (select (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@31 f_63@@31) (= (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@0) o2_54@@31 f_63@@31) (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@31 f_63@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@31 f_63@@31))
))) (forall ((o2_54@@32 T@Ref) (f_63@@32 T@Field_43111_53) ) (!  (=> (select (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@32 f_63@@32) (= (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@0) o2_54@@32 f_63@@32) (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@32 f_63@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@32 f_63@@32))
))) (forall ((o2_54@@33 T@Ref) (f_63@@33 T@Field_97021_97022) ) (!  (=> (select (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@33 f_63@@33) (= (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@0) o2_54@@33 f_63@@33) (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@33 f_63@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@33 f_63@@33))
))) (forall ((o2_54@@34 T@Ref) (f_63@@34 T@Field_107854_107859) ) (!  (=> (select (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@34 f_63@@34) (= (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@0) o2_54@@34 f_63@@34) (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@34 f_63@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@34 f_63@@34))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap@@0 Mask@@0) (IsPredicateField_43083_43084 pm_f_54@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_87808) (ExhaleHeap@@1 T@PolymorphicMapType_87808) (Mask@@1 T@PolymorphicMapType_87829) (pm_f_54@@1 T@Field_42789_43084) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@1 Mask@@1) (=> (and (HasDirectPerm_42789_43084 Mask@@1 null pm_f_54@@1) (IsPredicateField_42789_324659 pm_f_54@@1)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_54@@35 T@Ref) (f_63@@35 T@Field_93886_2989) ) (!  (=> (select (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@35 f_63@@35) (= (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@1) o2_54@@35 f_63@@35) (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@35 f_63@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@35 f_63@@35))
)) (forall ((o2_54@@36 T@Ref) (f_63@@36 T@Field_87881_87882) ) (!  (=> (select (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@36 f_63@@36) (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@1) o2_54@@36 f_63@@36) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@36 f_63@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@36 f_63@@36))
))) (forall ((o2_54@@37 T@Ref) (f_63@@37 T@Field_93982_93984) ) (!  (=> (select (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@37 f_63@@37) (= (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@1) o2_54@@37 f_63@@37) (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@37 f_63@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@37 f_63@@37))
))) (forall ((o2_54@@38 T@Ref) (f_63@@38 T@Field_87868_53) ) (!  (=> (select (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@38 f_63@@38) (= (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@1) o2_54@@38 f_63@@38) (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@38 f_63@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@38 f_63@@38))
))) (forall ((o2_54@@39 T@Ref) (f_63@@39 T@Field_42789_43084) ) (!  (=> (select (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@39 f_63@@39) (= (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@1) o2_54@@39 f_63@@39) (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@39 f_63@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@39 f_63@@39))
))) (forall ((o2_54@@40 T@Ref) (f_63@@40 T@Field_42789_104379) ) (!  (=> (select (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@40 f_63@@40) (= (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) o2_54@@40 f_63@@40) (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@40 f_63@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@40 f_63@@40))
))) (forall ((o2_54@@41 T@Ref) (f_63@@41 T@Field_43083_3235) ) (!  (=> (select (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@41 f_63@@41) (= (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@1) o2_54@@41 f_63@@41) (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@41 f_63@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@41 f_63@@41))
))) (forall ((o2_54@@42 T@Ref) (f_63@@42 T@Field_43083_42790) ) (!  (=> (select (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@42 f_63@@42) (= (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@1) o2_54@@42 f_63@@42) (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@42 f_63@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@42 f_63@@42))
))) (forall ((o2_54@@43 T@Ref) (f_63@@43 T@Field_43083_118571) ) (!  (=> (select (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@43 f_63@@43) (= (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@1) o2_54@@43 f_63@@43) (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@43 f_63@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@43 f_63@@43))
))) (forall ((o2_54@@44 T@Ref) (f_63@@44 T@Field_43083_53) ) (!  (=> (select (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@44 f_63@@44) (= (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@1) o2_54@@44 f_63@@44) (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@44 f_63@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@44 f_63@@44))
))) (forall ((o2_54@@45 T@Ref) (f_63@@45 T@Field_94947_94948) ) (!  (=> (select (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@45 f_63@@45) (= (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@1) o2_54@@45 f_63@@45) (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@45 f_63@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@45 f_63@@45))
))) (forall ((o2_54@@46 T@Ref) (f_63@@46 T@Field_104374_104379) ) (!  (=> (select (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@46 f_63@@46) (= (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@1) o2_54@@46 f_63@@46) (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@46 f_63@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@46 f_63@@46))
))) (forall ((o2_54@@47 T@Ref) (f_63@@47 T@Field_43111_3235) ) (!  (=> (select (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@47 f_63@@47) (= (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@1) o2_54@@47 f_63@@47) (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@47 f_63@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@47 f_63@@47))
))) (forall ((o2_54@@48 T@Ref) (f_63@@48 T@Field_43111_42790) ) (!  (=> (select (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@48 f_63@@48) (= (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@1) o2_54@@48 f_63@@48) (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@48 f_63@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@48 f_63@@48))
))) (forall ((o2_54@@49 T@Ref) (f_63@@49 T@Field_43111_118571) ) (!  (=> (select (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@49 f_63@@49) (= (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@1) o2_54@@49 f_63@@49) (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@49 f_63@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@49 f_63@@49))
))) (forall ((o2_54@@50 T@Ref) (f_63@@50 T@Field_43111_53) ) (!  (=> (select (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@50 f_63@@50) (= (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@1) o2_54@@50 f_63@@50) (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@50 f_63@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@50 f_63@@50))
))) (forall ((o2_54@@51 T@Ref) (f_63@@51 T@Field_97021_97022) ) (!  (=> (select (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@51 f_63@@51) (= (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@1) o2_54@@51 f_63@@51) (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@51 f_63@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@51 f_63@@51))
))) (forall ((o2_54@@52 T@Ref) (f_63@@52 T@Field_107854_107859) ) (!  (=> (select (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@52 f_63@@52) (= (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@1) o2_54@@52 f_63@@52) (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@52 f_63@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@52 f_63@@52))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@1 Mask@@1) (IsPredicateField_42789_324659 pm_f_54@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_87808) (ExhaleHeap@@2 T@PolymorphicMapType_87808) (Mask@@2 T@PolymorphicMapType_87829) (pm_f_54@@2 T@Field_97021_97022) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@2 Mask@@2) (=> (and (HasDirectPerm_43111_43112 Mask@@2 null pm_f_54@@2) (IsWandField_43111_330937 pm_f_54@@2)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_54@@53 T@Ref) (f_63@@53 T@Field_93886_2989) ) (!  (=> (select (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@53 f_63@@53) (= (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@2) o2_54@@53 f_63@@53) (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@53 f_63@@53)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@53 f_63@@53))
)) (forall ((o2_54@@54 T@Ref) (f_63@@54 T@Field_87881_87882) ) (!  (=> (select (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@54 f_63@@54) (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@2) o2_54@@54 f_63@@54) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@54 f_63@@54)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@54 f_63@@54))
))) (forall ((o2_54@@55 T@Ref) (f_63@@55 T@Field_93982_93984) ) (!  (=> (select (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@55 f_63@@55) (= (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@2) o2_54@@55 f_63@@55) (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@55 f_63@@55)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@55 f_63@@55))
))) (forall ((o2_54@@56 T@Ref) (f_63@@56 T@Field_87868_53) ) (!  (=> (select (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@56 f_63@@56) (= (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@2) o2_54@@56 f_63@@56) (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@56 f_63@@56)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@56 f_63@@56))
))) (forall ((o2_54@@57 T@Ref) (f_63@@57 T@Field_42789_43084) ) (!  (=> (select (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@57 f_63@@57) (= (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@2) o2_54@@57 f_63@@57) (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@57 f_63@@57)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@57 f_63@@57))
))) (forall ((o2_54@@58 T@Ref) (f_63@@58 T@Field_42789_104379) ) (!  (=> (select (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@58 f_63@@58) (= (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@2) o2_54@@58 f_63@@58) (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@58 f_63@@58)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@58 f_63@@58))
))) (forall ((o2_54@@59 T@Ref) (f_63@@59 T@Field_43083_3235) ) (!  (=> (select (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@59 f_63@@59) (= (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@2) o2_54@@59 f_63@@59) (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@59 f_63@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@59 f_63@@59))
))) (forall ((o2_54@@60 T@Ref) (f_63@@60 T@Field_43083_42790) ) (!  (=> (select (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@60 f_63@@60) (= (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@2) o2_54@@60 f_63@@60) (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@60 f_63@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@60 f_63@@60))
))) (forall ((o2_54@@61 T@Ref) (f_63@@61 T@Field_43083_118571) ) (!  (=> (select (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@61 f_63@@61) (= (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@2) o2_54@@61 f_63@@61) (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@61 f_63@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@61 f_63@@61))
))) (forall ((o2_54@@62 T@Ref) (f_63@@62 T@Field_43083_53) ) (!  (=> (select (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@62 f_63@@62) (= (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@2) o2_54@@62 f_63@@62) (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@62 f_63@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@62 f_63@@62))
))) (forall ((o2_54@@63 T@Ref) (f_63@@63 T@Field_94947_94948) ) (!  (=> (select (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@63 f_63@@63) (= (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@2) o2_54@@63 f_63@@63) (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@63 f_63@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@63 f_63@@63))
))) (forall ((o2_54@@64 T@Ref) (f_63@@64 T@Field_104374_104379) ) (!  (=> (select (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@64 f_63@@64) (= (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@2) o2_54@@64 f_63@@64) (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@64 f_63@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@64 f_63@@64))
))) (forall ((o2_54@@65 T@Ref) (f_63@@65 T@Field_43111_3235) ) (!  (=> (select (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@65 f_63@@65) (= (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@2) o2_54@@65 f_63@@65) (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@65 f_63@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@65 f_63@@65))
))) (forall ((o2_54@@66 T@Ref) (f_63@@66 T@Field_43111_42790) ) (!  (=> (select (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@66 f_63@@66) (= (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@2) o2_54@@66 f_63@@66) (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@66 f_63@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@66 f_63@@66))
))) (forall ((o2_54@@67 T@Ref) (f_63@@67 T@Field_43111_118571) ) (!  (=> (select (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@67 f_63@@67) (= (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@2) o2_54@@67 f_63@@67) (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@67 f_63@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@67 f_63@@67))
))) (forall ((o2_54@@68 T@Ref) (f_63@@68 T@Field_43111_53) ) (!  (=> (select (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@68 f_63@@68) (= (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@2) o2_54@@68 f_63@@68) (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@68 f_63@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@68 f_63@@68))
))) (forall ((o2_54@@69 T@Ref) (f_63@@69 T@Field_97021_97022) ) (!  (=> (select (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@69 f_63@@69) (= (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@2) o2_54@@69 f_63@@69) (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@69 f_63@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@69 f_63@@69))
))) (forall ((o2_54@@70 T@Ref) (f_63@@70 T@Field_107854_107859) ) (!  (=> (select (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@70 f_63@@70) (= (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) o2_54@@70 f_63@@70) (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@70 f_63@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@70 f_63@@70))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@2 Mask@@2) (IsWandField_43111_330937 pm_f_54@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_87808) (ExhaleHeap@@3 T@PolymorphicMapType_87808) (Mask@@3 T@PolymorphicMapType_87829) (pm_f_54@@3 T@Field_94947_94948) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@3 Mask@@3) (=> (and (HasDirectPerm_43083_43084 Mask@@3 null pm_f_54@@3) (IsWandField_43083_330580 pm_f_54@@3)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_54@@71 T@Ref) (f_63@@71 T@Field_93886_2989) ) (!  (=> (select (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@71 f_63@@71) (= (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@3) o2_54@@71 f_63@@71) (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@71 f_63@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@71 f_63@@71))
)) (forall ((o2_54@@72 T@Ref) (f_63@@72 T@Field_87881_87882) ) (!  (=> (select (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@72 f_63@@72) (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@3) o2_54@@72 f_63@@72) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@72 f_63@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@72 f_63@@72))
))) (forall ((o2_54@@73 T@Ref) (f_63@@73 T@Field_93982_93984) ) (!  (=> (select (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@73 f_63@@73) (= (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@3) o2_54@@73 f_63@@73) (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@73 f_63@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@73 f_63@@73))
))) (forall ((o2_54@@74 T@Ref) (f_63@@74 T@Field_87868_53) ) (!  (=> (select (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@74 f_63@@74) (= (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@3) o2_54@@74 f_63@@74) (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@74 f_63@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@74 f_63@@74))
))) (forall ((o2_54@@75 T@Ref) (f_63@@75 T@Field_42789_43084) ) (!  (=> (select (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@75 f_63@@75) (= (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@3) o2_54@@75 f_63@@75) (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@75 f_63@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@75 f_63@@75))
))) (forall ((o2_54@@76 T@Ref) (f_63@@76 T@Field_42789_104379) ) (!  (=> (select (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@76 f_63@@76) (= (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@3) o2_54@@76 f_63@@76) (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@76 f_63@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@76 f_63@@76))
))) (forall ((o2_54@@77 T@Ref) (f_63@@77 T@Field_43083_3235) ) (!  (=> (select (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@77 f_63@@77) (= (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@3) o2_54@@77 f_63@@77) (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@77 f_63@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@77 f_63@@77))
))) (forall ((o2_54@@78 T@Ref) (f_63@@78 T@Field_43083_42790) ) (!  (=> (select (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@78 f_63@@78) (= (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@3) o2_54@@78 f_63@@78) (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@78 f_63@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@78 f_63@@78))
))) (forall ((o2_54@@79 T@Ref) (f_63@@79 T@Field_43083_118571) ) (!  (=> (select (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@79 f_63@@79) (= (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@3) o2_54@@79 f_63@@79) (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@79 f_63@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@79 f_63@@79))
))) (forall ((o2_54@@80 T@Ref) (f_63@@80 T@Field_43083_53) ) (!  (=> (select (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@80 f_63@@80) (= (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@3) o2_54@@80 f_63@@80) (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@80 f_63@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@80 f_63@@80))
))) (forall ((o2_54@@81 T@Ref) (f_63@@81 T@Field_94947_94948) ) (!  (=> (select (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@81 f_63@@81) (= (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@3) o2_54@@81 f_63@@81) (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@81 f_63@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@81 f_63@@81))
))) (forall ((o2_54@@82 T@Ref) (f_63@@82 T@Field_104374_104379) ) (!  (=> (select (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@82 f_63@@82) (= (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) o2_54@@82 f_63@@82) (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@82 f_63@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@82 f_63@@82))
))) (forall ((o2_54@@83 T@Ref) (f_63@@83 T@Field_43111_3235) ) (!  (=> (select (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@83 f_63@@83) (= (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@3) o2_54@@83 f_63@@83) (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@83 f_63@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@83 f_63@@83))
))) (forall ((o2_54@@84 T@Ref) (f_63@@84 T@Field_43111_42790) ) (!  (=> (select (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@84 f_63@@84) (= (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@3) o2_54@@84 f_63@@84) (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@84 f_63@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@84 f_63@@84))
))) (forall ((o2_54@@85 T@Ref) (f_63@@85 T@Field_43111_118571) ) (!  (=> (select (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@85 f_63@@85) (= (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@3) o2_54@@85 f_63@@85) (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@85 f_63@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@85 f_63@@85))
))) (forall ((o2_54@@86 T@Ref) (f_63@@86 T@Field_43111_53) ) (!  (=> (select (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@86 f_63@@86) (= (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@3) o2_54@@86 f_63@@86) (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@86 f_63@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@86 f_63@@86))
))) (forall ((o2_54@@87 T@Ref) (f_63@@87 T@Field_97021_97022) ) (!  (=> (select (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@87 f_63@@87) (= (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@3) o2_54@@87 f_63@@87) (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@87 f_63@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@87 f_63@@87))
))) (forall ((o2_54@@88 T@Ref) (f_63@@88 T@Field_107854_107859) ) (!  (=> (select (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@88 f_63@@88) (= (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@3) o2_54@@88 f_63@@88) (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@88 f_63@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@88 f_63@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@3 Mask@@3) (IsWandField_43083_330580 pm_f_54@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_87808) (ExhaleHeap@@4 T@PolymorphicMapType_87808) (Mask@@4 T@PolymorphicMapType_87829) (pm_f_54@@4 T@Field_42789_43084) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@4 Mask@@4) (=> (and (HasDirectPerm_42789_43084 Mask@@4 null pm_f_54@@4) (IsWandField_42789_330223 pm_f_54@@4)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_54@@89 T@Ref) (f_63@@89 T@Field_93886_2989) ) (!  (=> (select (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@89 f_63@@89) (= (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@4) o2_54@@89 f_63@@89) (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@89 f_63@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@89 f_63@@89))
)) (forall ((o2_54@@90 T@Ref) (f_63@@90 T@Field_87881_87882) ) (!  (=> (select (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@90 f_63@@90) (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@4) o2_54@@90 f_63@@90) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@90 f_63@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@90 f_63@@90))
))) (forall ((o2_54@@91 T@Ref) (f_63@@91 T@Field_93982_93984) ) (!  (=> (select (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@91 f_63@@91) (= (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@4) o2_54@@91 f_63@@91) (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@91 f_63@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@91 f_63@@91))
))) (forall ((o2_54@@92 T@Ref) (f_63@@92 T@Field_87868_53) ) (!  (=> (select (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@92 f_63@@92) (= (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@4) o2_54@@92 f_63@@92) (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@92 f_63@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@92 f_63@@92))
))) (forall ((o2_54@@93 T@Ref) (f_63@@93 T@Field_42789_43084) ) (!  (=> (select (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@93 f_63@@93) (= (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@4) o2_54@@93 f_63@@93) (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@93 f_63@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@93 f_63@@93))
))) (forall ((o2_54@@94 T@Ref) (f_63@@94 T@Field_42789_104379) ) (!  (=> (select (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@94 f_63@@94) (= (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) o2_54@@94 f_63@@94) (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@94 f_63@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@94 f_63@@94))
))) (forall ((o2_54@@95 T@Ref) (f_63@@95 T@Field_43083_3235) ) (!  (=> (select (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@95 f_63@@95) (= (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@4) o2_54@@95 f_63@@95) (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@95 f_63@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@95 f_63@@95))
))) (forall ((o2_54@@96 T@Ref) (f_63@@96 T@Field_43083_42790) ) (!  (=> (select (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@96 f_63@@96) (= (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@4) o2_54@@96 f_63@@96) (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@96 f_63@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@96 f_63@@96))
))) (forall ((o2_54@@97 T@Ref) (f_63@@97 T@Field_43083_118571) ) (!  (=> (select (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@97 f_63@@97) (= (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@4) o2_54@@97 f_63@@97) (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@97 f_63@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@97 f_63@@97))
))) (forall ((o2_54@@98 T@Ref) (f_63@@98 T@Field_43083_53) ) (!  (=> (select (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@98 f_63@@98) (= (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@4) o2_54@@98 f_63@@98) (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@98 f_63@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@98 f_63@@98))
))) (forall ((o2_54@@99 T@Ref) (f_63@@99 T@Field_94947_94948) ) (!  (=> (select (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@99 f_63@@99) (= (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@4) o2_54@@99 f_63@@99) (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@99 f_63@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@99 f_63@@99))
))) (forall ((o2_54@@100 T@Ref) (f_63@@100 T@Field_104374_104379) ) (!  (=> (select (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@100 f_63@@100) (= (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@4) o2_54@@100 f_63@@100) (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@100 f_63@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@100 f_63@@100))
))) (forall ((o2_54@@101 T@Ref) (f_63@@101 T@Field_43111_3235) ) (!  (=> (select (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@101 f_63@@101) (= (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@4) o2_54@@101 f_63@@101) (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@101 f_63@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@101 f_63@@101))
))) (forall ((o2_54@@102 T@Ref) (f_63@@102 T@Field_43111_42790) ) (!  (=> (select (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@102 f_63@@102) (= (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@4) o2_54@@102 f_63@@102) (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@102 f_63@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@102 f_63@@102))
))) (forall ((o2_54@@103 T@Ref) (f_63@@103 T@Field_43111_118571) ) (!  (=> (select (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@103 f_63@@103) (= (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@4) o2_54@@103 f_63@@103) (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@103 f_63@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@103 f_63@@103))
))) (forall ((o2_54@@104 T@Ref) (f_63@@104 T@Field_43111_53) ) (!  (=> (select (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@104 f_63@@104) (= (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@4) o2_54@@104 f_63@@104) (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@104 f_63@@104)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@104 f_63@@104))
))) (forall ((o2_54@@105 T@Ref) (f_63@@105 T@Field_97021_97022) ) (!  (=> (select (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@105 f_63@@105) (= (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@4) o2_54@@105 f_63@@105) (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@105 f_63@@105)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@105 f_63@@105))
))) (forall ((o2_54@@106 T@Ref) (f_63@@106 T@Field_107854_107859) ) (!  (=> (select (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@106 f_63@@106) (= (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@4) o2_54@@106 f_63@@106) (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@106 f_63@@106)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@106 f_63@@106))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@4 Mask@@4) (IsWandField_42789_330223 pm_f_54@@4))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_87808) (Heap1 T@PolymorphicMapType_87808) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_87808) (Mask@@5 T@PolymorphicMapType_87829) ) (!  (=> (state Heap@@5 Mask@@5) (GoodMask Mask@@5))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@5 Mask@@5))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_87808) (Heap1@@0 T@PolymorphicMapType_87808) (Heap2 T@PolymorphicMapType_87808) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_107854_107859) ) (!  (not (select (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_97021_97022) ) (!  (not (select (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_43111_53) ) (!  (not (select (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_43111_118571) ) (!  (not (select (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_43111_42790) ) (!  (not (select (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_43111_3235) ) (!  (not (select (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_104374_104379) ) (!  (not (select (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_94947_94948) ) (!  (not (select (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_43083_53) ) (!  (not (select (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_43083_118571) ) (!  (not (select (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_43083_42790) ) (!  (not (select (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_43083_3235) ) (!  (not (select (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_42789_104379) ) (!  (not (select (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_42789_43084) ) (!  (not (select (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_87868_53) ) (!  (not (select (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_93982_93984) ) (!  (not (select (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_87881_87882) ) (!  (not (select (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_93886_2989) ) (!  (not (select (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_2867| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_2867| (|Seq#Drop_3097| s@@0 n@@0) j) (|Seq#Index_2867| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.303:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_3097| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_2867| |Seq#Empty_12082|) 0))
(assert (forall ((diz T@Ref) ) (! (IsPredicateField_43083_43084 (Wand_state_contains_for_state_contains__valid_wand diz))
 :qid |stdinbpl.1992:15|
 :skolemid |99|
 :pattern ( (Wand_state_contains_for_state_contains__valid_wand diz))
)))
(assert (forall ((diz@@0 T@Ref) ) (! (IsPredicateField_43111_43112 (Tree__state diz@@0))
 :qid |stdinbpl.2425:15|
 :skolemid |105|
 :pattern ( (Tree__state diz@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_87808) (diz@@1 T@Ref) ) (! (dummyFunction_42867 (|Wand_state_contains_for_state_contains__get_in_1#triggerStateless| diz@@1))
 :qid |stdinbpl.622:15|
 :skolemid |59|
 :pattern ( (|Wand_state_contains_for_state_contains__get_in_1'| Heap@@6 diz@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_87808) (diz@@2 T@Ref) ) (! (dummyFunction_109436 (|Wand_state_contains_for_state_contains__get_in_1_0#triggerStateless| diz@@2))
 :qid |stdinbpl.892:15|
 :skolemid |66|
 :pattern ( (|Wand_state_contains_for_state_contains__get_in_1_0'| Heap@@7 diz@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_87808) (diz@@3 T@Ref) ) (! (dummyFunction_42867 (|Wand_state_contains_for_state_contains__get_out_1#triggerStateless| diz@@3))
 :qid |stdinbpl.1150:15|
 :skolemid |72|
 :pattern ( (|Wand_state_contains_for_state_contains__get_out_1'| Heap@@8 diz@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_87808) (diz@@4 T@Ref) ) (! (dummyFunction_109436 (|Wand_state_contains_for_state_contains__get_out_1_0#triggerStateless| diz@@4))
 :qid |stdinbpl.1420:15|
 :skolemid |79|
 :pattern ( (|Wand_state_contains_for_state_contains__get_out_1_0'| Heap@@9 diz@@4))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_87808) (t_2 T@Ref) ) (! (dummyFunction_109436 (|Tree__tolist#triggerStateless| t_2))
 :qid |stdinbpl.1678:15|
 :skolemid |85|
 :pattern ( (|Tree__tolist'| Heap@@10 t_2))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_87808) (s_2 T@Seq_2867) ) (! (dummyFunction_13305 (|Tree__sorted_list#triggerStateless| s_2))
 :qid |stdinbpl.1855:15|
 :skolemid |91|
 :pattern ( (|Tree__sorted_list'| Heap@@11 s_2))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_87808) (t_2@@0 T@Ref) ) (! (dummyFunction_13305 (|Tree__sorted#triggerStateless| t_2@@0))
 :qid |stdinbpl.1905:15|
 :skolemid |95|
 :pattern ( (|Tree__sorted'| Heap@@12 t_2@@0))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_87808) (diz@@5 T@Ref) ) (! (|Wand_state_contains_for_state_contains__valid_wand#everUsed_43083| (Wand_state_contains_for_state_contains__valid_wand diz@@5))
 :qid |stdinbpl.2011:15|
 :skolemid |103|
 :pattern ( (|Wand_state_contains_for_state_contains__valid_wand#trigger_43083| Heap@@13 (Wand_state_contains_for_state_contains__valid_wand diz@@5)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_87808) (diz@@6 T@Ref) ) (! (|Tree__state#everUsed_43111| (Tree__state diz@@6))
 :qid |stdinbpl.2444:15|
 :skolemid |109|
 :pattern ( (|Tree__state#trigger_43111| Heap@@14 (Tree__state diz@@6)))
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
(assert (forall ((Heap@@15 T@PolymorphicMapType_87808) (Mask@@6 T@PolymorphicMapType_87829) (t_2@@1 T@Ref) ) (!  (=> (state Heap@@15 Mask@@6) (= (|Tree__sorted'| Heap@@15 t_2@@1) (|Tree__sorted#frame| (FrameFragment_43112 (ite (not (= t_2@@1 null)) (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@15) null (Tree__state t_2@@1)) EmptyFrame)) t_2@@1)))
 :qid |stdinbpl.1918:15|
 :skolemid |97|
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
(assert (forall ((Heap@@16 T@PolymorphicMapType_87808) (diz@@7 T@Ref) ) (!  (and (= (Wand_state_contains_for_state_contains__get_in_1 Heap@@16 diz@@7) (|Wand_state_contains_for_state_contains__get_in_1'| Heap@@16 diz@@7)) (dummyFunction_42867 (|Wand_state_contains_for_state_contains__get_in_1#triggerStateless| diz@@7)))
 :qid |stdinbpl.618:15|
 :skolemid |58|
 :pattern ( (Wand_state_contains_for_state_contains__get_in_1 Heap@@16 diz@@7))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_87808) (diz@@8 T@Ref) ) (!  (and (= (Wand_state_contains_for_state_contains__get_in_1_0 Heap@@17 diz@@8) (|Wand_state_contains_for_state_contains__get_in_1_0'| Heap@@17 diz@@8)) (dummyFunction_109436 (|Wand_state_contains_for_state_contains__get_in_1_0#triggerStateless| diz@@8)))
 :qid |stdinbpl.888:15|
 :skolemid |65|
 :pattern ( (Wand_state_contains_for_state_contains__get_in_1_0 Heap@@17 diz@@8))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_87808) (diz@@9 T@Ref) ) (!  (and (= (Wand_state_contains_for_state_contains__get_out_1 Heap@@18 diz@@9) (|Wand_state_contains_for_state_contains__get_out_1'| Heap@@18 diz@@9)) (dummyFunction_42867 (|Wand_state_contains_for_state_contains__get_out_1#triggerStateless| diz@@9)))
 :qid |stdinbpl.1146:15|
 :skolemid |71|
 :pattern ( (Wand_state_contains_for_state_contains__get_out_1 Heap@@18 diz@@9))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_87808) (diz@@10 T@Ref) ) (!  (and (= (Wand_state_contains_for_state_contains__get_out_1_0 Heap@@19 diz@@10) (|Wand_state_contains_for_state_contains__get_out_1_0'| Heap@@19 diz@@10)) (dummyFunction_109436 (|Wand_state_contains_for_state_contains__get_out_1_0#triggerStateless| diz@@10)))
 :qid |stdinbpl.1416:15|
 :skolemid |78|
 :pattern ( (Wand_state_contains_for_state_contains__get_out_1_0 Heap@@19 diz@@10))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_87808) (t_2@@2 T@Ref) ) (!  (and (= (Tree__tolist Heap@@20 t_2@@2) (|Tree__tolist'| Heap@@20 t_2@@2)) (dummyFunction_109436 (|Tree__tolist#triggerStateless| t_2@@2)))
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
(assert (forall ((Heap@@21 T@PolymorphicMapType_87808) (ExhaleHeap@@5 T@PolymorphicMapType_87808) (Mask@@7 T@PolymorphicMapType_87829) (pm_f_54@@5 T@Field_97021_97022) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_43111_43112 Mask@@7 null pm_f_54@@5) (IsPredicateField_43111_43112 pm_f_54@@5)) (= (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@21) null (PredicateMaskField_43111 pm_f_54@@5)) (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@5) null (PredicateMaskField_43111 pm_f_54@@5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@5 Mask@@7) (IsPredicateField_43111_43112 pm_f_54@@5) (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@5) null (PredicateMaskField_43111 pm_f_54@@5)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_87808) (ExhaleHeap@@6 T@PolymorphicMapType_87808) (Mask@@8 T@PolymorphicMapType_87829) (pm_f_54@@6 T@Field_94947_94948) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_43083_43084 Mask@@8 null pm_f_54@@6) (IsPredicateField_43083_43084 pm_f_54@@6)) (= (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@22) null (PredicateMaskField_43083 pm_f_54@@6)) (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@6) null (PredicateMaskField_43083 pm_f_54@@6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@6 Mask@@8) (IsPredicateField_43083_43084 pm_f_54@@6) (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@6) null (PredicateMaskField_43083 pm_f_54@@6)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_87808) (ExhaleHeap@@7 T@PolymorphicMapType_87808) (Mask@@9 T@PolymorphicMapType_87829) (pm_f_54@@7 T@Field_42789_43084) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@7 Mask@@9) (=> (and (HasDirectPerm_42789_43084 Mask@@9 null pm_f_54@@7) (IsPredicateField_42789_324659 pm_f_54@@7)) (= (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@23) null (PredicateMaskField_42789 pm_f_54@@7)) (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@7) null (PredicateMaskField_42789 pm_f_54@@7)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@7 Mask@@9) (IsPredicateField_42789_324659 pm_f_54@@7) (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@7) null (PredicateMaskField_42789 pm_f_54@@7)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_87808) (ExhaleHeap@@8 T@PolymorphicMapType_87808) (Mask@@10 T@PolymorphicMapType_87829) (pm_f_54@@8 T@Field_97021_97022) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@8 Mask@@10) (=> (and (HasDirectPerm_43111_43112 Mask@@10 null pm_f_54@@8) (IsWandField_43111_330937 pm_f_54@@8)) (= (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@24) null (WandMaskField_43111 pm_f_54@@8)) (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@8) null (WandMaskField_43111 pm_f_54@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@8 Mask@@10) (IsWandField_43111_330937 pm_f_54@@8) (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@8) null (WandMaskField_43111 pm_f_54@@8)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_87808) (ExhaleHeap@@9 T@PolymorphicMapType_87808) (Mask@@11 T@PolymorphicMapType_87829) (pm_f_54@@9 T@Field_94947_94948) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@9 Mask@@11) (=> (and (HasDirectPerm_43083_43084 Mask@@11 null pm_f_54@@9) (IsWandField_43083_330580 pm_f_54@@9)) (= (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@25) null (WandMaskField_43083 pm_f_54@@9)) (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@9) null (WandMaskField_43083 pm_f_54@@9)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@9 Mask@@11) (IsWandField_43083_330580 pm_f_54@@9) (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@9) null (WandMaskField_43083 pm_f_54@@9)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_87808) (ExhaleHeap@@10 T@PolymorphicMapType_87808) (Mask@@12 T@PolymorphicMapType_87829) (pm_f_54@@10 T@Field_42789_43084) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@10 Mask@@12) (=> (and (HasDirectPerm_42789_43084 Mask@@12 null pm_f_54@@10) (IsWandField_42789_330223 pm_f_54@@10)) (= (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@26) null (WandMaskField_42789 pm_f_54@@10)) (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@10) null (WandMaskField_42789 pm_f_54@@10)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@10 Mask@@12) (IsWandField_42789_330223 pm_f_54@@10) (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@10) null (WandMaskField_42789 pm_f_54@@10)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_87808) (Mask@@13 T@PolymorphicMapType_87829) (t_2@@3 T@Ref) ) (!  (=> (state Heap@@27 Mask@@13) (= (|Tree__tolist'| Heap@@27 t_2@@3) (|Tree__tolist#frame| (FrameFragment_43112 (ite (not (= t_2@@3 null)) (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@27) null (Tree__state t_2@@3)) EmptyFrame)) t_2@@3)))
 :qid |stdinbpl.1691:15|
 :skolemid |87|
 :pattern ( (state Heap@@27 Mask@@13) (|Tree__tolist'| Heap@@27 t_2@@3))
 :pattern ( (state Heap@@27 Mask@@13) (|Tree__tolist#triggerStateless| t_2@@3) (|Tree__state#trigger_43111| Heap@@27 (Tree__state t_2@@3)) (|Tree__state#trigger_43111| Heap@@27 (Tree__state t_2@@3)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_3235| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.526:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_3235| x@@0) y))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_87808) (Mask@@14 T@PolymorphicMapType_87829) (s_2@@0 T@Seq_2867) ) (!  (=> (and (state Heap@@28 Mask@@14) (< AssumeFunctionsAbove 5)) (Tree__sorted_list Heap@@28 s_2@@0))
 :qid |stdinbpl.1861:15|
 :skolemid |92|
 :pattern ( (state Heap@@28 Mask@@14) (Tree__sorted_list Heap@@28 s_2@@0))
)))
(assert (forall ((s@@5 T@Seq_2867) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2867| s@@5))) (= (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2) (|Seq#Index_2867| s@@5 j@@2)))
 :qid |stdinbpl.277:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2867| s@@5 j@@2) (|Seq#Take_2867| s@@5 n@@4))
)))
(assert (forall ((diz@@11 T@Ref) (diz2 T@Ref) ) (!  (=> (= (Wand_state_contains_for_state_contains__valid_wand diz@@11) (Wand_state_contains_for_state_contains__valid_wand diz2)) (= diz@@11 diz2))
 :qid |stdinbpl.2002:15|
 :skolemid |101|
 :pattern ( (Wand_state_contains_for_state_contains__valid_wand diz@@11) (Wand_state_contains_for_state_contains__valid_wand diz2))
)))
(assert (forall ((diz@@12 T@Ref) (diz2@@0 T@Ref) ) (!  (=> (= (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@12) (|Wand_state_contains_for_state_contains__valid_wand#sm| diz2@@0)) (= diz@@12 diz2@@0))
 :qid |stdinbpl.2006:15|
 :skolemid |102|
 :pattern ( (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@12) (|Wand_state_contains_for_state_contains__valid_wand#sm| diz2@@0))
)))
(assert (forall ((diz@@13 T@Ref) (diz2@@1 T@Ref) ) (!  (=> (= (Tree__state diz@@13) (Tree__state diz2@@1)) (= diz@@13 diz2@@1))
 :qid |stdinbpl.2435:15|
 :skolemid |107|
 :pattern ( (Tree__state diz@@13) (Tree__state diz2@@1))
)))
(assert (forall ((diz@@14 T@Ref) (diz2@@2 T@Ref) ) (!  (=> (= (|Tree__state#sm| diz@@14) (|Tree__state#sm| diz2@@2)) (= diz@@14 diz2@@2))
 :qid |stdinbpl.2439:15|
 :skolemid |108|
 :pattern ( (|Tree__state#sm| diz@@14) (|Tree__state#sm| diz2@@2))
)))
(assert (forall ((s@@6 T@Seq_2867) (t T@Seq_2867) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2867| s@@6))) (< n@@5 (|Seq#Length_2867| (|Seq#Append_3128| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)) (|Seq#Length_2867| s@@6)) n@@5) (= (|Seq#Take_2867| (|Seq#Append_3128| s@@6 t) n@@5) (|Seq#Append_3128| s@@6 (|Seq#Take_2867| t (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)))))))
 :qid |stdinbpl.362:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_3128| s@@6 t) n@@5))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@29 T@PolymorphicMapType_87808) (ExhaleHeap@@11 T@PolymorphicMapType_87808) (Mask@@15 T@PolymorphicMapType_87829) (o_77 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@11 Mask@@15) (=> (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@29) o_77 $allocated) (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap@@11) o_77 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@11 Mask@@15) (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap@@11) o_77 $allocated))
)))
(assert (forall ((p T@Field_42789_43084) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_87868_87868 p v_1 p w))
 :qid |stdinbpl.180:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_87868_87868 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_97021_97022) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_43111_43111 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.180:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_43111_43111 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_94947_94948) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_43083_43083 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.180:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_43083_43083 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_87808) (Mask@@16 T@PolymorphicMapType_87829) (diz@@15 T@Ref) ) (!  (=> (and (state Heap@@30 Mask@@16) (or (< AssumeFunctionsAbove 1) (|Wand_state_contains_for_state_contains__get_out_1#trigger| (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@30) null (Wand_state_contains_for_state_contains__valid_wand diz@@15)) diz@@15))) (=> (not (= diz@@15 null)) (not (= (|Wand_state_contains_for_state_contains__get_out_1'| Heap@@30 diz@@15) null))))
 :qid |stdinbpl.1169:15|
 :skolemid |75|
 :pattern ( (state Heap@@30 Mask@@16) (|Wand_state_contains_for_state_contains__get_out_1'| Heap@@30 diz@@15))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_87808) (Mask@@17 T@PolymorphicMapType_87829) (diz@@16 T@Ref) ) (!  (=> (and (state Heap@@31 Mask@@17) (or (< AssumeFunctionsAbove 2) (|Wand_state_contains_for_state_contains__get_in_1#trigger| (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@31) null (Wand_state_contains_for_state_contains__valid_wand diz@@16)) diz@@16))) (=> (not (= diz@@16 null)) (not (= (|Wand_state_contains_for_state_contains__get_in_1'| Heap@@31 diz@@16) null))))
 :qid |stdinbpl.641:15|
 :skolemid |62|
 :pattern ( (state Heap@@31 Mask@@17) (|Wand_state_contains_for_state_contains__get_in_1'| Heap@@31 diz@@16))
)))
(assert (forall ((s0 T@Seq_2867) (s1 T@Seq_2867) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_12082|)) (not (= s1 |Seq#Empty_12082|))) (<= (|Seq#Length_2867| s0) n@@6)) (< n@@6 (|Seq#Length_2867| (|Seq#Append_3128| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2867| s0)) (|Seq#Length_2867| s0)) n@@6) (= (|Seq#Index_2867| (|Seq#Append_3128| s0 s1) n@@6) (|Seq#Index_2867| s1 (|Seq#Sub| n@@6 (|Seq#Length_2867| s0))))))
 :qid |stdinbpl.249:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3128| s0 s1) n@@6))
)))
(assert  (not (IsPredicateField_42787_2989 Wand_state_contains_for_state_contains__lemma)))
(assert  (not (IsWandField_42787_2989 Wand_state_contains_for_state_contains__lemma)))
(assert  (not (IsPredicateField_42789_42790 Wand_state_contains_for_state_contains__in_1)))
(assert  (not (IsWandField_42789_42790 Wand_state_contains_for_state_contains__in_1)))
(assert  (not (IsPredicateField_42792_94003 Wand_state_contains_for_state_contains__in_1_0)))
(assert  (not (IsWandField_42792_94026 Wand_state_contains_for_state_contains__in_1_0)))
(assert  (not (IsPredicateField_42789_42790 Wand_state_contains_for_state_contains__out_1)))
(assert  (not (IsWandField_42789_42790 Wand_state_contains_for_state_contains__out_1)))
(assert  (not (IsPredicateField_42792_94003 Wand_state_contains_for_state_contains__out_1_0)))
(assert  (not (IsWandField_42792_94026 Wand_state_contains_for_state_contains__out_1_0)))
(assert  (not (IsPredicateField_42789_42790 Wand_state_contains_for_state_contains__this_1)))
(assert  (not (IsWandField_42789_42790 Wand_state_contains_for_state_contains__this_1)))
(assert  (not (IsPredicateField_42792_94003 Wand_state_contains_for_state_contains__target_contents_1)))
(assert  (not (IsWandField_42792_94026 Wand_state_contains_for_state_contains__target_contents_1)))
(assert  (not (IsPredicateField_42792_94003 Wand_state_contains_for_state_contains__prev_contents_1)))
(assert  (not (IsWandField_42792_94026 Wand_state_contains_for_state_contains__prev_contents_1)))
(assert  (not (IsPredicateField_42789_42790 Wand_state_contains_for_state_contains__prev_1)))
(assert  (not (IsWandField_42789_42790 Wand_state_contains_for_state_contains__prev_1)))
(assert  (not (IsPredicateField_42792_94003 Wand_state_contains_for_state_contains__cur_contents_1)))
(assert  (not (IsWandField_42792_94026 Wand_state_contains_for_state_contains__cur_contents_1)))
(assert  (not (IsPredicateField_42789_42790 Wand_state_contains_for_state_contains__top_1)))
(assert  (not (IsWandField_42789_42790 Wand_state_contains_for_state_contains__top_1)))
(assert  (not (IsPredicateField_42789_42790 Wand_state_contains_for_state_contains__cur_1)))
(assert  (not (IsWandField_42789_42790 Wand_state_contains_for_state_contains__cur_1)))
(assert  (not (IsPredicateField_42789_42790 Wand_state_contains_for_state_contains__wand_1)))
(assert  (not (IsWandField_42789_42790 Wand_state_contains_for_state_contains__wand_1)))
(assert  (not (IsPredicateField_42789_42790 Wand_state_contains_for_state_contains__this_2)))
(assert  (not (IsWandField_42789_42790 Wand_state_contains_for_state_contains__this_2)))
(assert  (not (IsPredicateField_42792_94003 Wand_state_contains_for_state_contains__target_contents_2)))
(assert  (not (IsWandField_42792_94026 Wand_state_contains_for_state_contains__target_contents_2)))
(assert  (not (IsPredicateField_42789_42790 Wand_state_contains_for_state_contains__top_2)))
(assert  (not (IsWandField_42789_42790 Wand_state_contains_for_state_contains__top_2)))
(assert  (not (IsPredicateField_42787_2989 Tree__data)))
(assert  (not (IsWandField_42787_2989 Tree__data)))
(assert  (not (IsPredicateField_42789_42790 Tree__left)))
(assert  (not (IsWandField_42789_42790 Tree__left)))
(assert  (not (IsPredicateField_42789_42790 Tree__right)))
(assert  (not (IsWandField_42789_42790 Tree__right)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_87808) (ExhaleHeap@@12 T@PolymorphicMapType_87808) (Mask@@18 T@PolymorphicMapType_87829) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@12 Mask@@18) (succHeap Heap@@32 ExhaleHeap@@12))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@12 Mask@@18))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_87808) (Mask@@19 T@PolymorphicMapType_87829) (t_2@@4 T@Ref) ) (!  (=> (and (state Heap@@33 Mask@@19) (< AssumeFunctionsAbove 6)) (= (Tree__tolist Heap@@33 t_2@@4) (ite (= t_2@@4 null) |Seq#Empty_12082| (|Seq#Append_3128| (|Seq#Append_3128| (|Tree__tolist'| Heap@@33 (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@33) t_2@@4 Tree__left)) (|Seq#Singleton_3235| (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@33) t_2@@4 Tree__data))) (|Tree__tolist'| Heap@@33 (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@33) t_2@@4 Tree__right))))))
 :qid |stdinbpl.1684:15|
 :skolemid |86|
 :pattern ( (state Heap@@33 Mask@@19) (Tree__tolist Heap@@33 t_2@@4))
 :pattern ( (state Heap@@33 Mask@@19) (|Tree__tolist#triggerStateless| t_2@@4) (|Tree__state#trigger_43111| Heap@@33 (Tree__state t_2@@4)) (|Tree__state#trigger_43111| Heap@@33 (Tree__state t_2@@4)))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_87829) (o_2@@17 T@Ref) (f_4@@17 T@Field_107854_107859) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| Mask@@20) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_43111_343048 f_4@@17))) (not (IsWandField_43111_343064 f_4@@17))) (<= (select (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| Mask@@20) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| Mask@@20) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_87829) (o_2@@18 T@Ref) (f_4@@18 T@Field_43111_53) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| Mask@@21) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_43111_53 f_4@@18))) (not (IsWandField_43111_53 f_4@@18))) (<= (select (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| Mask@@21) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| Mask@@21) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_87829) (o_2@@19 T@Ref) (f_4@@19 T@Field_43111_118571) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| Mask@@22) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_43111_98051 f_4@@19))) (not (IsWandField_43111_98051 f_4@@19))) (<= (select (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| Mask@@22) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| Mask@@22) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_87829) (o_2@@20 T@Ref) (f_4@@20 T@Field_43111_42790) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| Mask@@23) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_43111_42790 f_4@@20))) (not (IsWandField_43111_42790 f_4@@20))) (<= (select (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| Mask@@23) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| Mask@@23) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_87829) (o_2@@21 T@Ref) (f_4@@21 T@Field_43111_3235) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| Mask@@24) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_43111_2989 f_4@@21))) (not (IsWandField_43111_2989 f_4@@21))) (<= (select (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| Mask@@24) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| Mask@@24) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_87829) (o_2@@22 T@Ref) (f_4@@22 T@Field_97021_97022) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| Mask@@25) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_43111_43112 f_4@@22))) (not (IsWandField_43111_330937 f_4@@22))) (<= (select (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| Mask@@25) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| Mask@@25) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_87829) (o_2@@23 T@Ref) (f_4@@23 T@Field_42789_104379) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| Mask@@26) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_42787_342049 f_4@@23))) (not (IsWandField_42787_342065 f_4@@23))) (<= (select (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| Mask@@26) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| Mask@@26) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_87829) (o_2@@24 T@Ref) (f_4@@24 T@Field_87868_53) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| Mask@@27) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_42787_53 f_4@@24))) (not (IsWandField_42787_53 f_4@@24))) (<= (select (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| Mask@@27) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| Mask@@27) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_87829) (o_2@@25 T@Ref) (f_4@@25 T@Field_93982_93984) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| Mask@@28) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_42792_94003 f_4@@25))) (not (IsWandField_42792_94026 f_4@@25))) (<= (select (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| Mask@@28) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| Mask@@28) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_87829) (o_2@@26 T@Ref) (f_4@@26 T@Field_87881_87882) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| Mask@@29) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_42789_42790 f_4@@26))) (not (IsWandField_42789_42790 f_4@@26))) (<= (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| Mask@@29) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| Mask@@29) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_87829) (o_2@@27 T@Ref) (f_4@@27 T@Field_93886_2989) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| Mask@@30) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_42787_2989 f_4@@27))) (not (IsWandField_42787_2989 f_4@@27))) (<= (select (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| Mask@@30) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| Mask@@30) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_87829) (o_2@@28 T@Ref) (f_4@@28 T@Field_42789_43084) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| Mask@@31) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_42789_324659 f_4@@28))) (not (IsWandField_42789_330223 f_4@@28))) (<= (select (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| Mask@@31) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| Mask@@31) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_87829) (o_2@@29 T@Ref) (f_4@@29 T@Field_104374_104379) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| Mask@@32) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_43083_341092 f_4@@29))) (not (IsWandField_43083_341108 f_4@@29))) (<= (select (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| Mask@@32) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| Mask@@32) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_87829) (o_2@@30 T@Ref) (f_4@@30 T@Field_43083_53) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| Mask@@33) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_43083_53 f_4@@30))) (not (IsWandField_43083_53 f_4@@30))) (<= (select (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| Mask@@33) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| Mask@@33) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_87829) (o_2@@31 T@Ref) (f_4@@31 T@Field_43083_118571) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| Mask@@34) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_43083_98051 f_4@@31))) (not (IsWandField_43083_98051 f_4@@31))) (<= (select (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| Mask@@34) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| Mask@@34) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_87829) (o_2@@32 T@Ref) (f_4@@32 T@Field_43083_42790) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| Mask@@35) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_43083_42790 f_4@@32))) (not (IsWandField_43083_42790 f_4@@32))) (<= (select (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| Mask@@35) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| Mask@@35) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_87829) (o_2@@33 T@Ref) (f_4@@33 T@Field_43083_3235) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| Mask@@36) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_43083_2989 f_4@@33))) (not (IsWandField_43083_2989 f_4@@33))) (<= (select (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| Mask@@36) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| Mask@@36) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_87829) (o_2@@34 T@Ref) (f_4@@34 T@Field_94947_94948) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| Mask@@37) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_43083_43084 f_4@@34))) (not (IsWandField_43083_330580 f_4@@34))) (<= (select (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| Mask@@37) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| Mask@@37) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_87829) (o_2@@35 T@Ref) (f_4@@35 T@Field_107854_107859) ) (! (= (HasDirectPerm_43111_324414 Mask@@38 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| Mask@@38) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43111_324414 Mask@@38 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_87829) (o_2@@36 T@Ref) (f_4@@36 T@Field_43111_53) ) (! (= (HasDirectPerm_43111_53 Mask@@39 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| Mask@@39) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43111_53 Mask@@39 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_87829) (o_2@@37 T@Ref) (f_4@@37 T@Field_97021_97022) ) (! (= (HasDirectPerm_43111_43112 Mask@@40 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| Mask@@40) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43111_43112 Mask@@40 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_87829) (o_2@@38 T@Ref) (f_4@@38 T@Field_43111_3235) ) (! (= (HasDirectPerm_43111_3235 Mask@@41 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| Mask@@41) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43111_3235 Mask@@41 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_87829) (o_2@@39 T@Ref) (f_4@@39 T@Field_43111_118571) ) (! (= (HasDirectPerm_43111_118571 Mask@@42 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| Mask@@42) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43111_118571 Mask@@42 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_87829) (o_2@@40 T@Ref) (f_4@@40 T@Field_43111_42790) ) (! (= (HasDirectPerm_43111_42790 Mask@@43 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| Mask@@43) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43111_42790 Mask@@43 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_87829) (o_2@@41 T@Ref) (f_4@@41 T@Field_104374_104379) ) (! (= (HasDirectPerm_43083_323087 Mask@@44 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| Mask@@44) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43083_323087 Mask@@44 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_87829) (o_2@@42 T@Ref) (f_4@@42 T@Field_43083_53) ) (! (= (HasDirectPerm_43083_53 Mask@@45 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| Mask@@45) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43083_53 Mask@@45 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_87829) (o_2@@43 T@Ref) (f_4@@43 T@Field_94947_94948) ) (! (= (HasDirectPerm_43083_43084 Mask@@46 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| Mask@@46) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43083_43084 Mask@@46 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_87829) (o_2@@44 T@Ref) (f_4@@44 T@Field_43083_3235) ) (! (= (HasDirectPerm_43083_3235 Mask@@47 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| Mask@@47) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43083_3235 Mask@@47 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_87829) (o_2@@45 T@Ref) (f_4@@45 T@Field_43083_118571) ) (! (= (HasDirectPerm_43083_118571 Mask@@48 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| Mask@@48) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43083_118571 Mask@@48 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_87829) (o_2@@46 T@Ref) (f_4@@46 T@Field_43083_42790) ) (! (= (HasDirectPerm_43083_42790 Mask@@49 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| Mask@@49) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43083_42790 Mask@@49 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_87829) (o_2@@47 T@Ref) (f_4@@47 T@Field_42789_104379) ) (! (= (HasDirectPerm_42789_321717 Mask@@50 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| Mask@@50) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_42789_321717 Mask@@50 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_87829) (o_2@@48 T@Ref) (f_4@@48 T@Field_87868_53) ) (! (= (HasDirectPerm_42789_53 Mask@@51 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| Mask@@51) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_42789_53 Mask@@51 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_87829) (o_2@@49 T@Ref) (f_4@@49 T@Field_42789_43084) ) (! (= (HasDirectPerm_42789_43084 Mask@@52 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| Mask@@52) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_42789_43084 Mask@@52 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_87829) (o_2@@50 T@Ref) (f_4@@50 T@Field_93886_2989) ) (! (= (HasDirectPerm_42834_3235 Mask@@53 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| Mask@@53) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_42834_3235 Mask@@53 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_87829) (o_2@@51 T@Ref) (f_4@@51 T@Field_93982_93984) ) (! (= (HasDirectPerm_42792_118571 Mask@@54 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| Mask@@54) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_42792_118571 Mask@@54 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_87829) (o_2@@52 T@Ref) (f_4@@52 T@Field_87881_87882) ) (! (= (HasDirectPerm_42789_42790 Mask@@55 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| Mask@@55) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_42789_42790 Mask@@55 o_2@@52 f_4@@52))
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
(assert (forall ((Heap@@34 T@PolymorphicMapType_87808) (ExhaleHeap@@13 T@PolymorphicMapType_87808) (Mask@@56 T@PolymorphicMapType_87829) (o_77@@0 T@Ref) (f_63@@107 T@Field_107854_107859) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@13 Mask@@56) (=> (HasDirectPerm_43111_324414 Mask@@56 o_77@@0 f_63@@107) (= (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@34) o_77@@0 f_63@@107) (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@13) o_77@@0 f_63@@107))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@13 Mask@@56) (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@13) o_77@@0 f_63@@107))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_87808) (ExhaleHeap@@14 T@PolymorphicMapType_87808) (Mask@@57 T@PolymorphicMapType_87829) (o_77@@1 T@Ref) (f_63@@108 T@Field_43111_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@14 Mask@@57) (=> (HasDirectPerm_43111_53 Mask@@57 o_77@@1 f_63@@108) (= (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@35) o_77@@1 f_63@@108) (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| ExhaleHeap@@14) o_77@@1 f_63@@108))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@14 Mask@@57) (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| ExhaleHeap@@14) o_77@@1 f_63@@108))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_87808) (ExhaleHeap@@15 T@PolymorphicMapType_87808) (Mask@@58 T@PolymorphicMapType_87829) (o_77@@2 T@Ref) (f_63@@109 T@Field_97021_97022) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@15 Mask@@58) (=> (HasDirectPerm_43111_43112 Mask@@58 o_77@@2 f_63@@109) (= (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@36) o_77@@2 f_63@@109) (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| ExhaleHeap@@15) o_77@@2 f_63@@109))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@15 Mask@@58) (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| ExhaleHeap@@15) o_77@@2 f_63@@109))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_87808) (ExhaleHeap@@16 T@PolymorphicMapType_87808) (Mask@@59 T@PolymorphicMapType_87829) (o_77@@3 T@Ref) (f_63@@110 T@Field_43111_3235) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@16 Mask@@59) (=> (HasDirectPerm_43111_3235 Mask@@59 o_77@@3 f_63@@110) (= (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@37) o_77@@3 f_63@@110) (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| ExhaleHeap@@16) o_77@@3 f_63@@110))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@16 Mask@@59) (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| ExhaleHeap@@16) o_77@@3 f_63@@110))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_87808) (ExhaleHeap@@17 T@PolymorphicMapType_87808) (Mask@@60 T@PolymorphicMapType_87829) (o_77@@4 T@Ref) (f_63@@111 T@Field_43111_118571) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@17 Mask@@60) (=> (HasDirectPerm_43111_118571 Mask@@60 o_77@@4 f_63@@111) (= (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@38) o_77@@4 f_63@@111) (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| ExhaleHeap@@17) o_77@@4 f_63@@111))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@17 Mask@@60) (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| ExhaleHeap@@17) o_77@@4 f_63@@111))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_87808) (ExhaleHeap@@18 T@PolymorphicMapType_87808) (Mask@@61 T@PolymorphicMapType_87829) (o_77@@5 T@Ref) (f_63@@112 T@Field_43111_42790) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@18 Mask@@61) (=> (HasDirectPerm_43111_42790 Mask@@61 o_77@@5 f_63@@112) (= (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@39) o_77@@5 f_63@@112) (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| ExhaleHeap@@18) o_77@@5 f_63@@112))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@18 Mask@@61) (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| ExhaleHeap@@18) o_77@@5 f_63@@112))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_87808) (ExhaleHeap@@19 T@PolymorphicMapType_87808) (Mask@@62 T@PolymorphicMapType_87829) (o_77@@6 T@Ref) (f_63@@113 T@Field_104374_104379) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@19 Mask@@62) (=> (HasDirectPerm_43083_323087 Mask@@62 o_77@@6 f_63@@113) (= (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@40) o_77@@6 f_63@@113) (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@19) o_77@@6 f_63@@113))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@19 Mask@@62) (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@19) o_77@@6 f_63@@113))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_87808) (ExhaleHeap@@20 T@PolymorphicMapType_87808) (Mask@@63 T@PolymorphicMapType_87829) (o_77@@7 T@Ref) (f_63@@114 T@Field_43083_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@20 Mask@@63) (=> (HasDirectPerm_43083_53 Mask@@63 o_77@@7 f_63@@114) (= (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@41) o_77@@7 f_63@@114) (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| ExhaleHeap@@20) o_77@@7 f_63@@114))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@20 Mask@@63) (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| ExhaleHeap@@20) o_77@@7 f_63@@114))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_87808) (ExhaleHeap@@21 T@PolymorphicMapType_87808) (Mask@@64 T@PolymorphicMapType_87829) (o_77@@8 T@Ref) (f_63@@115 T@Field_94947_94948) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@21 Mask@@64) (=> (HasDirectPerm_43083_43084 Mask@@64 o_77@@8 f_63@@115) (= (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@42) o_77@@8 f_63@@115) (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| ExhaleHeap@@21) o_77@@8 f_63@@115))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@21 Mask@@64) (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| ExhaleHeap@@21) o_77@@8 f_63@@115))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_87808) (ExhaleHeap@@22 T@PolymorphicMapType_87808) (Mask@@65 T@PolymorphicMapType_87829) (o_77@@9 T@Ref) (f_63@@116 T@Field_43083_3235) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@22 Mask@@65) (=> (HasDirectPerm_43083_3235 Mask@@65 o_77@@9 f_63@@116) (= (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@43) o_77@@9 f_63@@116) (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| ExhaleHeap@@22) o_77@@9 f_63@@116))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@22 Mask@@65) (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| ExhaleHeap@@22) o_77@@9 f_63@@116))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_87808) (ExhaleHeap@@23 T@PolymorphicMapType_87808) (Mask@@66 T@PolymorphicMapType_87829) (o_77@@10 T@Ref) (f_63@@117 T@Field_43083_118571) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@23 Mask@@66) (=> (HasDirectPerm_43083_118571 Mask@@66 o_77@@10 f_63@@117) (= (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@44) o_77@@10 f_63@@117) (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| ExhaleHeap@@23) o_77@@10 f_63@@117))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@23 Mask@@66) (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| ExhaleHeap@@23) o_77@@10 f_63@@117))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_87808) (ExhaleHeap@@24 T@PolymorphicMapType_87808) (Mask@@67 T@PolymorphicMapType_87829) (o_77@@11 T@Ref) (f_63@@118 T@Field_43083_42790) ) (!  (=> (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@24 Mask@@67) (=> (HasDirectPerm_43083_42790 Mask@@67 o_77@@11 f_63@@118) (= (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@45) o_77@@11 f_63@@118) (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| ExhaleHeap@@24) o_77@@11 f_63@@118))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@24 Mask@@67) (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| ExhaleHeap@@24) o_77@@11 f_63@@118))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_87808) (ExhaleHeap@@25 T@PolymorphicMapType_87808) (Mask@@68 T@PolymorphicMapType_87829) (o_77@@12 T@Ref) (f_63@@119 T@Field_42789_104379) ) (!  (=> (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@25 Mask@@68) (=> (HasDirectPerm_42789_321717 Mask@@68 o_77@@12 f_63@@119) (= (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@46) o_77@@12 f_63@@119) (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@25) o_77@@12 f_63@@119))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@25 Mask@@68) (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@25) o_77@@12 f_63@@119))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_87808) (ExhaleHeap@@26 T@PolymorphicMapType_87808) (Mask@@69 T@PolymorphicMapType_87829) (o_77@@13 T@Ref) (f_63@@120 T@Field_87868_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@26 Mask@@69) (=> (HasDirectPerm_42789_53 Mask@@69 o_77@@13 f_63@@120) (= (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@47) o_77@@13 f_63@@120) (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap@@26) o_77@@13 f_63@@120))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@26 Mask@@69) (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap@@26) o_77@@13 f_63@@120))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_87808) (ExhaleHeap@@27 T@PolymorphicMapType_87808) (Mask@@70 T@PolymorphicMapType_87829) (o_77@@14 T@Ref) (f_63@@121 T@Field_42789_43084) ) (!  (=> (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@27 Mask@@70) (=> (HasDirectPerm_42789_43084 Mask@@70 o_77@@14 f_63@@121) (= (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@48) o_77@@14 f_63@@121) (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| ExhaleHeap@@27) o_77@@14 f_63@@121))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@27 Mask@@70) (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| ExhaleHeap@@27) o_77@@14 f_63@@121))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_87808) (ExhaleHeap@@28 T@PolymorphicMapType_87808) (Mask@@71 T@PolymorphicMapType_87829) (o_77@@15 T@Ref) (f_63@@122 T@Field_93886_2989) ) (!  (=> (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@28 Mask@@71) (=> (HasDirectPerm_42834_3235 Mask@@71 o_77@@15 f_63@@122) (= (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@49) o_77@@15 f_63@@122) (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| ExhaleHeap@@28) o_77@@15 f_63@@122))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@28 Mask@@71) (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| ExhaleHeap@@28) o_77@@15 f_63@@122))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_87808) (ExhaleHeap@@29 T@PolymorphicMapType_87808) (Mask@@72 T@PolymorphicMapType_87829) (o_77@@16 T@Ref) (f_63@@123 T@Field_93982_93984) ) (!  (=> (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@29 Mask@@72) (=> (HasDirectPerm_42792_118571 Mask@@72 o_77@@16 f_63@@123) (= (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@50) o_77@@16 f_63@@123) (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| ExhaleHeap@@29) o_77@@16 f_63@@123))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@29 Mask@@72) (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| ExhaleHeap@@29) o_77@@16 f_63@@123))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_87808) (ExhaleHeap@@30 T@PolymorphicMapType_87808) (Mask@@73 T@PolymorphicMapType_87829) (o_77@@17 T@Ref) (f_63@@124 T@Field_87881_87882) ) (!  (=> (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@30 Mask@@73) (=> (HasDirectPerm_42789_42790 Mask@@73 o_77@@17 f_63@@124) (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@51) o_77@@17 f_63@@124) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| ExhaleHeap@@30) o_77@@17 f_63@@124))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@30 Mask@@73) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| ExhaleHeap@@30) o_77@@17 f_63@@124))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_12082|)) (not (= s1@@0 |Seq#Empty_12082|))) (= (|Seq#Length_2867| (|Seq#Append_3128| s0@@0 s1@@0)) (+ (|Seq#Length_2867| s0@@0) (|Seq#Length_2867| s1@@0))))
 :qid |stdinbpl.218:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_3128| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_107854_107859) ) (! (= (select (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_43111_53) ) (! (= (select (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_43111_118571) ) (! (= (select (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_43111_42790) ) (! (= (select (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_43111_3235) ) (! (= (select (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_97021_97022) ) (! (= (select (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_42789_104379) ) (! (= (select (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_87868_53) ) (! (= (select (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_93982_93984) ) (! (= (select (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_87881_87882) ) (! (= (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_93886_2989) ) (! (= (select (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_42789_43084) ) (! (= (select (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_104374_104379) ) (! (= (select (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_43083_53) ) (! (= (select (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_43083_118571) ) (! (= (select (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_43083_42790) ) (! (= (select (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_43083_3235) ) (! (= (select (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_94947_94948) ) (! (= (select (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((s@@7 T@Seq_2867) (t@@0 T@Seq_2867) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2867| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7)) (|Seq#Length_2867| s@@7)) n@@7) (= (|Seq#Drop_3097| (|Seq#Append_3128| s@@7 t@@0) n@@7) (|Seq#Drop_3097| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7))))))
 :qid |stdinbpl.375:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3097| (|Seq#Append_3128| s@@7 t@@0) n@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_87829) (SummandMask1 T@PolymorphicMapType_87829) (SummandMask2 T@PolymorphicMapType_87829) (o_2@@71 T@Ref) (f_4@@71 T@Field_107854_107859) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| ResultMask) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| SummandMask1) o_2@@71 f_4@@71) (select (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| SummandMask2) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| ResultMask) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| SummandMask1) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| SummandMask2) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_87829) (SummandMask1@@0 T@PolymorphicMapType_87829) (SummandMask2@@0 T@PolymorphicMapType_87829) (o_2@@72 T@Ref) (f_4@@72 T@Field_43111_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| ResultMask@@0) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| SummandMask1@@0) o_2@@72 f_4@@72) (select (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| SummandMask2@@0) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| ResultMask@@0) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| SummandMask1@@0) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| SummandMask2@@0) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_87829) (SummandMask1@@1 T@PolymorphicMapType_87829) (SummandMask2@@1 T@PolymorphicMapType_87829) (o_2@@73 T@Ref) (f_4@@73 T@Field_43111_118571) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| ResultMask@@1) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| SummandMask1@@1) o_2@@73 f_4@@73) (select (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| SummandMask2@@1) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| ResultMask@@1) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| SummandMask1@@1) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| SummandMask2@@1) o_2@@73 f_4@@73))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_87829) (SummandMask1@@2 T@PolymorphicMapType_87829) (SummandMask2@@2 T@PolymorphicMapType_87829) (o_2@@74 T@Ref) (f_4@@74 T@Field_43111_42790) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| ResultMask@@2) o_2@@74 f_4@@74) (+ (select (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| SummandMask1@@2) o_2@@74 f_4@@74) (select (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| SummandMask2@@2) o_2@@74 f_4@@74))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| ResultMask@@2) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| SummandMask1@@2) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| SummandMask2@@2) o_2@@74 f_4@@74))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_87829) (SummandMask1@@3 T@PolymorphicMapType_87829) (SummandMask2@@3 T@PolymorphicMapType_87829) (o_2@@75 T@Ref) (f_4@@75 T@Field_43111_3235) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| ResultMask@@3) o_2@@75 f_4@@75) (+ (select (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| SummandMask1@@3) o_2@@75 f_4@@75) (select (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| SummandMask2@@3) o_2@@75 f_4@@75))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| ResultMask@@3) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| SummandMask1@@3) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| SummandMask2@@3) o_2@@75 f_4@@75))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_87829) (SummandMask1@@4 T@PolymorphicMapType_87829) (SummandMask2@@4 T@PolymorphicMapType_87829) (o_2@@76 T@Ref) (f_4@@76 T@Field_97021_97022) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| ResultMask@@4) o_2@@76 f_4@@76) (+ (select (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| SummandMask1@@4) o_2@@76 f_4@@76) (select (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| SummandMask2@@4) o_2@@76 f_4@@76))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| ResultMask@@4) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| SummandMask1@@4) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| SummandMask2@@4) o_2@@76 f_4@@76))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_87829) (SummandMask1@@5 T@PolymorphicMapType_87829) (SummandMask2@@5 T@PolymorphicMapType_87829) (o_2@@77 T@Ref) (f_4@@77 T@Field_42789_104379) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| ResultMask@@5) o_2@@77 f_4@@77) (+ (select (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| SummandMask1@@5) o_2@@77 f_4@@77) (select (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| SummandMask2@@5) o_2@@77 f_4@@77))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| ResultMask@@5) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| SummandMask1@@5) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| SummandMask2@@5) o_2@@77 f_4@@77))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_87829) (SummandMask1@@6 T@PolymorphicMapType_87829) (SummandMask2@@6 T@PolymorphicMapType_87829) (o_2@@78 T@Ref) (f_4@@78 T@Field_87868_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| ResultMask@@6) o_2@@78 f_4@@78) (+ (select (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| SummandMask1@@6) o_2@@78 f_4@@78) (select (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| SummandMask2@@6) o_2@@78 f_4@@78))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| ResultMask@@6) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| SummandMask1@@6) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| SummandMask2@@6) o_2@@78 f_4@@78))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_87829) (SummandMask1@@7 T@PolymorphicMapType_87829) (SummandMask2@@7 T@PolymorphicMapType_87829) (o_2@@79 T@Ref) (f_4@@79 T@Field_93982_93984) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| ResultMask@@7) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| SummandMask1@@7) o_2@@79 f_4@@79) (select (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| SummandMask2@@7) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| ResultMask@@7) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| SummandMask1@@7) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| SummandMask2@@7) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_87829) (SummandMask1@@8 T@PolymorphicMapType_87829) (SummandMask2@@8 T@PolymorphicMapType_87829) (o_2@@80 T@Ref) (f_4@@80 T@Field_87881_87882) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| ResultMask@@8) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| SummandMask1@@8) o_2@@80 f_4@@80) (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| SummandMask2@@8) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| ResultMask@@8) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| SummandMask1@@8) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| SummandMask2@@8) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_87829) (SummandMask1@@9 T@PolymorphicMapType_87829) (SummandMask2@@9 T@PolymorphicMapType_87829) (o_2@@81 T@Ref) (f_4@@81 T@Field_93886_2989) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| ResultMask@@9) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| SummandMask1@@9) o_2@@81 f_4@@81) (select (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| SummandMask2@@9) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| ResultMask@@9) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| SummandMask1@@9) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| SummandMask2@@9) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_87829) (SummandMask1@@10 T@PolymorphicMapType_87829) (SummandMask2@@10 T@PolymorphicMapType_87829) (o_2@@82 T@Ref) (f_4@@82 T@Field_42789_43084) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| ResultMask@@10) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| SummandMask1@@10) o_2@@82 f_4@@82) (select (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| SummandMask2@@10) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| ResultMask@@10) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| SummandMask1@@10) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| SummandMask2@@10) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_87829) (SummandMask1@@11 T@PolymorphicMapType_87829) (SummandMask2@@11 T@PolymorphicMapType_87829) (o_2@@83 T@Ref) (f_4@@83 T@Field_104374_104379) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| ResultMask@@11) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| SummandMask1@@11) o_2@@83 f_4@@83) (select (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| SummandMask2@@11) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| ResultMask@@11) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| SummandMask1@@11) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| SummandMask2@@11) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_87829) (SummandMask1@@12 T@PolymorphicMapType_87829) (SummandMask2@@12 T@PolymorphicMapType_87829) (o_2@@84 T@Ref) (f_4@@84 T@Field_43083_53) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| ResultMask@@12) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| SummandMask1@@12) o_2@@84 f_4@@84) (select (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| SummandMask2@@12) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| ResultMask@@12) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| SummandMask1@@12) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| SummandMask2@@12) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_87829) (SummandMask1@@13 T@PolymorphicMapType_87829) (SummandMask2@@13 T@PolymorphicMapType_87829) (o_2@@85 T@Ref) (f_4@@85 T@Field_43083_118571) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| ResultMask@@13) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| SummandMask1@@13) o_2@@85 f_4@@85) (select (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| SummandMask2@@13) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| ResultMask@@13) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| SummandMask1@@13) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| SummandMask2@@13) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_87829) (SummandMask1@@14 T@PolymorphicMapType_87829) (SummandMask2@@14 T@PolymorphicMapType_87829) (o_2@@86 T@Ref) (f_4@@86 T@Field_43083_42790) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| ResultMask@@14) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| SummandMask1@@14) o_2@@86 f_4@@86) (select (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| SummandMask2@@14) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| ResultMask@@14) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| SummandMask1@@14) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| SummandMask2@@14) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_87829) (SummandMask1@@15 T@PolymorphicMapType_87829) (SummandMask2@@15 T@PolymorphicMapType_87829) (o_2@@87 T@Ref) (f_4@@87 T@Field_43083_3235) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| ResultMask@@15) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| SummandMask1@@15) o_2@@87 f_4@@87) (select (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| SummandMask2@@15) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| ResultMask@@15) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| SummandMask1@@15) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| SummandMask2@@15) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_87829) (SummandMask1@@16 T@PolymorphicMapType_87829) (SummandMask2@@16 T@PolymorphicMapType_87829) (o_2@@88 T@Ref) (f_4@@88 T@Field_94947_94948) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| ResultMask@@16) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| SummandMask1@@16) o_2@@88 f_4@@88) (select (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| SummandMask2@@16) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| ResultMask@@16) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| SummandMask1@@16) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| SummandMask2@@16) o_2@@88 f_4@@88))
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
(assert (forall ((Heap@@52 T@PolymorphicMapType_87808) (Mask@@74 T@PolymorphicMapType_87829) (diz@@17 T@Ref) ) (!  (=> (and (state Heap@@52 Mask@@74) (< AssumeFunctionsAbove 1)) (=> (not (= diz@@17 null)) (= (Wand_state_contains_for_state_contains__get_out_1 Heap@@52 diz@@17) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@52) diz@@17 Wand_state_contains_for_state_contains__out_1))))
 :qid |stdinbpl.1156:15|
 :skolemid |73|
 :pattern ( (state Heap@@52 Mask@@74) (Wand_state_contains_for_state_contains__get_out_1 Heap@@52 diz@@17))
 :pattern ( (state Heap@@52 Mask@@74) (|Wand_state_contains_for_state_contains__get_out_1#triggerStateless| diz@@17) (|Wand_state_contains_for_state_contains__valid_wand#trigger_43083| Heap@@52 (Wand_state_contains_for_state_contains__valid_wand diz@@17)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_87808) (Mask@@75 T@PolymorphicMapType_87829) (diz@@18 T@Ref) ) (!  (=> (and (state Heap@@53 Mask@@75) (< AssumeFunctionsAbove 2)) (=> (not (= diz@@18 null)) (= (Wand_state_contains_for_state_contains__get_in_1 Heap@@53 diz@@18) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@53) diz@@18 Wand_state_contains_for_state_contains__in_1))))
 :qid |stdinbpl.628:15|
 :skolemid |60|
 :pattern ( (state Heap@@53 Mask@@75) (Wand_state_contains_for_state_contains__get_in_1 Heap@@53 diz@@18))
 :pattern ( (state Heap@@53 Mask@@75) (|Wand_state_contains_for_state_contains__get_in_1#triggerStateless| diz@@18) (|Wand_state_contains_for_state_contains__valid_wand#trigger_43083| Heap@@53 (Wand_state_contains_for_state_contains__valid_wand diz@@18)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_87808) (Mask@@76 T@PolymorphicMapType_87829) (diz@@19 T@Ref) ) (!  (=> (and (state Heap@@54 Mask@@76) (< AssumeFunctionsAbove 3)) (=> (not (= diz@@19 null)) (= (Wand_state_contains_for_state_contains__get_out_1_0 Heap@@54 diz@@19) (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@54) diz@@19 Wand_state_contains_for_state_contains__out_1_0))))
 :qid |stdinbpl.1426:15|
 :skolemid |80|
 :pattern ( (state Heap@@54 Mask@@76) (Wand_state_contains_for_state_contains__get_out_1_0 Heap@@54 diz@@19))
 :pattern ( (state Heap@@54 Mask@@76) (|Wand_state_contains_for_state_contains__get_out_1_0#triggerStateless| diz@@19) (|Wand_state_contains_for_state_contains__valid_wand#trigger_43083| Heap@@54 (Wand_state_contains_for_state_contains__valid_wand diz@@19)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_87808) (Mask@@77 T@PolymorphicMapType_87829) (diz@@20 T@Ref) ) (!  (=> (and (state Heap@@55 Mask@@77) (< AssumeFunctionsAbove 4)) (=> (not (= diz@@20 null)) (= (Wand_state_contains_for_state_contains__get_in_1_0 Heap@@55 diz@@20) (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@55) diz@@20 Wand_state_contains_for_state_contains__in_1_0))))
 :qid |stdinbpl.898:15|
 :skolemid |67|
 :pattern ( (state Heap@@55 Mask@@77) (Wand_state_contains_for_state_contains__get_in_1_0 Heap@@55 diz@@20))
 :pattern ( (state Heap@@55 Mask@@77) (|Wand_state_contains_for_state_contains__get_in_1_0#triggerStateless| diz@@20) (|Wand_state_contains_for_state_contains__valid_wand#trigger_43083| Heap@@55 (Wand_state_contains_for_state_contains__valid_wand diz@@20)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_87808) (Mask@@78 T@PolymorphicMapType_87829) (s_2@@1 T@Seq_2867) ) (!  (=> (state Heap@@56 Mask@@78) (= (|Tree__sorted_list'| Heap@@56 s_2@@1) (|Tree__sorted_list#frame| EmptyFrame s_2@@1)))
 :qid |stdinbpl.1868:15|
 :skolemid |93|
 :pattern ( (state Heap@@56 Mask@@78) (|Tree__sorted_list'| Heap@@56 s_2@@1))
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
(assert (forall ((Heap@@57 T@PolymorphicMapType_87808) (s_2@@2 T@Seq_2867) ) (!  (and (= (Tree__sorted_list Heap@@57 s_2@@2) (|Tree__sorted_list'| Heap@@57 s_2@@2)) (dummyFunction_13305 (|Tree__sorted_list#triggerStateless| s_2@@2)))
 :qid |stdinbpl.1851:15|
 :skolemid |90|
 :pattern ( (Tree__sorted_list Heap@@57 s_2@@2))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_87808) (t_2@@5 T@Ref) ) (!  (and (= (Tree__sorted Heap@@58 t_2@@5) (|Tree__sorted'| Heap@@58 t_2@@5)) (dummyFunction_13305 (|Tree__sorted#triggerStateless| t_2@@5)))
 :qid |stdinbpl.1901:15|
 :skolemid |94|
 :pattern ( (Tree__sorted Heap@@58 t_2@@5))
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
(assert (forall ((Heap@@59 T@PolymorphicMapType_87808) (Mask@@79 T@PolymorphicMapType_87829) (diz@@21 T@Ref) ) (!  (=> (state Heap@@59 Mask@@79) (= (|Wand_state_contains_for_state_contains__get_in_1'| Heap@@59 diz@@21) (|Wand_state_contains_for_state_contains__get_in_1#frame| (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@59) null (Wand_state_contains_for_state_contains__valid_wand diz@@21)) diz@@21)))
 :qid |stdinbpl.635:15|
 :skolemid |61|
 :pattern ( (state Heap@@59 Mask@@79) (|Wand_state_contains_for_state_contains__get_in_1'| Heap@@59 diz@@21))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_87808) (Mask@@80 T@PolymorphicMapType_87829) (diz@@22 T@Ref) ) (!  (=> (state Heap@@60 Mask@@80) (= (|Wand_state_contains_for_state_contains__get_in_1_0'| Heap@@60 diz@@22) (|Wand_state_contains_for_state_contains__get_in_1_0#frame| (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@60) null (Wand_state_contains_for_state_contains__valid_wand diz@@22)) diz@@22)))
 :qid |stdinbpl.905:15|
 :skolemid |68|
 :pattern ( (state Heap@@60 Mask@@80) (|Wand_state_contains_for_state_contains__get_in_1_0'| Heap@@60 diz@@22))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_87808) (Mask@@81 T@PolymorphicMapType_87829) (diz@@23 T@Ref) ) (!  (=> (state Heap@@61 Mask@@81) (= (|Wand_state_contains_for_state_contains__get_out_1'| Heap@@61 diz@@23) (|Wand_state_contains_for_state_contains__get_out_1#frame| (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@61) null (Wand_state_contains_for_state_contains__valid_wand diz@@23)) diz@@23)))
 :qid |stdinbpl.1163:15|
 :skolemid |74|
 :pattern ( (state Heap@@61 Mask@@81) (|Wand_state_contains_for_state_contains__get_out_1'| Heap@@61 diz@@23))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_87808) (Mask@@82 T@PolymorphicMapType_87829) (diz@@24 T@Ref) ) (!  (=> (state Heap@@62 Mask@@82) (= (|Wand_state_contains_for_state_contains__get_out_1_0'| Heap@@62 diz@@24) (|Wand_state_contains_for_state_contains__get_out_1_0#frame| (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@62) null (Wand_state_contains_for_state_contains__valid_wand diz@@24)) diz@@24)))
 :qid |stdinbpl.1433:15|
 :skolemid |81|
 :pattern ( (state Heap@@62 Mask@@82) (|Wand_state_contains_for_state_contains__get_out_1_0'| Heap@@62 diz@@24))
)))
(assert (forall ((diz@@25 T@Ref) ) (! (= (getPredWandId_43083_43084 (Wand_state_contains_for_state_contains__valid_wand diz@@25)) 0)
 :qid |stdinbpl.1996:15|
 :skolemid |100|
 :pattern ( (Wand_state_contains_for_state_contains__valid_wand diz@@25))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_3235| t@@2)) 1)
 :qid |stdinbpl.215:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3235| t@@2))
)))
(assert (forall ((diz@@26 T@Ref) ) (! (= (getPredWandId_43111_43112 (Tree__state diz@@26)) 1)
 :qid |stdinbpl.2429:15|
 :skolemid |106|
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
(assert (forall ((Heap@@63 T@PolymorphicMapType_87808) (o_76 T@Ref) (f_46 T@Field_107854_107859) (v@@2 T@PolymorphicMapType_88357) ) (! (succHeap Heap@@63 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@63) (store (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@63) o_76 f_46 v@@2) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@63) (store (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@63) o_76 f_46 v@@2) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_87808) (o_76@@0 T@Ref) (f_46@@0 T@Field_43111_118571) (v@@3 T@Seq_2867) ) (! (succHeap Heap@@64 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@64) (store (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@64) o_76@@0 f_46@@0 v@@3) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@64) (store (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@64) o_76@@0 f_46@@0 v@@3) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_87808) (o_76@@1 T@Ref) (f_46@@1 T@Field_43111_3235) (v@@4 Int) ) (! (succHeap Heap@@65 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@65) (store (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@65) o_76@@1 f_46@@1 v@@4) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@65) (store (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@65) o_76@@1 f_46@@1 v@@4) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@65)))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_87808) (o_76@@2 T@Ref) (f_46@@2 T@Field_97021_97022) (v@@5 T@FrameType) ) (! (succHeap Heap@@66 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@66) (store (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@66) o_76@@2 f_46@@2 v@@5) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@66)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@66) (store (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@66) o_76@@2 f_46@@2 v@@5) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@66)))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_87808) (o_76@@3 T@Ref) (f_46@@3 T@Field_43111_42790) (v@@6 T@Ref) ) (! (succHeap Heap@@67 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@67) (store (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@67) o_76@@3 f_46@@3 v@@6) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@67)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@67) (store (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@67) o_76@@3 f_46@@3 v@@6) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@67)))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_87808) (o_76@@4 T@Ref) (f_46@@4 T@Field_43111_53) (v@@7 Bool) ) (! (succHeap Heap@@68 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@68) (store (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@68) o_76@@4 f_46@@4 v@@7)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@68) (store (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@68) o_76@@4 f_46@@4 v@@7)))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_87808) (o_76@@5 T@Ref) (f_46@@5 T@Field_104374_104379) (v@@8 T@PolymorphicMapType_88357) ) (! (succHeap Heap@@69 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@69) (store (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@69) o_76@@5 f_46@@5 v@@8) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@69)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@69) (store (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@69) o_76@@5 f_46@@5 v@@8) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@69)))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_87808) (o_76@@6 T@Ref) (f_46@@6 T@Field_43083_118571) (v@@9 T@Seq_2867) ) (! (succHeap Heap@@70 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@70) (store (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@70) o_76@@6 f_46@@6 v@@9) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@70)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@70) (store (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@70) o_76@@6 f_46@@6 v@@9) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@70)))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_87808) (o_76@@7 T@Ref) (f_46@@7 T@Field_43083_3235) (v@@10 Int) ) (! (succHeap Heap@@71 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@71) (store (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@71) o_76@@7 f_46@@7 v@@10) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@71)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@71) (store (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@71) o_76@@7 f_46@@7 v@@10) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@71)))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_87808) (o_76@@8 T@Ref) (f_46@@8 T@Field_94947_94948) (v@@11 T@FrameType) ) (! (succHeap Heap@@72 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@72) (store (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@72) o_76@@8 f_46@@8 v@@11) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@72)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@72) (store (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@72) o_76@@8 f_46@@8 v@@11) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@72)))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_87808) (o_76@@9 T@Ref) (f_46@@9 T@Field_43083_42790) (v@@12 T@Ref) ) (! (succHeap Heap@@73 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@73) (store (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@73) o_76@@9 f_46@@9 v@@12) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@73)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@73) (store (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@73) o_76@@9 f_46@@9 v@@12) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@73)))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_87808) (o_76@@10 T@Ref) (f_46@@10 T@Field_43083_53) (v@@13 Bool) ) (! (succHeap Heap@@74 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@74) (store (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@74) o_76@@10 f_46@@10 v@@13) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@74)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@74) (store (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@74) o_76@@10 f_46@@10 v@@13) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@74)))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_87808) (o_76@@11 T@Ref) (f_46@@11 T@Field_42789_104379) (v@@14 T@PolymorphicMapType_88357) ) (! (succHeap Heap@@75 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@75) (store (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@75) o_76@@11 f_46@@11 v@@14) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@75)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@75) (store (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@75) o_76@@11 f_46@@11 v@@14) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@75)))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_87808) (o_76@@12 T@Ref) (f_46@@12 T@Field_93982_93984) (v@@15 T@Seq_2867) ) (! (succHeap Heap@@76 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@76) (store (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@76) o_76@@12 f_46@@12 v@@15) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@76)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@76) (store (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@76) o_76@@12 f_46@@12 v@@15) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@76)))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_87808) (o_76@@13 T@Ref) (f_46@@13 T@Field_93886_2989) (v@@16 Int) ) (! (succHeap Heap@@77 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@77) (store (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@77) o_76@@13 f_46@@13 v@@16) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@77)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@77) (store (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@77) o_76@@13 f_46@@13 v@@16) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@77)))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_87808) (o_76@@14 T@Ref) (f_46@@14 T@Field_42789_43084) (v@@17 T@FrameType) ) (! (succHeap Heap@@78 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@78) (store (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@78) o_76@@14 f_46@@14 v@@17) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@78)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@78) (store (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@78) o_76@@14 f_46@@14 v@@17) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@78)))
)))
(assert (forall ((Heap@@79 T@PolymorphicMapType_87808) (o_76@@15 T@Ref) (f_46@@15 T@Field_87881_87882) (v@@18 T@Ref) ) (! (succHeap Heap@@79 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@79) (store (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@79) o_76@@15 f_46@@15 v@@18) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@79)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@79) (store (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@79) o_76@@15 f_46@@15 v@@18) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@79)))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_87808) (o_76@@16 T@Ref) (f_46@@16 T@Field_87868_53) (v@@19 Bool) ) (! (succHeap Heap@@80 (PolymorphicMapType_87808 (store (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@80) o_76@@16 f_46@@16 v@@19) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@80)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (store (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@80) o_76@@16 f_46@@16 v@@19) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@80)))
)))
(assert (forall ((diz@@27 T@Ref) ) (! (= (PredicateMaskField_43083 (Wand_state_contains_for_state_contains__valid_wand diz@@27)) (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@27))
 :qid |stdinbpl.1988:15|
 :skolemid |98|
 :pattern ( (PredicateMaskField_43083 (Wand_state_contains_for_state_contains__valid_wand diz@@27)))
)))
(assert (forall ((diz@@28 T@Ref) ) (! (= (PredicateMaskField_43111 (Tree__state diz@@28)) (|Tree__state#sm| diz@@28))
 :qid |stdinbpl.2421:15|
 :skolemid |104|
 :pattern ( (PredicateMaskField_43111 (Tree__state diz@@28)))
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
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_12082|)) (not (= s1@@4 |Seq#Empty_12082|))) (<= 0 m)) (< m (|Seq#Length_2867| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2867| s0@@4)) (|Seq#Length_2867| s0@@4)) m) (= (|Seq#Index_2867| (|Seq#Append_3128| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2867| s0@@4))) (|Seq#Index_2867| s1@@4 m))))
 :qid |stdinbpl.252:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@4 m) (|Seq#Append_3128| s0@@4 s1@@4))
)))
(assert (forall ((o_76@@17 T@Ref) (f_53 T@Field_87881_87882) (Heap@@81 T@PolymorphicMapType_87808) ) (!  (=> (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@81) o_76@@17 $allocated) (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@81) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@81) o_76@@17 f_53) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@81) o_76@@17 f_53))
)))
(assert (forall ((s@@14 T@Seq_2867) (x@@1 Int) (i@@5 Int) ) (!  (=> (and (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2867| s@@14))) (= (|Seq#Index_2867| s@@14 i@@5) x@@1)) (|Seq#Contains_2867| s@@14 x@@1))
 :qid |stdinbpl.404:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@14 x@@1) (|Seq#Index_2867| s@@14 i@@5))
)))
(assert (forall ((s0@@5 T@Seq_2867) (s1@@5 T@Seq_2867) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_3097| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3097| s0@@5 s1@@5))) (not (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3097| s0@@5 s1@@5))) (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))) (= (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#SkolemDiff_2867| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#Length_2867| s0@@5))) (not (= (|Seq#Index_2867| s0@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5)) (|Seq#Index_2867| s1@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))))))
 :qid |stdinbpl.508:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3097| s0@@5 s1@@5))
)))
(assert (forall ((p@@3 T@Field_42789_43084) (v_1@@2 T@FrameType) (q T@Field_42789_43084) (w@@2 T@FrameType) (r T@Field_42789_43084) (u T@FrameType) ) (!  (=> (and (InsidePredicate_87868_87868 p@@3 v_1@@2 q w@@2) (InsidePredicate_87868_87868 q w@@2 r u)) (InsidePredicate_87868_87868 p@@3 v_1@@2 r u))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_87868_87868 p@@3 v_1@@2 q w@@2) (InsidePredicate_87868_87868 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_42789_43084) (v_1@@3 T@FrameType) (q@@0 T@Field_42789_43084) (w@@3 T@FrameType) (r@@0 T@Field_94947_94948) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_87868_87868 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_87868_43083 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_87868_43083 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_87868_87868 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_87868_43083 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_42789_43084) (v_1@@4 T@FrameType) (q@@1 T@Field_42789_43084) (w@@4 T@FrameType) (r@@1 T@Field_97021_97022) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_87868_87868 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_87868_43111 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_87868_43111 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_87868_87868 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_87868_43111 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_42789_43084) (v_1@@5 T@FrameType) (q@@2 T@Field_94947_94948) (w@@5 T@FrameType) (r@@2 T@Field_42789_43084) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_87868_43083 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_43083_87868 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_87868_87868 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_87868_43083 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_43083_87868 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_42789_43084) (v_1@@6 T@FrameType) (q@@3 T@Field_94947_94948) (w@@6 T@FrameType) (r@@3 T@Field_94947_94948) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_87868_43083 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_43083_43083 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_87868_43083 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_87868_43083 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_43083_43083 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_42789_43084) (v_1@@7 T@FrameType) (q@@4 T@Field_94947_94948) (w@@7 T@FrameType) (r@@4 T@Field_97021_97022) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_87868_43083 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_43083_43111 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_87868_43111 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_87868_43083 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_43083_43111 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_42789_43084) (v_1@@8 T@FrameType) (q@@5 T@Field_97021_97022) (w@@8 T@FrameType) (r@@5 T@Field_42789_43084) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_87868_43111 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_43111_87868 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_87868_87868 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_87868_43111 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_43111_87868 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_42789_43084) (v_1@@9 T@FrameType) (q@@6 T@Field_97021_97022) (w@@9 T@FrameType) (r@@6 T@Field_94947_94948) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_87868_43111 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_43111_43083 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_87868_43083 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_87868_43111 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_43111_43083 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_42789_43084) (v_1@@10 T@FrameType) (q@@7 T@Field_97021_97022) (w@@10 T@FrameType) (r@@7 T@Field_97021_97022) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_87868_43111 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_43111_43111 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_87868_43111 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_87868_43111 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_43111_43111 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_97021_97022) (v_1@@11 T@FrameType) (q@@8 T@Field_42789_43084) (w@@11 T@FrameType) (r@@8 T@Field_42789_43084) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_43111_87868 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_87868_87868 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_43111_87868 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43111_87868 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_87868_87868 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_97021_97022) (v_1@@12 T@FrameType) (q@@9 T@Field_42789_43084) (w@@12 T@FrameType) (r@@9 T@Field_94947_94948) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_43111_87868 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_87868_43083 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_43111_43083 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43111_87868 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_87868_43083 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_97021_97022) (v_1@@13 T@FrameType) (q@@10 T@Field_42789_43084) (w@@13 T@FrameType) (r@@10 T@Field_97021_97022) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_43111_87868 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_87868_43111 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_43111_43111 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43111_87868 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_87868_43111 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_97021_97022) (v_1@@14 T@FrameType) (q@@11 T@Field_94947_94948) (w@@14 T@FrameType) (r@@11 T@Field_42789_43084) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_43111_43083 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_43083_87868 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_43111_87868 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43111_43083 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_43083_87868 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_97021_97022) (v_1@@15 T@FrameType) (q@@12 T@Field_94947_94948) (w@@15 T@FrameType) (r@@12 T@Field_94947_94948) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_43111_43083 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_43083_43083 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_43111_43083 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43111_43083 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_43083_43083 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_97021_97022) (v_1@@16 T@FrameType) (q@@13 T@Field_94947_94948) (w@@16 T@FrameType) (r@@13 T@Field_97021_97022) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_43111_43083 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_43083_43111 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_43111_43111 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43111_43083 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_43083_43111 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_97021_97022) (v_1@@17 T@FrameType) (q@@14 T@Field_97021_97022) (w@@17 T@FrameType) (r@@14 T@Field_42789_43084) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_43111_43111 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_43111_87868 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_43111_87868 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43111_43111 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_43111_87868 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_97021_97022) (v_1@@18 T@FrameType) (q@@15 T@Field_97021_97022) (w@@18 T@FrameType) (r@@15 T@Field_94947_94948) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_43111_43111 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_43111_43083 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_43111_43083 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43111_43111 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_43111_43083 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_97021_97022) (v_1@@19 T@FrameType) (q@@16 T@Field_97021_97022) (w@@19 T@FrameType) (r@@16 T@Field_97021_97022) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_43111_43111 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_43111_43111 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_43111_43111 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43111_43111 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_43111_43111 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_94947_94948) (v_1@@20 T@FrameType) (q@@17 T@Field_42789_43084) (w@@20 T@FrameType) (r@@17 T@Field_42789_43084) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_43083_87868 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_87868_87868 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_43083_87868 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43083_87868 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_87868_87868 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_94947_94948) (v_1@@21 T@FrameType) (q@@18 T@Field_42789_43084) (w@@21 T@FrameType) (r@@18 T@Field_94947_94948) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_43083_87868 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_87868_43083 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_43083_43083 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43083_87868 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_87868_43083 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_94947_94948) (v_1@@22 T@FrameType) (q@@19 T@Field_42789_43084) (w@@22 T@FrameType) (r@@19 T@Field_97021_97022) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_43083_87868 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_87868_43111 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_43083_43111 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43083_87868 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_87868_43111 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_94947_94948) (v_1@@23 T@FrameType) (q@@20 T@Field_94947_94948) (w@@23 T@FrameType) (r@@20 T@Field_42789_43084) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_43083_43083 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_43083_87868 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_43083_87868 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43083_43083 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_43083_87868 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_94947_94948) (v_1@@24 T@FrameType) (q@@21 T@Field_94947_94948) (w@@24 T@FrameType) (r@@21 T@Field_94947_94948) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_43083_43083 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_43083_43083 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_43083_43083 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43083_43083 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_43083_43083 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_94947_94948) (v_1@@25 T@FrameType) (q@@22 T@Field_94947_94948) (w@@25 T@FrameType) (r@@22 T@Field_97021_97022) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_43083_43083 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_43083_43111 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_43083_43111 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43083_43083 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_43083_43111 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_94947_94948) (v_1@@26 T@FrameType) (q@@23 T@Field_97021_97022) (w@@26 T@FrameType) (r@@23 T@Field_42789_43084) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_43083_43111 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_43111_87868 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_43083_87868 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43083_43111 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_43111_87868 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_94947_94948) (v_1@@27 T@FrameType) (q@@24 T@Field_97021_97022) (w@@27 T@FrameType) (r@@24 T@Field_94947_94948) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_43083_43111 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_43111_43083 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_43083_43083 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43083_43111 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_43111_43083 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_94947_94948) (v_1@@28 T@FrameType) (q@@25 T@Field_97021_97022) (w@@28 T@FrameType) (r@@25 T@Field_97021_97022) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_43083_43111 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_43111_43111 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_43083_43111 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43083_43111 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_43111_43111 q@@25 w@@28 r@@25 u@@25))
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
(assert (forall ((Heap@@82 T@PolymorphicMapType_87808) (Mask@@83 T@PolymorphicMapType_87829) (t_2@@6 T@Ref) ) (!  (=> (and (state Heap@@82 Mask@@83) (< AssumeFunctionsAbove 0)) (= (Tree__sorted Heap@@82 t_2@@6) (Tree__sorted_list Heap@@82 (Tree__tolist Heap@@82 t_2@@6))))
 :qid |stdinbpl.1911:15|
 :skolemid |96|
 :pattern ( (state Heap@@82 Mask@@83) (Tree__sorted Heap@@82 t_2@@6))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun newPMask@1 () T@PolymorphicMapType_88357)
(declare-fun Heap@17 () T@PolymorphicMapType_87808)
(declare-fun diz@@29 () T@Ref)
(declare-fun Heap@18 () T@PolymorphicMapType_87808)
(declare-fun Heap@19 () T@PolymorphicMapType_87808)
(declare-fun Heap@15 () T@PolymorphicMapType_87808)
(declare-fun newPMask@0 () T@PolymorphicMapType_88357)
(declare-fun Heap@16 () T@PolymorphicMapType_87808)
(declare-fun Heap@12 () T@PolymorphicMapType_87808)
(declare-fun Heap@13 () T@PolymorphicMapType_87808)
(declare-fun Heap@14 () T@PolymorphicMapType_87808)
(declare-fun Heap@@83 () T@PolymorphicMapType_87808)
(declare-fun UnfoldingMask@22 () T@PolymorphicMapType_87829)
(declare-fun Heap@0 () T@PolymorphicMapType_87808)
(declare-fun Heap@1 () T@PolymorphicMapType_87808)
(declare-fun Heap@2 () T@PolymorphicMapType_87808)
(declare-fun Heap@3 () T@PolymorphicMapType_87808)
(declare-fun Heap@4 () T@PolymorphicMapType_87808)
(declare-fun Heap@5 () T@PolymorphicMapType_87808)
(declare-fun Heap@6 () T@PolymorphicMapType_87808)
(declare-fun Heap@7 () T@PolymorphicMapType_87808)
(declare-fun Heap@8 () T@PolymorphicMapType_87808)
(declare-fun Heap@9 () T@PolymorphicMapType_87808)
(declare-fun Heap@10 () T@PolymorphicMapType_87808)
(declare-fun Heap@11 () T@PolymorphicMapType_87808)
(declare-fun wildcard@13 () Real)
(declare-fun UnfoldingMask@20 () T@PolymorphicMapType_87829)
(declare-fun UnfoldingMask@19 () T@PolymorphicMapType_87829)
(declare-fun wildcard@14 () Real)
(declare-fun UnfoldingMask@21 () T@PolymorphicMapType_87829)
(declare-fun wildcard@15 () Real)
(declare-fun UnfoldingMask@17 () T@PolymorphicMapType_87829)
(declare-fun UnfoldingMask@18 () T@PolymorphicMapType_87829)
(declare-fun UnfoldingMask@15 () T@PolymorphicMapType_87829)
(declare-fun UnfoldingMask@16 () T@PolymorphicMapType_87829)
(declare-fun UnfoldingMask@13 () T@PolymorphicMapType_87829)
(declare-fun UnfoldingMask@12 () T@PolymorphicMapType_87829)
(declare-fun UnfoldingMask@14 () T@PolymorphicMapType_87829)
(declare-fun Mask@0 () T@PolymorphicMapType_87829)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_2989 (Int) T@FrameType)
(declare-fun FrameFragment_42790 (T@Ref) T@FrameType)
(declare-fun FrameFragment_96123 (T@Seq_2867) T@FrameType)
(declare-fun wildcard@0 () Real)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_87829)
(declare-fun wildcard@1 () Real)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_87829)
(declare-fun wildcard@2 () Real)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_87829)
(declare-fun wildcard@3 () Real)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_87829)
(declare-fun wildcard@4 () Real)
(declare-fun UnfoldingMask@4 () T@PolymorphicMapType_87829)
(declare-fun wildcard@5 () Real)
(declare-fun UnfoldingMask@5 () T@PolymorphicMapType_87829)
(declare-fun wildcard@6 () Real)
(declare-fun UnfoldingMask@6 () T@PolymorphicMapType_87829)
(declare-fun wildcard@7 () Real)
(declare-fun UnfoldingMask@7 () T@PolymorphicMapType_87829)
(declare-fun wildcard@8 () Real)
(declare-fun UnfoldingMask@8 () T@PolymorphicMapType_87829)
(declare-fun wildcard@9 () Real)
(declare-fun UnfoldingMask@9 () T@PolymorphicMapType_87829)
(declare-fun wildcard@10 () Real)
(declare-fun UnfoldingMask@10 () T@PolymorphicMapType_87829)
(declare-fun wildcard@11 () Real)
(declare-fun UnfoldingMask@11 () T@PolymorphicMapType_87829)
(declare-fun wildcard@12 () Real)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id |Wand_state_contains_for_state_contains__get_in_1_0#definedness|)
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
 (=> (= (ControlFlow 0 0) 19) (let ((anon10_correct true))
(let ((anon9_correct  (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_53 T@Ref) (f_56 T@Field_93886_2989) ) (!  (=> (or (select (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_53 f_56) (select (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@17) diz@@29 Wand_state_contains_for_state_contains__wand_1)))) o_53 f_56)) (select (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| newPMask@1) o_53 f_56))
 :qid |stdinbpl.1124:33|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| newPMask@1) o_53 f_56))
)) (forall ((o_53@@0 T@Ref) (f_56@@0 T@Field_87881_87882) ) (!  (=> (or (select (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_53@@0 f_56@@0) (select (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@17) diz@@29 Wand_state_contains_for_state_contains__wand_1)))) o_53@@0 f_56@@0)) (select (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| newPMask@1) o_53@@0 f_56@@0))
 :qid |stdinbpl.1124:33|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| newPMask@1) o_53@@0 f_56@@0))
))) (forall ((o_53@@1 T@Ref) (f_56@@1 T@Field_93982_93984) ) (!  (=> (or (select (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_53@@1 f_56@@1) (select (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@17) diz@@29 Wand_state_contains_for_state_contains__wand_1)))) o_53@@1 f_56@@1)) (select (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| newPMask@1) o_53@@1 f_56@@1))
 :qid |stdinbpl.1124:33|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| newPMask@1) o_53@@1 f_56@@1))
))) (forall ((o_53@@2 T@Ref) (f_56@@2 T@Field_87868_53) ) (!  (=> (or (select (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_53@@2 f_56@@2) (select (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@17) diz@@29 Wand_state_contains_for_state_contains__wand_1)))) o_53@@2 f_56@@2)) (select (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| newPMask@1) o_53@@2 f_56@@2))
 :qid |stdinbpl.1124:33|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| newPMask@1) o_53@@2 f_56@@2))
))) (forall ((o_53@@3 T@Ref) (f_56@@3 T@Field_42789_43084) ) (!  (=> (or (select (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_53@@3 f_56@@3) (select (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@17) diz@@29 Wand_state_contains_for_state_contains__wand_1)))) o_53@@3 f_56@@3)) (select (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| newPMask@1) o_53@@3 f_56@@3))
 :qid |stdinbpl.1124:33|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| newPMask@1) o_53@@3 f_56@@3))
))) (forall ((o_53@@4 T@Ref) (f_56@@4 T@Field_42789_104379) ) (!  (=> (or (select (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_53@@4 f_56@@4) (select (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@17) diz@@29 Wand_state_contains_for_state_contains__wand_1)))) o_53@@4 f_56@@4)) (select (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| newPMask@1) o_53@@4 f_56@@4))
 :qid |stdinbpl.1124:33|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| newPMask@1) o_53@@4 f_56@@4))
))) (forall ((o_53@@5 T@Ref) (f_56@@5 T@Field_43083_3235) ) (!  (=> (or (select (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_53@@5 f_56@@5) (select (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@17) diz@@29 Wand_state_contains_for_state_contains__wand_1)))) o_53@@5 f_56@@5)) (select (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| newPMask@1) o_53@@5 f_56@@5))
 :qid |stdinbpl.1124:33|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| newPMask@1) o_53@@5 f_56@@5))
))) (forall ((o_53@@6 T@Ref) (f_56@@6 T@Field_43083_42790) ) (!  (=> (or (select (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_53@@6 f_56@@6) (select (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@17) diz@@29 Wand_state_contains_for_state_contains__wand_1)))) o_53@@6 f_56@@6)) (select (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| newPMask@1) o_53@@6 f_56@@6))
 :qid |stdinbpl.1124:33|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| newPMask@1) o_53@@6 f_56@@6))
))) (forall ((o_53@@7 T@Ref) (f_56@@7 T@Field_43083_118571) ) (!  (=> (or (select (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_53@@7 f_56@@7) (select (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@17) diz@@29 Wand_state_contains_for_state_contains__wand_1)))) o_53@@7 f_56@@7)) (select (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| newPMask@1) o_53@@7 f_56@@7))
 :qid |stdinbpl.1124:33|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| newPMask@1) o_53@@7 f_56@@7))
))) (forall ((o_53@@8 T@Ref) (f_56@@8 T@Field_43083_53) ) (!  (=> (or (select (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_53@@8 f_56@@8) (select (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@17) diz@@29 Wand_state_contains_for_state_contains__wand_1)))) o_53@@8 f_56@@8)) (select (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| newPMask@1) o_53@@8 f_56@@8))
 :qid |stdinbpl.1124:33|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| newPMask@1) o_53@@8 f_56@@8))
))) (forall ((o_53@@9 T@Ref) (f_56@@9 T@Field_94947_94948) ) (!  (=> (or (select (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_53@@9 f_56@@9) (select (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@17) diz@@29 Wand_state_contains_for_state_contains__wand_1)))) o_53@@9 f_56@@9)) (select (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| newPMask@1) o_53@@9 f_56@@9))
 :qid |stdinbpl.1124:33|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| newPMask@1) o_53@@9 f_56@@9))
))) (forall ((o_53@@10 T@Ref) (f_56@@10 T@Field_104374_104379) ) (!  (=> (or (select (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_53@@10 f_56@@10) (select (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@17) diz@@29 Wand_state_contains_for_state_contains__wand_1)))) o_53@@10 f_56@@10)) (select (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| newPMask@1) o_53@@10 f_56@@10))
 :qid |stdinbpl.1124:33|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| newPMask@1) o_53@@10 f_56@@10))
))) (forall ((o_53@@11 T@Ref) (f_56@@11 T@Field_43111_3235) ) (!  (=> (or (select (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_53@@11 f_56@@11) (select (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@17) diz@@29 Wand_state_contains_for_state_contains__wand_1)))) o_53@@11 f_56@@11)) (select (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| newPMask@1) o_53@@11 f_56@@11))
 :qid |stdinbpl.1124:33|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| newPMask@1) o_53@@11 f_56@@11))
))) (forall ((o_53@@12 T@Ref) (f_56@@12 T@Field_43111_42790) ) (!  (=> (or (select (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_53@@12 f_56@@12) (select (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@17) diz@@29 Wand_state_contains_for_state_contains__wand_1)))) o_53@@12 f_56@@12)) (select (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| newPMask@1) o_53@@12 f_56@@12))
 :qid |stdinbpl.1124:33|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| newPMask@1) o_53@@12 f_56@@12))
))) (forall ((o_53@@13 T@Ref) (f_56@@13 T@Field_43111_118571) ) (!  (=> (or (select (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_53@@13 f_56@@13) (select (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@17) diz@@29 Wand_state_contains_for_state_contains__wand_1)))) o_53@@13 f_56@@13)) (select (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| newPMask@1) o_53@@13 f_56@@13))
 :qid |stdinbpl.1124:33|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| newPMask@1) o_53@@13 f_56@@13))
))) (forall ((o_53@@14 T@Ref) (f_56@@14 T@Field_43111_53) ) (!  (=> (or (select (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_53@@14 f_56@@14) (select (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@17) diz@@29 Wand_state_contains_for_state_contains__wand_1)))) o_53@@14 f_56@@14)) (select (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| newPMask@1) o_53@@14 f_56@@14))
 :qid |stdinbpl.1124:33|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| newPMask@1) o_53@@14 f_56@@14))
))) (forall ((o_53@@15 T@Ref) (f_56@@15 T@Field_97021_97022) ) (!  (=> (or (select (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_53@@15 f_56@@15) (select (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@17) diz@@29 Wand_state_contains_for_state_contains__wand_1)))) o_53@@15 f_56@@15)) (select (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| newPMask@1) o_53@@15 f_56@@15))
 :qid |stdinbpl.1124:33|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| newPMask@1) o_53@@15 f_56@@15))
))) (forall ((o_53@@16 T@Ref) (f_56@@16 T@Field_107854_107859) ) (!  (=> (or (select (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_53@@16 f_56@@16) (select (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@17) diz@@29 Wand_state_contains_for_state_contains__wand_1)))) o_53@@16 f_56@@16)) (select (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| newPMask@1) o_53@@16 f_56@@16))
 :qid |stdinbpl.1124:33|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| newPMask@1) o_53@@16 f_56@@16))
))) (= Heap@18 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@17) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@17) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@17) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@17) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@17) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@17) (store (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@17) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29) newPMask@1) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@17) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@17) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@17) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@17) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@17) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@17) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@17) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@17) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@17) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@17) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@17)))) (and (= Heap@19 Heap@18) (= (ControlFlow 0 3) 1))) anon10_correct)))
(let ((anon15_Else_correct  (=> (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right) null) (=> (and (= Heap@17 Heap@15) (= (ControlFlow 0 5) 3)) anon9_correct))))
(let ((anon15_Then_correct  (=> (not (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_52 T@Ref) (f_55 T@Field_93886_2989) ) (!  (=> (or (select (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@15) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_52 f_55) (select (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@15) null (|Tree__state#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right)))) o_52 f_55)) (select (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| newPMask@0) o_52 f_55))
 :qid |stdinbpl.1117:35|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| newPMask@0) o_52 f_55))
)) (forall ((o_52@@0 T@Ref) (f_55@@0 T@Field_87881_87882) ) (!  (=> (or (select (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@15) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_52@@0 f_55@@0) (select (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@15) null (|Tree__state#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right)))) o_52@@0 f_55@@0)) (select (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| newPMask@0) o_52@@0 f_55@@0))
 :qid |stdinbpl.1117:35|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| newPMask@0) o_52@@0 f_55@@0))
))) (forall ((o_52@@1 T@Ref) (f_55@@1 T@Field_93982_93984) ) (!  (=> (or (select (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@15) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_52@@1 f_55@@1) (select (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@15) null (|Tree__state#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right)))) o_52@@1 f_55@@1)) (select (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| newPMask@0) o_52@@1 f_55@@1))
 :qid |stdinbpl.1117:35|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| newPMask@0) o_52@@1 f_55@@1))
))) (forall ((o_52@@2 T@Ref) (f_55@@2 T@Field_87868_53) ) (!  (=> (or (select (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@15) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_52@@2 f_55@@2) (select (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@15) null (|Tree__state#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right)))) o_52@@2 f_55@@2)) (select (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| newPMask@0) o_52@@2 f_55@@2))
 :qid |stdinbpl.1117:35|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| newPMask@0) o_52@@2 f_55@@2))
))) (forall ((o_52@@3 T@Ref) (f_55@@3 T@Field_42789_43084) ) (!  (=> (or (select (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@15) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_52@@3 f_55@@3) (select (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@15) null (|Tree__state#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right)))) o_52@@3 f_55@@3)) (select (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| newPMask@0) o_52@@3 f_55@@3))
 :qid |stdinbpl.1117:35|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| newPMask@0) o_52@@3 f_55@@3))
))) (forall ((o_52@@4 T@Ref) (f_55@@4 T@Field_42789_104379) ) (!  (=> (or (select (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@15) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_52@@4 f_55@@4) (select (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@15) null (|Tree__state#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right)))) o_52@@4 f_55@@4)) (select (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| newPMask@0) o_52@@4 f_55@@4))
 :qid |stdinbpl.1117:35|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| newPMask@0) o_52@@4 f_55@@4))
))) (forall ((o_52@@5 T@Ref) (f_55@@5 T@Field_43083_3235) ) (!  (=> (or (select (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@15) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_52@@5 f_55@@5) (select (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@15) null (|Tree__state#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right)))) o_52@@5 f_55@@5)) (select (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| newPMask@0) o_52@@5 f_55@@5))
 :qid |stdinbpl.1117:35|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| newPMask@0) o_52@@5 f_55@@5))
))) (forall ((o_52@@6 T@Ref) (f_55@@6 T@Field_43083_42790) ) (!  (=> (or (select (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@15) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_52@@6 f_55@@6) (select (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@15) null (|Tree__state#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right)))) o_52@@6 f_55@@6)) (select (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| newPMask@0) o_52@@6 f_55@@6))
 :qid |stdinbpl.1117:35|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| newPMask@0) o_52@@6 f_55@@6))
))) (forall ((o_52@@7 T@Ref) (f_55@@7 T@Field_43083_118571) ) (!  (=> (or (select (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@15) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_52@@7 f_55@@7) (select (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@15) null (|Tree__state#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right)))) o_52@@7 f_55@@7)) (select (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| newPMask@0) o_52@@7 f_55@@7))
 :qid |stdinbpl.1117:35|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| newPMask@0) o_52@@7 f_55@@7))
))) (forall ((o_52@@8 T@Ref) (f_55@@8 T@Field_43083_53) ) (!  (=> (or (select (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@15) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_52@@8 f_55@@8) (select (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@15) null (|Tree__state#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right)))) o_52@@8 f_55@@8)) (select (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| newPMask@0) o_52@@8 f_55@@8))
 :qid |stdinbpl.1117:35|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| newPMask@0) o_52@@8 f_55@@8))
))) (forall ((o_52@@9 T@Ref) (f_55@@9 T@Field_94947_94948) ) (!  (=> (or (select (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@15) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_52@@9 f_55@@9) (select (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@15) null (|Tree__state#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right)))) o_52@@9 f_55@@9)) (select (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| newPMask@0) o_52@@9 f_55@@9))
 :qid |stdinbpl.1117:35|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| newPMask@0) o_52@@9 f_55@@9))
))) (forall ((o_52@@10 T@Ref) (f_55@@10 T@Field_104374_104379) ) (!  (=> (or (select (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@15) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_52@@10 f_55@@10) (select (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@15) null (|Tree__state#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right)))) o_52@@10 f_55@@10)) (select (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| newPMask@0) o_52@@10 f_55@@10))
 :qid |stdinbpl.1117:35|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| newPMask@0) o_52@@10 f_55@@10))
))) (forall ((o_52@@11 T@Ref) (f_55@@11 T@Field_43111_3235) ) (!  (=> (or (select (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@15) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_52@@11 f_55@@11) (select (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@15) null (|Tree__state#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right)))) o_52@@11 f_55@@11)) (select (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| newPMask@0) o_52@@11 f_55@@11))
 :qid |stdinbpl.1117:35|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| newPMask@0) o_52@@11 f_55@@11))
))) (forall ((o_52@@12 T@Ref) (f_55@@12 T@Field_43111_42790) ) (!  (=> (or (select (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@15) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_52@@12 f_55@@12) (select (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@15) null (|Tree__state#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right)))) o_52@@12 f_55@@12)) (select (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| newPMask@0) o_52@@12 f_55@@12))
 :qid |stdinbpl.1117:35|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| newPMask@0) o_52@@12 f_55@@12))
))) (forall ((o_52@@13 T@Ref) (f_55@@13 T@Field_43111_118571) ) (!  (=> (or (select (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@15) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_52@@13 f_55@@13) (select (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@15) null (|Tree__state#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right)))) o_52@@13 f_55@@13)) (select (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| newPMask@0) o_52@@13 f_55@@13))
 :qid |stdinbpl.1117:35|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| newPMask@0) o_52@@13 f_55@@13))
))) (forall ((o_52@@14 T@Ref) (f_55@@14 T@Field_43111_53) ) (!  (=> (or (select (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@15) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_52@@14 f_55@@14) (select (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@15) null (|Tree__state#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right)))) o_52@@14 f_55@@14)) (select (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| newPMask@0) o_52@@14 f_55@@14))
 :qid |stdinbpl.1117:35|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| newPMask@0) o_52@@14 f_55@@14))
))) (forall ((o_52@@15 T@Ref) (f_55@@15 T@Field_97021_97022) ) (!  (=> (or (select (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@15) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_52@@15 f_55@@15) (select (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@15) null (|Tree__state#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right)))) o_52@@15 f_55@@15)) (select (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| newPMask@0) o_52@@15 f_55@@15))
 :qid |stdinbpl.1117:35|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| newPMask@0) o_52@@15 f_55@@15))
))) (forall ((o_52@@16 T@Ref) (f_55@@16 T@Field_107854_107859) ) (!  (=> (or (select (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@15) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) o_52@@16 f_55@@16) (select (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@15) null (|Tree__state#sm| (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right)))) o_52@@16 f_55@@16)) (select (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| newPMask@0) o_52@@16 f_55@@16))
 :qid |stdinbpl.1117:35|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| newPMask@0) o_52@@16 f_55@@16))
))) (= Heap@16 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@15) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@15) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@15) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@15) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@15) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@15) (store (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@15) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29) newPMask@0) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@15) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@15) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@15) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@15) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@15) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@15) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@15) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@15) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@15) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@15) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@15)))) (and (= Heap@17 Heap@16) (= (ControlFlow 0 4) 3))) anon9_correct))))
(let ((anon14_Then_correct  (=> (and (and (= (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@12) diz@@29 Wand_state_contains_for_state_contains__lemma) 1) (= Heap@13 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@12) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@12) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@12) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@12) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@12) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@12) (store (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@12) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29) (PolymorphicMapType_88357 (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@12) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (store (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@12) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@12) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__left true) (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@12) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@12) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@12) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@12) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@12) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@12) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@12) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@12) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@12) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@12) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@12) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@12) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@12) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@12) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@12) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@12) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))))) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@12) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@12) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@12) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@12) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@12) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@12) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@12) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@12) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@12) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@12) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@12)))) (and (= Heap@14 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@13) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@13) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@13) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@13) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@13) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@13) (store (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@13) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29) (PolymorphicMapType_88357 (store (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@13) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@13) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__data true) (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@13) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@13) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@13) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@13) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@13) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@13) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@13) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@13) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@13) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@13) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@13) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@13) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@13) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@13) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@13) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@13) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@13) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))))) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@13) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@13) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@13) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@13) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@13) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@13) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@13) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@13) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@13) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@13) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@13))) (= Heap@15 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@14) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@14) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@14) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@14) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@14) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@14) (store (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@14) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29) (PolymorphicMapType_88357 (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@14) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (store (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@14) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@14) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right true) (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@14) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@14) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@14) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@14) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@14) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@14) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@14) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@14) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@14) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@14) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@14) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@14) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@14) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@14) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@14) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@14) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))))) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@14) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@14) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@14) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@14) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@14) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@14) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@14) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@14) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@14) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@14) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@14))))) (and (=> (= (ControlFlow 0 6) 4) anon15_Then_correct) (=> (= (ControlFlow 0 6) 5) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (not (= (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@12) diz@@29 Wand_state_contains_for_state_contains__lemma) 1)) (=> (and (= Heap@19 Heap@12) (= (ControlFlow 0 2) 1)) anon10_correct))))
(let ((anon6_correct  (=> (and (<= (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__lemma) 2) (state Heap@@83 UnfoldingMask@22)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (HasDirectPerm_42792_118571 UnfoldingMask@22 diz@@29 Wand_state_contains_for_state_contains__in_1_0)) (=> (HasDirectPerm_42792_118571 UnfoldingMask@22 diz@@29 Wand_state_contains_for_state_contains__in_1_0) (=> (= Heap@0 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@83) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@83) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@83) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@83) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@83) (store (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@83) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29) (PolymorphicMapType_88357 (store (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@83) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) diz@@29 Wand_state_contains_for_state_contains__lemma true) (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@83) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@83) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@83) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@83) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@83) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@83) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@83) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@83) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@83) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@83) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@83) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@83) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@83) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@83) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@83) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@83) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@83) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))))) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@83) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@83) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@83) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@83) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@83) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@83) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@83) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@83) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@83) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@83) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@83))) (=> (and (and (= Heap@1 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@0) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@0) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@0) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@0) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@0) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@0) (store (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@0) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29) (PolymorphicMapType_88357 (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@0) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (store (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@0) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) diz@@29 Wand_state_contains_for_state_contains__in_1 true) (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@0) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@0) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@0) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@0) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@0) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@0) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@0) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@0) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@0) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@0) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@0) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@0) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@0) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@0) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@0) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@0) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))))) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@0) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@0) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@0) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@0) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@0) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@0) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@0) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@0) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@0) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@0) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@0))) (= Heap@2 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@1) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@1) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@1) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@1) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@1) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@1) (store (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@1) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29) (PolymorphicMapType_88357 (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@1) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@1) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (store (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@1) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) diz@@29 Wand_state_contains_for_state_contains__in_1_0 true) (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@1) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@1) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@1) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@1) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@1) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@1) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@1) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@1) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@1) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@1) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@1) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@1) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@1) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@1) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@1) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))))) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@1) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@1) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@1) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@1) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@1) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@1) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@1) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@1) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@1) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@1) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@1)))) (and (= Heap@3 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@2) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@2) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@2) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@2) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@2) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@2) (store (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@2) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29) (PolymorphicMapType_88357 (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@2) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (store (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@2) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) diz@@29 Wand_state_contains_for_state_contains__out_1 true) (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@2) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@2) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@2) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@2) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@2) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@2) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@2) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@2) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@2) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@2) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@2) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@2) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@2) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@2) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@2) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@2) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))))) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@2) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@2) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@2) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@2) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@2) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@2) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@2) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@2) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@2) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@2) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@2))) (= Heap@4 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@3) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@3) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@3) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@3) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@3) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@3) (store (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@3) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29) (PolymorphicMapType_88357 (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@3) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@3) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (store (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@3) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) diz@@29 Wand_state_contains_for_state_contains__out_1_0 true) (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@3) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@3) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@3) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@3) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@3) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@3) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@3) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@3) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@3) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@3) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@3) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@3) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@3) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@3) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@3) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))))) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@3) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@3) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@3) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@3) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@3) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@3) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@3) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@3) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@3) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@3) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@3))))) (=> (and (and (and (= Heap@5 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@4) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@4) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@4) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@4) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@4) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@4) (store (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@4) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29) (PolymorphicMapType_88357 (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@4) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (store (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@4) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) diz@@29 Wand_state_contains_for_state_contains__this_1 true) (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@4) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@4) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@4) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@4) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@4) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@4) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@4) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@4) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@4) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@4) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@4) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@4) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@4) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@4) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@4) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@4) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))))) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@4) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@4) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@4) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@4) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@4) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@4) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@4) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@4) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@4) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@4) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@4))) (= Heap@6 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@5) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@5) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@5) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@5) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@5) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@5) (store (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@5) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29) (PolymorphicMapType_88357 (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@5) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@5) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (store (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@5) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) diz@@29 Wand_state_contains_for_state_contains__target_contents_1 true) (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@5) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@5) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@5) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@5) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@5) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@5) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@5) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@5) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@5) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@5) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@5) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@5) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@5) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@5) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@5) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))))) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@5) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@5) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@5) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@5) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@5) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@5) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@5) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@5) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@5) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@5) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@5)))) (and (= Heap@7 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@6) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@6) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@6) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@6) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@6) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@6) (store (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@6) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29) (PolymorphicMapType_88357 (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@6) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@6) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (store (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@6) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) diz@@29 Wand_state_contains_for_state_contains__prev_contents_1 true) (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@6) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@6) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@6) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@6) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@6) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@6) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@6) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@6) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@6) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@6) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@6) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@6) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@6) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@6) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@6) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))))) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@6) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@6) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@6) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@6) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@6) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@6) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@6) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@6) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@6) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@6) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@6))) (= Heap@8 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@7) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@7) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@7) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@7) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@7) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@7) (store (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@7) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29) (PolymorphicMapType_88357 (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@7) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (store (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@7) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) diz@@29 Wand_state_contains_for_state_contains__prev_1 true) (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@7) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@7) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@7) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@7) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@7) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@7) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@7) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@7) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@7) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@7) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@7) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@7) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@7) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@7) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@7) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@7) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))))) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@7) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@7) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@7) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@7) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@7) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@7) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@7) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@7) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@7) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@7) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@7))))) (and (and (= Heap@9 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@8) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@8) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@8) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@8) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@8) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@8) (store (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@8) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29) (PolymorphicMapType_88357 (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@8) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@8) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (store (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@8) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) diz@@29 Wand_state_contains_for_state_contains__cur_contents_1 true) (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@8) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@8) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@8) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@8) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@8) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@8) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@8) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@8) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@8) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@8) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@8) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@8) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@8) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@8) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@8) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))))) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@8) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@8) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@8) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@8) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@8) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@8) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@8) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@8) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@8) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@8) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@8))) (= Heap@10 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@9) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@9) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@9) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@9) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@9) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@9) (store (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@9) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29) (PolymorphicMapType_88357 (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@9) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (store (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@9) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) diz@@29 Wand_state_contains_for_state_contains__top_1 true) (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@9) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@9) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@9) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@9) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@9) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@9) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@9) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@9) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@9) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@9) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@9) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@9) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@9) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@9) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@9) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@9) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))))) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@9) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@9) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@9) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@9) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@9) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@9) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@9) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@9) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@9) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@9) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@9)))) (and (= Heap@11 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@10) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@10) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@10) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@10) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@10) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@10) (store (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@10) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29) (PolymorphicMapType_88357 (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@10) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (store (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@10) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) diz@@29 Wand_state_contains_for_state_contains__cur_1 true) (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@10) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@10) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@10) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@10) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@10) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@10) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@10) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@10) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@10) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@10) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@10) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@10) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@10) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@10) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@10) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@10) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))))) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@10) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@10) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@10) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@10) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@10) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@10) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@10) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@10) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@10) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@10) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@10))) (= Heap@12 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@11) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@11) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@11) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@11) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@11) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@11) (store (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@11) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29) (PolymorphicMapType_88357 (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@11) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (store (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@11) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) diz@@29 Wand_state_contains_for_state_contains__wand_1 true) (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@11) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@11) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@11) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@11) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@11) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@11) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@11) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@11) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@11) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@11) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@11) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@11) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@11) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@11) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@11) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))) (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@11) null (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@29))))) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@11) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@11) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@11) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@11) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@11) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@11) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@11) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@11) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@11) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@11) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@11)))))) (and (=> (= (ControlFlow 0 7) 6) anon14_Then_correct) (=> (= (ControlFlow 0 7) 2) anon14_Else_correct))))))))))
(let ((anon13_Else_correct  (=> (and (not (= (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__lemma) 2)) (= (ControlFlow 0 10) 7)) anon6_correct)))
(let ((anon13_Then_correct  (=> (= (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__lemma) 2) (=> (and (not (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__this_2) null)) (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__in_1) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__top_2))) (=> (and (and (|Seq#Equal_3097| (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__in_1_0) (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__target_contents_2)) (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__out_1) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__top_2))) (and (|Seq#Equal_3097| (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__out_1_0) (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__target_contents_2)) (= (ControlFlow 0 9) 7))) anon6_correct)))))
(let ((anon4_correct  (=> (and (and (> wildcard@13 NoPerm) (not (= diz@@29 null))) (and (= UnfoldingMask@20 (PolymorphicMapType_87829 (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| UnfoldingMask@19) (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| UnfoldingMask@19) (store (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@19) diz@@29 Wand_state_contains_for_state_contains__this_2 (+ (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@19) diz@@29 Wand_state_contains_for_state_contains__this_2) wildcard@13)) (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| UnfoldingMask@19) (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| UnfoldingMask@19) (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| UnfoldingMask@19) (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| UnfoldingMask@19) (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| UnfoldingMask@19) (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| UnfoldingMask@19) (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| UnfoldingMask@19) (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| UnfoldingMask@19) (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| UnfoldingMask@19) (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| UnfoldingMask@19) (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| UnfoldingMask@19) (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| UnfoldingMask@19) (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| UnfoldingMask@19) (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| UnfoldingMask@19) (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| UnfoldingMask@19))) (state Heap@@83 UnfoldingMask@20))) (=> (and (and (and (> wildcard@14 NoPerm) (not (= diz@@29 null))) (and (= UnfoldingMask@21 (PolymorphicMapType_87829 (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| UnfoldingMask@20) (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| UnfoldingMask@20) (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@20) (store (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| UnfoldingMask@20) diz@@29 Wand_state_contains_for_state_contains__target_contents_2 (+ (select (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| UnfoldingMask@20) diz@@29 Wand_state_contains_for_state_contains__target_contents_2) wildcard@14)) (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| UnfoldingMask@20) (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| UnfoldingMask@20) (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| UnfoldingMask@20) (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| UnfoldingMask@20) (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| UnfoldingMask@20) (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| UnfoldingMask@20) (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| UnfoldingMask@20) (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| UnfoldingMask@20) (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| UnfoldingMask@20) (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| UnfoldingMask@20) (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| UnfoldingMask@20) (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| UnfoldingMask@20) (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| UnfoldingMask@20) (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| UnfoldingMask@20))) (state Heap@@83 UnfoldingMask@21))) (and (and (> wildcard@15 NoPerm) (not (= diz@@29 null))) (and (= UnfoldingMask@22 (PolymorphicMapType_87829 (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| UnfoldingMask@21) (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| UnfoldingMask@21) (store (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@21) diz@@29 Wand_state_contains_for_state_contains__top_2 (+ (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@21) diz@@29 Wand_state_contains_for_state_contains__top_2) wildcard@15)) (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| UnfoldingMask@21) (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| UnfoldingMask@21) (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| UnfoldingMask@21) (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| UnfoldingMask@21) (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| UnfoldingMask@21) (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| UnfoldingMask@21) (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| UnfoldingMask@21) (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| UnfoldingMask@21) (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| UnfoldingMask@21) (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| UnfoldingMask@21) (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| UnfoldingMask@21) (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| UnfoldingMask@21) (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| UnfoldingMask@21) (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| UnfoldingMask@21) (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| UnfoldingMask@21))) (state Heap@@83 UnfoldingMask@22)))) (and (=> (= (ControlFlow 0 11) 9) anon13_Then_correct) (=> (= (ControlFlow 0 11) 10) anon13_Else_correct))))))
(let ((anon3_correct  (=> (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__left) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__cur_1)) (=> (and (and (state Heap@@83 UnfoldingMask@17) (|Seq#Equal_3097| (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__prev_contents_1) (|Seq#Append_3128| (|Seq#Append_3128| (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__cur_contents_1) (|Seq#Singleton_3235| (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@83) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__data))) (Tree__tolist Heap@@83 (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right))))) (and (not (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__wand_1) null)) (= UnfoldingMask@18 (PolymorphicMapType_87829 (store (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| UnfoldingMask@17) null (Wand_state_contains_for_state_contains__valid_wand (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__wand_1)) (+ (select (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| UnfoldingMask@17) null (Wand_state_contains_for_state_contains__valid_wand (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__wand_1))) FullPerm)) (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| UnfoldingMask@17) (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@17) (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| UnfoldingMask@17) (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| UnfoldingMask@17) (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| UnfoldingMask@17) (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| UnfoldingMask@17) (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| UnfoldingMask@17) (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| UnfoldingMask@17) (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| UnfoldingMask@17) (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| UnfoldingMask@17) (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| UnfoldingMask@17) (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| UnfoldingMask@17) (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| UnfoldingMask@17) (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| UnfoldingMask@17) (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| UnfoldingMask@17) (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| UnfoldingMask@17) (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| UnfoldingMask@17))))) (=> (and (and (and (and (InsidePredicate_43083_43083 (Wand_state_contains_for_state_contains__valid_wand diz@@29) (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@83) null (Wand_state_contains_for_state_contains__valid_wand diz@@29)) (Wand_state_contains_for_state_contains__valid_wand (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__wand_1)) (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@83) null (Wand_state_contains_for_state_contains__valid_wand (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__wand_1)))) (state Heap@@83 UnfoldingMask@18)) (and (state Heap@@83 UnfoldingMask@18) (= (Wand_state_contains_for_state_contains__get_in_1 Heap@@83 (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__wand_1)) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__prev_1)))) (and (and (state Heap@@83 UnfoldingMask@18) (|Seq#Equal_3097| (Wand_state_contains_for_state_contains__get_in_1_0 Heap@@83 (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__wand_1)) (|Seq#Drop_3097| (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__prev_contents_1) 1))) (and (state Heap@@83 UnfoldingMask@18) (= (Wand_state_contains_for_state_contains__get_out_1 Heap@@83 (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__wand_1)) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__top_1))))) (and (and (and (state Heap@@83 UnfoldingMask@18) (|Seq#Equal_3097| (Wand_state_contains_for_state_contains__get_out_1_0 Heap@@83 (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__wand_1)) (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__target_contents_1))) (and (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__in_1) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__cur_1)) (|Seq#Equal_3097| (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__in_1_0) (|Seq#Drop_3097| (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__cur_contents_1) 1)))) (and (and (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__out_1) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__top_1)) (|Seq#Equal_3097| (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__out_1_0) (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__target_contents_1))) (and (= UnfoldingMask@19 UnfoldingMask@18) (= (ControlFlow 0 13) 11))))) anon4_correct)))))
(let ((anon12_Else_correct  (=> (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right) null) (=> (and (= UnfoldingMask@17 UnfoldingMask@15) (= (ControlFlow 0 15) 13)) anon3_correct))))
(let ((anon12_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right) null)) (= UnfoldingMask@16 (PolymorphicMapType_87829 (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| UnfoldingMask@15) (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| UnfoldingMask@15) (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@15) (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| UnfoldingMask@15) (store (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| UnfoldingMask@15) null (Tree__state (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right)) (+ (select (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| UnfoldingMask@15) null (Tree__state (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right))) FullPerm)) (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| UnfoldingMask@15) (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| UnfoldingMask@15) (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| UnfoldingMask@15) (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| UnfoldingMask@15) (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| UnfoldingMask@15) (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| UnfoldingMask@15) (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| UnfoldingMask@15) (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| UnfoldingMask@15) (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| UnfoldingMask@15) (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| UnfoldingMask@15) (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| UnfoldingMask@15) (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| UnfoldingMask@15) (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| UnfoldingMask@15)))) (=> (and (and (InsidePredicate_43083_43111 (Wand_state_contains_for_state_contains__valid_wand diz@@29) (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@83) null (Wand_state_contains_for_state_contains__valid_wand diz@@29)) (Tree__state (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right)) (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@83) null (Tree__state (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right)))) (state Heap@@83 UnfoldingMask@16)) (and (= UnfoldingMask@17 UnfoldingMask@16) (= (ControlFlow 0 14) 13))) anon3_correct))))
(let ((anon11_Then_correct  (=> (= (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__lemma) 1) (=> (and (and (not (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__this_1) null)) (> (|Seq#Length_2867| (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__prev_contents_1)) 0)) (and (> (|Seq#Length_2867| (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__cur_contents_1)) 0) (not (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__prev_1) null)))) (=> (and (and (and (= UnfoldingMask@13 (PolymorphicMapType_87829 (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| UnfoldingMask@12) (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| UnfoldingMask@12) (store (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@12) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__left (+ (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@12) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__left) FullPerm)) (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| UnfoldingMask@12) (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| UnfoldingMask@12) (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| UnfoldingMask@12) (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| UnfoldingMask@12) (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| UnfoldingMask@12) (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| UnfoldingMask@12) (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| UnfoldingMask@12) (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| UnfoldingMask@12) (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| UnfoldingMask@12) (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| UnfoldingMask@12) (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| UnfoldingMask@12) (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| UnfoldingMask@12) (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| UnfoldingMask@12) (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| UnfoldingMask@12) (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| UnfoldingMask@12))) (state Heap@@83 UnfoldingMask@13)) (and (not (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__prev_1) null)) (= UnfoldingMask@14 (PolymorphicMapType_87829 (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| UnfoldingMask@13) (store (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| UnfoldingMask@13) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__data (+ (select (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| UnfoldingMask@13) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__data) FullPerm)) (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@13) (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| UnfoldingMask@13) (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| UnfoldingMask@13) (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| UnfoldingMask@13) (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| UnfoldingMask@13) (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| UnfoldingMask@13) (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| UnfoldingMask@13) (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| UnfoldingMask@13) (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| UnfoldingMask@13) (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| UnfoldingMask@13) (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| UnfoldingMask@13) (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| UnfoldingMask@13) (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| UnfoldingMask@13) (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| UnfoldingMask@13) (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| UnfoldingMask@13) (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| UnfoldingMask@13))))) (and (and (state Heap@@83 UnfoldingMask@14) (not (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__prev_1) null))) (and (= UnfoldingMask@15 (PolymorphicMapType_87829 (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| UnfoldingMask@14) (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| UnfoldingMask@14) (store (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@14) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right (+ (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@14) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right) FullPerm)) (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| UnfoldingMask@14) (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| UnfoldingMask@14) (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| UnfoldingMask@14) (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| UnfoldingMask@14) (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| UnfoldingMask@14) (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| UnfoldingMask@14) (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| UnfoldingMask@14) (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| UnfoldingMask@14) (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| UnfoldingMask@14) (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| UnfoldingMask@14) (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| UnfoldingMask@14) (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| UnfoldingMask@14) (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| UnfoldingMask@14) (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| UnfoldingMask@14) (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| UnfoldingMask@14))) (state Heap@@83 UnfoldingMask@15)))) (and (=> (= (ControlFlow 0 16) 14) anon12_Then_correct) (=> (= (ControlFlow 0 16) 15) anon12_Else_correct)))))))
(let ((anon11_Else_correct  (=> (not (= (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__lemma) 1)) (=> (and (= UnfoldingMask@19 UnfoldingMask@12) (= (ControlFlow 0 12) 11)) anon4_correct))))
(let ((anon0_correct  (=> (state Heap@@83 ZeroMask) (=> (and (not AssumePermUpperBound) (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@83) diz@@29 $allocated)) (=> (and (and (and (= AssumeFunctionsAbove 4) (not (= diz@@29 null))) (and (state Heap@@83 ZeroMask) (= Mask@0 (PolymorphicMapType_87829 (store (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| ZeroMask) null (Wand_state_contains_for_state_contains__valid_wand diz@@29) (+ (select (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| ZeroMask) null (Wand_state_contains_for_state_contains__valid_wand diz@@29)) FullPerm)) (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| ZeroMask) (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| ZeroMask) (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| ZeroMask) (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| ZeroMask) (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| ZeroMask) (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| ZeroMask) (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| ZeroMask) (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| ZeroMask) (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| ZeroMask) (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| ZeroMask) (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| ZeroMask) (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| ZeroMask) (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| ZeroMask) (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| ZeroMask) (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| ZeroMask) (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| ZeroMask) (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| ZeroMask))))) (and (and (state Heap@@83 Mask@0) (state Heap@@83 Mask@0)) (and (|Wand_state_contains_for_state_contains__valid_wand#trigger_43083| Heap@@83 (Wand_state_contains_for_state_contains__valid_wand diz@@29)) (= (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@83) null (Wand_state_contains_for_state_contains__valid_wand diz@@29)) (CombineFrames (FrameFragment_2989 (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__lemma)) (CombineFrames (FrameFragment_42790 (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__in_1)) (CombineFrames (FrameFragment_96123 (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__in_1_0)) (CombineFrames (FrameFragment_42790 (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__out_1)) (CombineFrames (FrameFragment_96123 (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__out_1_0)) (CombineFrames (FrameFragment_42790 (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__this_1)) (CombineFrames (FrameFragment_96123 (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__target_contents_1)) (CombineFrames (FrameFragment_96123 (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__prev_contents_1)) (CombineFrames (FrameFragment_42790 (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__prev_1)) (CombineFrames (FrameFragment_96123 (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__cur_contents_1)) (CombineFrames (FrameFragment_42790 (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__top_1)) (CombineFrames (FrameFragment_42790 (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__cur_1)) (CombineFrames (FrameFragment_42790 (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__wand_1)) (CombineFrames (FrameFragment_43112 (ite (= (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__lemma) 1) (CombineFrames (CombineFrames (FrameFragment_42790 (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__left)) (FrameFragment_2989 (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@83) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__data))) (CombineFrames (CombineFrames (FrameFragment_42790 (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right)) (FrameFragment_43112 (ite (not (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right) null)) (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@83) null (Tree__state (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__prev_1) Tree__right))) EmptyFrame))) (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@83) null (Wand_state_contains_for_state_contains__valid_wand (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__wand_1))))) EmptyFrame)) (CombineFrames (FrameFragment_42790 (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__this_2)) (CombineFrames (FrameFragment_96123 (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__target_contents_2)) (CombineFrames (FrameFragment_42790 (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__top_2)) (FrameFragment_43112 (ite (= (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__lemma) 2) EmptyFrame EmptyFrame))))))))))))))))))))))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| Mask@0) null (Wand_state_contains_for_state_contains__valid_wand diz@@29))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| Mask@0) null (Wand_state_contains_for_state_contains__valid_wand diz@@29)))) (=> (> wildcard@0 NoPerm) (=> (and (not (= diz@@29 null)) (= UnfoldingMask@0 (PolymorphicMapType_87829 (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| Mask@0) (store (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| Mask@0) diz@@29 Wand_state_contains_for_state_contains__lemma (+ (select (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| Mask@0) diz@@29 Wand_state_contains_for_state_contains__lemma) wildcard@0)) (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| Mask@0) (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| Mask@0) (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| Mask@0) (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| Mask@0) (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| Mask@0) (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| Mask@0) (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| Mask@0) (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| Mask@0) (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| Mask@0) (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| Mask@0) (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| Mask@0) (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| Mask@0) (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| Mask@0) (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| Mask@0) (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| Mask@0) (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| Mask@0)))) (=> (and (and (state Heap@@83 UnfoldingMask@0) (<= 1 (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__lemma))) (and (> wildcard@1 NoPerm) (not (= diz@@29 null)))) (=> (and (and (and (and (= UnfoldingMask@1 (PolymorphicMapType_87829 (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| UnfoldingMask@0) (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| UnfoldingMask@0) (store (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@0) diz@@29 Wand_state_contains_for_state_contains__in_1 (+ (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@0) diz@@29 Wand_state_contains_for_state_contains__in_1) wildcard@1)) (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| UnfoldingMask@0) (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| UnfoldingMask@0) (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| UnfoldingMask@0) (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| UnfoldingMask@0) (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| UnfoldingMask@0) (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| UnfoldingMask@0) (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| UnfoldingMask@0) (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| UnfoldingMask@0) (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| UnfoldingMask@0) (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| UnfoldingMask@0) (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| UnfoldingMask@0) (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| UnfoldingMask@0) (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| UnfoldingMask@0) (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| UnfoldingMask@0) (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| UnfoldingMask@0))) (state Heap@@83 UnfoldingMask@1)) (and (not (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__in_1) null)) (> wildcard@2 NoPerm))) (and (and (not (= diz@@29 null)) (= UnfoldingMask@2 (PolymorphicMapType_87829 (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| UnfoldingMask@1) (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| UnfoldingMask@1) (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@1) (store (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| UnfoldingMask@1) diz@@29 Wand_state_contains_for_state_contains__in_1_0 (+ (select (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| UnfoldingMask@1) diz@@29 Wand_state_contains_for_state_contains__in_1_0) wildcard@2)) (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| UnfoldingMask@1) (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| UnfoldingMask@1) (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| UnfoldingMask@1) (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| UnfoldingMask@1) (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| UnfoldingMask@1) (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| UnfoldingMask@1) (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| UnfoldingMask@1) (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| UnfoldingMask@1) (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| UnfoldingMask@1) (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| UnfoldingMask@1) (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| UnfoldingMask@1) (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| UnfoldingMask@1) (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| UnfoldingMask@1) (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| UnfoldingMask@1)))) (and (state Heap@@83 UnfoldingMask@2) (> wildcard@3 NoPerm)))) (and (and (and (not (= diz@@29 null)) (= UnfoldingMask@3 (PolymorphicMapType_87829 (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| UnfoldingMask@2) (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| UnfoldingMask@2) (store (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@2) diz@@29 Wand_state_contains_for_state_contains__out_1 (+ (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@2) diz@@29 Wand_state_contains_for_state_contains__out_1) wildcard@3)) (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| UnfoldingMask@2) (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| UnfoldingMask@2) (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| UnfoldingMask@2) (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| UnfoldingMask@2) (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| UnfoldingMask@2) (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| UnfoldingMask@2) (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| UnfoldingMask@2) (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| UnfoldingMask@2) (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| UnfoldingMask@2) (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| UnfoldingMask@2) (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| UnfoldingMask@2) (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| UnfoldingMask@2) (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| UnfoldingMask@2) (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| UnfoldingMask@2) (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| UnfoldingMask@2)))) (and (state Heap@@83 UnfoldingMask@3) (not (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@83) diz@@29 Wand_state_contains_for_state_contains__out_1) null)))) (and (and (> wildcard@4 NoPerm) (not (= diz@@29 null))) (and (= UnfoldingMask@4 (PolymorphicMapType_87829 (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| UnfoldingMask@3) (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| UnfoldingMask@3) (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@3) (store (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| UnfoldingMask@3) diz@@29 Wand_state_contains_for_state_contains__out_1_0 (+ (select (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| UnfoldingMask@3) diz@@29 Wand_state_contains_for_state_contains__out_1_0) wildcard@4)) (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| UnfoldingMask@3) (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| UnfoldingMask@3) (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| UnfoldingMask@3) (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| UnfoldingMask@3) (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| UnfoldingMask@3) (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| UnfoldingMask@3) (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| UnfoldingMask@3) (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| UnfoldingMask@3) (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| UnfoldingMask@3) (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| UnfoldingMask@3) (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| UnfoldingMask@3) (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| UnfoldingMask@3) (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| UnfoldingMask@3) (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| UnfoldingMask@3))) (state Heap@@83 UnfoldingMask@4))))) (=> (and (and (and (and (and (> wildcard@5 NoPerm) (not (= diz@@29 null))) (and (= UnfoldingMask@5 (PolymorphicMapType_87829 (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| UnfoldingMask@4) (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| UnfoldingMask@4) (store (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@4) diz@@29 Wand_state_contains_for_state_contains__this_1 (+ (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@4) diz@@29 Wand_state_contains_for_state_contains__this_1) wildcard@5)) (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| UnfoldingMask@4) (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| UnfoldingMask@4) (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| UnfoldingMask@4) (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| UnfoldingMask@4) (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| UnfoldingMask@4) (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| UnfoldingMask@4) (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| UnfoldingMask@4) (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| UnfoldingMask@4) (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| UnfoldingMask@4) (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| UnfoldingMask@4) (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| UnfoldingMask@4) (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| UnfoldingMask@4) (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| UnfoldingMask@4) (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| UnfoldingMask@4) (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| UnfoldingMask@4))) (state Heap@@83 UnfoldingMask@5))) (and (and (> wildcard@6 NoPerm) (not (= diz@@29 null))) (and (= UnfoldingMask@6 (PolymorphicMapType_87829 (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| UnfoldingMask@5) (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| UnfoldingMask@5) (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@5) (store (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| UnfoldingMask@5) diz@@29 Wand_state_contains_for_state_contains__target_contents_1 (+ (select (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| UnfoldingMask@5) diz@@29 Wand_state_contains_for_state_contains__target_contents_1) wildcard@6)) (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| UnfoldingMask@5) (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| UnfoldingMask@5) (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| UnfoldingMask@5) (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| UnfoldingMask@5) (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| UnfoldingMask@5) (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| UnfoldingMask@5) (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| UnfoldingMask@5) (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| UnfoldingMask@5) (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| UnfoldingMask@5) (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| UnfoldingMask@5) (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| UnfoldingMask@5) (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| UnfoldingMask@5) (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| UnfoldingMask@5) (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| UnfoldingMask@5))) (state Heap@@83 UnfoldingMask@6)))) (and (and (and (> wildcard@7 NoPerm) (not (= diz@@29 null))) (and (= UnfoldingMask@7 (PolymorphicMapType_87829 (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| UnfoldingMask@6) (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| UnfoldingMask@6) (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@6) (store (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| UnfoldingMask@6) diz@@29 Wand_state_contains_for_state_contains__prev_contents_1 (+ (select (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| UnfoldingMask@6) diz@@29 Wand_state_contains_for_state_contains__prev_contents_1) wildcard@7)) (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| UnfoldingMask@6) (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| UnfoldingMask@6) (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| UnfoldingMask@6) (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| UnfoldingMask@6) (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| UnfoldingMask@6) (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| UnfoldingMask@6) (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| UnfoldingMask@6) (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| UnfoldingMask@6) (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| UnfoldingMask@6) (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| UnfoldingMask@6) (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| UnfoldingMask@6) (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| UnfoldingMask@6) (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| UnfoldingMask@6) (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| UnfoldingMask@6))) (state Heap@@83 UnfoldingMask@7))) (and (and (> wildcard@8 NoPerm) (not (= diz@@29 null))) (and (= UnfoldingMask@8 (PolymorphicMapType_87829 (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| UnfoldingMask@7) (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| UnfoldingMask@7) (store (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@7) diz@@29 Wand_state_contains_for_state_contains__prev_1 (+ (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@7) diz@@29 Wand_state_contains_for_state_contains__prev_1) wildcard@8)) (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| UnfoldingMask@7) (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| UnfoldingMask@7) (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| UnfoldingMask@7) (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| UnfoldingMask@7) (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| UnfoldingMask@7) (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| UnfoldingMask@7) (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| UnfoldingMask@7) (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| UnfoldingMask@7) (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| UnfoldingMask@7) (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| UnfoldingMask@7) (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| UnfoldingMask@7) (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| UnfoldingMask@7) (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| UnfoldingMask@7) (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| UnfoldingMask@7) (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| UnfoldingMask@7))) (state Heap@@83 UnfoldingMask@8))))) (and (and (and (and (> wildcard@9 NoPerm) (not (= diz@@29 null))) (and (= UnfoldingMask@9 (PolymorphicMapType_87829 (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| UnfoldingMask@8) (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| UnfoldingMask@8) (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@8) (store (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| UnfoldingMask@8) diz@@29 Wand_state_contains_for_state_contains__cur_contents_1 (+ (select (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| UnfoldingMask@8) diz@@29 Wand_state_contains_for_state_contains__cur_contents_1) wildcard@9)) (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| UnfoldingMask@8) (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| UnfoldingMask@8) (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| UnfoldingMask@8) (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| UnfoldingMask@8) (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| UnfoldingMask@8) (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| UnfoldingMask@8) (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| UnfoldingMask@8) (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| UnfoldingMask@8) (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| UnfoldingMask@8) (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| UnfoldingMask@8) (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| UnfoldingMask@8) (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| UnfoldingMask@8) (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| UnfoldingMask@8) (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| UnfoldingMask@8))) (state Heap@@83 UnfoldingMask@9))) (and (and (> wildcard@10 NoPerm) (not (= diz@@29 null))) (and (= UnfoldingMask@10 (PolymorphicMapType_87829 (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| UnfoldingMask@9) (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| UnfoldingMask@9) (store (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@9) diz@@29 Wand_state_contains_for_state_contains__top_1 (+ (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@9) diz@@29 Wand_state_contains_for_state_contains__top_1) wildcard@10)) (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| UnfoldingMask@9) (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| UnfoldingMask@9) (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| UnfoldingMask@9) (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| UnfoldingMask@9) (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| UnfoldingMask@9) (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| UnfoldingMask@9) (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| UnfoldingMask@9) (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| UnfoldingMask@9) (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| UnfoldingMask@9) (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| UnfoldingMask@9) (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| UnfoldingMask@9) (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| UnfoldingMask@9) (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| UnfoldingMask@9) (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| UnfoldingMask@9) (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| UnfoldingMask@9))) (state Heap@@83 UnfoldingMask@10)))) (and (and (and (> wildcard@11 NoPerm) (not (= diz@@29 null))) (and (= UnfoldingMask@11 (PolymorphicMapType_87829 (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| UnfoldingMask@10) (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| UnfoldingMask@10) (store (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@10) diz@@29 Wand_state_contains_for_state_contains__cur_1 (+ (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@10) diz@@29 Wand_state_contains_for_state_contains__cur_1) wildcard@11)) (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| UnfoldingMask@10) (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| UnfoldingMask@10) (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| UnfoldingMask@10) (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| UnfoldingMask@10) (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| UnfoldingMask@10) (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| UnfoldingMask@10) (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| UnfoldingMask@10) (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| UnfoldingMask@10) (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| UnfoldingMask@10) (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| UnfoldingMask@10) (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| UnfoldingMask@10) (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| UnfoldingMask@10) (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| UnfoldingMask@10) (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| UnfoldingMask@10) (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| UnfoldingMask@10))) (state Heap@@83 UnfoldingMask@11))) (and (and (> wildcard@12 NoPerm) (not (= diz@@29 null))) (and (= UnfoldingMask@12 (PolymorphicMapType_87829 (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| UnfoldingMask@11) (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| UnfoldingMask@11) (store (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@11) diz@@29 Wand_state_contains_for_state_contains__wand_1 (+ (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| UnfoldingMask@11) diz@@29 Wand_state_contains_for_state_contains__wand_1) wildcard@12)) (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| UnfoldingMask@11) (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| UnfoldingMask@11) (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| UnfoldingMask@11) (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| UnfoldingMask@11) (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| UnfoldingMask@11) (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| UnfoldingMask@11) (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| UnfoldingMask@11) (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| UnfoldingMask@11) (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| UnfoldingMask@11) (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| UnfoldingMask@11) (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| UnfoldingMask@11) (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| UnfoldingMask@11) (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| UnfoldingMask@11) (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| UnfoldingMask@11) (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| UnfoldingMask@11))) (state Heap@@83 UnfoldingMask@12)))))) (and (=> (= (ControlFlow 0 17) 16) anon11_Then_correct) (=> (= (ControlFlow 0 17) 12) anon11_Else_correct))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 19) 17)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))
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
(declare-sort T@Field_87868_53 0)
(declare-sort T@Field_87881_87882 0)
(declare-sort T@Field_94947_94948 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_93886_2989 0)
(declare-sort T@Field_93982_93984 0)
(declare-sort T@Seq_2867 0)
(declare-sort T@Field_97021_97022 0)
(declare-sort T@Field_104374_104379 0)
(declare-sort T@Field_107854_107859 0)
(declare-sort T@Field_42789_43084 0)
(declare-sort T@Field_42789_104379 0)
(declare-sort T@Field_43083_42790 0)
(declare-sort T@Field_43083_118571 0)
(declare-sort T@Field_43083_3235 0)
(declare-sort T@Field_43083_53 0)
(declare-sort T@Field_43111_42790 0)
(declare-sort T@Field_43111_118571 0)
(declare-sort T@Field_43111_3235 0)
(declare-sort T@Field_43111_53 0)
(declare-datatypes ((T@PolymorphicMapType_87829 0)) (((PolymorphicMapType_87829 (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| (Array T@Ref T@Field_94947_94948 Real)) (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| (Array T@Ref T@Field_93886_2989 Real)) (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| (Array T@Ref T@Field_87881_87882 Real)) (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| (Array T@Ref T@Field_93982_93984 Real)) (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| (Array T@Ref T@Field_97021_97022 Real)) (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| (Array T@Ref T@Field_43083_3235 Real)) (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| (Array T@Ref T@Field_43083_42790 Real)) (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| (Array T@Ref T@Field_43083_118571 Real)) (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| (Array T@Ref T@Field_43083_53 Real)) (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| (Array T@Ref T@Field_104374_104379 Real)) (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| (Array T@Ref T@Field_42789_43084 Real)) (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| (Array T@Ref T@Field_87868_53 Real)) (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| (Array T@Ref T@Field_42789_104379 Real)) (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| (Array T@Ref T@Field_43111_3235 Real)) (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| (Array T@Ref T@Field_43111_42790 Real)) (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| (Array T@Ref T@Field_43111_118571 Real)) (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| (Array T@Ref T@Field_43111_53 Real)) (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| (Array T@Ref T@Field_107854_107859 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_88357 0)) (((PolymorphicMapType_88357 (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (Array T@Ref T@Field_93886_2989 Bool)) (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (Array T@Ref T@Field_87881_87882 Bool)) (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (Array T@Ref T@Field_93982_93984 Bool)) (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (Array T@Ref T@Field_87868_53 Bool)) (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (Array T@Ref T@Field_42789_43084 Bool)) (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (Array T@Ref T@Field_42789_104379 Bool)) (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (Array T@Ref T@Field_43083_3235 Bool)) (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (Array T@Ref T@Field_43083_42790 Bool)) (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (Array T@Ref T@Field_43083_118571 Bool)) (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (Array T@Ref T@Field_43083_53 Bool)) (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (Array T@Ref T@Field_94947_94948 Bool)) (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (Array T@Ref T@Field_104374_104379 Bool)) (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (Array T@Ref T@Field_43111_3235 Bool)) (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (Array T@Ref T@Field_43111_42790 Bool)) (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (Array T@Ref T@Field_43111_118571 Bool)) (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (Array T@Ref T@Field_43111_53 Bool)) (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (Array T@Ref T@Field_97021_97022 Bool)) (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (Array T@Ref T@Field_107854_107859 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_87808 0)) (((PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| (Array T@Ref T@Field_87868_53 Bool)) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| (Array T@Ref T@Field_87881_87882 T@Ref)) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| (Array T@Ref T@Field_94947_94948 T@FrameType)) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| (Array T@Ref T@Field_93886_2989 Int)) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| (Array T@Ref T@Field_93982_93984 T@Seq_2867)) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| (Array T@Ref T@Field_97021_97022 T@FrameType)) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| (Array T@Ref T@Field_104374_104379 T@PolymorphicMapType_88357)) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| (Array T@Ref T@Field_107854_107859 T@PolymorphicMapType_88357)) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| (Array T@Ref T@Field_42789_43084 T@FrameType)) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| (Array T@Ref T@Field_42789_104379 T@PolymorphicMapType_88357)) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| (Array T@Ref T@Field_43083_42790 T@Ref)) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| (Array T@Ref T@Field_43083_118571 T@Seq_2867)) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| (Array T@Ref T@Field_43083_3235 Int)) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| (Array T@Ref T@Field_43083_53 Bool)) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| (Array T@Ref T@Field_43111_42790 T@Ref)) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| (Array T@Ref T@Field_43111_118571 T@Seq_2867)) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| (Array T@Ref T@Field_43111_3235 Int)) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| (Array T@Ref T@Field_43111_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_87868_53)
(declare-fun Wand_state_contains_for_state_contains__lemma () T@Field_93886_2989)
(declare-fun Wand_state_contains_for_state_contains__in_1 () T@Field_87881_87882)
(declare-fun Wand_state_contains_for_state_contains__in_1_0 () T@Field_93982_93984)
(declare-fun Wand_state_contains_for_state_contains__out_1 () T@Field_87881_87882)
(declare-fun Wand_state_contains_for_state_contains__out_1_0 () T@Field_93982_93984)
(declare-fun Wand_state_contains_for_state_contains__this_1 () T@Field_87881_87882)
(declare-fun Wand_state_contains_for_state_contains__target_contents_1 () T@Field_93982_93984)
(declare-fun Wand_state_contains_for_state_contains__prev_contents_1 () T@Field_93982_93984)
(declare-fun Wand_state_contains_for_state_contains__prev_1 () T@Field_87881_87882)
(declare-fun Wand_state_contains_for_state_contains__cur_contents_1 () T@Field_93982_93984)
(declare-fun Wand_state_contains_for_state_contains__top_1 () T@Field_87881_87882)
(declare-fun Wand_state_contains_for_state_contains__cur_1 () T@Field_87881_87882)
(declare-fun Wand_state_contains_for_state_contains__wand_1 () T@Field_87881_87882)
(declare-fun Wand_state_contains_for_state_contains__this_2 () T@Field_87881_87882)
(declare-fun Wand_state_contains_for_state_contains__target_contents_2 () T@Field_93982_93984)
(declare-fun Wand_state_contains_for_state_contains__top_2 () T@Field_87881_87882)
(declare-fun Tree__data () T@Field_93886_2989)
(declare-fun Tree__left () T@Field_87881_87882)
(declare-fun Tree__right () T@Field_87881_87882)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_3097| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_87808 T@PolymorphicMapType_87808 T@PolymorphicMapType_87829) Bool)
(declare-fun IsPredicateField_43111_43112 (T@Field_97021_97022) Bool)
(declare-fun HasDirectPerm_43111_43112 (T@PolymorphicMapType_87829 T@Ref T@Field_97021_97022) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_43111 (T@Field_97021_97022) T@Field_107854_107859)
(declare-fun IsPredicateField_43083_43084 (T@Field_94947_94948) Bool)
(declare-fun HasDirectPerm_43083_43084 (T@PolymorphicMapType_87829 T@Ref T@Field_94947_94948) Bool)
(declare-fun PredicateMaskField_43083 (T@Field_94947_94948) T@Field_104374_104379)
(declare-fun IsPredicateField_42789_324659 (T@Field_42789_43084) Bool)
(declare-fun HasDirectPerm_42789_43084 (T@PolymorphicMapType_87829 T@Ref T@Field_42789_43084) Bool)
(declare-fun PredicateMaskField_42789 (T@Field_42789_43084) T@Field_42789_104379)
(declare-fun IsWandField_43111_330937 (T@Field_97021_97022) Bool)
(declare-fun WandMaskField_43111 (T@Field_97021_97022) T@Field_107854_107859)
(declare-fun IsWandField_43083_330580 (T@Field_94947_94948) Bool)
(declare-fun WandMaskField_43083 (T@Field_94947_94948) T@Field_104374_104379)
(declare-fun IsWandField_42789_330223 (T@Field_42789_43084) Bool)
(declare-fun WandMaskField_42789 (T@Field_42789_43084) T@Field_42789_104379)
(declare-fun succHeap (T@PolymorphicMapType_87808 T@PolymorphicMapType_87808) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_87808 T@PolymorphicMapType_87808) Bool)
(declare-fun state (T@PolymorphicMapType_87808 T@PolymorphicMapType_87829) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_87829) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_88357)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_12082| () T@Seq_2867)
(declare-fun Wand_state_contains_for_state_contains__valid_wand (T@Ref) T@Field_94947_94948)
(declare-fun Tree__state (T@Ref) T@Field_97021_97022)
(declare-fun |Wand_state_contains_for_state_contains__get_in_1'| (T@PolymorphicMapType_87808 T@Ref) T@Ref)
(declare-fun dummyFunction_42867 (T@Ref) Bool)
(declare-fun |Wand_state_contains_for_state_contains__get_in_1#triggerStateless| (T@Ref) T@Ref)
(declare-fun |Wand_state_contains_for_state_contains__get_in_1_0'| (T@PolymorphicMapType_87808 T@Ref) T@Seq_2867)
(declare-fun dummyFunction_109436 (T@Seq_2867) Bool)
(declare-fun |Wand_state_contains_for_state_contains__get_in_1_0#triggerStateless| (T@Ref) T@Seq_2867)
(declare-fun |Wand_state_contains_for_state_contains__get_out_1'| (T@PolymorphicMapType_87808 T@Ref) T@Ref)
(declare-fun |Wand_state_contains_for_state_contains__get_out_1#triggerStateless| (T@Ref) T@Ref)
(declare-fun |Wand_state_contains_for_state_contains__get_out_1_0'| (T@PolymorphicMapType_87808 T@Ref) T@Seq_2867)
(declare-fun |Wand_state_contains_for_state_contains__get_out_1_0#triggerStateless| (T@Ref) T@Seq_2867)
(declare-fun |Tree__tolist'| (T@PolymorphicMapType_87808 T@Ref) T@Seq_2867)
(declare-fun |Tree__tolist#triggerStateless| (T@Ref) T@Seq_2867)
(declare-fun |Tree__sorted_list'| (T@PolymorphicMapType_87808 T@Seq_2867) Bool)
(declare-fun dummyFunction_13305 (Bool) Bool)
(declare-fun |Tree__sorted_list#triggerStateless| (T@Seq_2867) Bool)
(declare-fun |Tree__sorted'| (T@PolymorphicMapType_87808 T@Ref) Bool)
(declare-fun |Tree__sorted#triggerStateless| (T@Ref) Bool)
(declare-fun |Wand_state_contains_for_state_contains__valid_wand#trigger_43083| (T@PolymorphicMapType_87808 T@Field_94947_94948) Bool)
(declare-fun |Wand_state_contains_for_state_contains__valid_wand#everUsed_43083| (T@Field_94947_94948) Bool)
(declare-fun |Tree__state#trigger_43111| (T@PolymorphicMapType_87808 T@Field_97021_97022) Bool)
(declare-fun |Tree__state#everUsed_43111| (T@Field_97021_97022) Bool)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |Seq#Take_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun |Tree__sorted#frame| (T@FrameType T@Ref) Bool)
(declare-fun FrameFragment_43112 (T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun Wand_state_contains_for_state_contains__get_in_1 (T@PolymorphicMapType_87808 T@Ref) T@Ref)
(declare-fun Wand_state_contains_for_state_contains__get_in_1_0 (T@PolymorphicMapType_87808 T@Ref) T@Seq_2867)
(declare-fun Wand_state_contains_for_state_contains__get_out_1 (T@PolymorphicMapType_87808 T@Ref) T@Ref)
(declare-fun Wand_state_contains_for_state_contains__get_out_1_0 (T@PolymorphicMapType_87808 T@Ref) T@Seq_2867)
(declare-fun Tree__tolist (T@PolymorphicMapType_87808 T@Ref) T@Seq_2867)
(declare-fun |Tree__tolist#frame| (T@FrameType T@Ref) T@Seq_2867)
(declare-fun |Seq#Singleton_3235| (Int) T@Seq_2867)
(declare-fun Tree__sorted_list (T@PolymorphicMapType_87808 T@Seq_2867) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Wand_state_contains_for_state_contains__valid_wand#sm| (T@Ref) T@Field_104374_104379)
(declare-fun |Tree__state#sm| (T@Ref) T@Field_107854_107859)
(declare-fun |Seq#Append_3128| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun dummyHeap () T@PolymorphicMapType_87808)
(declare-fun ZeroMask () T@PolymorphicMapType_87829)
(declare-fun InsidePredicate_87868_87868 (T@Field_42789_43084 T@FrameType T@Field_42789_43084 T@FrameType) Bool)
(declare-fun InsidePredicate_43111_43111 (T@Field_97021_97022 T@FrameType T@Field_97021_97022 T@FrameType) Bool)
(declare-fun InsidePredicate_43083_43083 (T@Field_94947_94948 T@FrameType T@Field_94947_94948 T@FrameType) Bool)
(declare-fun |Wand_state_contains_for_state_contains__get_out_1#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |Wand_state_contains_for_state_contains__get_in_1#trigger| (T@FrameType T@Ref) Bool)
(declare-fun IsPredicateField_42787_2989 (T@Field_93886_2989) Bool)
(declare-fun IsWandField_42787_2989 (T@Field_93886_2989) Bool)
(declare-fun IsPredicateField_42789_42790 (T@Field_87881_87882) Bool)
(declare-fun IsWandField_42789_42790 (T@Field_87881_87882) Bool)
(declare-fun IsPredicateField_42792_94003 (T@Field_93982_93984) Bool)
(declare-fun IsWandField_42792_94026 (T@Field_93982_93984) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_43111_343048 (T@Field_107854_107859) Bool)
(declare-fun IsWandField_43111_343064 (T@Field_107854_107859) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_43111_53 (T@Field_43111_53) Bool)
(declare-fun IsWandField_43111_53 (T@Field_43111_53) Bool)
(declare-fun IsPredicateField_43111_98051 (T@Field_43111_118571) Bool)
(declare-fun IsWandField_43111_98051 (T@Field_43111_118571) Bool)
(declare-fun IsPredicateField_43111_42790 (T@Field_43111_42790) Bool)
(declare-fun IsWandField_43111_42790 (T@Field_43111_42790) Bool)
(declare-fun IsPredicateField_43111_2989 (T@Field_43111_3235) Bool)
(declare-fun IsWandField_43111_2989 (T@Field_43111_3235) Bool)
(declare-fun IsPredicateField_42787_342049 (T@Field_42789_104379) Bool)
(declare-fun IsWandField_42787_342065 (T@Field_42789_104379) Bool)
(declare-fun IsPredicateField_42787_53 (T@Field_87868_53) Bool)
(declare-fun IsWandField_42787_53 (T@Field_87868_53) Bool)
(declare-fun IsPredicateField_43083_341092 (T@Field_104374_104379) Bool)
(declare-fun IsWandField_43083_341108 (T@Field_104374_104379) Bool)
(declare-fun IsPredicateField_43083_53 (T@Field_43083_53) Bool)
(declare-fun IsWandField_43083_53 (T@Field_43083_53) Bool)
(declare-fun IsPredicateField_43083_98051 (T@Field_43083_118571) Bool)
(declare-fun IsWandField_43083_98051 (T@Field_43083_118571) Bool)
(declare-fun IsPredicateField_43083_42790 (T@Field_43083_42790) Bool)
(declare-fun IsWandField_43083_42790 (T@Field_43083_42790) Bool)
(declare-fun IsPredicateField_43083_2989 (T@Field_43083_3235) Bool)
(declare-fun IsWandField_43083_2989 (T@Field_43083_3235) Bool)
(declare-fun HasDirectPerm_43111_324414 (T@PolymorphicMapType_87829 T@Ref T@Field_107854_107859) Bool)
(declare-fun HasDirectPerm_43111_53 (T@PolymorphicMapType_87829 T@Ref T@Field_43111_53) Bool)
(declare-fun HasDirectPerm_43111_3235 (T@PolymorphicMapType_87829 T@Ref T@Field_43111_3235) Bool)
(declare-fun HasDirectPerm_43111_118571 (T@PolymorphicMapType_87829 T@Ref T@Field_43111_118571) Bool)
(declare-fun HasDirectPerm_43111_42790 (T@PolymorphicMapType_87829 T@Ref T@Field_43111_42790) Bool)
(declare-fun HasDirectPerm_43083_323087 (T@PolymorphicMapType_87829 T@Ref T@Field_104374_104379) Bool)
(declare-fun HasDirectPerm_43083_53 (T@PolymorphicMapType_87829 T@Ref T@Field_43083_53) Bool)
(declare-fun HasDirectPerm_43083_3235 (T@PolymorphicMapType_87829 T@Ref T@Field_43083_3235) Bool)
(declare-fun HasDirectPerm_43083_118571 (T@PolymorphicMapType_87829 T@Ref T@Field_43083_118571) Bool)
(declare-fun HasDirectPerm_43083_42790 (T@PolymorphicMapType_87829 T@Ref T@Field_43083_42790) Bool)
(declare-fun HasDirectPerm_42789_321717 (T@PolymorphicMapType_87829 T@Ref T@Field_42789_104379) Bool)
(declare-fun HasDirectPerm_42789_53 (T@PolymorphicMapType_87829 T@Ref T@Field_87868_53) Bool)
(declare-fun HasDirectPerm_42834_3235 (T@PolymorphicMapType_87829 T@Ref T@Field_93886_2989) Bool)
(declare-fun HasDirectPerm_42792_118571 (T@PolymorphicMapType_87829 T@Ref T@Field_93982_93984) Bool)
(declare-fun HasDirectPerm_42789_42790 (T@PolymorphicMapType_87829 T@Ref T@Field_87881_87882) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_87829 T@PolymorphicMapType_87829 T@PolymorphicMapType_87829) Bool)
(declare-fun |Seq#Equal_3097| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |Tree__sorted_list#frame| (T@FrameType T@Seq_2867) Bool)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun Tree__sorted (T@PolymorphicMapType_87808 T@Ref) Bool)
(declare-fun |Wand_state_contains_for_state_contains__get_in_1#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun |Wand_state_contains_for_state_contains__get_in_1_0#frame| (T@FrameType T@Ref) T@Seq_2867)
(declare-fun |Wand_state_contains_for_state_contains__get_out_1#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun |Wand_state_contains_for_state_contains__get_out_1_0#frame| (T@FrameType T@Ref) T@Seq_2867)
(declare-fun getPredWandId_43083_43084 (T@Field_94947_94948) Int)
(declare-fun getPredWandId_43111_43112 (T@Field_97021_97022) Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(declare-fun InsidePredicate_87868_43083 (T@Field_42789_43084 T@FrameType T@Field_94947_94948 T@FrameType) Bool)
(declare-fun InsidePredicate_87868_43111 (T@Field_42789_43084 T@FrameType T@Field_97021_97022 T@FrameType) Bool)
(declare-fun InsidePredicate_43083_87868 (T@Field_94947_94948 T@FrameType T@Field_42789_43084 T@FrameType) Bool)
(declare-fun InsidePredicate_43083_43111 (T@Field_94947_94948 T@FrameType T@Field_97021_97022 T@FrameType) Bool)
(declare-fun InsidePredicate_43111_87868 (T@Field_97021_97022 T@FrameType T@Field_42789_43084 T@FrameType) Bool)
(declare-fun InsidePredicate_43111_43083 (T@Field_97021_97022 T@FrameType T@Field_94947_94948 T@FrameType) Bool)
(assert (and (distinct Wand_state_contains_for_state_contains__lemma Tree__data)(distinct Wand_state_contains_for_state_contains__in_1 Wand_state_contains_for_state_contains__out_1 Wand_state_contains_for_state_contains__this_1 Wand_state_contains_for_state_contains__prev_1 Wand_state_contains_for_state_contains__top_1 Wand_state_contains_for_state_contains__cur_1 Wand_state_contains_for_state_contains__wand_1 Wand_state_contains_for_state_contains__this_2 Wand_state_contains_for_state_contains__top_2 Tree__left Tree__right)(distinct Wand_state_contains_for_state_contains__in_1_0 Wand_state_contains_for_state_contains__out_1_0 Wand_state_contains_for_state_contains__target_contents_1 Wand_state_contains_for_state_contains__prev_contents_1 Wand_state_contains_for_state_contains__cur_contents_1 Wand_state_contains_for_state_contains__target_contents_2))
)
(assert (forall ((s T@Seq_2867) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2867| s)) (= (|Seq#Length_2867| (|Seq#Drop_3097| s n)) (- (|Seq#Length_2867| s) n))) (=> (< (|Seq#Length_2867| s) n) (= (|Seq#Length_2867| (|Seq#Drop_3097| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2867| (|Seq#Drop_3097| s n)) (|Seq#Length_2867| s))))
 :qid |stdinbpl.282:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_3097| s n)))
 :pattern ( (|Seq#Length_2867| s) (|Seq#Drop_3097| s n))
)))
(assert (forall ((Heap T@PolymorphicMapType_87808) (ExhaleHeap T@PolymorphicMapType_87808) (Mask T@PolymorphicMapType_87829) (pm_f_54 T@Field_97021_97022) ) (!  (=> (IdenticalOnKnownLocations Heap ExhaleHeap Mask) (=> (and (HasDirectPerm_43111_43112 Mask null pm_f_54) (IsPredicateField_43111_43112 pm_f_54)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_54 T@Ref) (f_63 T@Field_93886_2989) ) (!  (=> (select (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54 f_63) (= (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap) o2_54 f_63) (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| ExhaleHeap) o2_54 f_63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| ExhaleHeap) o2_54 f_63))
)) (forall ((o2_54@@0 T@Ref) (f_63@@0 T@Field_87881_87882) ) (!  (=> (select (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@0 f_63@@0) (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap) o2_54@@0 f_63@@0) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| ExhaleHeap) o2_54@@0 f_63@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| ExhaleHeap) o2_54@@0 f_63@@0))
))) (forall ((o2_54@@1 T@Ref) (f_63@@1 T@Field_93982_93984) ) (!  (=> (select (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@1 f_63@@1) (= (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap) o2_54@@1 f_63@@1) (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| ExhaleHeap) o2_54@@1 f_63@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| ExhaleHeap) o2_54@@1 f_63@@1))
))) (forall ((o2_54@@2 T@Ref) (f_63@@2 T@Field_87868_53) ) (!  (=> (select (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@2 f_63@@2) (= (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap) o2_54@@2 f_63@@2) (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap) o2_54@@2 f_63@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap) o2_54@@2 f_63@@2))
))) (forall ((o2_54@@3 T@Ref) (f_63@@3 T@Field_42789_43084) ) (!  (=> (select (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@3 f_63@@3) (= (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap) o2_54@@3 f_63@@3) (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| ExhaleHeap) o2_54@@3 f_63@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| ExhaleHeap) o2_54@@3 f_63@@3))
))) (forall ((o2_54@@4 T@Ref) (f_63@@4 T@Field_42789_104379) ) (!  (=> (select (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@4 f_63@@4) (= (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap) o2_54@@4 f_63@@4) (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap) o2_54@@4 f_63@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap) o2_54@@4 f_63@@4))
))) (forall ((o2_54@@5 T@Ref) (f_63@@5 T@Field_43083_3235) ) (!  (=> (select (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@5 f_63@@5) (= (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap) o2_54@@5 f_63@@5) (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| ExhaleHeap) o2_54@@5 f_63@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| ExhaleHeap) o2_54@@5 f_63@@5))
))) (forall ((o2_54@@6 T@Ref) (f_63@@6 T@Field_43083_42790) ) (!  (=> (select (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@6 f_63@@6) (= (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap) o2_54@@6 f_63@@6) (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| ExhaleHeap) o2_54@@6 f_63@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| ExhaleHeap) o2_54@@6 f_63@@6))
))) (forall ((o2_54@@7 T@Ref) (f_63@@7 T@Field_43083_118571) ) (!  (=> (select (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@7 f_63@@7) (= (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap) o2_54@@7 f_63@@7) (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| ExhaleHeap) o2_54@@7 f_63@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| ExhaleHeap) o2_54@@7 f_63@@7))
))) (forall ((o2_54@@8 T@Ref) (f_63@@8 T@Field_43083_53) ) (!  (=> (select (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@8 f_63@@8) (= (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap) o2_54@@8 f_63@@8) (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| ExhaleHeap) o2_54@@8 f_63@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| ExhaleHeap) o2_54@@8 f_63@@8))
))) (forall ((o2_54@@9 T@Ref) (f_63@@9 T@Field_94947_94948) ) (!  (=> (select (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@9 f_63@@9) (= (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap) o2_54@@9 f_63@@9) (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| ExhaleHeap) o2_54@@9 f_63@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| ExhaleHeap) o2_54@@9 f_63@@9))
))) (forall ((o2_54@@10 T@Ref) (f_63@@10 T@Field_104374_104379) ) (!  (=> (select (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@10 f_63@@10) (= (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap) o2_54@@10 f_63@@10) (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap) o2_54@@10 f_63@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap) o2_54@@10 f_63@@10))
))) (forall ((o2_54@@11 T@Ref) (f_63@@11 T@Field_43111_3235) ) (!  (=> (select (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@11 f_63@@11) (= (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap) o2_54@@11 f_63@@11) (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| ExhaleHeap) o2_54@@11 f_63@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| ExhaleHeap) o2_54@@11 f_63@@11))
))) (forall ((o2_54@@12 T@Ref) (f_63@@12 T@Field_43111_42790) ) (!  (=> (select (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@12 f_63@@12) (= (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap) o2_54@@12 f_63@@12) (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| ExhaleHeap) o2_54@@12 f_63@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| ExhaleHeap) o2_54@@12 f_63@@12))
))) (forall ((o2_54@@13 T@Ref) (f_63@@13 T@Field_43111_118571) ) (!  (=> (select (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@13 f_63@@13) (= (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap) o2_54@@13 f_63@@13) (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| ExhaleHeap) o2_54@@13 f_63@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| ExhaleHeap) o2_54@@13 f_63@@13))
))) (forall ((o2_54@@14 T@Ref) (f_63@@14 T@Field_43111_53) ) (!  (=> (select (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@14 f_63@@14) (= (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap) o2_54@@14 f_63@@14) (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| ExhaleHeap) o2_54@@14 f_63@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| ExhaleHeap) o2_54@@14 f_63@@14))
))) (forall ((o2_54@@15 T@Ref) (f_63@@15 T@Field_97021_97022) ) (!  (=> (select (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@15 f_63@@15) (= (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap) o2_54@@15 f_63@@15) (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| ExhaleHeap) o2_54@@15 f_63@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| ExhaleHeap) o2_54@@15 f_63@@15))
))) (forall ((o2_54@@16 T@Ref) (f_63@@16 T@Field_107854_107859) ) (!  (=> (select (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) null (PredicateMaskField_43111 pm_f_54))) o2_54@@16 f_63@@16) (= (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap) o2_54@@16 f_63@@16) (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap) o2_54@@16 f_63@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap) o2_54@@16 f_63@@16))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap ExhaleHeap Mask) (IsPredicateField_43111_43112 pm_f_54))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_87808) (ExhaleHeap@@0 T@PolymorphicMapType_87808) (Mask@@0 T@PolymorphicMapType_87829) (pm_f_54@@0 T@Field_94947_94948) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap@@0 Mask@@0) (=> (and (HasDirectPerm_43083_43084 Mask@@0 null pm_f_54@@0) (IsPredicateField_43083_43084 pm_f_54@@0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_54@@17 T@Ref) (f_63@@17 T@Field_93886_2989) ) (!  (=> (select (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@17 f_63@@17) (= (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@0) o2_54@@17 f_63@@17) (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@17 f_63@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@17 f_63@@17))
)) (forall ((o2_54@@18 T@Ref) (f_63@@18 T@Field_87881_87882) ) (!  (=> (select (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@18 f_63@@18) (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@0) o2_54@@18 f_63@@18) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@18 f_63@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@18 f_63@@18))
))) (forall ((o2_54@@19 T@Ref) (f_63@@19 T@Field_93982_93984) ) (!  (=> (select (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@19 f_63@@19) (= (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@0) o2_54@@19 f_63@@19) (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@19 f_63@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@19 f_63@@19))
))) (forall ((o2_54@@20 T@Ref) (f_63@@20 T@Field_87868_53) ) (!  (=> (select (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@20 f_63@@20) (= (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@0) o2_54@@20 f_63@@20) (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@20 f_63@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@20 f_63@@20))
))) (forall ((o2_54@@21 T@Ref) (f_63@@21 T@Field_42789_43084) ) (!  (=> (select (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@21 f_63@@21) (= (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@0) o2_54@@21 f_63@@21) (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@21 f_63@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@21 f_63@@21))
))) (forall ((o2_54@@22 T@Ref) (f_63@@22 T@Field_42789_104379) ) (!  (=> (select (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@22 f_63@@22) (= (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@0) o2_54@@22 f_63@@22) (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@22 f_63@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@22 f_63@@22))
))) (forall ((o2_54@@23 T@Ref) (f_63@@23 T@Field_43083_3235) ) (!  (=> (select (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@23 f_63@@23) (= (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@0) o2_54@@23 f_63@@23) (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@23 f_63@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@23 f_63@@23))
))) (forall ((o2_54@@24 T@Ref) (f_63@@24 T@Field_43083_42790) ) (!  (=> (select (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@24 f_63@@24) (= (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@0) o2_54@@24 f_63@@24) (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@24 f_63@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@24 f_63@@24))
))) (forall ((o2_54@@25 T@Ref) (f_63@@25 T@Field_43083_118571) ) (!  (=> (select (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@25 f_63@@25) (= (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@0) o2_54@@25 f_63@@25) (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@25 f_63@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@25 f_63@@25))
))) (forall ((o2_54@@26 T@Ref) (f_63@@26 T@Field_43083_53) ) (!  (=> (select (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@26 f_63@@26) (= (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@0) o2_54@@26 f_63@@26) (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@26 f_63@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@26 f_63@@26))
))) (forall ((o2_54@@27 T@Ref) (f_63@@27 T@Field_94947_94948) ) (!  (=> (select (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@27 f_63@@27) (= (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@0) o2_54@@27 f_63@@27) (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@27 f_63@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@27 f_63@@27))
))) (forall ((o2_54@@28 T@Ref) (f_63@@28 T@Field_104374_104379) ) (!  (=> (select (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@28 f_63@@28) (= (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) o2_54@@28 f_63@@28) (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@28 f_63@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@28 f_63@@28))
))) (forall ((o2_54@@29 T@Ref) (f_63@@29 T@Field_43111_3235) ) (!  (=> (select (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@29 f_63@@29) (= (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@0) o2_54@@29 f_63@@29) (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@29 f_63@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@29 f_63@@29))
))) (forall ((o2_54@@30 T@Ref) (f_63@@30 T@Field_43111_42790) ) (!  (=> (select (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@30 f_63@@30) (= (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@0) o2_54@@30 f_63@@30) (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@30 f_63@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@30 f_63@@30))
))) (forall ((o2_54@@31 T@Ref) (f_63@@31 T@Field_43111_118571) ) (!  (=> (select (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@31 f_63@@31) (= (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@0) o2_54@@31 f_63@@31) (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@31 f_63@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@31 f_63@@31))
))) (forall ((o2_54@@32 T@Ref) (f_63@@32 T@Field_43111_53) ) (!  (=> (select (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@32 f_63@@32) (= (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@0) o2_54@@32 f_63@@32) (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@32 f_63@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@32 f_63@@32))
))) (forall ((o2_54@@33 T@Ref) (f_63@@33 T@Field_97021_97022) ) (!  (=> (select (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@33 f_63@@33) (= (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@0) o2_54@@33 f_63@@33) (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@33 f_63@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@33 f_63@@33))
))) (forall ((o2_54@@34 T@Ref) (f_63@@34 T@Field_107854_107859) ) (!  (=> (select (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@0) null (PredicateMaskField_43083 pm_f_54@@0))) o2_54@@34 f_63@@34) (= (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@0) o2_54@@34 f_63@@34) (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@34 f_63@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@0) o2_54@@34 f_63@@34))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap@@0 Mask@@0) (IsPredicateField_43083_43084 pm_f_54@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_87808) (ExhaleHeap@@1 T@PolymorphicMapType_87808) (Mask@@1 T@PolymorphicMapType_87829) (pm_f_54@@1 T@Field_42789_43084) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@1 Mask@@1) (=> (and (HasDirectPerm_42789_43084 Mask@@1 null pm_f_54@@1) (IsPredicateField_42789_324659 pm_f_54@@1)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_54@@35 T@Ref) (f_63@@35 T@Field_93886_2989) ) (!  (=> (select (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@35 f_63@@35) (= (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@1) o2_54@@35 f_63@@35) (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@35 f_63@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@35 f_63@@35))
)) (forall ((o2_54@@36 T@Ref) (f_63@@36 T@Field_87881_87882) ) (!  (=> (select (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@36 f_63@@36) (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@1) o2_54@@36 f_63@@36) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@36 f_63@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@36 f_63@@36))
))) (forall ((o2_54@@37 T@Ref) (f_63@@37 T@Field_93982_93984) ) (!  (=> (select (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@37 f_63@@37) (= (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@1) o2_54@@37 f_63@@37) (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@37 f_63@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@37 f_63@@37))
))) (forall ((o2_54@@38 T@Ref) (f_63@@38 T@Field_87868_53) ) (!  (=> (select (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@38 f_63@@38) (= (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@1) o2_54@@38 f_63@@38) (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@38 f_63@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@38 f_63@@38))
))) (forall ((o2_54@@39 T@Ref) (f_63@@39 T@Field_42789_43084) ) (!  (=> (select (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@39 f_63@@39) (= (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@1) o2_54@@39 f_63@@39) (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@39 f_63@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@39 f_63@@39))
))) (forall ((o2_54@@40 T@Ref) (f_63@@40 T@Field_42789_104379) ) (!  (=> (select (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@40 f_63@@40) (= (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) o2_54@@40 f_63@@40) (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@40 f_63@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@40 f_63@@40))
))) (forall ((o2_54@@41 T@Ref) (f_63@@41 T@Field_43083_3235) ) (!  (=> (select (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@41 f_63@@41) (= (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@1) o2_54@@41 f_63@@41) (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@41 f_63@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@41 f_63@@41))
))) (forall ((o2_54@@42 T@Ref) (f_63@@42 T@Field_43083_42790) ) (!  (=> (select (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@42 f_63@@42) (= (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@1) o2_54@@42 f_63@@42) (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@42 f_63@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@42 f_63@@42))
))) (forall ((o2_54@@43 T@Ref) (f_63@@43 T@Field_43083_118571) ) (!  (=> (select (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@43 f_63@@43) (= (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@1) o2_54@@43 f_63@@43) (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@43 f_63@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@43 f_63@@43))
))) (forall ((o2_54@@44 T@Ref) (f_63@@44 T@Field_43083_53) ) (!  (=> (select (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@44 f_63@@44) (= (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@1) o2_54@@44 f_63@@44) (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@44 f_63@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@44 f_63@@44))
))) (forall ((o2_54@@45 T@Ref) (f_63@@45 T@Field_94947_94948) ) (!  (=> (select (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@45 f_63@@45) (= (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@1) o2_54@@45 f_63@@45) (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@45 f_63@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@45 f_63@@45))
))) (forall ((o2_54@@46 T@Ref) (f_63@@46 T@Field_104374_104379) ) (!  (=> (select (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@46 f_63@@46) (= (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@1) o2_54@@46 f_63@@46) (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@46 f_63@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@46 f_63@@46))
))) (forall ((o2_54@@47 T@Ref) (f_63@@47 T@Field_43111_3235) ) (!  (=> (select (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@47 f_63@@47) (= (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@1) o2_54@@47 f_63@@47) (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@47 f_63@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@47 f_63@@47))
))) (forall ((o2_54@@48 T@Ref) (f_63@@48 T@Field_43111_42790) ) (!  (=> (select (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@48 f_63@@48) (= (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@1) o2_54@@48 f_63@@48) (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@48 f_63@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@48 f_63@@48))
))) (forall ((o2_54@@49 T@Ref) (f_63@@49 T@Field_43111_118571) ) (!  (=> (select (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@49 f_63@@49) (= (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@1) o2_54@@49 f_63@@49) (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@49 f_63@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@49 f_63@@49))
))) (forall ((o2_54@@50 T@Ref) (f_63@@50 T@Field_43111_53) ) (!  (=> (select (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@50 f_63@@50) (= (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@1) o2_54@@50 f_63@@50) (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@50 f_63@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@50 f_63@@50))
))) (forall ((o2_54@@51 T@Ref) (f_63@@51 T@Field_97021_97022) ) (!  (=> (select (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@51 f_63@@51) (= (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@1) o2_54@@51 f_63@@51) (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@51 f_63@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@51 f_63@@51))
))) (forall ((o2_54@@52 T@Ref) (f_63@@52 T@Field_107854_107859) ) (!  (=> (select (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@1) null (PredicateMaskField_42789 pm_f_54@@1))) o2_54@@52 f_63@@52) (= (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@1) o2_54@@52 f_63@@52) (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@52 f_63@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@1) o2_54@@52 f_63@@52))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@1 Mask@@1) (IsPredicateField_42789_324659 pm_f_54@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_87808) (ExhaleHeap@@2 T@PolymorphicMapType_87808) (Mask@@2 T@PolymorphicMapType_87829) (pm_f_54@@2 T@Field_97021_97022) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@2 Mask@@2) (=> (and (HasDirectPerm_43111_43112 Mask@@2 null pm_f_54@@2) (IsWandField_43111_330937 pm_f_54@@2)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_54@@53 T@Ref) (f_63@@53 T@Field_93886_2989) ) (!  (=> (select (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@53 f_63@@53) (= (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@2) o2_54@@53 f_63@@53) (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@53 f_63@@53)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@53 f_63@@53))
)) (forall ((o2_54@@54 T@Ref) (f_63@@54 T@Field_87881_87882) ) (!  (=> (select (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@54 f_63@@54) (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@2) o2_54@@54 f_63@@54) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@54 f_63@@54)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@54 f_63@@54))
))) (forall ((o2_54@@55 T@Ref) (f_63@@55 T@Field_93982_93984) ) (!  (=> (select (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@55 f_63@@55) (= (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@2) o2_54@@55 f_63@@55) (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@55 f_63@@55)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@55 f_63@@55))
))) (forall ((o2_54@@56 T@Ref) (f_63@@56 T@Field_87868_53) ) (!  (=> (select (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@56 f_63@@56) (= (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@2) o2_54@@56 f_63@@56) (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@56 f_63@@56)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@56 f_63@@56))
))) (forall ((o2_54@@57 T@Ref) (f_63@@57 T@Field_42789_43084) ) (!  (=> (select (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@57 f_63@@57) (= (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@2) o2_54@@57 f_63@@57) (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@57 f_63@@57)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@57 f_63@@57))
))) (forall ((o2_54@@58 T@Ref) (f_63@@58 T@Field_42789_104379) ) (!  (=> (select (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@58 f_63@@58) (= (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@2) o2_54@@58 f_63@@58) (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@58 f_63@@58)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@58 f_63@@58))
))) (forall ((o2_54@@59 T@Ref) (f_63@@59 T@Field_43083_3235) ) (!  (=> (select (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@59 f_63@@59) (= (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@2) o2_54@@59 f_63@@59) (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@59 f_63@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@59 f_63@@59))
))) (forall ((o2_54@@60 T@Ref) (f_63@@60 T@Field_43083_42790) ) (!  (=> (select (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@60 f_63@@60) (= (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@2) o2_54@@60 f_63@@60) (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@60 f_63@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@60 f_63@@60))
))) (forall ((o2_54@@61 T@Ref) (f_63@@61 T@Field_43083_118571) ) (!  (=> (select (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@61 f_63@@61) (= (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@2) o2_54@@61 f_63@@61) (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@61 f_63@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@61 f_63@@61))
))) (forall ((o2_54@@62 T@Ref) (f_63@@62 T@Field_43083_53) ) (!  (=> (select (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@62 f_63@@62) (= (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@2) o2_54@@62 f_63@@62) (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@62 f_63@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@62 f_63@@62))
))) (forall ((o2_54@@63 T@Ref) (f_63@@63 T@Field_94947_94948) ) (!  (=> (select (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@63 f_63@@63) (= (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@2) o2_54@@63 f_63@@63) (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@63 f_63@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@63 f_63@@63))
))) (forall ((o2_54@@64 T@Ref) (f_63@@64 T@Field_104374_104379) ) (!  (=> (select (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@64 f_63@@64) (= (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@2) o2_54@@64 f_63@@64) (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@64 f_63@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@64 f_63@@64))
))) (forall ((o2_54@@65 T@Ref) (f_63@@65 T@Field_43111_3235) ) (!  (=> (select (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@65 f_63@@65) (= (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@2) o2_54@@65 f_63@@65) (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@65 f_63@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@65 f_63@@65))
))) (forall ((o2_54@@66 T@Ref) (f_63@@66 T@Field_43111_42790) ) (!  (=> (select (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@66 f_63@@66) (= (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@2) o2_54@@66 f_63@@66) (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@66 f_63@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@66 f_63@@66))
))) (forall ((o2_54@@67 T@Ref) (f_63@@67 T@Field_43111_118571) ) (!  (=> (select (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@67 f_63@@67) (= (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@2) o2_54@@67 f_63@@67) (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@67 f_63@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@67 f_63@@67))
))) (forall ((o2_54@@68 T@Ref) (f_63@@68 T@Field_43111_53) ) (!  (=> (select (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@68 f_63@@68) (= (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@2) o2_54@@68 f_63@@68) (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@68 f_63@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@68 f_63@@68))
))) (forall ((o2_54@@69 T@Ref) (f_63@@69 T@Field_97021_97022) ) (!  (=> (select (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@69 f_63@@69) (= (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@2) o2_54@@69 f_63@@69) (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@69 f_63@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@69 f_63@@69))
))) (forall ((o2_54@@70 T@Ref) (f_63@@70 T@Field_107854_107859) ) (!  (=> (select (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) null (WandMaskField_43111 pm_f_54@@2))) o2_54@@70 f_63@@70) (= (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@2) o2_54@@70 f_63@@70) (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@70 f_63@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@2) o2_54@@70 f_63@@70))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@2 Mask@@2) (IsWandField_43111_330937 pm_f_54@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_87808) (ExhaleHeap@@3 T@PolymorphicMapType_87808) (Mask@@3 T@PolymorphicMapType_87829) (pm_f_54@@3 T@Field_94947_94948) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@3 Mask@@3) (=> (and (HasDirectPerm_43083_43084 Mask@@3 null pm_f_54@@3) (IsWandField_43083_330580 pm_f_54@@3)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_54@@71 T@Ref) (f_63@@71 T@Field_93886_2989) ) (!  (=> (select (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@71 f_63@@71) (= (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@3) o2_54@@71 f_63@@71) (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@71 f_63@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@71 f_63@@71))
)) (forall ((o2_54@@72 T@Ref) (f_63@@72 T@Field_87881_87882) ) (!  (=> (select (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@72 f_63@@72) (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@3) o2_54@@72 f_63@@72) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@72 f_63@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@72 f_63@@72))
))) (forall ((o2_54@@73 T@Ref) (f_63@@73 T@Field_93982_93984) ) (!  (=> (select (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@73 f_63@@73) (= (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@3) o2_54@@73 f_63@@73) (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@73 f_63@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@73 f_63@@73))
))) (forall ((o2_54@@74 T@Ref) (f_63@@74 T@Field_87868_53) ) (!  (=> (select (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@74 f_63@@74) (= (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@3) o2_54@@74 f_63@@74) (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@74 f_63@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@74 f_63@@74))
))) (forall ((o2_54@@75 T@Ref) (f_63@@75 T@Field_42789_43084) ) (!  (=> (select (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@75 f_63@@75) (= (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@3) o2_54@@75 f_63@@75) (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@75 f_63@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@75 f_63@@75))
))) (forall ((o2_54@@76 T@Ref) (f_63@@76 T@Field_42789_104379) ) (!  (=> (select (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@76 f_63@@76) (= (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@3) o2_54@@76 f_63@@76) (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@76 f_63@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@76 f_63@@76))
))) (forall ((o2_54@@77 T@Ref) (f_63@@77 T@Field_43083_3235) ) (!  (=> (select (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@77 f_63@@77) (= (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@3) o2_54@@77 f_63@@77) (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@77 f_63@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@77 f_63@@77))
))) (forall ((o2_54@@78 T@Ref) (f_63@@78 T@Field_43083_42790) ) (!  (=> (select (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@78 f_63@@78) (= (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@3) o2_54@@78 f_63@@78) (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@78 f_63@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@78 f_63@@78))
))) (forall ((o2_54@@79 T@Ref) (f_63@@79 T@Field_43083_118571) ) (!  (=> (select (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@79 f_63@@79) (= (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@3) o2_54@@79 f_63@@79) (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@79 f_63@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@79 f_63@@79))
))) (forall ((o2_54@@80 T@Ref) (f_63@@80 T@Field_43083_53) ) (!  (=> (select (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@80 f_63@@80) (= (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@3) o2_54@@80 f_63@@80) (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@80 f_63@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@80 f_63@@80))
))) (forall ((o2_54@@81 T@Ref) (f_63@@81 T@Field_94947_94948) ) (!  (=> (select (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@81 f_63@@81) (= (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@3) o2_54@@81 f_63@@81) (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@81 f_63@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@81 f_63@@81))
))) (forall ((o2_54@@82 T@Ref) (f_63@@82 T@Field_104374_104379) ) (!  (=> (select (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@82 f_63@@82) (= (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) o2_54@@82 f_63@@82) (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@82 f_63@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@82 f_63@@82))
))) (forall ((o2_54@@83 T@Ref) (f_63@@83 T@Field_43111_3235) ) (!  (=> (select (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@83 f_63@@83) (= (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@3) o2_54@@83 f_63@@83) (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@83 f_63@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@83 f_63@@83))
))) (forall ((o2_54@@84 T@Ref) (f_63@@84 T@Field_43111_42790) ) (!  (=> (select (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@84 f_63@@84) (= (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@3) o2_54@@84 f_63@@84) (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@84 f_63@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@84 f_63@@84))
))) (forall ((o2_54@@85 T@Ref) (f_63@@85 T@Field_43111_118571) ) (!  (=> (select (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@85 f_63@@85) (= (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@3) o2_54@@85 f_63@@85) (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@85 f_63@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@85 f_63@@85))
))) (forall ((o2_54@@86 T@Ref) (f_63@@86 T@Field_43111_53) ) (!  (=> (select (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@86 f_63@@86) (= (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@3) o2_54@@86 f_63@@86) (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@86 f_63@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@86 f_63@@86))
))) (forall ((o2_54@@87 T@Ref) (f_63@@87 T@Field_97021_97022) ) (!  (=> (select (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@87 f_63@@87) (= (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@3) o2_54@@87 f_63@@87) (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@87 f_63@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@87 f_63@@87))
))) (forall ((o2_54@@88 T@Ref) (f_63@@88 T@Field_107854_107859) ) (!  (=> (select (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@3) null (WandMaskField_43083 pm_f_54@@3))) o2_54@@88 f_63@@88) (= (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@3) o2_54@@88 f_63@@88) (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@88 f_63@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@3) o2_54@@88 f_63@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@3 Mask@@3) (IsWandField_43083_330580 pm_f_54@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_87808) (ExhaleHeap@@4 T@PolymorphicMapType_87808) (Mask@@4 T@PolymorphicMapType_87829) (pm_f_54@@4 T@Field_42789_43084) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@4 Mask@@4) (=> (and (HasDirectPerm_42789_43084 Mask@@4 null pm_f_54@@4) (IsWandField_42789_330223 pm_f_54@@4)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_54@@89 T@Ref) (f_63@@89 T@Field_93886_2989) ) (!  (=> (select (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@89 f_63@@89) (= (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@4) o2_54@@89 f_63@@89) (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@89 f_63@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@89 f_63@@89))
)) (forall ((o2_54@@90 T@Ref) (f_63@@90 T@Field_87881_87882) ) (!  (=> (select (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@90 f_63@@90) (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@4) o2_54@@90 f_63@@90) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@90 f_63@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@90 f_63@@90))
))) (forall ((o2_54@@91 T@Ref) (f_63@@91 T@Field_93982_93984) ) (!  (=> (select (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@91 f_63@@91) (= (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@4) o2_54@@91 f_63@@91) (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@91 f_63@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@91 f_63@@91))
))) (forall ((o2_54@@92 T@Ref) (f_63@@92 T@Field_87868_53) ) (!  (=> (select (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@92 f_63@@92) (= (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@4) o2_54@@92 f_63@@92) (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@92 f_63@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@92 f_63@@92))
))) (forall ((o2_54@@93 T@Ref) (f_63@@93 T@Field_42789_43084) ) (!  (=> (select (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@93 f_63@@93) (= (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@4) o2_54@@93 f_63@@93) (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@93 f_63@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@93 f_63@@93))
))) (forall ((o2_54@@94 T@Ref) (f_63@@94 T@Field_42789_104379) ) (!  (=> (select (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@94 f_63@@94) (= (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) o2_54@@94 f_63@@94) (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@94 f_63@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@94 f_63@@94))
))) (forall ((o2_54@@95 T@Ref) (f_63@@95 T@Field_43083_3235) ) (!  (=> (select (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@95 f_63@@95) (= (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@4) o2_54@@95 f_63@@95) (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@95 f_63@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@95 f_63@@95))
))) (forall ((o2_54@@96 T@Ref) (f_63@@96 T@Field_43083_42790) ) (!  (=> (select (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@96 f_63@@96) (= (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@4) o2_54@@96 f_63@@96) (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@96 f_63@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@96 f_63@@96))
))) (forall ((o2_54@@97 T@Ref) (f_63@@97 T@Field_43083_118571) ) (!  (=> (select (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@97 f_63@@97) (= (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@4) o2_54@@97 f_63@@97) (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@97 f_63@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@97 f_63@@97))
))) (forall ((o2_54@@98 T@Ref) (f_63@@98 T@Field_43083_53) ) (!  (=> (select (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@98 f_63@@98) (= (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@4) o2_54@@98 f_63@@98) (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@98 f_63@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@98 f_63@@98))
))) (forall ((o2_54@@99 T@Ref) (f_63@@99 T@Field_94947_94948) ) (!  (=> (select (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@99 f_63@@99) (= (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@4) o2_54@@99 f_63@@99) (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@99 f_63@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@99 f_63@@99))
))) (forall ((o2_54@@100 T@Ref) (f_63@@100 T@Field_104374_104379) ) (!  (=> (select (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@100 f_63@@100) (= (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@4) o2_54@@100 f_63@@100) (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@100 f_63@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@100 f_63@@100))
))) (forall ((o2_54@@101 T@Ref) (f_63@@101 T@Field_43111_3235) ) (!  (=> (select (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@101 f_63@@101) (= (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@4) o2_54@@101 f_63@@101) (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@101 f_63@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@101 f_63@@101))
))) (forall ((o2_54@@102 T@Ref) (f_63@@102 T@Field_43111_42790) ) (!  (=> (select (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@102 f_63@@102) (= (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@4) o2_54@@102 f_63@@102) (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@102 f_63@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@102 f_63@@102))
))) (forall ((o2_54@@103 T@Ref) (f_63@@103 T@Field_43111_118571) ) (!  (=> (select (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@103 f_63@@103) (= (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@4) o2_54@@103 f_63@@103) (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@103 f_63@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@103 f_63@@103))
))) (forall ((o2_54@@104 T@Ref) (f_63@@104 T@Field_43111_53) ) (!  (=> (select (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@104 f_63@@104) (= (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@4) o2_54@@104 f_63@@104) (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@104 f_63@@104)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@104 f_63@@104))
))) (forall ((o2_54@@105 T@Ref) (f_63@@105 T@Field_97021_97022) ) (!  (=> (select (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@105 f_63@@105) (= (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@4) o2_54@@105 f_63@@105) (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@105 f_63@@105)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@105 f_63@@105))
))) (forall ((o2_54@@106 T@Ref) (f_63@@106 T@Field_107854_107859) ) (!  (=> (select (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@4) null (WandMaskField_42789 pm_f_54@@4))) o2_54@@106 f_63@@106) (= (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@4) o2_54@@106 f_63@@106) (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@106 f_63@@106)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@4) o2_54@@106 f_63@@106))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@4 Mask@@4) (IsWandField_42789_330223 pm_f_54@@4))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_87808) (Heap1 T@PolymorphicMapType_87808) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_87808) (Mask@@5 T@PolymorphicMapType_87829) ) (!  (=> (state Heap@@5 Mask@@5) (GoodMask Mask@@5))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@5 Mask@@5))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_87808) (Heap1@@0 T@PolymorphicMapType_87808) (Heap2 T@PolymorphicMapType_87808) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_107854_107859) ) (!  (not (select (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_97021_329134#PolymorphicMapType_88357| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_97021_97022) ) (!  (not (select (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_97021_94948#PolymorphicMapType_88357| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_43111_53) ) (!  (not (select (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_97021_53#PolymorphicMapType_88357| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_43111_118571) ) (!  (not (select (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_97021_104944#PolymorphicMapType_88357| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_43111_42790) ) (!  (not (select (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_97021_42790#PolymorphicMapType_88357| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_43111_3235) ) (!  (not (select (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_97021_2989#PolymorphicMapType_88357| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_104374_104379) ) (!  (not (select (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_94947_327882#PolymorphicMapType_88357| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_94947_94948) ) (!  (not (select (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_94947_94948#PolymorphicMapType_88357| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_43083_53) ) (!  (not (select (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_94947_53#PolymorphicMapType_88357| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_43083_118571) ) (!  (not (select (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_94947_104944#PolymorphicMapType_88357| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_43083_42790) ) (!  (not (select (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_94947_42790#PolymorphicMapType_88357| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_43083_3235) ) (!  (not (select (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_94947_2989#PolymorphicMapType_88357| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_42789_104379) ) (!  (not (select (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_42787_326630#PolymorphicMapType_88357| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_42789_43084) ) (!  (not (select (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_42787_94948#PolymorphicMapType_88357| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_87868_53) ) (!  (not (select (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_42787_53#PolymorphicMapType_88357| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_93982_93984) ) (!  (not (select (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_42792_104944#PolymorphicMapType_88357| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_87881_87882) ) (!  (not (select (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_42789_42790#PolymorphicMapType_88357| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_93886_2989) ) (!  (not (select (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_88357_42787_2989#PolymorphicMapType_88357| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_2867| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_2867| (|Seq#Drop_3097| s@@0 n@@0) j) (|Seq#Index_2867| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.303:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_3097| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_2867| |Seq#Empty_12082|) 0))
(assert (forall ((diz T@Ref) ) (! (IsPredicateField_43083_43084 (Wand_state_contains_for_state_contains__valid_wand diz))
 :qid |stdinbpl.1992:15|
 :skolemid |99|
 :pattern ( (Wand_state_contains_for_state_contains__valid_wand diz))
)))
(assert (forall ((diz@@0 T@Ref) ) (! (IsPredicateField_43111_43112 (Tree__state diz@@0))
 :qid |stdinbpl.2425:15|
 :skolemid |105|
 :pattern ( (Tree__state diz@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_87808) (diz@@1 T@Ref) ) (! (dummyFunction_42867 (|Wand_state_contains_for_state_contains__get_in_1#triggerStateless| diz@@1))
 :qid |stdinbpl.622:15|
 :skolemid |59|
 :pattern ( (|Wand_state_contains_for_state_contains__get_in_1'| Heap@@6 diz@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_87808) (diz@@2 T@Ref) ) (! (dummyFunction_109436 (|Wand_state_contains_for_state_contains__get_in_1_0#triggerStateless| diz@@2))
 :qid |stdinbpl.892:15|
 :skolemid |66|
 :pattern ( (|Wand_state_contains_for_state_contains__get_in_1_0'| Heap@@7 diz@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_87808) (diz@@3 T@Ref) ) (! (dummyFunction_42867 (|Wand_state_contains_for_state_contains__get_out_1#triggerStateless| diz@@3))
 :qid |stdinbpl.1150:15|
 :skolemid |72|
 :pattern ( (|Wand_state_contains_for_state_contains__get_out_1'| Heap@@8 diz@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_87808) (diz@@4 T@Ref) ) (! (dummyFunction_109436 (|Wand_state_contains_for_state_contains__get_out_1_0#triggerStateless| diz@@4))
 :qid |stdinbpl.1420:15|
 :skolemid |79|
 :pattern ( (|Wand_state_contains_for_state_contains__get_out_1_0'| Heap@@9 diz@@4))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_87808) (t_2 T@Ref) ) (! (dummyFunction_109436 (|Tree__tolist#triggerStateless| t_2))
 :qid |stdinbpl.1678:15|
 :skolemid |85|
 :pattern ( (|Tree__tolist'| Heap@@10 t_2))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_87808) (s_2 T@Seq_2867) ) (! (dummyFunction_13305 (|Tree__sorted_list#triggerStateless| s_2))
 :qid |stdinbpl.1855:15|
 :skolemid |91|
 :pattern ( (|Tree__sorted_list'| Heap@@11 s_2))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_87808) (t_2@@0 T@Ref) ) (! (dummyFunction_13305 (|Tree__sorted#triggerStateless| t_2@@0))
 :qid |stdinbpl.1905:15|
 :skolemid |95|
 :pattern ( (|Tree__sorted'| Heap@@12 t_2@@0))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_87808) (diz@@5 T@Ref) ) (! (|Wand_state_contains_for_state_contains__valid_wand#everUsed_43083| (Wand_state_contains_for_state_contains__valid_wand diz@@5))
 :qid |stdinbpl.2011:15|
 :skolemid |103|
 :pattern ( (|Wand_state_contains_for_state_contains__valid_wand#trigger_43083| Heap@@13 (Wand_state_contains_for_state_contains__valid_wand diz@@5)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_87808) (diz@@6 T@Ref) ) (! (|Tree__state#everUsed_43111| (Tree__state diz@@6))
 :qid |stdinbpl.2444:15|
 :skolemid |109|
 :pattern ( (|Tree__state#trigger_43111| Heap@@14 (Tree__state diz@@6)))
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
(assert (forall ((Heap@@15 T@PolymorphicMapType_87808) (Mask@@6 T@PolymorphicMapType_87829) (t_2@@1 T@Ref) ) (!  (=> (state Heap@@15 Mask@@6) (= (|Tree__sorted'| Heap@@15 t_2@@1) (|Tree__sorted#frame| (FrameFragment_43112 (ite (not (= t_2@@1 null)) (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@15) null (Tree__state t_2@@1)) EmptyFrame)) t_2@@1)))
 :qid |stdinbpl.1918:15|
 :skolemid |97|
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
(assert (forall ((Heap@@16 T@PolymorphicMapType_87808) (diz@@7 T@Ref) ) (!  (and (= (Wand_state_contains_for_state_contains__get_in_1 Heap@@16 diz@@7) (|Wand_state_contains_for_state_contains__get_in_1'| Heap@@16 diz@@7)) (dummyFunction_42867 (|Wand_state_contains_for_state_contains__get_in_1#triggerStateless| diz@@7)))
 :qid |stdinbpl.618:15|
 :skolemid |58|
 :pattern ( (Wand_state_contains_for_state_contains__get_in_1 Heap@@16 diz@@7))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_87808) (diz@@8 T@Ref) ) (!  (and (= (Wand_state_contains_for_state_contains__get_in_1_0 Heap@@17 diz@@8) (|Wand_state_contains_for_state_contains__get_in_1_0'| Heap@@17 diz@@8)) (dummyFunction_109436 (|Wand_state_contains_for_state_contains__get_in_1_0#triggerStateless| diz@@8)))
 :qid |stdinbpl.888:15|
 :skolemid |65|
 :pattern ( (Wand_state_contains_for_state_contains__get_in_1_0 Heap@@17 diz@@8))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_87808) (diz@@9 T@Ref) ) (!  (and (= (Wand_state_contains_for_state_contains__get_out_1 Heap@@18 diz@@9) (|Wand_state_contains_for_state_contains__get_out_1'| Heap@@18 diz@@9)) (dummyFunction_42867 (|Wand_state_contains_for_state_contains__get_out_1#triggerStateless| diz@@9)))
 :qid |stdinbpl.1146:15|
 :skolemid |71|
 :pattern ( (Wand_state_contains_for_state_contains__get_out_1 Heap@@18 diz@@9))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_87808) (diz@@10 T@Ref) ) (!  (and (= (Wand_state_contains_for_state_contains__get_out_1_0 Heap@@19 diz@@10) (|Wand_state_contains_for_state_contains__get_out_1_0'| Heap@@19 diz@@10)) (dummyFunction_109436 (|Wand_state_contains_for_state_contains__get_out_1_0#triggerStateless| diz@@10)))
 :qid |stdinbpl.1416:15|
 :skolemid |78|
 :pattern ( (Wand_state_contains_for_state_contains__get_out_1_0 Heap@@19 diz@@10))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_87808) (t_2@@2 T@Ref) ) (!  (and (= (Tree__tolist Heap@@20 t_2@@2) (|Tree__tolist'| Heap@@20 t_2@@2)) (dummyFunction_109436 (|Tree__tolist#triggerStateless| t_2@@2)))
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
(assert (forall ((Heap@@21 T@PolymorphicMapType_87808) (ExhaleHeap@@5 T@PolymorphicMapType_87808) (Mask@@7 T@PolymorphicMapType_87829) (pm_f_54@@5 T@Field_97021_97022) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_43111_43112 Mask@@7 null pm_f_54@@5) (IsPredicateField_43111_43112 pm_f_54@@5)) (= (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@21) null (PredicateMaskField_43111 pm_f_54@@5)) (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@5) null (PredicateMaskField_43111 pm_f_54@@5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@5 Mask@@7) (IsPredicateField_43111_43112 pm_f_54@@5) (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@5) null (PredicateMaskField_43111 pm_f_54@@5)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_87808) (ExhaleHeap@@6 T@PolymorphicMapType_87808) (Mask@@8 T@PolymorphicMapType_87829) (pm_f_54@@6 T@Field_94947_94948) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_43083_43084 Mask@@8 null pm_f_54@@6) (IsPredicateField_43083_43084 pm_f_54@@6)) (= (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@22) null (PredicateMaskField_43083 pm_f_54@@6)) (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@6) null (PredicateMaskField_43083 pm_f_54@@6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@6 Mask@@8) (IsPredicateField_43083_43084 pm_f_54@@6) (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@6) null (PredicateMaskField_43083 pm_f_54@@6)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_87808) (ExhaleHeap@@7 T@PolymorphicMapType_87808) (Mask@@9 T@PolymorphicMapType_87829) (pm_f_54@@7 T@Field_42789_43084) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@7 Mask@@9) (=> (and (HasDirectPerm_42789_43084 Mask@@9 null pm_f_54@@7) (IsPredicateField_42789_324659 pm_f_54@@7)) (= (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@23) null (PredicateMaskField_42789 pm_f_54@@7)) (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@7) null (PredicateMaskField_42789 pm_f_54@@7)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@7 Mask@@9) (IsPredicateField_42789_324659 pm_f_54@@7) (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@7) null (PredicateMaskField_42789 pm_f_54@@7)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_87808) (ExhaleHeap@@8 T@PolymorphicMapType_87808) (Mask@@10 T@PolymorphicMapType_87829) (pm_f_54@@8 T@Field_97021_97022) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@8 Mask@@10) (=> (and (HasDirectPerm_43111_43112 Mask@@10 null pm_f_54@@8) (IsWandField_43111_330937 pm_f_54@@8)) (= (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@24) null (WandMaskField_43111 pm_f_54@@8)) (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@8) null (WandMaskField_43111 pm_f_54@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@8 Mask@@10) (IsWandField_43111_330937 pm_f_54@@8) (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@8) null (WandMaskField_43111 pm_f_54@@8)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_87808) (ExhaleHeap@@9 T@PolymorphicMapType_87808) (Mask@@11 T@PolymorphicMapType_87829) (pm_f_54@@9 T@Field_94947_94948) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@9 Mask@@11) (=> (and (HasDirectPerm_43083_43084 Mask@@11 null pm_f_54@@9) (IsWandField_43083_330580 pm_f_54@@9)) (= (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@25) null (WandMaskField_43083 pm_f_54@@9)) (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@9) null (WandMaskField_43083 pm_f_54@@9)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@9 Mask@@11) (IsWandField_43083_330580 pm_f_54@@9) (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@9) null (WandMaskField_43083 pm_f_54@@9)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_87808) (ExhaleHeap@@10 T@PolymorphicMapType_87808) (Mask@@12 T@PolymorphicMapType_87829) (pm_f_54@@10 T@Field_42789_43084) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@10 Mask@@12) (=> (and (HasDirectPerm_42789_43084 Mask@@12 null pm_f_54@@10) (IsWandField_42789_330223 pm_f_54@@10)) (= (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@26) null (WandMaskField_42789 pm_f_54@@10)) (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@10) null (WandMaskField_42789 pm_f_54@@10)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@10 Mask@@12) (IsWandField_42789_330223 pm_f_54@@10) (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@10) null (WandMaskField_42789 pm_f_54@@10)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_87808) (Mask@@13 T@PolymorphicMapType_87829) (t_2@@3 T@Ref) ) (!  (=> (state Heap@@27 Mask@@13) (= (|Tree__tolist'| Heap@@27 t_2@@3) (|Tree__tolist#frame| (FrameFragment_43112 (ite (not (= t_2@@3 null)) (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@27) null (Tree__state t_2@@3)) EmptyFrame)) t_2@@3)))
 :qid |stdinbpl.1691:15|
 :skolemid |87|
 :pattern ( (state Heap@@27 Mask@@13) (|Tree__tolist'| Heap@@27 t_2@@3))
 :pattern ( (state Heap@@27 Mask@@13) (|Tree__tolist#triggerStateless| t_2@@3) (|Tree__state#trigger_43111| Heap@@27 (Tree__state t_2@@3)) (|Tree__state#trigger_43111| Heap@@27 (Tree__state t_2@@3)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_3235| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.526:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_3235| x@@0) y))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_87808) (Mask@@14 T@PolymorphicMapType_87829) (s_2@@0 T@Seq_2867) ) (!  (=> (and (state Heap@@28 Mask@@14) (< AssumeFunctionsAbove 5)) (Tree__sorted_list Heap@@28 s_2@@0))
 :qid |stdinbpl.1861:15|
 :skolemid |92|
 :pattern ( (state Heap@@28 Mask@@14) (Tree__sorted_list Heap@@28 s_2@@0))
)))
(assert (forall ((s@@5 T@Seq_2867) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2867| s@@5))) (= (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2) (|Seq#Index_2867| s@@5 j@@2)))
 :qid |stdinbpl.277:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2867| s@@5 j@@2) (|Seq#Take_2867| s@@5 n@@4))
)))
(assert (forall ((diz@@11 T@Ref) (diz2 T@Ref) ) (!  (=> (= (Wand_state_contains_for_state_contains__valid_wand diz@@11) (Wand_state_contains_for_state_contains__valid_wand diz2)) (= diz@@11 diz2))
 :qid |stdinbpl.2002:15|
 :skolemid |101|
 :pattern ( (Wand_state_contains_for_state_contains__valid_wand diz@@11) (Wand_state_contains_for_state_contains__valid_wand diz2))
)))
(assert (forall ((diz@@12 T@Ref) (diz2@@0 T@Ref) ) (!  (=> (= (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@12) (|Wand_state_contains_for_state_contains__valid_wand#sm| diz2@@0)) (= diz@@12 diz2@@0))
 :qid |stdinbpl.2006:15|
 :skolemid |102|
 :pattern ( (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@12) (|Wand_state_contains_for_state_contains__valid_wand#sm| diz2@@0))
)))
(assert (forall ((diz@@13 T@Ref) (diz2@@1 T@Ref) ) (!  (=> (= (Tree__state diz@@13) (Tree__state diz2@@1)) (= diz@@13 diz2@@1))
 :qid |stdinbpl.2435:15|
 :skolemid |107|
 :pattern ( (Tree__state diz@@13) (Tree__state diz2@@1))
)))
(assert (forall ((diz@@14 T@Ref) (diz2@@2 T@Ref) ) (!  (=> (= (|Tree__state#sm| diz@@14) (|Tree__state#sm| diz2@@2)) (= diz@@14 diz2@@2))
 :qid |stdinbpl.2439:15|
 :skolemid |108|
 :pattern ( (|Tree__state#sm| diz@@14) (|Tree__state#sm| diz2@@2))
)))
(assert (forall ((s@@6 T@Seq_2867) (t T@Seq_2867) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2867| s@@6))) (< n@@5 (|Seq#Length_2867| (|Seq#Append_3128| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)) (|Seq#Length_2867| s@@6)) n@@5) (= (|Seq#Take_2867| (|Seq#Append_3128| s@@6 t) n@@5) (|Seq#Append_3128| s@@6 (|Seq#Take_2867| t (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)))))))
 :qid |stdinbpl.362:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_3128| s@@6 t) n@@5))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@29 T@PolymorphicMapType_87808) (ExhaleHeap@@11 T@PolymorphicMapType_87808) (Mask@@15 T@PolymorphicMapType_87829) (o_77 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@11 Mask@@15) (=> (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@29) o_77 $allocated) (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap@@11) o_77 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@11 Mask@@15) (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap@@11) o_77 $allocated))
)))
(assert (forall ((p T@Field_42789_43084) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_87868_87868 p v_1 p w))
 :qid |stdinbpl.180:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_87868_87868 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_97021_97022) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_43111_43111 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.180:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_43111_43111 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_94947_94948) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_43083_43083 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.180:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_43083_43083 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_87808) (Mask@@16 T@PolymorphicMapType_87829) (diz@@15 T@Ref) ) (!  (=> (and (state Heap@@30 Mask@@16) (or (< AssumeFunctionsAbove 1) (|Wand_state_contains_for_state_contains__get_out_1#trigger| (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@30) null (Wand_state_contains_for_state_contains__valid_wand diz@@15)) diz@@15))) (=> (not (= diz@@15 null)) (not (= (|Wand_state_contains_for_state_contains__get_out_1'| Heap@@30 diz@@15) null))))
 :qid |stdinbpl.1169:15|
 :skolemid |75|
 :pattern ( (state Heap@@30 Mask@@16) (|Wand_state_contains_for_state_contains__get_out_1'| Heap@@30 diz@@15))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_87808) (Mask@@17 T@PolymorphicMapType_87829) (diz@@16 T@Ref) ) (!  (=> (and (state Heap@@31 Mask@@17) (or (< AssumeFunctionsAbove 2) (|Wand_state_contains_for_state_contains__get_in_1#trigger| (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@31) null (Wand_state_contains_for_state_contains__valid_wand diz@@16)) diz@@16))) (=> (not (= diz@@16 null)) (not (= (|Wand_state_contains_for_state_contains__get_in_1'| Heap@@31 diz@@16) null))))
 :qid |stdinbpl.641:15|
 :skolemid |62|
 :pattern ( (state Heap@@31 Mask@@17) (|Wand_state_contains_for_state_contains__get_in_1'| Heap@@31 diz@@16))
)))
(assert (forall ((s0 T@Seq_2867) (s1 T@Seq_2867) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_12082|)) (not (= s1 |Seq#Empty_12082|))) (<= (|Seq#Length_2867| s0) n@@6)) (< n@@6 (|Seq#Length_2867| (|Seq#Append_3128| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2867| s0)) (|Seq#Length_2867| s0)) n@@6) (= (|Seq#Index_2867| (|Seq#Append_3128| s0 s1) n@@6) (|Seq#Index_2867| s1 (|Seq#Sub| n@@6 (|Seq#Length_2867| s0))))))
 :qid |stdinbpl.249:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3128| s0 s1) n@@6))
)))
(assert  (not (IsPredicateField_42787_2989 Wand_state_contains_for_state_contains__lemma)))
(assert  (not (IsWandField_42787_2989 Wand_state_contains_for_state_contains__lemma)))
(assert  (not (IsPredicateField_42789_42790 Wand_state_contains_for_state_contains__in_1)))
(assert  (not (IsWandField_42789_42790 Wand_state_contains_for_state_contains__in_1)))
(assert  (not (IsPredicateField_42792_94003 Wand_state_contains_for_state_contains__in_1_0)))
(assert  (not (IsWandField_42792_94026 Wand_state_contains_for_state_contains__in_1_0)))
(assert  (not (IsPredicateField_42789_42790 Wand_state_contains_for_state_contains__out_1)))
(assert  (not (IsWandField_42789_42790 Wand_state_contains_for_state_contains__out_1)))
(assert  (not (IsPredicateField_42792_94003 Wand_state_contains_for_state_contains__out_1_0)))
(assert  (not (IsWandField_42792_94026 Wand_state_contains_for_state_contains__out_1_0)))
(assert  (not (IsPredicateField_42789_42790 Wand_state_contains_for_state_contains__this_1)))
(assert  (not (IsWandField_42789_42790 Wand_state_contains_for_state_contains__this_1)))
(assert  (not (IsPredicateField_42792_94003 Wand_state_contains_for_state_contains__target_contents_1)))
(assert  (not (IsWandField_42792_94026 Wand_state_contains_for_state_contains__target_contents_1)))
(assert  (not (IsPredicateField_42792_94003 Wand_state_contains_for_state_contains__prev_contents_1)))
(assert  (not (IsWandField_42792_94026 Wand_state_contains_for_state_contains__prev_contents_1)))
(assert  (not (IsPredicateField_42789_42790 Wand_state_contains_for_state_contains__prev_1)))
(assert  (not (IsWandField_42789_42790 Wand_state_contains_for_state_contains__prev_1)))
(assert  (not (IsPredicateField_42792_94003 Wand_state_contains_for_state_contains__cur_contents_1)))
(assert  (not (IsWandField_42792_94026 Wand_state_contains_for_state_contains__cur_contents_1)))
(assert  (not (IsPredicateField_42789_42790 Wand_state_contains_for_state_contains__top_1)))
(assert  (not (IsWandField_42789_42790 Wand_state_contains_for_state_contains__top_1)))
(assert  (not (IsPredicateField_42789_42790 Wand_state_contains_for_state_contains__cur_1)))
(assert  (not (IsWandField_42789_42790 Wand_state_contains_for_state_contains__cur_1)))
(assert  (not (IsPredicateField_42789_42790 Wand_state_contains_for_state_contains__wand_1)))
(assert  (not (IsWandField_42789_42790 Wand_state_contains_for_state_contains__wand_1)))
(assert  (not (IsPredicateField_42789_42790 Wand_state_contains_for_state_contains__this_2)))
(assert  (not (IsWandField_42789_42790 Wand_state_contains_for_state_contains__this_2)))
(assert  (not (IsPredicateField_42792_94003 Wand_state_contains_for_state_contains__target_contents_2)))
(assert  (not (IsWandField_42792_94026 Wand_state_contains_for_state_contains__target_contents_2)))
(assert  (not (IsPredicateField_42789_42790 Wand_state_contains_for_state_contains__top_2)))
(assert  (not (IsWandField_42789_42790 Wand_state_contains_for_state_contains__top_2)))
(assert  (not (IsPredicateField_42787_2989 Tree__data)))
(assert  (not (IsWandField_42787_2989 Tree__data)))
(assert  (not (IsPredicateField_42789_42790 Tree__left)))
(assert  (not (IsWandField_42789_42790 Tree__left)))
(assert  (not (IsPredicateField_42789_42790 Tree__right)))
(assert  (not (IsWandField_42789_42790 Tree__right)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_87808) (ExhaleHeap@@12 T@PolymorphicMapType_87808) (Mask@@18 T@PolymorphicMapType_87829) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@12 Mask@@18) (succHeap Heap@@32 ExhaleHeap@@12))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@12 Mask@@18))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_87808) (Mask@@19 T@PolymorphicMapType_87829) (t_2@@4 T@Ref) ) (!  (=> (and (state Heap@@33 Mask@@19) (< AssumeFunctionsAbove 6)) (= (Tree__tolist Heap@@33 t_2@@4) (ite (= t_2@@4 null) |Seq#Empty_12082| (|Seq#Append_3128| (|Seq#Append_3128| (|Tree__tolist'| Heap@@33 (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@33) t_2@@4 Tree__left)) (|Seq#Singleton_3235| (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@33) t_2@@4 Tree__data))) (|Tree__tolist'| Heap@@33 (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@33) t_2@@4 Tree__right))))))
 :qid |stdinbpl.1684:15|
 :skolemid |86|
 :pattern ( (state Heap@@33 Mask@@19) (Tree__tolist Heap@@33 t_2@@4))
 :pattern ( (state Heap@@33 Mask@@19) (|Tree__tolist#triggerStateless| t_2@@4) (|Tree__state#trigger_43111| Heap@@33 (Tree__state t_2@@4)) (|Tree__state#trigger_43111| Heap@@33 (Tree__state t_2@@4)))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_87829) (o_2@@17 T@Ref) (f_4@@17 T@Field_107854_107859) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| Mask@@20) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_43111_343048 f_4@@17))) (not (IsWandField_43111_343064 f_4@@17))) (<= (select (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| Mask@@20) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| Mask@@20) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_87829) (o_2@@18 T@Ref) (f_4@@18 T@Field_43111_53) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| Mask@@21) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_43111_53 f_4@@18))) (not (IsWandField_43111_53 f_4@@18))) (<= (select (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| Mask@@21) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| Mask@@21) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_87829) (o_2@@19 T@Ref) (f_4@@19 T@Field_43111_118571) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| Mask@@22) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_43111_98051 f_4@@19))) (not (IsWandField_43111_98051 f_4@@19))) (<= (select (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| Mask@@22) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| Mask@@22) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_87829) (o_2@@20 T@Ref) (f_4@@20 T@Field_43111_42790) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| Mask@@23) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_43111_42790 f_4@@20))) (not (IsWandField_43111_42790 f_4@@20))) (<= (select (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| Mask@@23) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| Mask@@23) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_87829) (o_2@@21 T@Ref) (f_4@@21 T@Field_43111_3235) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| Mask@@24) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_43111_2989 f_4@@21))) (not (IsWandField_43111_2989 f_4@@21))) (<= (select (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| Mask@@24) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| Mask@@24) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_87829) (o_2@@22 T@Ref) (f_4@@22 T@Field_97021_97022) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| Mask@@25) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_43111_43112 f_4@@22))) (not (IsWandField_43111_330937 f_4@@22))) (<= (select (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| Mask@@25) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| Mask@@25) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_87829) (o_2@@23 T@Ref) (f_4@@23 T@Field_42789_104379) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| Mask@@26) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_42787_342049 f_4@@23))) (not (IsWandField_42787_342065 f_4@@23))) (<= (select (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| Mask@@26) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| Mask@@26) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_87829) (o_2@@24 T@Ref) (f_4@@24 T@Field_87868_53) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| Mask@@27) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_42787_53 f_4@@24))) (not (IsWandField_42787_53 f_4@@24))) (<= (select (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| Mask@@27) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| Mask@@27) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_87829) (o_2@@25 T@Ref) (f_4@@25 T@Field_93982_93984) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| Mask@@28) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_42792_94003 f_4@@25))) (not (IsWandField_42792_94026 f_4@@25))) (<= (select (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| Mask@@28) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| Mask@@28) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_87829) (o_2@@26 T@Ref) (f_4@@26 T@Field_87881_87882) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| Mask@@29) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_42789_42790 f_4@@26))) (not (IsWandField_42789_42790 f_4@@26))) (<= (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| Mask@@29) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| Mask@@29) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_87829) (o_2@@27 T@Ref) (f_4@@27 T@Field_93886_2989) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| Mask@@30) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_42787_2989 f_4@@27))) (not (IsWandField_42787_2989 f_4@@27))) (<= (select (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| Mask@@30) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| Mask@@30) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_87829) (o_2@@28 T@Ref) (f_4@@28 T@Field_42789_43084) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| Mask@@31) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_42789_324659 f_4@@28))) (not (IsWandField_42789_330223 f_4@@28))) (<= (select (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| Mask@@31) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| Mask@@31) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_87829) (o_2@@29 T@Ref) (f_4@@29 T@Field_104374_104379) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| Mask@@32) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_43083_341092 f_4@@29))) (not (IsWandField_43083_341108 f_4@@29))) (<= (select (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| Mask@@32) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| Mask@@32) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_87829) (o_2@@30 T@Ref) (f_4@@30 T@Field_43083_53) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| Mask@@33) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_43083_53 f_4@@30))) (not (IsWandField_43083_53 f_4@@30))) (<= (select (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| Mask@@33) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| Mask@@33) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_87829) (o_2@@31 T@Ref) (f_4@@31 T@Field_43083_118571) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| Mask@@34) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_43083_98051 f_4@@31))) (not (IsWandField_43083_98051 f_4@@31))) (<= (select (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| Mask@@34) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| Mask@@34) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_87829) (o_2@@32 T@Ref) (f_4@@32 T@Field_43083_42790) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| Mask@@35) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_43083_42790 f_4@@32))) (not (IsWandField_43083_42790 f_4@@32))) (<= (select (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| Mask@@35) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| Mask@@35) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_87829) (o_2@@33 T@Ref) (f_4@@33 T@Field_43083_3235) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| Mask@@36) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_43083_2989 f_4@@33))) (not (IsWandField_43083_2989 f_4@@33))) (<= (select (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| Mask@@36) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| Mask@@36) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_87829) (o_2@@34 T@Ref) (f_4@@34 T@Field_94947_94948) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| Mask@@37) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_43083_43084 f_4@@34))) (not (IsWandField_43083_330580 f_4@@34))) (<= (select (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| Mask@@37) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| Mask@@37) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_87829) (o_2@@35 T@Ref) (f_4@@35 T@Field_107854_107859) ) (! (= (HasDirectPerm_43111_324414 Mask@@38 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| Mask@@38) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43111_324414 Mask@@38 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_87829) (o_2@@36 T@Ref) (f_4@@36 T@Field_43111_53) ) (! (= (HasDirectPerm_43111_53 Mask@@39 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| Mask@@39) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43111_53 Mask@@39 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_87829) (o_2@@37 T@Ref) (f_4@@37 T@Field_97021_97022) ) (! (= (HasDirectPerm_43111_43112 Mask@@40 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| Mask@@40) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43111_43112 Mask@@40 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_87829) (o_2@@38 T@Ref) (f_4@@38 T@Field_43111_3235) ) (! (= (HasDirectPerm_43111_3235 Mask@@41 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| Mask@@41) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43111_3235 Mask@@41 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_87829) (o_2@@39 T@Ref) (f_4@@39 T@Field_43111_118571) ) (! (= (HasDirectPerm_43111_118571 Mask@@42 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| Mask@@42) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43111_118571 Mask@@42 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_87829) (o_2@@40 T@Ref) (f_4@@40 T@Field_43111_42790) ) (! (= (HasDirectPerm_43111_42790 Mask@@43 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| Mask@@43) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43111_42790 Mask@@43 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_87829) (o_2@@41 T@Ref) (f_4@@41 T@Field_104374_104379) ) (! (= (HasDirectPerm_43083_323087 Mask@@44 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| Mask@@44) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43083_323087 Mask@@44 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_87829) (o_2@@42 T@Ref) (f_4@@42 T@Field_43083_53) ) (! (= (HasDirectPerm_43083_53 Mask@@45 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| Mask@@45) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43083_53 Mask@@45 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_87829) (o_2@@43 T@Ref) (f_4@@43 T@Field_94947_94948) ) (! (= (HasDirectPerm_43083_43084 Mask@@46 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| Mask@@46) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43083_43084 Mask@@46 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_87829) (o_2@@44 T@Ref) (f_4@@44 T@Field_43083_3235) ) (! (= (HasDirectPerm_43083_3235 Mask@@47 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| Mask@@47) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43083_3235 Mask@@47 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_87829) (o_2@@45 T@Ref) (f_4@@45 T@Field_43083_118571) ) (! (= (HasDirectPerm_43083_118571 Mask@@48 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| Mask@@48) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43083_118571 Mask@@48 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_87829) (o_2@@46 T@Ref) (f_4@@46 T@Field_43083_42790) ) (! (= (HasDirectPerm_43083_42790 Mask@@49 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| Mask@@49) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43083_42790 Mask@@49 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_87829) (o_2@@47 T@Ref) (f_4@@47 T@Field_42789_104379) ) (! (= (HasDirectPerm_42789_321717 Mask@@50 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| Mask@@50) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_42789_321717 Mask@@50 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_87829) (o_2@@48 T@Ref) (f_4@@48 T@Field_87868_53) ) (! (= (HasDirectPerm_42789_53 Mask@@51 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| Mask@@51) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_42789_53 Mask@@51 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_87829) (o_2@@49 T@Ref) (f_4@@49 T@Field_42789_43084) ) (! (= (HasDirectPerm_42789_43084 Mask@@52 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| Mask@@52) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_42789_43084 Mask@@52 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_87829) (o_2@@50 T@Ref) (f_4@@50 T@Field_93886_2989) ) (! (= (HasDirectPerm_42834_3235 Mask@@53 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| Mask@@53) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_42834_3235 Mask@@53 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_87829) (o_2@@51 T@Ref) (f_4@@51 T@Field_93982_93984) ) (! (= (HasDirectPerm_42792_118571 Mask@@54 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| Mask@@54) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_42792_118571 Mask@@54 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_87829) (o_2@@52 T@Ref) (f_4@@52 T@Field_87881_87882) ) (! (= (HasDirectPerm_42789_42790 Mask@@55 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| Mask@@55) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_42789_42790 Mask@@55 o_2@@52 f_4@@52))
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
(assert (forall ((Heap@@34 T@PolymorphicMapType_87808) (ExhaleHeap@@13 T@PolymorphicMapType_87808) (Mask@@56 T@PolymorphicMapType_87829) (o_77@@0 T@Ref) (f_63@@107 T@Field_107854_107859) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@13 Mask@@56) (=> (HasDirectPerm_43111_324414 Mask@@56 o_77@@0 f_63@@107) (= (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@34) o_77@@0 f_63@@107) (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@13) o_77@@0 f_63@@107))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@13 Mask@@56) (select (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| ExhaleHeap@@13) o_77@@0 f_63@@107))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_87808) (ExhaleHeap@@14 T@PolymorphicMapType_87808) (Mask@@57 T@PolymorphicMapType_87829) (o_77@@1 T@Ref) (f_63@@108 T@Field_43111_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@14 Mask@@57) (=> (HasDirectPerm_43111_53 Mask@@57 o_77@@1 f_63@@108) (= (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@35) o_77@@1 f_63@@108) (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| ExhaleHeap@@14) o_77@@1 f_63@@108))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@14 Mask@@57) (select (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| ExhaleHeap@@14) o_77@@1 f_63@@108))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_87808) (ExhaleHeap@@15 T@PolymorphicMapType_87808) (Mask@@58 T@PolymorphicMapType_87829) (o_77@@2 T@Ref) (f_63@@109 T@Field_97021_97022) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@15 Mask@@58) (=> (HasDirectPerm_43111_43112 Mask@@58 o_77@@2 f_63@@109) (= (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@36) o_77@@2 f_63@@109) (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| ExhaleHeap@@15) o_77@@2 f_63@@109))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@15 Mask@@58) (select (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| ExhaleHeap@@15) o_77@@2 f_63@@109))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_87808) (ExhaleHeap@@16 T@PolymorphicMapType_87808) (Mask@@59 T@PolymorphicMapType_87829) (o_77@@3 T@Ref) (f_63@@110 T@Field_43111_3235) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@16 Mask@@59) (=> (HasDirectPerm_43111_3235 Mask@@59 o_77@@3 f_63@@110) (= (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@37) o_77@@3 f_63@@110) (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| ExhaleHeap@@16) o_77@@3 f_63@@110))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@16 Mask@@59) (select (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| ExhaleHeap@@16) o_77@@3 f_63@@110))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_87808) (ExhaleHeap@@17 T@PolymorphicMapType_87808) (Mask@@60 T@PolymorphicMapType_87829) (o_77@@4 T@Ref) (f_63@@111 T@Field_43111_118571) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@17 Mask@@60) (=> (HasDirectPerm_43111_118571 Mask@@60 o_77@@4 f_63@@111) (= (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@38) o_77@@4 f_63@@111) (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| ExhaleHeap@@17) o_77@@4 f_63@@111))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@17 Mask@@60) (select (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| ExhaleHeap@@17) o_77@@4 f_63@@111))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_87808) (ExhaleHeap@@18 T@PolymorphicMapType_87808) (Mask@@61 T@PolymorphicMapType_87829) (o_77@@5 T@Ref) (f_63@@112 T@Field_43111_42790) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@18 Mask@@61) (=> (HasDirectPerm_43111_42790 Mask@@61 o_77@@5 f_63@@112) (= (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@39) o_77@@5 f_63@@112) (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| ExhaleHeap@@18) o_77@@5 f_63@@112))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@18 Mask@@61) (select (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| ExhaleHeap@@18) o_77@@5 f_63@@112))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_87808) (ExhaleHeap@@19 T@PolymorphicMapType_87808) (Mask@@62 T@PolymorphicMapType_87829) (o_77@@6 T@Ref) (f_63@@113 T@Field_104374_104379) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@19 Mask@@62) (=> (HasDirectPerm_43083_323087 Mask@@62 o_77@@6 f_63@@113) (= (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@40) o_77@@6 f_63@@113) (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@19) o_77@@6 f_63@@113))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@19 Mask@@62) (select (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| ExhaleHeap@@19) o_77@@6 f_63@@113))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_87808) (ExhaleHeap@@20 T@PolymorphicMapType_87808) (Mask@@63 T@PolymorphicMapType_87829) (o_77@@7 T@Ref) (f_63@@114 T@Field_43083_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@20 Mask@@63) (=> (HasDirectPerm_43083_53 Mask@@63 o_77@@7 f_63@@114) (= (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@41) o_77@@7 f_63@@114) (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| ExhaleHeap@@20) o_77@@7 f_63@@114))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@20 Mask@@63) (select (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| ExhaleHeap@@20) o_77@@7 f_63@@114))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_87808) (ExhaleHeap@@21 T@PolymorphicMapType_87808) (Mask@@64 T@PolymorphicMapType_87829) (o_77@@8 T@Ref) (f_63@@115 T@Field_94947_94948) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@21 Mask@@64) (=> (HasDirectPerm_43083_43084 Mask@@64 o_77@@8 f_63@@115) (= (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@42) o_77@@8 f_63@@115) (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| ExhaleHeap@@21) o_77@@8 f_63@@115))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@21 Mask@@64) (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| ExhaleHeap@@21) o_77@@8 f_63@@115))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_87808) (ExhaleHeap@@22 T@PolymorphicMapType_87808) (Mask@@65 T@PolymorphicMapType_87829) (o_77@@9 T@Ref) (f_63@@116 T@Field_43083_3235) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@22 Mask@@65) (=> (HasDirectPerm_43083_3235 Mask@@65 o_77@@9 f_63@@116) (= (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@43) o_77@@9 f_63@@116) (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| ExhaleHeap@@22) o_77@@9 f_63@@116))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@22 Mask@@65) (select (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| ExhaleHeap@@22) o_77@@9 f_63@@116))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_87808) (ExhaleHeap@@23 T@PolymorphicMapType_87808) (Mask@@66 T@PolymorphicMapType_87829) (o_77@@10 T@Ref) (f_63@@117 T@Field_43083_118571) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@23 Mask@@66) (=> (HasDirectPerm_43083_118571 Mask@@66 o_77@@10 f_63@@117) (= (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@44) o_77@@10 f_63@@117) (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| ExhaleHeap@@23) o_77@@10 f_63@@117))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@23 Mask@@66) (select (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| ExhaleHeap@@23) o_77@@10 f_63@@117))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_87808) (ExhaleHeap@@24 T@PolymorphicMapType_87808) (Mask@@67 T@PolymorphicMapType_87829) (o_77@@11 T@Ref) (f_63@@118 T@Field_43083_42790) ) (!  (=> (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@24 Mask@@67) (=> (HasDirectPerm_43083_42790 Mask@@67 o_77@@11 f_63@@118) (= (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@45) o_77@@11 f_63@@118) (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| ExhaleHeap@@24) o_77@@11 f_63@@118))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@24 Mask@@67) (select (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| ExhaleHeap@@24) o_77@@11 f_63@@118))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_87808) (ExhaleHeap@@25 T@PolymorphicMapType_87808) (Mask@@68 T@PolymorphicMapType_87829) (o_77@@12 T@Ref) (f_63@@119 T@Field_42789_104379) ) (!  (=> (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@25 Mask@@68) (=> (HasDirectPerm_42789_321717 Mask@@68 o_77@@12 f_63@@119) (= (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@46) o_77@@12 f_63@@119) (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@25) o_77@@12 f_63@@119))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@25 Mask@@68) (select (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| ExhaleHeap@@25) o_77@@12 f_63@@119))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_87808) (ExhaleHeap@@26 T@PolymorphicMapType_87808) (Mask@@69 T@PolymorphicMapType_87829) (o_77@@13 T@Ref) (f_63@@120 T@Field_87868_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@26 Mask@@69) (=> (HasDirectPerm_42789_53 Mask@@69 o_77@@13 f_63@@120) (= (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@47) o_77@@13 f_63@@120) (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap@@26) o_77@@13 f_63@@120))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@26 Mask@@69) (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| ExhaleHeap@@26) o_77@@13 f_63@@120))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_87808) (ExhaleHeap@@27 T@PolymorphicMapType_87808) (Mask@@70 T@PolymorphicMapType_87829) (o_77@@14 T@Ref) (f_63@@121 T@Field_42789_43084) ) (!  (=> (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@27 Mask@@70) (=> (HasDirectPerm_42789_43084 Mask@@70 o_77@@14 f_63@@121) (= (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@48) o_77@@14 f_63@@121) (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| ExhaleHeap@@27) o_77@@14 f_63@@121))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@27 Mask@@70) (select (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| ExhaleHeap@@27) o_77@@14 f_63@@121))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_87808) (ExhaleHeap@@28 T@PolymorphicMapType_87808) (Mask@@71 T@PolymorphicMapType_87829) (o_77@@15 T@Ref) (f_63@@122 T@Field_93886_2989) ) (!  (=> (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@28 Mask@@71) (=> (HasDirectPerm_42834_3235 Mask@@71 o_77@@15 f_63@@122) (= (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@49) o_77@@15 f_63@@122) (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| ExhaleHeap@@28) o_77@@15 f_63@@122))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@28 Mask@@71) (select (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| ExhaleHeap@@28) o_77@@15 f_63@@122))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_87808) (ExhaleHeap@@29 T@PolymorphicMapType_87808) (Mask@@72 T@PolymorphicMapType_87829) (o_77@@16 T@Ref) (f_63@@123 T@Field_93982_93984) ) (!  (=> (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@29 Mask@@72) (=> (HasDirectPerm_42792_118571 Mask@@72 o_77@@16 f_63@@123) (= (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@50) o_77@@16 f_63@@123) (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| ExhaleHeap@@29) o_77@@16 f_63@@123))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@29 Mask@@72) (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| ExhaleHeap@@29) o_77@@16 f_63@@123))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_87808) (ExhaleHeap@@30 T@PolymorphicMapType_87808) (Mask@@73 T@PolymorphicMapType_87829) (o_77@@17 T@Ref) (f_63@@124 T@Field_87881_87882) ) (!  (=> (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@30 Mask@@73) (=> (HasDirectPerm_42789_42790 Mask@@73 o_77@@17 f_63@@124) (= (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@51) o_77@@17 f_63@@124) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| ExhaleHeap@@30) o_77@@17 f_63@@124))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@30 Mask@@73) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| ExhaleHeap@@30) o_77@@17 f_63@@124))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_12082|)) (not (= s1@@0 |Seq#Empty_12082|))) (= (|Seq#Length_2867| (|Seq#Append_3128| s0@@0 s1@@0)) (+ (|Seq#Length_2867| s0@@0) (|Seq#Length_2867| s1@@0))))
 :qid |stdinbpl.218:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_3128| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_107854_107859) ) (! (= (select (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_43111_53) ) (! (= (select (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_43111_118571) ) (! (= (select (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_43111_42790) ) (! (= (select (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_43111_3235) ) (! (= (select (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_97021_97022) ) (! (= (select (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_42789_104379) ) (! (= (select (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_87868_53) ) (! (= (select (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_93982_93984) ) (! (= (select (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_87881_87882) ) (! (= (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_93886_2989) ) (! (= (select (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_42789_43084) ) (! (= (select (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_104374_104379) ) (! (= (select (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_43083_53) ) (! (= (select (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_43083_118571) ) (! (= (select (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_43083_42790) ) (! (= (select (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_43083_3235) ) (! (= (select (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_94947_94948) ) (! (= (select (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((s@@7 T@Seq_2867) (t@@0 T@Seq_2867) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2867| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7)) (|Seq#Length_2867| s@@7)) n@@7) (= (|Seq#Drop_3097| (|Seq#Append_3128| s@@7 t@@0) n@@7) (|Seq#Drop_3097| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7))))))
 :qid |stdinbpl.375:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3097| (|Seq#Append_3128| s@@7 t@@0) n@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_87829) (SummandMask1 T@PolymorphicMapType_87829) (SummandMask2 T@PolymorphicMapType_87829) (o_2@@71 T@Ref) (f_4@@71 T@Field_107854_107859) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| ResultMask) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| SummandMask1) o_2@@71 f_4@@71) (select (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| SummandMask2) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| ResultMask) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| SummandMask1) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_87829_43111_338919#PolymorphicMapType_87829| SummandMask2) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_87829) (SummandMask1@@0 T@PolymorphicMapType_87829) (SummandMask2@@0 T@PolymorphicMapType_87829) (o_2@@72 T@Ref) (f_4@@72 T@Field_43111_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| ResultMask@@0) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| SummandMask1@@0) o_2@@72 f_4@@72) (select (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| SummandMask2@@0) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| ResultMask@@0) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| SummandMask1@@0) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_87829_43111_53#PolymorphicMapType_87829| SummandMask2@@0) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_87829) (SummandMask1@@1 T@PolymorphicMapType_87829) (SummandMask2@@1 T@PolymorphicMapType_87829) (o_2@@73 T@Ref) (f_4@@73 T@Field_43111_118571) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| ResultMask@@1) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| SummandMask1@@1) o_2@@73 f_4@@73) (select (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| SummandMask2@@1) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| ResultMask@@1) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| SummandMask1@@1) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_87829_43111_98051#PolymorphicMapType_87829| SummandMask2@@1) o_2@@73 f_4@@73))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_87829) (SummandMask1@@2 T@PolymorphicMapType_87829) (SummandMask2@@2 T@PolymorphicMapType_87829) (o_2@@74 T@Ref) (f_4@@74 T@Field_43111_42790) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| ResultMask@@2) o_2@@74 f_4@@74) (+ (select (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| SummandMask1@@2) o_2@@74 f_4@@74) (select (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| SummandMask2@@2) o_2@@74 f_4@@74))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| ResultMask@@2) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| SummandMask1@@2) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_87829_43111_42790#PolymorphicMapType_87829| SummandMask2@@2) o_2@@74 f_4@@74))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_87829) (SummandMask1@@3 T@PolymorphicMapType_87829) (SummandMask2@@3 T@PolymorphicMapType_87829) (o_2@@75 T@Ref) (f_4@@75 T@Field_43111_3235) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| ResultMask@@3) o_2@@75 f_4@@75) (+ (select (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| SummandMask1@@3) o_2@@75 f_4@@75) (select (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| SummandMask2@@3) o_2@@75 f_4@@75))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| ResultMask@@3) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| SummandMask1@@3) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_87829_43111_2989#PolymorphicMapType_87829| SummandMask2@@3) o_2@@75 f_4@@75))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_87829) (SummandMask1@@4 T@PolymorphicMapType_87829) (SummandMask2@@4 T@PolymorphicMapType_87829) (o_2@@76 T@Ref) (f_4@@76 T@Field_97021_97022) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| ResultMask@@4) o_2@@76 f_4@@76) (+ (select (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| SummandMask1@@4) o_2@@76 f_4@@76) (select (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| SummandMask2@@4) o_2@@76 f_4@@76))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| ResultMask@@4) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| SummandMask1@@4) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_87829_43111_43112#PolymorphicMapType_87829| SummandMask2@@4) o_2@@76 f_4@@76))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_87829) (SummandMask1@@5 T@PolymorphicMapType_87829) (SummandMask2@@5 T@PolymorphicMapType_87829) (o_2@@77 T@Ref) (f_4@@77 T@Field_42789_104379) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| ResultMask@@5) o_2@@77 f_4@@77) (+ (select (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| SummandMask1@@5) o_2@@77 f_4@@77) (select (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| SummandMask2@@5) o_2@@77 f_4@@77))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| ResultMask@@5) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| SummandMask1@@5) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_87829_42787_338425#PolymorphicMapType_87829| SummandMask2@@5) o_2@@77 f_4@@77))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_87829) (SummandMask1@@6 T@PolymorphicMapType_87829) (SummandMask2@@6 T@PolymorphicMapType_87829) (o_2@@78 T@Ref) (f_4@@78 T@Field_87868_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| ResultMask@@6) o_2@@78 f_4@@78) (+ (select (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| SummandMask1@@6) o_2@@78 f_4@@78) (select (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| SummandMask2@@6) o_2@@78 f_4@@78))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| ResultMask@@6) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| SummandMask1@@6) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_87829_42787_53#PolymorphicMapType_87829| SummandMask2@@6) o_2@@78 f_4@@78))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_87829) (SummandMask1@@7 T@PolymorphicMapType_87829) (SummandMask2@@7 T@PolymorphicMapType_87829) (o_2@@79 T@Ref) (f_4@@79 T@Field_93982_93984) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| ResultMask@@7) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| SummandMask1@@7) o_2@@79 f_4@@79) (select (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| SummandMask2@@7) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| ResultMask@@7) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| SummandMask1@@7) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_87829_42792_98051#PolymorphicMapType_87829| SummandMask2@@7) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_87829) (SummandMask1@@8 T@PolymorphicMapType_87829) (SummandMask2@@8 T@PolymorphicMapType_87829) (o_2@@80 T@Ref) (f_4@@80 T@Field_87881_87882) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| ResultMask@@8) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| SummandMask1@@8) o_2@@80 f_4@@80) (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| SummandMask2@@8) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| ResultMask@@8) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| SummandMask1@@8) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_87829_42789_42790#PolymorphicMapType_87829| SummandMask2@@8) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_87829) (SummandMask1@@9 T@PolymorphicMapType_87829) (SummandMask2@@9 T@PolymorphicMapType_87829) (o_2@@81 T@Ref) (f_4@@81 T@Field_93886_2989) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| ResultMask@@9) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| SummandMask1@@9) o_2@@81 f_4@@81) (select (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| SummandMask2@@9) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| ResultMask@@9) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| SummandMask1@@9) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_87829_42787_2989#PolymorphicMapType_87829| SummandMask2@@9) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_87829) (SummandMask1@@10 T@PolymorphicMapType_87829) (SummandMask2@@10 T@PolymorphicMapType_87829) (o_2@@82 T@Ref) (f_4@@82 T@Field_42789_43084) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| ResultMask@@10) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| SummandMask1@@10) o_2@@82 f_4@@82) (select (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| SummandMask2@@10) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| ResultMask@@10) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| SummandMask1@@10) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_87829_42787_43084#PolymorphicMapType_87829| SummandMask2@@10) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_87829) (SummandMask1@@11 T@PolymorphicMapType_87829) (SummandMask2@@11 T@PolymorphicMapType_87829) (o_2@@83 T@Ref) (f_4@@83 T@Field_104374_104379) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| ResultMask@@11) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| SummandMask1@@11) o_2@@83 f_4@@83) (select (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| SummandMask2@@11) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| ResultMask@@11) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| SummandMask1@@11) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_87829_43083_337958#PolymorphicMapType_87829| SummandMask2@@11) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_87829) (SummandMask1@@12 T@PolymorphicMapType_87829) (SummandMask2@@12 T@PolymorphicMapType_87829) (o_2@@84 T@Ref) (f_4@@84 T@Field_43083_53) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| ResultMask@@12) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| SummandMask1@@12) o_2@@84 f_4@@84) (select (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| SummandMask2@@12) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| ResultMask@@12) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| SummandMask1@@12) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_87829_43083_53#PolymorphicMapType_87829| SummandMask2@@12) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_87829) (SummandMask1@@13 T@PolymorphicMapType_87829) (SummandMask2@@13 T@PolymorphicMapType_87829) (o_2@@85 T@Ref) (f_4@@85 T@Field_43083_118571) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| ResultMask@@13) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| SummandMask1@@13) o_2@@85 f_4@@85) (select (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| SummandMask2@@13) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| ResultMask@@13) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| SummandMask1@@13) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_87829_43083_98051#PolymorphicMapType_87829| SummandMask2@@13) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_87829) (SummandMask1@@14 T@PolymorphicMapType_87829) (SummandMask2@@14 T@PolymorphicMapType_87829) (o_2@@86 T@Ref) (f_4@@86 T@Field_43083_42790) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| ResultMask@@14) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| SummandMask1@@14) o_2@@86 f_4@@86) (select (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| SummandMask2@@14) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| ResultMask@@14) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| SummandMask1@@14) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_87829_43083_42790#PolymorphicMapType_87829| SummandMask2@@14) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_87829) (SummandMask1@@15 T@PolymorphicMapType_87829) (SummandMask2@@15 T@PolymorphicMapType_87829) (o_2@@87 T@Ref) (f_4@@87 T@Field_43083_3235) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| ResultMask@@15) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| SummandMask1@@15) o_2@@87 f_4@@87) (select (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| SummandMask2@@15) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| ResultMask@@15) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| SummandMask1@@15) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_87829_43083_2989#PolymorphicMapType_87829| SummandMask2@@15) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_87829) (SummandMask1@@16 T@PolymorphicMapType_87829) (SummandMask2@@16 T@PolymorphicMapType_87829) (o_2@@88 T@Ref) (f_4@@88 T@Field_94947_94948) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| ResultMask@@16) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| SummandMask1@@16) o_2@@88 f_4@@88) (select (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| SummandMask2@@16) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| ResultMask@@16) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| SummandMask1@@16) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_87829_43083_43084#PolymorphicMapType_87829| SummandMask2@@16) o_2@@88 f_4@@88))
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
(assert (forall ((Heap@@52 T@PolymorphicMapType_87808) (Mask@@74 T@PolymorphicMapType_87829) (diz@@17 T@Ref) ) (!  (=> (and (state Heap@@52 Mask@@74) (< AssumeFunctionsAbove 1)) (=> (not (= diz@@17 null)) (= (Wand_state_contains_for_state_contains__get_out_1 Heap@@52 diz@@17) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@52) diz@@17 Wand_state_contains_for_state_contains__out_1))))
 :qid |stdinbpl.1156:15|
 :skolemid |73|
 :pattern ( (state Heap@@52 Mask@@74) (Wand_state_contains_for_state_contains__get_out_1 Heap@@52 diz@@17))
 :pattern ( (state Heap@@52 Mask@@74) (|Wand_state_contains_for_state_contains__get_out_1#triggerStateless| diz@@17) (|Wand_state_contains_for_state_contains__valid_wand#trigger_43083| Heap@@52 (Wand_state_contains_for_state_contains__valid_wand diz@@17)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_87808) (Mask@@75 T@PolymorphicMapType_87829) (diz@@18 T@Ref) ) (!  (=> (and (state Heap@@53 Mask@@75) (< AssumeFunctionsAbove 2)) (=> (not (= diz@@18 null)) (= (Wand_state_contains_for_state_contains__get_in_1 Heap@@53 diz@@18) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@53) diz@@18 Wand_state_contains_for_state_contains__in_1))))
 :qid |stdinbpl.628:15|
 :skolemid |60|
 :pattern ( (state Heap@@53 Mask@@75) (Wand_state_contains_for_state_contains__get_in_1 Heap@@53 diz@@18))
 :pattern ( (state Heap@@53 Mask@@75) (|Wand_state_contains_for_state_contains__get_in_1#triggerStateless| diz@@18) (|Wand_state_contains_for_state_contains__valid_wand#trigger_43083| Heap@@53 (Wand_state_contains_for_state_contains__valid_wand diz@@18)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_87808) (Mask@@76 T@PolymorphicMapType_87829) (diz@@19 T@Ref) ) (!  (=> (and (state Heap@@54 Mask@@76) (< AssumeFunctionsAbove 3)) (=> (not (= diz@@19 null)) (= (Wand_state_contains_for_state_contains__get_out_1_0 Heap@@54 diz@@19) (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@54) diz@@19 Wand_state_contains_for_state_contains__out_1_0))))
 :qid |stdinbpl.1426:15|
 :skolemid |80|
 :pattern ( (state Heap@@54 Mask@@76) (Wand_state_contains_for_state_contains__get_out_1_0 Heap@@54 diz@@19))
 :pattern ( (state Heap@@54 Mask@@76) (|Wand_state_contains_for_state_contains__get_out_1_0#triggerStateless| diz@@19) (|Wand_state_contains_for_state_contains__valid_wand#trigger_43083| Heap@@54 (Wand_state_contains_for_state_contains__valid_wand diz@@19)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_87808) (Mask@@77 T@PolymorphicMapType_87829) (diz@@20 T@Ref) ) (!  (=> (and (state Heap@@55 Mask@@77) (< AssumeFunctionsAbove 4)) (=> (not (= diz@@20 null)) (= (Wand_state_contains_for_state_contains__get_in_1_0 Heap@@55 diz@@20) (select (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@55) diz@@20 Wand_state_contains_for_state_contains__in_1_0))))
 :qid |stdinbpl.898:15|
 :skolemid |67|
 :pattern ( (state Heap@@55 Mask@@77) (Wand_state_contains_for_state_contains__get_in_1_0 Heap@@55 diz@@20))
 :pattern ( (state Heap@@55 Mask@@77) (|Wand_state_contains_for_state_contains__get_in_1_0#triggerStateless| diz@@20) (|Wand_state_contains_for_state_contains__valid_wand#trigger_43083| Heap@@55 (Wand_state_contains_for_state_contains__valid_wand diz@@20)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_87808) (Mask@@78 T@PolymorphicMapType_87829) (s_2@@1 T@Seq_2867) ) (!  (=> (state Heap@@56 Mask@@78) (= (|Tree__sorted_list'| Heap@@56 s_2@@1) (|Tree__sorted_list#frame| EmptyFrame s_2@@1)))
 :qid |stdinbpl.1868:15|
 :skolemid |93|
 :pattern ( (state Heap@@56 Mask@@78) (|Tree__sorted_list'| Heap@@56 s_2@@1))
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
(assert (forall ((Heap@@57 T@PolymorphicMapType_87808) (s_2@@2 T@Seq_2867) ) (!  (and (= (Tree__sorted_list Heap@@57 s_2@@2) (|Tree__sorted_list'| Heap@@57 s_2@@2)) (dummyFunction_13305 (|Tree__sorted_list#triggerStateless| s_2@@2)))
 :qid |stdinbpl.1851:15|
 :skolemid |90|
 :pattern ( (Tree__sorted_list Heap@@57 s_2@@2))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_87808) (t_2@@5 T@Ref) ) (!  (and (= (Tree__sorted Heap@@58 t_2@@5) (|Tree__sorted'| Heap@@58 t_2@@5)) (dummyFunction_13305 (|Tree__sorted#triggerStateless| t_2@@5)))
 :qid |stdinbpl.1901:15|
 :skolemid |94|
 :pattern ( (Tree__sorted Heap@@58 t_2@@5))
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
(assert (forall ((Heap@@59 T@PolymorphicMapType_87808) (Mask@@79 T@PolymorphicMapType_87829) (diz@@21 T@Ref) ) (!  (=> (state Heap@@59 Mask@@79) (= (|Wand_state_contains_for_state_contains__get_in_1'| Heap@@59 diz@@21) (|Wand_state_contains_for_state_contains__get_in_1#frame| (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@59) null (Wand_state_contains_for_state_contains__valid_wand diz@@21)) diz@@21)))
 :qid |stdinbpl.635:15|
 :skolemid |61|
 :pattern ( (state Heap@@59 Mask@@79) (|Wand_state_contains_for_state_contains__get_in_1'| Heap@@59 diz@@21))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_87808) (Mask@@80 T@PolymorphicMapType_87829) (diz@@22 T@Ref) ) (!  (=> (state Heap@@60 Mask@@80) (= (|Wand_state_contains_for_state_contains__get_in_1_0'| Heap@@60 diz@@22) (|Wand_state_contains_for_state_contains__get_in_1_0#frame| (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@60) null (Wand_state_contains_for_state_contains__valid_wand diz@@22)) diz@@22)))
 :qid |stdinbpl.905:15|
 :skolemid |68|
 :pattern ( (state Heap@@60 Mask@@80) (|Wand_state_contains_for_state_contains__get_in_1_0'| Heap@@60 diz@@22))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_87808) (Mask@@81 T@PolymorphicMapType_87829) (diz@@23 T@Ref) ) (!  (=> (state Heap@@61 Mask@@81) (= (|Wand_state_contains_for_state_contains__get_out_1'| Heap@@61 diz@@23) (|Wand_state_contains_for_state_contains__get_out_1#frame| (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@61) null (Wand_state_contains_for_state_contains__valid_wand diz@@23)) diz@@23)))
 :qid |stdinbpl.1163:15|
 :skolemid |74|
 :pattern ( (state Heap@@61 Mask@@81) (|Wand_state_contains_for_state_contains__get_out_1'| Heap@@61 diz@@23))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_87808) (Mask@@82 T@PolymorphicMapType_87829) (diz@@24 T@Ref) ) (!  (=> (state Heap@@62 Mask@@82) (= (|Wand_state_contains_for_state_contains__get_out_1_0'| Heap@@62 diz@@24) (|Wand_state_contains_for_state_contains__get_out_1_0#frame| (select (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@62) null (Wand_state_contains_for_state_contains__valid_wand diz@@24)) diz@@24)))
 :qid |stdinbpl.1433:15|
 :skolemid |81|
 :pattern ( (state Heap@@62 Mask@@82) (|Wand_state_contains_for_state_contains__get_out_1_0'| Heap@@62 diz@@24))
)))
(assert (forall ((diz@@25 T@Ref) ) (! (= (getPredWandId_43083_43084 (Wand_state_contains_for_state_contains__valid_wand diz@@25)) 0)
 :qid |stdinbpl.1996:15|
 :skolemid |100|
 :pattern ( (Wand_state_contains_for_state_contains__valid_wand diz@@25))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_3235| t@@2)) 1)
 :qid |stdinbpl.215:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3235| t@@2))
)))
(assert (forall ((diz@@26 T@Ref) ) (! (= (getPredWandId_43111_43112 (Tree__state diz@@26)) 1)
 :qid |stdinbpl.2429:15|
 :skolemid |106|
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
(assert (forall ((Heap@@63 T@PolymorphicMapType_87808) (o_76 T@Ref) (f_46 T@Field_107854_107859) (v@@2 T@PolymorphicMapType_88357) ) (! (succHeap Heap@@63 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@63) (store (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@63) o_76 f_46 v@@2) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@63) (store (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@63) o_76 f_46 v@@2) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@63) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_87808) (o_76@@0 T@Ref) (f_46@@0 T@Field_43111_118571) (v@@3 T@Seq_2867) ) (! (succHeap Heap@@64 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@64) (store (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@64) o_76@@0 f_46@@0 v@@3) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@64) (store (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@64) o_76@@0 f_46@@0 v@@3) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@64) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_87808) (o_76@@1 T@Ref) (f_46@@1 T@Field_43111_3235) (v@@4 Int) ) (! (succHeap Heap@@65 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@65) (store (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@65) o_76@@1 f_46@@1 v@@4) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@65) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@65) (store (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@65) o_76@@1 f_46@@1 v@@4) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@65)))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_87808) (o_76@@2 T@Ref) (f_46@@2 T@Field_97021_97022) (v@@5 T@FrameType) ) (! (succHeap Heap@@66 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@66) (store (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@66) o_76@@2 f_46@@2 v@@5) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@66)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@66) (store (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@66) o_76@@2 f_46@@2 v@@5) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@66) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@66)))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_87808) (o_76@@3 T@Ref) (f_46@@3 T@Field_43111_42790) (v@@6 T@Ref) ) (! (succHeap Heap@@67 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@67) (store (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@67) o_76@@3 f_46@@3 v@@6) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@67)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@67) (store (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@67) o_76@@3 f_46@@3 v@@6) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@67) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@67)))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_87808) (o_76@@4 T@Ref) (f_46@@4 T@Field_43111_53) (v@@7 Bool) ) (! (succHeap Heap@@68 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@68) (store (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@68) o_76@@4 f_46@@4 v@@7)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@68) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@68) (store (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@68) o_76@@4 f_46@@4 v@@7)))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_87808) (o_76@@5 T@Ref) (f_46@@5 T@Field_104374_104379) (v@@8 T@PolymorphicMapType_88357) ) (! (succHeap Heap@@69 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@69) (store (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@69) o_76@@5 f_46@@5 v@@8) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@69)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@69) (store (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@69) o_76@@5 f_46@@5 v@@8) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@69) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@69)))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_87808) (o_76@@6 T@Ref) (f_46@@6 T@Field_43083_118571) (v@@9 T@Seq_2867) ) (! (succHeap Heap@@70 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@70) (store (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@70) o_76@@6 f_46@@6 v@@9) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@70)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@70) (store (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@70) o_76@@6 f_46@@6 v@@9) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@70) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@70)))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_87808) (o_76@@7 T@Ref) (f_46@@7 T@Field_43083_3235) (v@@10 Int) ) (! (succHeap Heap@@71 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@71) (store (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@71) o_76@@7 f_46@@7 v@@10) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@71)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@71) (store (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@71) o_76@@7 f_46@@7 v@@10) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@71) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@71)))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_87808) (o_76@@8 T@Ref) (f_46@@8 T@Field_94947_94948) (v@@11 T@FrameType) ) (! (succHeap Heap@@72 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@72) (store (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@72) o_76@@8 f_46@@8 v@@11) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@72)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@72) (store (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@72) o_76@@8 f_46@@8 v@@11) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@72) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@72)))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_87808) (o_76@@9 T@Ref) (f_46@@9 T@Field_43083_42790) (v@@12 T@Ref) ) (! (succHeap Heap@@73 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@73) (store (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@73) o_76@@9 f_46@@9 v@@12) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@73)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@73) (store (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@73) o_76@@9 f_46@@9 v@@12) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@73) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@73)))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_87808) (o_76@@10 T@Ref) (f_46@@10 T@Field_43083_53) (v@@13 Bool) ) (! (succHeap Heap@@74 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@74) (store (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@74) o_76@@10 f_46@@10 v@@13) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@74)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@74) (store (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@74) o_76@@10 f_46@@10 v@@13) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@74) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@74)))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_87808) (o_76@@11 T@Ref) (f_46@@11 T@Field_42789_104379) (v@@14 T@PolymorphicMapType_88357) ) (! (succHeap Heap@@75 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@75) (store (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@75) o_76@@11 f_46@@11 v@@14) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@75)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@75) (store (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@75) o_76@@11 f_46@@11 v@@14) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@75) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@75)))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_87808) (o_76@@12 T@Ref) (f_46@@12 T@Field_93982_93984) (v@@15 T@Seq_2867) ) (! (succHeap Heap@@76 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@76) (store (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@76) o_76@@12 f_46@@12 v@@15) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@76)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@76) (store (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@76) o_76@@12 f_46@@12 v@@15) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@76) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@76)))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_87808) (o_76@@13 T@Ref) (f_46@@13 T@Field_93886_2989) (v@@16 Int) ) (! (succHeap Heap@@77 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@77) (store (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@77) o_76@@13 f_46@@13 v@@16) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@77)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@77) (store (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@77) o_76@@13 f_46@@13 v@@16) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@77) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@77)))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_87808) (o_76@@14 T@Ref) (f_46@@14 T@Field_42789_43084) (v@@17 T@FrameType) ) (! (succHeap Heap@@78 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@78) (store (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@78) o_76@@14 f_46@@14 v@@17) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@78)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@78) (store (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@78) o_76@@14 f_46@@14 v@@17) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@78) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@78)))
)))
(assert (forall ((Heap@@79 T@PolymorphicMapType_87808) (o_76@@15 T@Ref) (f_46@@15 T@Field_87881_87882) (v@@18 T@Ref) ) (! (succHeap Heap@@79 (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@79) (store (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@79) o_76@@15 f_46@@15 v@@18) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@79)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@79) (store (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@79) o_76@@15 f_46@@15 v@@18) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@79) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@79)))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_87808) (o_76@@16 T@Ref) (f_46@@16 T@Field_87868_53) (v@@19 Bool) ) (! (succHeap Heap@@80 (PolymorphicMapType_87808 (store (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@80) o_76@@16 f_46@@16 v@@19) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@80)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_87808 (store (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@80) o_76@@16 f_46@@16 v@@19) (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43083_43084#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_42787_2989#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_42792_96102#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43111_43112#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43087_104466#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43115_107894#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_42789_43084#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_42789_321759#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43083_42790#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43083_118571#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43083_3235#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43083_53#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43111_42790#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43111_118571#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43111_3235#PolymorphicMapType_87808| Heap@@80) (|PolymorphicMapType_87808_43111_53#PolymorphicMapType_87808| Heap@@80)))
)))
(assert (forall ((diz@@27 T@Ref) ) (! (= (PredicateMaskField_43083 (Wand_state_contains_for_state_contains__valid_wand diz@@27)) (|Wand_state_contains_for_state_contains__valid_wand#sm| diz@@27))
 :qid |stdinbpl.1988:15|
 :skolemid |98|
 :pattern ( (PredicateMaskField_43083 (Wand_state_contains_for_state_contains__valid_wand diz@@27)))
)))
(assert (forall ((diz@@28 T@Ref) ) (! (= (PredicateMaskField_43111 (Tree__state diz@@28)) (|Tree__state#sm| diz@@28))
 :qid |stdinbpl.2421:15|
 :skolemid |104|
 :pattern ( (PredicateMaskField_43111 (Tree__state diz@@28)))
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
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_12082|)) (not (= s1@@4 |Seq#Empty_12082|))) (<= 0 m)) (< m (|Seq#Length_2867| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2867| s0@@4)) (|Seq#Length_2867| s0@@4)) m) (= (|Seq#Index_2867| (|Seq#Append_3128| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2867| s0@@4))) (|Seq#Index_2867| s1@@4 m))))
 :qid |stdinbpl.252:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@4 m) (|Seq#Append_3128| s0@@4 s1@@4))
)))
(assert (forall ((o_76@@17 T@Ref) (f_53 T@Field_87881_87882) (Heap@@81 T@PolymorphicMapType_87808) ) (!  (=> (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@81) o_76@@17 $allocated) (select (|PolymorphicMapType_87808_42599_53#PolymorphicMapType_87808| Heap@@81) (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@81) o_76@@17 f_53) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_87808_42602_42603#PolymorphicMapType_87808| Heap@@81) o_76@@17 f_53))
)))
(assert (forall ((s@@14 T@Seq_2867) (x@@1 Int) (i@@5 Int) ) (!  (=> (and (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2867| s@@14))) (= (|Seq#Index_2867| s@@14 i@@5) x@@1)) (|Seq#Contains_2867| s@@14 x@@1))
 :qid |stdinbpl.404:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@14 x@@1) (|Seq#Index_2867| s@@14 i@@5))
)))
(assert (forall ((s0@@5 T@Seq_2867) (s1@@5 T@Seq_2867) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_3097| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3097| s0@@5 s1@@5))) (not (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3097| s0@@5 s1@@5))) (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))) (= (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#SkolemDiff_2867| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#Length_2867| s0@@5))) (not (= (|Seq#Index_2867| s0@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5)) (|Seq#Index_2867| s1@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))))))
 :qid |stdinbpl.508:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3097| s0@@5 s1@@5))
)))
(assert (forall ((p@@3 T@Field_42789_43084) (v_1@@2 T@FrameType) (q T@Field_42789_43084) (w@@2 T@FrameType) (r T@Field_42789_43084) (u T@FrameType) ) (!  (=> (and (InsidePredicate_87868_87868 p@@3 v_1@@2 q w@@2) (InsidePredicate_87868_87868 q w@@2 r u)) (InsidePredicate_87868_87868 p@@3 v_1@@2 r u))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_87868_87868 p@@3 v_1@@2 q w@@2) (InsidePredicate_87868_87868 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_42789_43084) (v_1@@3 T@FrameType) (q@@0 T@Field_42789_43084) (w@@3 T@FrameType) (r@@0 T@Field_94947_94948) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_87868_87868 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_87868_43083 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_87868_43083 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_87868_87868 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_87868_43083 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_42789_43084) (v_1@@4 T@FrameType) (q@@1 T@Field_42789_43084) (w@@4 T@FrameType) (r@@1 T@Field_97021_97022) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_87868_87868 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_87868_43111 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_87868_43111 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_87868_87868 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_87868_43111 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_42789_43084) (v_1@@5 T@FrameType) (q@@2 T@Field_94947_94948) (w@@5 T@FrameType) (r@@2 T@Field_42789_43084) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_87868_43083 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_43083_87868 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_87868_87868 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_87868_43083 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_43083_87868 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_42789_43084) (v_1@@6 T@FrameType) (q@@3 T@Field_94947_94948) (w@@6 T@FrameType) (r@@3 T@Field_94947_94948) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_87868_43083 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_43083_43083 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_87868_43083 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_87868_43083 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_43083_43083 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_42789_43084) (v_1@@7 T@FrameType) (q@@4 T@Field_94947_94948) (w@@7 T@FrameType) (r@@4 T@Field_97021_97022) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_87868_43083 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_43083_43111 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_87868_43111 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_87868_43083 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_43083_43111 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_42789_43084) (v_1@@8 T@FrameType) (q@@5 T@Field_97021_97022) (w@@8 T@FrameType) (r@@5 T@Field_42789_43084) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_87868_43111 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_43111_87868 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_87868_87868 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_87868_43111 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_43111_87868 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_42789_43084) (v_1@@9 T@FrameType) (q@@6 T@Field_97021_97022) (w@@9 T@FrameType) (r@@6 T@Field_94947_94948) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_87868_43111 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_43111_43083 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_87868_43083 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_87868_43111 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_43111_43083 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_42789_43084) (v_1@@10 T@FrameType) (q@@7 T@Field_97021_97022) (w@@10 T@FrameType) (r@@7 T@Field_97021_97022) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_87868_43111 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_43111_43111 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_87868_43111 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_87868_43111 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_43111_43111 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_97021_97022) (v_1@@11 T@FrameType) (q@@8 T@Field_42789_43084) (w@@11 T@FrameType) (r@@8 T@Field_42789_43084) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_43111_87868 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_87868_87868 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_43111_87868 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43111_87868 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_87868_87868 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_97021_97022) (v_1@@12 T@FrameType) (q@@9 T@Field_42789_43084) (w@@12 T@FrameType) (r@@9 T@Field_94947_94948) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_43111_87868 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_87868_43083 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_43111_43083 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43111_87868 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_87868_43083 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_97021_97022) (v_1@@13 T@FrameType) (q@@10 T@Field_42789_43084) (w@@13 T@FrameType) (r@@10 T@Field_97021_97022) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_43111_87868 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_87868_43111 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_43111_43111 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43111_87868 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_87868_43111 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_97021_97022) (v_1@@14 T@FrameType) (q@@11 T@Field_94947_94948) (w@@14 T@FrameType) (r@@11 T@Field_42789_43084) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_43111_43083 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_43083_87868 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_43111_87868 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43111_43083 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_43083_87868 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_97021_97022) (v_1@@15 T@FrameType) (q@@12 T@Field_94947_94948) (w@@15 T@FrameType) (r@@12 T@Field_94947_94948) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_43111_43083 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_43083_43083 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_43111_43083 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43111_43083 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_43083_43083 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_97021_97022) (v_1@@16 T@FrameType) (q@@13 T@Field_94947_94948) (w@@16 T@FrameType) (r@@13 T@Field_97021_97022) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_43111_43083 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_43083_43111 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_43111_43111 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43111_43083 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_43083_43111 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_97021_97022) (v_1@@17 T@FrameType) (q@@14 T@Field_97021_97022) (w@@17 T@FrameType) (r@@14 T@Field_42789_43084) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_43111_43111 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_43111_87868 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_43111_87868 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43111_43111 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_43111_87868 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_97021_97022) (v_1@@18 T@FrameType) (q@@15 T@Field_97021_97022) (w@@18 T@FrameType) (r@@15 T@Field_94947_94948) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_43111_43111 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_43111_43083 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_43111_43083 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43111_43111 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_43111_43083 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_97021_97022) (v_1@@19 T@FrameType) (q@@16 T@Field_97021_97022) (w@@19 T@FrameType) (r@@16 T@Field_97021_97022) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_43111_43111 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_43111_43111 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_43111_43111 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43111_43111 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_43111_43111 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_94947_94948) (v_1@@20 T@FrameType) (q@@17 T@Field_42789_43084) (w@@20 T@FrameType) (r@@17 T@Field_42789_43084) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_43083_87868 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_87868_87868 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_43083_87868 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43083_87868 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_87868_87868 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_94947_94948) (v_1@@21 T@FrameType) (q@@18 T@Field_42789_43084) (w@@21 T@FrameType) (r@@18 T@Field_94947_94948) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_43083_87868 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_87868_43083 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_43083_43083 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43083_87868 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_87868_43083 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_94947_94948) (v_1@@22 T@FrameType) (q@@19 T@Field_42789_43084) (w@@22 T@FrameType) (r@@19 T@Field_97021_97022) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_43083_87868 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_87868_43111 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_43083_43111 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43083_87868 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_87868_43111 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_94947_94948) (v_1@@23 T@FrameType) (q@@20 T@Field_94947_94948) (w@@23 T@FrameType) (r@@20 T@Field_42789_43084) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_43083_43083 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_43083_87868 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_43083_87868 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43083_43083 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_43083_87868 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_94947_94948) (v_1@@24 T@FrameType) (q@@21 T@Field_94947_94948) (w@@24 T@FrameType) (r@@21 T@Field_94947_94948) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_43083_43083 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_43083_43083 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_43083_43083 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43083_43083 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_43083_43083 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_94947_94948) (v_1@@25 T@FrameType) (q@@22 T@Field_94947_94948) (w@@25 T@FrameType) (r@@22 T@Field_97021_97022) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_43083_43083 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_43083_43111 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_43083_43111 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43083_43083 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_43083_43111 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_94947_94948) (v_1@@26 T@FrameType) (q@@23 T@Field_97021_97022) (w@@26 T@FrameType) (r@@23 T@Field_42789_43084) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_43083_43111 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_43111_87868 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_43083_87868 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43083_43111 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_43111_87868 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_94947_94948) (v_1@@27 T@FrameType) (q@@24 T@Field_97021_97022) (w@@27 T@FrameType) (r@@24 T@Field_94947_94948) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_43083_43111 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_43111_43083 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_43083_43083 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43083_43111 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_43111_43083 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_94947_94948) (v_1@@28 T@FrameType) (q@@25 T@Field_97021_97022) (w@@28 T@FrameType) (r@@25 T@Field_97021_97022) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_43083_43111 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_43111_43111 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_43083_43111 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43083_43111 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_43111_43111 q@@25 w@@28 r@@25 u@@25))
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
(assert (forall ((Heap@@82 T@PolymorphicMapType_87808) (Mask@@83 T@PolymorphicMapType_87829) (t_2@@6 T@Ref) ) (!  (=> (and (state Heap@@82 Mask@@83) (< AssumeFunctionsAbove 0)) (= (Tree__sorted Heap@@82 t_2@@6) (Tree__sorted_list Heap@@82 (Tree__tolist Heap@@82 t_2@@6))))
 :qid |stdinbpl.1911:15|
 :skolemid |96|
 :pattern ( (state Heap@@82 Mask@@83) (Tree__sorted Heap@@82 t_2@@6))
)))
; Valid

